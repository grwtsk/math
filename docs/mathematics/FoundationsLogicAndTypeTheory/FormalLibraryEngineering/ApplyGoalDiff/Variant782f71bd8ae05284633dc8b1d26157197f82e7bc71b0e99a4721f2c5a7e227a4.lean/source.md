# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ApplyGoalDiff.Variant782f71bd8ae05284633dc8b1d26157197f82e7bc71b0e99a4721f2c5a7e227a4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `22a50c9912fa19537fad2de028d459bae0d760b5` · SHA-256 `782f71bd8ae05284633dc8b1d26157197f82e7bc71b0e99a4721f2c5a7e227a4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Forward.State
public import Aesop.RuleSet

public section

namespace Aesop.ForwardState

open Lean Lean.Meta

/-- Apply a goal diff to the state, adding and removing hypotheses as indicated
by the diff. -/
def applyGoalDiff (rs : LocalRuleSet) (diff : GoalDiff) (fs : ForwardState) :
    BaseM ForwardState :=
  profilingForwardState do
  if ! aesop.dev.statefulForward.get (← getOptions) then
    return fs
  let fs ← diff.oldGoal.withContext do
    diff.removedFVars.foldM (init := fs) λ fs h => eraseHyp h fs
  diff.newGoal.withContext do
    let fs ← diff.addedFVars.foldM (init := fs) λ fs h => addHyp h fs
    if diff.targetChanged then
      updateTarget fs
    else
      return fs
where
  eraseHyp (h : FVarId) (fs : ForwardState) : BaseM ForwardState :=
    withConstAesopTraceNode .forward (return m!"erase hyp {Expr.fvar h} ({h.name})") do
      return fs.eraseHyp h

  addHyp (h : FVarId) (fs : ForwardState) : BaseM ForwardState := do
    let rules ← rs.applicableForwardRules (← h.getType)
    let patInsts ← rs.forwardRulePatternSubstsInLocalDecl (← h.getDecl)
    return fs.enqueueHypWithPatSubsts h rules patInsts

  updateTarget (fs : ForwardState) : BaseM ForwardState := do
    let patInsts ← rs.forwardRulePatternSubstsInExpr (← diff.newGoal.getType)
    return fs.enqueueTargetPatSubsts patInsts

end Aesop.ForwardState
```
