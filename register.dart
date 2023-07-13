import 'package:flutter/material.dart';
class RegisterScreen extends StatefulWidget {
  createState() {
return RegisterScreenState();
}
}
class RegisterScreenState extends State<RegisterScreen> {
Widget build(context) {
return Container(
margin: EdgeInsets.all(20.0), //SET MARGIN DARI CONTAINER
child: Form(
child: Column(
//CHILDREN DARI COLUMN BERISI 4 BUAH OBJECT YANG AKAN DI-RENDER, YAKNI
// TextInput UNTUK NAME, EMAIL, PASSWORD DAN TOMBOL DAFTAR
children: [
nameField(),
emailField(),
passwordField(),
registerButton(),
],
)),
);
}
Widget nameField() {
//MEMBUAT TEXT INPUT
return TextFormField(
  decoration:
InputDecoration(labelText: 'Nama Lengkap' //DENGAN LABEL Nama Lengkap
),
//AKAN BERISI VALIDATION
);
}
Widget emailField() {
return TextFormField(
keyboardType:
TextInputType.emailAddress, // KEYBOARD TYPENYA ADALAH EMAIL ADDRESS
//AGAR SYMBOL @ DILETAKKAN DIDEPAN KETIKA KEYBOARD DI TAMPILKAN
decoration: InputDecoration(
labelText: 'Email',
hintText: 'email@example.com',
),
//AKAN BERISI VALIDATION
);
}
Widget passwordField() {
return TextFormField(
obscureText: true, //KETIKA obsecureText bernilai TRUE
//MAKA SAMA DENGAN TYPE PASSWORD PADA HTML
decoration: InputDecoration(
labelText: 'Password',
hintText: 'Enter Password',
),
//AKAN BERISI VALIDATION
);
}
Widget registerButton() {
//MEMBUAT TOMBOL
return ElevatedButton(
onPressed: () {
//PERINTAH YANG AKAN DIEKSEKUSI KETIKA TOMBOL DITEKAN
},
child: Text('Daftar'), //TEXT YANG AKAN DITAMPILKAN PADA TOMBOL
);
}
}