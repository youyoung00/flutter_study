import 'package:flutter/material.dart';

void main(){
  runApp(new App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        //leading: Container(),
        backgroundColor: Colors.green,
        title: Text("LOGO"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: (){
              return;
            },
          )
        ],
      ),
      body: GridView(
        padding: EdgeInsets.all(10.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0
        ),
        children: [
          this._items(),
          this._items(),
          this._items(),
          // Container(color: Colors.deepPurpleAccent,),
          // Container(color: Colors.deepPurpleAccent,),
        ],
      ),
    );
  }

  Widget _items(){
    return Container(
      color: Colors.deepPurpleAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            color: Colors.deepOrange,
            child: Icon(Icons.more_horiz),
            //width: (MediaQuery.of(context).size.width/2)-15.0,
            alignment: Alignment.topRight,
            padding: EdgeInsets.only(right: 10.0),
          ),
          Container(
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(60.0),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage("https://images.unsplash.com/photo-1625982972237-bdc235fbe35e?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzfHx8ZW58MHx8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=60"),
                )
            ),
          ),
          Container(
            child: Text(
              "이름",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0
              ),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //crossAxisAlignment: ,
              children: [
                Icon(Icons.person),
                Icon(Icons.ac_unit_outlined)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

