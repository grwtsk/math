# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variantfec2b66aab7c69d825a191b7f136bc3ee3388b4dba7c816dd1c20277e651ca7b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `754da6eb051d77181d4368f9875eafe68380b7d6` · SHA-256 `fec2b66aab7c69d825a191b7f136bc3ee3388b4dba7c816dd1c20277e651ca7b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Lean.Meta.Basic
import Lean.Meta.Tactic.Assert

public section

open Lean Lean.Meta Lean.Elab.Tactic

namespace Aesop

/--
A `MetaM` version of the `replace` tactic. If `fvarId` refers to the
hypothesis `h`, this tactic asserts a new hypothesis `h : type` with proof
`proof : type` and then tries to clear `fvarId`. Unlike `replaceLocalDecl`,
`replaceFVar` always adds the new hypothesis at the end of the local context.

`replaceFVar` returns the new goal, the `FVarId` of the newly asserted
hypothesis and whether the old hypothesis was cleared.
-/
def replaceFVar (goal : MVarId) (fvarId : FVarId) (type : Expr) (proof : Expr) :
    MetaM (MVarId × FVarId × Bool) := do
  let userName ← goal.withContext $ fvarId.getUserName
  let preClearGoal ← goal.assert userName type proof
  let goal ← preClearGoal.tryClear fvarId
  let clearSuccess := preClearGoal != goal
  let (newFVarId, goal) ← intro1Core goal (preserveBinderNames := true)
  return (goal, newFVarId, clearSuccess)

/-- Introduce as many binders as possible while unfolding definitions with the
ambient transparency. -/
partial def introsUnfolding (mvarId : MVarId) : MetaM (Array FVarId × MVarId) :=
  run mvarId #[]
where
  run (mvarId : MVarId) (fvars : Array FVarId) : MetaM (Array FVarId × MVarId) :=
    mvarId.withContext do
      let type ← whnf (← mvarId.getType)
      let size := getIntrosSize type
      if 0 < size then
        let (fvars', mvarId') ← mvarId.introN size
        run mvarId' (fvars ++ fvars')
      else
        return (fvars, mvarId)

end Aesop
```
