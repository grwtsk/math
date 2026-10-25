# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PP.Variant8836fdb7151d94629372f629a212b93944d635fa77534de57cfe9734747e71f0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2b852ccc8b4aa5e5165f476fb8052e71b5ea66d9` · SHA-256 `8836fdb7151d94629372f629a212b93944d635fa77534de57cfe9734747e71f0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public meta import Init.Data.String.Defs
public import Init.Grind.Tactics

public section

namespace Lean.Grind
/-!
This is a hackish module for hovering node information in the `grind` tactic state.
-/

inductive NodeDef where
  | unit

set_option linter.unusedVariables false in
def node_def (_ : Nat) {α : Sort u} {a : α} : NodeDef := .unit

@[app_unexpander node_def]
meta def nodeDefUnexpander : PrettyPrinter.Unexpander := fun stx => do
  match stx with
  | `($_ $id:num) => return mkIdent <| Name.mkSimple $ "#" ++ toString id.getNat
  | _ => throw ()

@[app_unexpander NodeDef]
meta def NodeDefUnexpander : PrettyPrinter.Unexpander := fun _ => do
  return mkIdent <| Name.mkSimple "NodeDef"

end Lean.Grind
```
