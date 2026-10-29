-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.IsLeftRegularPow.Variant056f26845f58ce7db2e98ab8a8ff3d6a37bba559be1a657459e0c0842691c766","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"056f26845f58ce7db2e98ab8a8ff3d6a37bba559be1a657459e0c0842691c766","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.IsLeftRegularPow.Variant056f26845f58ce7db2e98ab8a8ff3d6a37bba559be1a657459e0c0842691c766","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"056f26845f58ce7db2e98ab8a8ff3d6a37bba559be1a657459e0c0842691c766","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/Regular/Pow.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damiano Testa
-/
import Mathlib.Algebra.Hom.Iterate
import Mathlib.Algebra.Regular.Basic
import Mathlib.Algebra.BigOperators.Basic


namespace GRWTSK.Algebra.UniversalAlgebra.IsLeftRegularPow.Variant056f26845f58ce7db2e98ab8a8ff3d6a37bba559be1a657459e0c0842691c766

#align_import algebra.regular.pow from "leanprover-community/mathlib"@"46a64b5b4268c594af770c44d9e502afc6a515cb"

/-!
# Regular elements

## Implementation details

Group powers and other definitions import a lot of the algebra hierarchy.
Lemmas about them are kept separate to be able to provide `IsRegular` early in the
algebra hierarchy.

-/


variable {R : Type*} {a b : R}

section Monoid

variable [Monoid R]

/-- Any power of a left-regular element is left-regular. -/
theorem IsLeftRegular.pow (n : ℕ) (rla : IsLeftRegular a) : IsLeftRegular (a ^ n) := by
  simp only [IsLeftRegular, ← mul_left_iterate, rla.iterate n]
#align is_left_regular.pow IsLeftRegular.pow

/-- Any power of a right-regular element is right-regular. -/
theorem IsRightRegular.pow (n : ℕ) (rra : IsRightRegular a) : IsRightRegular (a ^ n) := by
  rw [IsRightRegular, ← mul_right_iterate]
  exact rra.iterate n
#align is_right_regular.pow IsRightRegular.pow

/-- Any power of a regular element is regular. -/
theorem IsRegular.pow (n : ℕ) (ra : IsRegular a) : IsRegular (a ^ n) :=
  ⟨IsLeftRegular.pow n ra.left, IsRightRegular.pow n ra.right⟩
#align is_regular.pow IsRegular.pow

/-- An element `a` is left-regular if and only if a positive power of `a` is left-regular. -/
theorem IsLeftRegular.pow_iff {n : ℕ} (n0 : 0 < n) : IsLeftRegular (a ^ n) ↔ IsLeftRegular a := by
  refine' ⟨_, IsLeftRegular.pow n⟩
  rw [← Nat.succ_pred_eq_of_pos n0, pow_succ']
  exact IsLeftRegular.of_mul
#align is_left_regular.pow_iff IsLeftRegular.pow_iff

/-- An element `a` is right-regular if and only if a positive power of `a` is right-regular. -/
theorem IsRightRegular.pow_iff {n : ℕ} (n0 : 0 < n) :
    IsRightRegular (a ^ n) ↔ IsRightRegular a := by
  refine' ⟨_, IsRightRegular.pow n⟩
  rw [← Nat.succ_pred_eq_of_pos n0, pow_succ]
  exact IsRightRegular.of_mul
#align is_right_regular.pow_iff IsRightRegular.pow_iff

/-- An element `a` is regular if and only if a positive power of `a` is regular. -/
theorem IsRegular.pow_iff {n : ℕ} (n0 : 0 < n) : IsRegular (a ^ n) ↔ IsRegular a :=
  ⟨fun h => ⟨(IsLeftRegular.pow_iff n0).mp h.left, (IsRightRegular.pow_iff n0).mp h.right⟩, fun h =>
    ⟨IsLeftRegular.pow n h.left, IsRightRegular.pow n h.right⟩⟩
#align is_regular.pow_iff IsRegular.pow_iff

end Monoid

section CommMonoid

open BigOperators

variable {ι R : Type*} [CommMonoid R] {s : Finset ι} {f : ι → R}

lemma IsLeftRegular.prod (h : ∀ i ∈ s, IsLeftRegular (f i)) :
    IsLeftRegular (∏ i in s, f i) :=
  s.prod_induction _ _ (@IsLeftRegular.mul R _) isRegular_one.left h

lemma IsRightRegular.prod (h : ∀ i ∈ s, IsRightRegular (f i)) :
    IsRightRegular (∏ i in s, f i) :=
  s.prod_induction _ _ (@IsRightRegular.mul R _) isRegular_one.right h

lemma IsRegular.prod (h : ∀ i ∈ s, IsRegular (f i)) :
    IsRegular (∏ i in s, f i) :=
  ⟨IsLeftRegular.prod fun a ha ↦ (h a ha).left,
   IsRightRegular.prod fun a ha ↦ (h a ha).right⟩

end CommMonoid
