import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_15/Aboutpage.dart';
import 'package:flutter_application_15/homepage.dart';
import 'package:flutter_application_15/settingspage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("NAV PROJ")),
        ),
        drawer: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: Color.fromARGB(255, 238, 228, 228)),
          child: Drawer(
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text("james"),
                  accountEmail: Text("james@gmail.com"),
                  currentAccountPicture: GestureDetector(
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://images.rtl.fr/~c/2000v2000/rtl/www/1446448-daniel-craig-incarne-james-bond-depuis-casino-royale.jpg"),
                      ),
                      onTap: () => print("current user")),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://png.pngtree.com/thumb_back/fh260/background/20200714/pngtree-modern-double-color-futuristic-neon-background-image_351866.jpg"),
                          fit: BoxFit.cover)),
                ),
                ListTile(
                  title: Text("About page"),
                  trailing: Icon(Icons.info),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Aboutpage()));
                  },
                ),
                  ListTile(
                  title: Text("Homepage"),
                  trailing: Icon(Icons.menu),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Homepage()));
                  },
                ),
                  ListTile(
                  title: Text("Settings page"),
                  trailing: Icon(Icons.settings),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Settingspage()));
                  },
                )
              ],
            ),
          ),
        ));
  }
}
