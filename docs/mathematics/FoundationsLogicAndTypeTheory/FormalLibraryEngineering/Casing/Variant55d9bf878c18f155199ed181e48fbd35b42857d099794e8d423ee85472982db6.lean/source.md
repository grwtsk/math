# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Casing.Variant55d9bf878c18f155199ed181e48fbd35b42857d099794e8d423ee85472982db6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f40b5a07496abb4e7c1e33371f872bd9dda8c2d` · SHA-256 `55d9bf878c18f155199ed181e48fbd35b42857d099794e8d423ee85472982db6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Init.Data.String.Basic
import Init.Data.String.Modify
import Init.Data.String.Search
import Init.Data.Iterators.Consumers.Collect

namespace Lake

open Lean (Name)

/-- Converts a snake case, kebab case, or lower camel case `String` to upper camel case. -/
public def toUpperCamelCaseString (str : String) : String :=
  let parts := str.split fun chr => chr == '_' || chr == '-'
  String.join <| parts.map (·.copy.capitalize) |>.toList

/-- Converts a snake case, kebab case, or lower camel case `Name` to upper camel case. -/
public def toUpperCamelCase (name : Name) : Name :=
  if let Name.str p s := name then
    Name.mkStr (toUpperCamelCase p) <| toUpperCamelCaseString s
  else
    name
```
