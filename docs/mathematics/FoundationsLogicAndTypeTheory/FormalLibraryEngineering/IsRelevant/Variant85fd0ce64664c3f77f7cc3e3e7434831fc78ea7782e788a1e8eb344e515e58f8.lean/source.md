# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsRelevant.Variant85fd0ce64664c3f77f7cc3e3e7434831fc78ea7782e788a1e8eb344e515e58f8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3649c763afb71986e9b08b6c4b816198e7a3dbe2` · SHA-256 `85fd0ce64664c3f77f7cc3e3e7434831fc78ea7782e788a1e8eb344e515e58f8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Types
import Lean.Meta.Tactic.Grind.Arith.Cutsat.ToInt
import Lean.Meta.Tactic.Grind.Arith.Linear.StructId
public section
namespace Lean.Meta.Grind.Arith

def isSupportedType (α  : Expr) : GoalM Bool := do
  if isNatType α || isIntType α then
    return true
  else if (← Cutsat.getToIntId? α).isSome then
    return true
  else if (← Linear.getStructId? α).isSome then
    return true
  else
    return false

partial def isRelevantPred (e : Expr) : GoalM Bool :=
  match_expr e with
  | Not p => isRelevantPred p
  | And p q => isRelevantPred p <||> isRelevantPred q
  | Or p q => isRelevantPred p <||> isRelevantPred q
  | LE.le α _ _ _ => isSupportedType α
  | LT.lt α _ _ _ => isSupportedType α
  | Eq α _ _ => isSupportedType α
  | Dvd.dvd α _ _ _ => isSupportedType α
  | _ => return false

end Lean.Meta.Grind.Arith
```
