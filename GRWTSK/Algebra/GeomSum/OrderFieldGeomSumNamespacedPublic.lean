-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GeomSumOfGt.Varianta32e6704ae991b565efafed84929af08cc88961727bdd626181d6de62b91d60c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a32e6704ae991b565efafed84929af08cc88961727bdd626181d6de62b91d60c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.GeomSumOfGt.Varianta32e6704ae991b565efafed84929af08cc88961727bdd626181d6de62b91d60c","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"a32e6704ae991b565efafed84929af08cc88961727bdd626181d6de62b91d60c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Order/Field/GeomSum.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Neil Strickland. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Neil Strickland
-/
module

public import Mathlib.Algebra.Field.GeomSum
public import Mathlib.Algebra.Order.Ring.Defs

/-!
# Partial sums of geometric series in an ordered field

This file upper- and lower-bounds the values of the geometric series $\sum_{i=0}^{n-1} x^i$ and
$\sum_{i=0}^{n-1} x^i y^{n-1-i}$ and variants thereof.
-/


namespace GRWTSK.Algebra.GeomSumOfGt.Varianta32e6704ae991b565efafed84929af08cc88961727bdd626181d6de62b91d60c

public section

variable {K : Type*}

open Finset

section Semifield
variable [Semifield K] [LinearOrder K] [IsStrictOrderedRing K] [CanonicallyOrderedAdd K]
  [Sub K] [OrderedSub K] {x y : K}

lemma geom₂_sum_of_gt (h : y < x) (n : ℕ) :
    ∑ i ∈ range n, x ^ i * y ^ (n - 1 - i) = (x ^ n - y ^ n) / (x - y) :=
  eq_div_of_mul_eq (tsub_pos_of_lt h).ne' (geom_sum₂_mul_of_ge h.le n)

lemma geom₂_sum_of_lt (h : x < y) (n : ℕ) :
    ∑ i ∈ range n, x ^ i * y ^ (n - 1 - i) = (y ^ n - x ^ n) / (y - x) :=
  eq_div_of_mul_eq (tsub_pos_of_lt h).ne' (geom_sum₂_mul_of_le h.le n)

lemma geom_sum_of_one_lt (h : 1 < x) (n : ℕ) :
    ∑ i ∈ Finset.range n, x ^ i = (x ^ n - 1) / (x - 1) :=
  eq_div_of_mul_eq (tsub_pos_of_lt h).ne' (geom_sum_mul_of_one_le h.le n)

lemma geom_sum_of_lt_one (h : x < 1) (n : ℕ) :
    ∑ i ∈ Finset.range n, x ^ i = (1 - x ^ n) / (1 - x) :=
  eq_div_of_mul_eq (tsub_pos_of_lt h).ne' (geom_sum_mul_of_le_one h.le n)

lemma geom_sum_lt (h0 : x ≠ 0) (h1 : x < 1) (n : ℕ) : ∑ i ∈ range n, x ^ i < (1 - x)⁻¹ := by
  rw [← pos_iff_ne_zero] at h0
  rw [geom_sum_of_lt_one h1, div_lt_iff₀, inv_mul_cancel₀, tsub_lt_self_iff]
  · exact ⟨h0.trans h1, pow_pos h0 n⟩
  · rwa [ne_eq, tsub_eq_zero_iff_le, not_le]
  · rwa [tsub_pos_iff_lt]

end Semifield

variable [Field K] [LinearOrder K] [IsStrictOrderedRing K] {x : K} {m n : ℕ}

lemma geom_sum_Ico_le_of_lt_one (hx : 0 ≤ x) (h'x : x < 1) :
    ∑ i ∈ Ico m n, x ^ i ≤ x ^ m / (1 - x) := by
  rcases le_or_gt m n with (hmn | hmn)
  · rw [geom_sum_Ico' h'x.ne hmn]
    apply div_le_div₀ (pow_nonneg hx _) _ (sub_pos.2 h'x) le_rfl
    simpa using pow_nonneg hx _
  · rw [Ico_eq_empty, sum_empty]
    · apply div_nonneg (pow_nonneg hx _)
      simpa using h'x.le
    · simpa using hmn.le
