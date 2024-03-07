import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const MyhomePage(),
    );
  }
}

class MyhomePage extends StatefulWidget {
  const MyhomePage({super.key});
  @override
  State<MyhomePage> createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child:
          FloatingActionButton.extended(onPressed: (){
            showModalBottomSheet(context: context, builder: (context){
              return Container(
                height: 300,
                color: Colors.deepPurple[100],
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Android Operating System"),
                      subtitle: Text("Android OS that run in android phone"),
                      leading: CircleAvatar (child: Icon(Icons.book_outlined)),
                      //leading: CircleAvatar (backgroundImage: NetworkImage("link")),
                      trailing: Icon(Icons.save_alt_rounded),
                    ),
                    ListTile(
                      title: Text("Android Operating System"),
                      subtitle: Text("Android OS that run in android phone"),
                      leading: CircleAvatar (child: Icon(Icons.book_outlined)),
                      //leading: CircleAvatar (backgroundImage: NetworkImage("link")),
                      trailing: Icon(Icons.save_alt_rounded),
                    ),
                  ],
                ),
              );
            });
          }, label: Text("Press Button"),
          )
        ),
      ),
    );
  }
}

