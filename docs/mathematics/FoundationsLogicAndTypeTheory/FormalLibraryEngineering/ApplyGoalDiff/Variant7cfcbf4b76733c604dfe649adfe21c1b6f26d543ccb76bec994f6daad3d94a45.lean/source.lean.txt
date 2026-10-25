-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ApplyGoalDiff.Variant782f71bd8ae05284633dc8b1d26157197f82e7bc71b0e99a4721f2c5a7e227a4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"782f71bd8ae05284633dc8b1d26157197f82e7bc71b0e99a4721f2c5a7e227a4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ApplyGoalDiff.Variant782f71bd8ae05284633dc8b1d26157197f82e7bc71b0e99a4721f2c5a7e227a4","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"782f71bd8ae05284633dc8b1d26157197f82e7bc71b0e99a4721f2c5a7e227a4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Forward/State/ApplyGoalDiff.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Forward.State
public import Aesop.RuleSet


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ApplyGoalDiff.Variant782f71bd8ae05284633dc8b1d26157197f82e7bc71b0e99a4721f2c5a7e227a4

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
