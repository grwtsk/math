# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Scopes.Variant9e1441c1ea241cf68c3426124b705f0ab73b9c6ebddbac8db1cb74fe3d95bd33

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `317b3eea054974b62891ec16803cb3e8f4e4a95a` · SHA-256 `9e1441c1ea241cf68c3426124b705f0ab73b9c6ebddbac8db1cb74fe3d95bd33`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: David Thrane Christiansen
-/
module
prelude

public import Lean.Elab.DocString
public import Lean.Elab.DocString.Builtin.Parsing

namespace Lean.Doc
open Lean.Parser

public section

inductive DocScope where
  | local
  | import (mods : Array Name)

private def imports := leading_parser sepBy1 ident ", "
set_option compiler.relaxedMetaCheck true in
private meta def importsM := imports

instance : FromDocArg DocScope where
  fromDocArg v := private
    match v with
    | .str s => do
      let stx ← withRef s <| parseQuotedStrLit (whitespace >> imports.fn) s
      let `(importsM|$modNames,*) := stx
        | throwErrorAt stx "Expected comma-separated imports list, got `{stx}`"
      let modNames : Array Ident := modNames
      return .import (modNames.map (·.getId))
    | .ident x =>
      let y := x.getId.eraseMacroScopes
      if y == `local then pure .local
      else throwErrorAt x "Unexpected identifier, expected `local` or a string of imports"
    | .num n => throwErrorAt n "Unexpected number `{n}`"
```
