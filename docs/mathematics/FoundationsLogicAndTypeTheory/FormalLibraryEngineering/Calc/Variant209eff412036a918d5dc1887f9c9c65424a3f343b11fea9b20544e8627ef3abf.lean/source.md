# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Calc.Variant209eff412036a918d5dc1887f9c9c65424a3f343b11fea9b20544e8627ef3abf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aa7aeb1601f5ce88d689343939843e255e1f08fa` · SHA-256 `209eff412036a918d5dc1887f9c9c65424a3f343b11fea9b20544e8627ef3abf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Elab.Calc
public import Lean.Elab.Tactic.ElabTerm

public section

namespace Lean.Elab.Tactic
open Meta

/-- Elaborator for the `calc` tactic mode variant. -/
@[builtin_tactic Lean.calcTactic]
def evalCalc : Tactic
  | `(tactic| calc%$tk $steps:calcSteps) =>
    withRef tk do
    closeMainGoalUsing `calc (checkNewUnassigned := false) fun target tag => do
    withTacticInfoContext steps do
      let steps ← Term.mkCalcStepViews steps
      let target := (← instantiateMVars target).consumeMData
      let (val, mvarIds) ← withCollectingNewGoalsFrom (parentTag := tag) (tagSuffix := `calc) <| runTermElab do
        let (val, valType) ← Term.elabCalcSteps steps
        if (← isDefEq valType target) then
          -- Immediately the right type, no need for further processing.
          return val

        let some (_, lhs, rhs) ← Term.getCalcRelation? valType | unreachable!
        if let some (er, elhs, erhs) ← Term.getCalcRelation? target then
          -- Feature: if the goal is `x ~ y`, try extending the `calc` with `_ ~ y` with a new "last step" goal.
          if ← isDefEq lhs elhs <&&> isDefEq (← inferType rhs) (← inferType elhs) then
            let lastStep := mkApp2 er rhs erhs
            let lastStepGoal ← mkFreshExprSyntheticOpaqueMVar lastStep (tag := tag ++ `calc.step)
            try
              let (val', valType') ← Term.mkCalcTrans val valType lastStepGoal lastStep
              if (← isDefEq valType' target) then
                return val'
            catch _ =>
              pure ()

        -- Calc extension failed, so let's go back and mimic the `calc` expression
        Term.ensureHasTypeWithErrorMsgs target val
          (mkImmedErrorMsg := fun _ => Term.throwCalcFailure steps)
          (mkErrorMsg := fun _ => Term.throwCalcFailure steps)
      pushGoals mvarIds
      return val
  | _ => throwUnsupportedSyntax

end Lean.Elab.Tactic
```
