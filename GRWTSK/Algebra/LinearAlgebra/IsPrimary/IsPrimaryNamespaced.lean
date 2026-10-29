-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.IsPrimary.Variantffcc4f3656a1927f05caa708a4e9d82b46d9f72fc11d657f56453848f9984e56","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ffcc4f3656a1927f05caa708a4e9d82b46d9f72fc11d657f56453848f9984e56","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.IsPrimary.Variantffcc4f3656a1927f05caa708a4e9d82b46d9f72fc11d657f56453848f9984e56","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"ffcc4f3656a1927f05caa708a4e9d82b46d9f72fc11d657f56453848f9984e56","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/IsPrimary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yakov Pechersky. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yakov Pechersky
-/
import Mathlib.LinearAlgebra.Quotient.Basic
import Mathlib.RingTheory.Ideal.Operations

/-!
# Primary submodules

A proper submodule `S : Submodule R M` is primary iff
  `r • x ∈ S` implies `x ∈ S` or `∃ n : ℕ, r ^ n • (⊤ : Submodule R M) ≤ S`.

## Main results

* `Submodule.isPrimary_iff_zero_divisor_quotient_imp_nilpotent_smul`:
  A `N : Submodule R M` is primary if any zero divisor on `M ⧸ N` is nilpotent.
  See https://mathoverflow.net/questions/3910/primary-decomposition-for-modules
  for a comparison of this definition (a la Atiyah-Macdonald) vs "locally nilpotent" (Matsumura).

## Implementation details

This is a generalization of `Ideal.IsPrimary`. For brevity, the pointwise instances are used
to define the nilpotency of `r : R`.

## References

* [M. F. Atiyah and I. G. Macdonald, *Introduction to commutative algebra*][atiyah-macdonald]
  Chapter 4, Exercise 21.

-/


namespace GRWTSK.Algebra.LinearAlgebra.IsPrimary.Variantffcc4f3656a1927f05caa708a4e9d82b46d9f72fc11d657f56453848f9984e56

open Pointwise

namespace Submodule

section CommSemiring

variable {R M : Type*} [CommSemiring R] [AddCommMonoid M] [Module R M]

/-- A proper submodule `S : Submodule R M` is primary iff
  `r • x ∈ S` implies `x ∈ S` or `∃ n : ℕ, r ^ n • (⊤ : Submodule R M) ≤ S`.
  This generalizes `Ideal.IsPrimary`. -/
protected def IsPrimary (S : Submodule R M) : Prop :=
  S ≠ ⊤ ∧ ∀ {r : R} {x : M}, r • x ∈ S → x ∈ S ∨ ∃ n : ℕ, (r ^ n • ⊤ : Submodule R M) ≤ S

variable {S : Submodule R M}

lemma IsPrimary.ne_top (h : S.IsPrimary) : S ≠ ⊤ := h.left

end CommSemiring

section CommRing

variable {R M : Type*} [CommRing R] [AddCommGroup M] [Module R M] {S : Submodule R M}

lemma isPrimary_iff_zero_divisor_quotient_imp_nilpotent_smul :
    S.IsPrimary ↔ S ≠ ⊤ ∧ ∀ (r : R) (x : M ⧸ S), x ≠ 0 → r • x = 0 →
      ∃ n : ℕ, r ^ n • (⊤ : Submodule R (M ⧸ S)) = ⊥ := by
  refine (and_congr_right fun _ ↦ ?_)
  simp_rw [S.mkQ_surjective.forall, ← map_smul, ne_eq, ← LinearMap.mem_ker, ker_mkQ]
  congr! 2
  rw [forall_comm, ← or_iff_not_imp_left,
    ← LinearMap.range_eq_top.mpr S.mkQ_surjective, ← map_top]
  simp_rw [eq_bot_iff, ← map_pointwise_smul, map_le_iff_le_comap, comap_bot, ker_mkQ]

end CommRing

end Submodule
