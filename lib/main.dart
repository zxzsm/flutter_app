import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new ScaffoldRoute(title: '书客来小说'),
    );
  }
}
 class ScaffoldRoute extends StatefulWidget{
   ScaffoldRoute({Key key,this.title}):super(key:key);
  final String title;
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return  _ScaffoldRouteState();
  }

 }

 class _ScaffoldRouteState  extends State<ScaffoldRoute>{
  final int _selectedIndex=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.share), onPressed: (){
            print("13");
          })
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
        BottomNavigationBarItem(icon: Icon(Icons.business), title: Text('Business')),
        BottomNavigationBarItem(icon: Icon(Icons.school), title: Text('School')),
      ]),
    );
  }

 }