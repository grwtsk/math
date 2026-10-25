# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RegisterCommand.Varianta50c0b39cedd4defd41dcd9eba5b7f09c2eb6e1804184167193b6319ffe6ad11

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6e2267f83d496f1e7448e7ebf98c3888366e2f59` · SHA-256 `a50c0b39cedd4defd41dcd9eba5b7f09c2eb6e1804184167193b6319ffe6ad11`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public meta import Lean.Meta.Tactic.Grind.Attr  -- shake: keep (macro output dependency)
public section
namespace Lean.Meta.Grind

macro (name := _root_.Lean.Parser.Command.registerGrindAttr) doc:(docComment)?
  "register_grind_attr" id:ident : command => do
  let str1 := id.getId.toString
  let idParser1 := mkIdentFrom id (`Lean.Parser.Attr ++ id.getId)
  let str2 := id.getId.toString ++ "!"
  let idParser2 := mkIdentFrom id (`Lean.Parser.Attr ++ (id.getId.appendAfter "!"))
  let str3 := id.getId.toString ++ "?"
  let idParser3 := mkIdentFrom id (`Lean.Parser.Attr ++ (id.getId.appendAfter "?"))
  let str4 := id.getId.toString ++ "!?"
  let idParser4 := mkIdentFrom id (`Lean.Parser.Attr ++ (id.getId.appendAfter "!?"))
  `($[$doc:docComment]? public meta initialize ext : Extension ← registerAttr $(quote id.getId)
    $[$doc:docComment]? syntax (name := $idParser1:ident) $(quote str1):str (ppSpace Lean.Parser.Attr.grindMod)? : attr
    $[$doc:docComment]? syntax (name := $idParser2:ident) $(quote str2):str (ppSpace Lean.Parser.Attr.grindMod)? : attr
    $[$doc:docComment]? syntax (name := $idParser3:ident) $(quote str3):str (ppSpace Lean.Parser.Attr.grindMod)? : attr
    $[$doc:docComment]? syntax (name := $idParser4:ident) $(quote str4):str (ppSpace Lean.Parser.Attr.grindMod)? : attr
    )

end Lean.Meta.Grind
```
