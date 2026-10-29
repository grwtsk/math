-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Meta.Variant3870c1d24f696b0b06376885e3ed40485aa05b91f2d22be5426bf7e2b4b29bce","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3870c1d24f696b0b06376885e3ed40485aa05b91f2d22be5426bf7e2b4b29bce","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Meta.Variant3870c1d24f696b0b06376885e3ed40485aa05b91f2d22be5426bf7e2b4b29bce","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3870c1d24f696b0b06376885e3ed40485aa05b91f2d22be5426bf7e2b4b29bce","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/isIndependentOf.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Batteries.Lean.Meta.Basic
import Batteries.Tactic.PermuteGoals
import Lean.Meta.Tactic.IndependentOf


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Meta.Variant3870c1d24f696b0b06376885e3ed40485aa05b91f2d22be5426bf7e2b4b29bce

open Lean Meta Elab.Tactic

elab "check_indep" : tactic => do
  match ← getGoals with
  | [] => throwError "Expected goal"
  | g :: l =>
    let res := if ←g.isIndependentOf l then "" else "not "
    let t ← instantiateMVars (← g.getType)
    logWarning s!"{←ppExpr (.mvar g)} : {←ppExpr t} is {res}independent of:"
    l.forM fun g' => do
      logInfo s!"  {←ppExpr (.mvar g')} : {←ppExpr (← g'.getType)}"
      let ppD (l : LocalDecl) : TacticM PUnit := do
        logInfo s!"    {←ppExpr (.fvar l.fvarId)} : {←ppExpr l.type}"
      let _ ← (←g'.getDecl).lctx.forM ppD
      pure ()

/-- warning: ?w : Nat is not independent of: -/
#guard_msgs(warning, drop info) in
example : ∃ (n : Nat), ∀(x : Fin n), x.val = 0 := by
  apply Exists.intro
  intro x
  swap
  check_indep
  exact 0
  revert x
  intro ⟨x, lt⟩
  contradiction

-- This is a tricker one, where the dependency is via a hypothesis.
/-- warning: ?w : Nat is not independent of: -/
#guard_msgs(warning, drop info) in
example : ∃ (n : Nat), ∀(x : Fin n) (y : Nat), x.val = y → y = 0 := by
  apply Exists.intro
  intro x y p
  swap
  check_indep
  exact 0
  revert x
  intro ⟨x, lt⟩
  contradiction
