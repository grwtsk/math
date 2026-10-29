-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.ConjPow.Variant9ca605ab52e670f3e656fe77c58e74bc59c9c932dcb302a33cad7844321f164b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9ca605ab52e670f3e656fe77c58e74bc59c9c932dcb302a33cad7844321f164b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.ConjPow.Variant9ca605ab52e670f3e656fe77c58e74bc59c9c932dcb302a33cad7844321f164b","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"9ca605ab52e670f3e656fe77c58e74bc59c9c932dcb302a33cad7844321f164b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/GroupWithZero/Conj.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Aaron Anderson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Aaron Anderson
-/
import Mathlib.Algebra.Group.Conj
import Mathlib.Algebra.GroupWithZero.Units.Basic

/-!
# Conjugacy in a group with zero
-/


namespace GRWTSK.Algebra.UniversalAlgebra.ConjPow.Variant9ca605ab52e670f3e656fe77c58e74bc59c9c932dcb302a33cad7844321f164b

assert_not_exists Multiset Ring
-- TODO
-- assert_not_exists DenselyOrdered

namespace GroupWithZero

variable {α : Type*} [GroupWithZero α] {a b : α}

@[simp] lemma isConj_iff₀ : IsConj a b ↔ ∃ c : α, c ≠ 0 ∧ c * a * c⁻¹ = b := by
  rw [IsConj, Units.exists_iff_ne_zero (p := (SemiconjBy · a b))]
  congr! 2 with c
  exact and_congr_right (mul_inv_eq_iff_eq_mul₀ · |>.symm)

lemma conj_pow₀ {s : ℕ} {a d : α} (ha : a ≠ 0) : (a⁻¹ * d * a) ^ s = a⁻¹ * d ^ s * a :=
  let u : αˣ := ⟨a, a⁻¹, mul_inv_cancel₀ ha, inv_mul_cancel₀ ha⟩
  Units.conj_pow' u d s

end GroupWithZero
