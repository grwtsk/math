-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ListNthLe.Variant0c8b4bafeb3dc56a26a5cb9a0eef6bc86b976ccb4b95b66418a9a1288dd8a874","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0c8b4bafeb3dc56a26a5cb9a0eef6bc86b976ccb4b95b66418a9a1288dd8a874","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ListNthLe.Variant0c8b4bafeb3dc56a26a5cb9a0eef6bc86b976ccb4b95b66418a9a1288dd8a874","mathematical_subject":"Computation.DataStructures","original_sha256":"0c8b4bafeb3dc56a26a5cb9a0eef6bc86b976ccb4b95b66418a9a1288dd8a874","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/test/GeneralizeProofs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Nat.Basic
import Mathlib.Tactic.GeneralizeProofs
import Std.Tactic.GuardExpr
import Mathlib.Tactic.LibrarySearch


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ListNthLe.Variant0c8b4bafeb3dc56a26a5cb9a0eef6bc86b976ccb4b95b66418a9a1288dd8a874

set_option autoImplicit true
def List.nthLe (l : List α) (n) (h : n < l.length) : α := sorry

example : List.nthLe [1, 2] 1 (by simp) = 2 := by
  -- ⊢ [1 2].nth_le 1 _ = 2
  generalize_proofs h
  -- h : 1 < [1 2].length
  -- ⊢ [1 2].nth_le 1 h = 2
  sorry

example (x : ℕ) (h : x < 2) : Classical.choose (⟨x, h⟩ : ∃ x, x < 2) < 2 := by
  generalize_proofs a
  guard_hyp a : ∃ x, x < 2
  guard_target = Classical.choose a < 2
  exact Classical.choose_spec a

example (x : ℕ) (h : x < 2) : Classical.choose (⟨x, h⟩ : ∃ x, x < 2) = Classical.choose (⟨x, h⟩ : ∃ x, x < 2) := by
  generalize_proofs a
  guard_hyp a : ∃ x, x < 2
  guard_target = Classical.choose a = Classical.choose a
  rfl

example (x : ℕ) (h : x < 2) : Classical.choose (⟨x, h⟩ : ∃ x, x < 2) =
  Classical.choose (⟨x, Nat.lt_succ_of_lt h⟩ : ∃ x, x < 3) := by
  generalize_proofs a
  guard_hyp a : ∃ x, x < 2
  guard_target = Classical.choose a = Classical.choose _
  sorry

example (x : ℕ) (h : x < 2) : Classical.choose (⟨x, h⟩ : ∃ x, x < 2) =
  Classical.choose (⟨x, Nat.lt_succ_of_lt h⟩ : ∃ x, x < 3) := by
  generalize_proofs
  guard_target = Classical.choose _ = Classical.choose _
  sorry

example (x : ℕ) (h : x < 2) : Classical.choose (⟨x, h⟩ : ∃ x, x < 2) =
  Classical.choose (⟨x, Nat.lt_succ_of_lt h⟩ : ∃ x, x < 3) := by
  generalize_proofs _ a
  guard_hyp a : ∃ x, x < 3
  guard_target = Classical.choose _ = Classical.choose a
  sorry

example (a : ∃ x, x < 2) : Classical.choose a < 2 := by
  generalize_proofs
  guard_target = Classical.choose a < 2
  exact Classical.choose_spec a

example (a : ∃ x, x < 2) : Classical.choose a < 2 := by
  generalize_proofs t
  guard_target = Classical.choose a < 2
  exact Classical.choose_spec a

example (x : ℕ) (h : x < 2) (H : Classical.choose (⟨x, h⟩ : ∃ x, x < 2) < 2) :
    Classical.choose (⟨x, h⟩ : ∃ x, x < 2) < 2 := by
  generalize_proofs a at H ⊢
  guard_hyp a : ∃ x, x < 2
  guard_hyp H : Classical.choose a < 2
  guard_target = Classical.choose a < 2
  exact H

-- FIXME: result is not type correct
-- example (H : ∀ y, ∃ (x : ℕ) (h : x < y), Classical.choose (⟨x, h⟩ : ∃ x, x < y) < y) :
--   ∀ y, ∃ (x : ℕ) (h : x < y), Classical.choose (⟨x, h⟩ : ∃ x, x < y) < y := by
--   generalize_proofs a at H ⊢

attribute [local instance] Classical.propDecidable

example (H : ∀ x, x = 1) : (if h : ∃ (k : ℕ), k = 1 then Classical.choose h else 0) = 1 := by
  rw [dif_pos]
  rotate_left
  { exact ⟨1, rfl⟩ }
  generalize_proofs h g
  guard_target = Classical.choose h = 1
  apply H
