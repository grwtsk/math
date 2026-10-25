-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkInitialForwardState.Variant71663c4de8e0b6376373e4646d7351ef74b040d617c02020f3c66f39ff7354a2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"71663c4de8e0b6376373e4646d7351ef74b040d617c02020f3c66f39ff7354a2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.MkInitialForwardState.Variant71663c4de8e0b6376373e4646d7351ef74b040d617c02020f3c66f39ff7354a2","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"71663c4de8e0b6376373e4646d7351ef74b040d617c02020f3c66f39ff7354a2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Forward/State/Initial.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Forward.State
public import Aesop.RuleSet


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MkInitialForwardState.Variant71663c4de8e0b6376373e4646d7351ef74b040d617c02020f3c66f39ff7354a2

public section

open Lean Lean.Meta

namespace Aesop.LocalRuleSet

def mkInitialForwardState (goal : MVarId) (rs : LocalRuleSet) :
    BaseM (ForwardState × Array ForwardRuleMatch) :=
  profilingForwardState do
  goal.withContext do
    if ! aesop.dev.statefulForward.get (← getOptions) then
      return (∅, #[])
    let mut fs : ForwardState := ∅
    for ldecl in ← show MetaM _ from getLCtx do
      if ldecl.isImplementationDetail then
        continue
      let rules ← rs.applicableForwardRules ldecl.type
      let patInsts ← rs.forwardRulePatternSubstsInLocalDecl ldecl
      fs := fs.enqueueHypWithPatSubsts ldecl.fvarId rules patInsts
    let patInsts ← rs.forwardRulePatternSubstsInExpr (← goal.getType)
    fs := fs.enqueueTargetPatSubsts patInsts
    let ruleMatches := rs.constForwardRuleMatches
    aesop_trace[forward] do
      for m in ruleMatches do
        aesop_trace![forward] "match for constant rule {m.rule.name}"
    return (fs, ruleMatches)

end Aesop.LocalRuleSet
