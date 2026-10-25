# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Assumption.Varianta40b74f7cd0c796a2e3759863be052f20f71ea25b723a9061283fd601ac6bde6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7bb428a825f00212b1cd256376a61bab5d3ca157` · SHA-256 `a40b74f7cd0c796a2e3759863be052f20f71ea25b723a9061283fd601ac6bde6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Frontend.Attribute

public section

open Lean
open Lean.Meta

namespace Aesop.BuiltinRules

@[aesop safe -50 (rule_sets := [builtin])]
meta def assumption : RuleTac := λ input => do
  let goal := input.goal
  let md := input.options.assumptionTransparency
  goal.withContext do
    goal.checkNotAssigned `Aesop.BuiltinRules.assumption
    goal.instantiateMVars
    let tgt ← goal.getType
    let tgtHasMVar := tgt.hasMVar
    let initialState ← saveState
    let mut applications := #[]
    for ldecl in ← getLCtx do
      if ldecl.isImplementationDetail then
        continue
      restoreState initialState
      let (some (application, proofHasMVar)) ← tryHyp goal ldecl.fvarId md
        | continue
      if ! tgtHasMVar && ! proofHasMVar then
        applications := #[application]
        break
      else
        applications := applications.push application
    if applications.isEmpty then
      throwTacticEx `Aesop.BuiltinRules.assumption goal "no matching assumption found"
    return ⟨applications⟩
  where
    tryHyp (goal : MVarId) (fvarId : FVarId) (md : TransparencyMode) :
        BaseM (Option (RuleApplication × Bool)) := do
      let (true, steps) ← tryExactFVarS goal fvarId md |>.run
        | return none
      let #[step] := steps
        | throwError "aesop: internal error in assumption: multiple steps"
      let proofHasMVar := (← fvarId.getType).hasMVar
      let app := {
        goals := #[]
        postState := step.postState
        scriptSteps? := #[step]
        successProbability? := none
      }
      return some (app, proofHasMVar)

end Aesop.BuiltinRules
```
