# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CheckTactic.Variant3e6e40c40a726cb2ba3c8a8e9561def96317218e4ae002a4e693382d4e5c96b7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fbda16ade0b5a018f9d61b78d3250bdae13848ef` · SHA-256 `3e6e40c40a726cb2ba3c8a8e9561def96317218e4ae002a4e693382d4e5c96b7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joe Hendrix
-/
module

prelude
public import Lean.Meta.Basic

public section

namespace Lean.Meta.CheckTactic

def mkCheckGoalType (val type : Expr) : MetaM Expr := do
  let lvl ← mkFreshLevelMVar
  pure <| mkApp2 (mkConst ``CheckGoalType [lvl]) type val

def matchCheckGoalType (stx : Syntax) (goalType : Expr) : MetaM (Expr × Expr × Level) := do
  let u ← mkFreshLevelMVar
  let type ← mkFreshExprMVar (some (.sort u))
  let val  ← mkFreshExprMVar (some type)
  let extType := mkAppN (.const ``CheckGoalType [u]) #[type, val]
  if !(← isDefEq goalType extType) then
    throwErrorAt stx "Goal{indentExpr goalType}\nis expected to match {indentExpr extType}"
  pure (val, type, u)

end Lean.Meta.CheckTactic
```
