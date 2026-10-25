# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ext.Variant7cb49b37e100e31dc4b1c0b5b8921344e23a3bdb306afc33adc667d06c0661f1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `facededd652a5779d910e7289d966cbedabb9587` · SHA-256 `7cb49b37e100e31dc4b1c0b5b8921344e23a3bdb306afc33adc667d06c0661f1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Tracing
import Lean.Elab.Tactic.Ext
import Lean.Meta.Tactic.Intro

public section

open Lean Lean.Meta Lean.Elab.Tactic.Ext

namespace Aesop

structure ExtResult where
  depth : Nat
  commonFVarIds : Array FVarId
  goals : Array (MVarId × Array FVarId)

partial def straightLineExt (goal : MVarId) : MetaM ExtResult :=
  go goal 0 #[]
where
  go (goal : MVarId) (depth : Nat) (commonFVarIds : Array FVarId) :
      MetaM ExtResult:= do
    withConstAesopTraceNode .debug (return m!"straightLineExt") do
    aesop_trace[debug] "goal:{indentD goal}"
    let goals? ← show MetaM _ from observing? $ applyExtTheoremAt goal
    if let some goals := goals? then
      aesop_trace[debug] "ext lemma applied; new goals:{indentD $ Elab.goalsToMessageData goals}"
      let goals := goals.toArray
      if goals.isEmpty then
        return { depth := depth + 1, goals := #[], commonFVarIds := #[] }
      let goals ← goals.mapM λ goal => do
        let (fvarIds, goal) ← goal.intros
        return (goal, fvarIds)
      if h : goals.size = 1 then
        let (goal, fvarIds) := goals[0]
        go goal (depth + 1) (commonFVarIds ++ fvarIds)
      else
        return { depth := depth + 1, goals, commonFVarIds }
    else
      aesop_trace[debug] "no applicable ext lemma"
      return { depth, goals := #[(goal, #[])], commonFVarIds }

def straightLineExtProgress (goal : MVarId) : MetaM ExtResult := do
  let result ← straightLineExt goal
  if result.depth == 0 then
    throwError "no applicable extensionality theorem found"
  return result

end Aesop
```
