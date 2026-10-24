-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EvalCalc.Variant209eff412036a918d5dc1887f9c9c65424a3f343b11fea9b20544e8627ef3abf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"209eff412036a918d5dc1887f9c9c65424a3f343b11fea9b20544e8627ef3abf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.EvalCalc.Variant209eff412036a918d5dc1887f9c9c65424a3f343b11fea9b20544e8627ef3abf","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"209eff412036a918d5dc1887f9c9c65424a3f343b11fea9b20544e8627ef3abf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Calc.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Elab.Calc
public import Lean.Elab.Tactic.ElabTerm


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EvalCalc.Variant209eff412036a918d5dc1887f9c9c65424a3f343b11fea9b20544e8627ef3abf

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
