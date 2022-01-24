import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));


 class Home extends StatelessWidget {
   static const String title = 'NOTES';

    @override
   Widget build(BuildContext context) {
     return MaterialApp(
       title: title,
       home: MyStatefulWidget(),
     );
   }
 }

 class MyStatefulWidget extends StatefulWidget {
   MyStatefulWidget({Key key}) : super(key: key);

   @override
   MyStatefulWidgetState createState() => MyStatefulWidgetState();
 }
//Main: 1) home+button w/ selection, 2) Note creation function, 3) Help page
 class MyStatefulWidgetState extends State<MyStatefulWidget> {

   int _selectedIndex = 0;

   //for Navigation Bar
   void _onItemTapped(int index) {
     setState(() {
       _selectedIndex = index;
     });
   }

   List<Widget> _widgetOptions = <Widget>[
     // 1) All Notes and button features
     Column(
       children: <Widget>[
         Padding(
           padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
           child: Text(
             'All Notes',
             style: TextStyle(
               fontFamily: 'Lato',
               fontSize: 30.0,
               fontWeight: FontWeight.bold,
               letterSpacing: 4.0,
             ),
           ),
         ),
         Divider(
           color: Colors.grey[400],
           indent: 10.0,
           endIndent: 10.0,
         ),
         // Button/selection features
         Row(
           children: <Widget>[
             Expanded(
               child: Padding(
                 padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
                 child: FlatButton(
                   child: Text(
                     'notename1',
                     style: TextStyle(
                       color: Colors.grey[600]
                     ),
                   ),
                   onPressed: () {
                     /*Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => NewObjective())
                     ); */
                   },
                   color: Colors.grey[100],
                   highlightColor: Colors.grey[500],
                 ),
               ),
             ),
           ],
         ),
       ],
     ),
     // 2) New notes and text editing
     Column(
       children: <Widget>[
         Padding(
           padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 0.0),
           child: TextField(
             textCapitalization: TextCapitalization.words,
             style: TextStyle(
               fontFamily: 'Lato',
               fontWeight: FontWeight.bold,
               fontSize: 22.0,
             ),
             maxLines: 1,
             cursorColor: Colors.blueGrey[600],
             decoration: InputDecoration(
               border: InputBorder.none,
               hintText: 'Enter a Title Here',
               hintStyle: TextStyle(
                 color: Colors.blueGrey[400],
                 fontFamily: 'Lato',
                 fontSize: 22.0,
               ),
             ),
           ),
         ),
         Divider(
           color: Colors.blueGrey[600],
           thickness: 1.3,
           indent: 8.0,
           endIndent: 8.0,
         ),
         Expanded(
           child: Padding(
             padding: const EdgeInsets.fromLTRB(8.0, 5.0, 8.0, 0.0),
             child: TextField(
               maxLines: null,
               cursorColor: Colors.blueGrey[600],
               decoration: InputDecoration(
                 border: InputBorder.none,
                 hintText: 'Start your note',
                 hintStyle: TextStyle(
                   color: Colors.blueGrey[300],
                   fontStyle: FontStyle.italic,
                 ),
               ),
             ),
           ),
         ),
         BottomNavigationBar(
           unselectedItemColor: Colors.blueGrey[300],
           unselectedLabelStyle: TextStyle(
             color: Colors.blueGrey[300],
           ),
           selectedItemColor: Colors.blueAccent[100],
           selectedLabelStyle: TextStyle(
             color: Colors.blueAccent[100],
           ),
           items: const <BottomNavigationBarItem>[
             BottomNavigationBarItem(
               icon: Icon(Icons.format_list_bulleted),
               title: Text('list'),
             ),
             BottomNavigationBarItem(
               icon: Icon(Icons.text_format),
               title: Text('color'),
             ),
             BottomNavigationBarItem(
               icon: Icon(Icons.text_fields),
               title: Text('size'),
             ),
             BottomNavigationBarItem(
               icon: Icon(Icons.format_bold),
               title: Text('bold'),
             ),
             BottomNavigationBarItem(
               icon: Icon(Icons.save),
               title: Text('save'),
               backgroundColor: Colors.limeAccent,
             ),
           ],
         ),
       ],
     ),
     // 3) Help page
     Container(
       child: Column(
         children: <Widget>[
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text(
               'Help/Contact',
               style: TextStyle(
                 fontFamily: 'Lato',
                 fontSize: 30.0,
                 fontWeight: FontWeight.bold,
                 letterSpacing: 4.0,
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 0.0),
             child: Row(
               children: <Widget>[
                 Expanded(
                   child: Column(
                     children: <Widget>[
                       Icon(
                         Icons.email,
                         size: 30.0,
                         color: Colors.blueGrey[100],
                       ),
                       Text(
                         'Email:',
                         style: TextStyle(
                           color: Colors.blueGrey[300],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                         child: Text(
                           'vihar.shah012@gmail.com',
                           style: TextStyle(
                             fontSize: 14.0,
                           ),
                         ),
                       )
                     ],
                   ),
                 ),
                 Expanded(
                   child: Column(
                     children: <Widget>[
                       Icon(
                         Icons.phone,
                         size: 30.0,
                         color: Colors.blueGrey[100],
                       ),
                       Text(
                         'Phone:',
                         style: TextStyle(
                             color: Colors.blueGrey[300],
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                         child: Text(
                           '571-373-7584',
                           style: TextStyle(
                             fontSize: 14.0
                           ),
                         ),
                       ),
                     ],
                   ),
                 ),
               ],
             ),
           ),
         ],
       ),
     ),
   ];

//Overall: Appbar, Center, BottomNavigationBar and AppBar
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.yellow[200],
         title: Center(
           child: const Text(
             'NOTES',
             style: TextStyle(
               color: Colors.blueGrey,
               fontSize: 30.0,
               fontFamily: 'Lato',
               letterSpacing: 8.0,
             ),
           ),
         ),
       ),
       body: Center(
         child: _widgetOptions.elementAt(_selectedIndex),
       ),
       bottomNavigationBar: BottomNavigationBar(
         items: const <BottomNavigationBarItem>[
           BottomNavigationBarItem(
             icon: Icon(Icons.inbox),
             title: Text('All Notes'),
           ),
           BottomNavigationBarItem(
             icon: Icon(Icons.add_box),
             title: Text('New Note'),
           ),
           BottomNavigationBarItem(
             icon: Icon(Icons.help),
             title: Text('Help/Contact'),
           ),
         ],
         currentIndex: _selectedIndex,
         selectedItemColor: Colors.yellowAccent[700],
         onTap: _onItemTapped,
       ),
     );
   }
 }
 
