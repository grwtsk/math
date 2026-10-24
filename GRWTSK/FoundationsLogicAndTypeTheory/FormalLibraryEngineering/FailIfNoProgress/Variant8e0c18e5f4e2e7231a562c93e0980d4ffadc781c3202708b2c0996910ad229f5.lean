-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FailIfNoProgress.Variant748f50ceb5a049cd10ead307321a08e4af8020a8b889e59334d55ff2fabbfd6a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"748f50ceb5a049cd10ead307321a08e4af8020a8b889e59334d55ff2fabbfd6a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.FailIfNoProgress.Variant748f50ceb5a049cd10ead307321a08e4af8020a8b889e59334d55ff2fabbfd6a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"748f50ceb5a049cd10ead307321a08e4af8020a8b889e59334d55ff2fabbfd6a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/fail_if_no_progress.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.FailIfNoProgress
import Mathlib.Tactic.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FailIfNoProgress.Variant748f50ceb5a049cd10ead307321a08e4af8020a8b889e59334d55ff2fabbfd6a

set_option linter.unusedVariables false
set_option linter.style.setOption false
set_option pp.unicode.fun true

section success

example : 1 = 1 := by fail_if_no_progress rfl
example (h : 1 = 1) : True := by
  fail_if_no_progress simp at h
  trivial

example : let x := 1; x = x := by
  intro x
  fail_if_no_progress clear_value x
  rfl

-- New fvarids. This is not easily avoided without remapping fvarids manually.
example : let x := 1; x = x := by
  intro x
  fail_if_no_progress
    revert x
    intro x
  rfl

open Lean Elab Tactic in
example : let x := id 0; x = x := by
  intro x
  fail_if_no_progress
    -- Reduce the value of `x` to `Nat.zero`
    run_tac do
      let g ← getMainGoal
      let decl ← g.getDecl
      let some d := decl.lctx.findFromUserName? `x | throwError "no x"
      let lctx := decl.lctx.modifyLocalDecl d.fvarId fun d =>
        d.setValue (.const ``Nat.zero [])
      let g' ← Meta.mkFreshExprMVarAt lctx decl.localInstances decl.type
      g.assign g'
      replaceMainGoal [g'.mvarId!]
    guard_hyp x : Nat :=ₛ Nat.zero
  rfl

end success

section failure

/--
error: no progress made on
x : Bool
h : x = true
⊢ x = true
-/
#guard_msgs in
example (x : Bool) (h : x = true) : x = true := by
  fail_if_no_progress skip

/--
error: no progress made on
x : Bool
h : x = true
⊢ x = true
-/
#guard_msgs in
example (x : Bool) (h : x = true) : x = true := by
  fail_if_no_progress simp -failIfUnchanged

/--
error: no progress made on
x : Bool
h : x = true
⊢ True
-/
#guard_msgs in
example (x : Bool) (h : x = true) : True := by
  fail_if_no_progress simp -failIfUnchanged at h

/--
error: no progress made on
x : Nat := (fun x ↦ x) Nat.zero
⊢ x = x
-/
#guard_msgs in
open Lean Elab Tactic in
example : let x := (fun x => x) Nat.zero; x = x := by
  intro x
  fail_if_no_progress
    -- Reduce the value of `x` to `Nat.zero`
    run_tac do
      let g ← getMainGoal
      let decl ← g.getDecl
      let some d := decl.lctx.findFromUserName? `x | throwError "no x"
      let lctx := decl.lctx.modifyLocalDecl d.fvarId fun d =>
        d.setValue (.const ``Nat.zero [])
      let g' ← Meta.mkFreshExprMVarAt lctx decl.localInstances decl.type
      g.assign g'
      replaceMainGoal [g'.mvarId!]
    guard_hyp x : Nat :=ₛ Nat.zero

end failure
