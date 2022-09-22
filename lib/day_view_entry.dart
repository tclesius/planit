import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class dayViewEntry extends StatelessWidget {
  const dayViewEntry({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      floatingActionButton: FloatingActionButton(
          onPressed: () => showCupertinoModalBottomSheet(
                backgroundColor: Color.fromRGBO(242, 242, 246, 1),
                context: context,
                builder: (context) => Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CupertinoButton(
                              child: Text(
                                "Abbrechen",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(130, 130, 130, 1)),
                              ),
                              onPressed: () {}),
                          Center(
                            child: Container(
                                child: Text(
                              "Ereignis",
                              style: Theme.of(context).textTheme.bodyLarge,
                            )),
                          ),
                          CupertinoButton(
                              child: Text(
                                "Hinzufügen",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromRGBO(130, 130, 130, 100)),
                              ),
                              onPressed: () {}),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.all(10),
                        child: CupertinoTextField.borderless(
                          placeholder: "Titel",
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          padding: EdgeInsets.fromLTRB(15, 10, 0, 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Beschreibung",
                                style: Theme.of(context).textTheme.bodyLarge,
                                textAlign: TextAlign.right,
                              ),
                              Container(
                                height: 10,
                              ),
                              CupertinoButton(
                                  minSize: 0,
                                  padding: EdgeInsets.all(0),
                                  child: Row(children: [
                                    Icon(
                                      CupertinoIcons.arrow_right,
                                      color: Color.fromRGBO(130, 130, 130, 100),
                                      size: 10,
                                    ),
                                    Text(
                                      "Hinzufügen",
                                      style:
                                          Theme.of(context).textTheme.bodySmall,
                                    )
                                  ]),
                                  onPressed: () {})
                            ],
                          )),
                    ),
                  ],
                ),
              )),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Friseurtermin",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ),
      ),
    );
  }
}
