# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProofUtil.Variant0f284f5edfbf1581310aa08b5d128b77377345790873e9b98b567d46e76b1c9b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `96fe0a92e97f6357173658390f9f1057883c6803` · SHA-256 `0f284f5edfbf1581310aa08b5d128b77377345790873e9b98b567d46e76b1c9b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Types
public section
namespace Lean.Meta.Grind

def mkLetOfMap {_ : Hashable α} {_ : BEq α} (m : Std.HashMap α Expr) (e : Expr)
    (varPrefix : Name) (varType : Expr) (toExpr : α → Expr) : Expr := Id.run do
  if m.isEmpty then
    return e
  else
    let as := m.toArray
    let mut e := e.abstract <| as.map (·.2)
    let mut i := as.size
    for (p, _) in as.reverse do
      e := mkLet (varPrefix.appendIndexAfter i) varType (toExpr p) e
      i := i - 1
    return e

end Lean.Meta.Grind
```
