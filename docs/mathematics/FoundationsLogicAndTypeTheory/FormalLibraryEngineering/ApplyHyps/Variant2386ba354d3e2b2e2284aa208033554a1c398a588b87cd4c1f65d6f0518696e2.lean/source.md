# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ApplyHyps.Variant2386ba354d3e2b2e2284aa208033554a1c398a588b87cd4c1f65d6f0518696e2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0033af716b5ec1f6a00d54b54a54b8b2f3511417` · SHA-256 `2386ba354d3e2b2e2284aa208033554a1c398a588b87cd4c1f65d6f0518696e2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Frontend.Attribute

public section

namespace Aesop.BuiltinRules

open Lean
open Lean.Meta

meta def applyHyp (hyp : FVarId) (goal : MVarId) (md : TransparencyMode) :
    BaseM RuleApplication := do
  let (goals, #[step]) ← applyS goal (.fvar hyp) none md |>.run
    | throwError "aesop: internal error in applyHyps: multiple steps"
  let mkDiff newGoal := return {
    oldGoal := goal
    addedFVars := ∅
    removedFVars := ∅
    targetChanged := ! (← isGoalDiffDefeqTarget goal newGoal)
    newGoal
  }
  return {
    goals := ← goals.mapM fun newGoal => return { diff := ← mkDiff newGoal }
    postState := step.postState
    scriptSteps? := #[step]
    successProbability? := none
  }

@[aesop unsafe 75% tactic (rule_sets := [builtin])]
meta def applyHyps : RuleTac := λ input =>
  input.goal.withContext do
    let lctx ← getLCtx
    let md := input.options.applyHypsTransparency
    let mut rapps := Array.mkEmpty lctx.decls.size
    for localDecl in lctx do
      if localDecl.isImplementationDetail then continue
      let initialState ← saveState
      try
        let rapp ← applyHyp localDecl.fvarId input.goal md
        rapps := rapps.push rapp
      catch _ => continue
      finally restoreState initialState
    return ⟨rapps⟩

end Aesop.BuiltinRules
```
