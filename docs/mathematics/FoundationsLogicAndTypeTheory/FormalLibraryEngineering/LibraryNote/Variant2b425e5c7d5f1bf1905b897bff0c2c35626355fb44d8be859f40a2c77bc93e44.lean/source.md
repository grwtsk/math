# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LibraryNote.Variant2b425e5c7d5f1bf1905b897bff0c2c35626355fb44d8be859f40a2c77bc93e44

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1b4656b77548abdaa1ba751bace3905f5e9ff767` · SHA-256 `2b425e5c7d5f1bf1905b897bff0c2c35626355fb44d8be859f40a2c77bc93e44`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2022 Gabriel Ebner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner
-/
import Lean.Elab.ElabRules

/-!
# Define the `library_note` command.
-/

namespace Std.Util.LibraryNote

open Lean

/-- A library note consists of a (short) tag and a (long) note. -/
def LibraryNoteEntry := String × String

/-- Environment extension supporting `library_note`. -/
initialize libraryNoteExt : SimplePersistentEnvExtension LibraryNoteEntry (Array LibraryNoteEntry) ←
  registerSimplePersistentEnvExtension {
    addEntryFn := Array.push
    addImportedFn := Array.concatMap id
  }

open Lean Parser Command in
/--
```
library_note "some tag" /--
... some explanation ...
-/
```
creates a new "library note", which can then be cross-referenced using
```
-- See note [some tag]
```
in doc-comments.
-/
elab "library_note " title:strLit ppSpace text:docComment : command => do
  modifyEnv (libraryNoteExt.addEntry · (title.getString, text.getDocString))
````
