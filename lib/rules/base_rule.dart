part of 'rule.dart';

abstract interface class Rule {
  String newName(String oldName);

  @override
  String toString();
}

(String, String) splitFileName(String oldName, bool ignoreExtension) {
  String newName = oldName;
  String extension = '';

  if (ignoreExtension) {
    final lastIndex = oldName.lastIndexOf('.');

    extension = oldName.substring(lastIndex);
    newName = oldName.substring(0, lastIndex);
  }

  return (newName, extension);
}