# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Exception.Variant1eae03b3c64d6d73ca03fafd81eecfcd1e6d6fb4540b9238313817e43fd705ca

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `531a7c13a949e5bc850ae03fb1e24863d1d4ebd7` · SHA-256 `1eae03b3c64d6d73ca03fafd81eecfcd1e6d6fb4540b9238313817e43fd705ca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Lean.Exception

public section

open Lean

namespace Aesop

scoped macro "declare_aesop_exception"
    excName:ident idName:ident testName:ident : command =>
  `(initialize $idName : InternalExceptionId ←
      Lean.registerInternalExceptionId $(quote $ `Aesop ++ excName.getId)

    def $excName : Exception :=
      .internal $idName

    def $testName : Exception → Bool
      | .internal id _ => id == $idName
      | _ => false)

end Aesop
```
