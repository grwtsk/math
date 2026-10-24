# Complete source: GRWTSK.Algebra.GeomSum.Variant5f03878598d1e683debd8ccbf1495371ba5b912dd8ae444a024a3a48693e9a84

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2c62e82eda46dedac04da5d4c51dc3f9c4d1a197` · SHA-256 `bb0f2342be5a75caeb8dcff1675783bbb02ef67c56c167dfa84ce1b5c50fdfb4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommuteGeomSum.Variant38203fde4e073b2af47fb14acccaa5d46bf0ba50e86d2f8d96eda1803f08b8c0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"38203fde4e073b2af47fb14acccaa5d46bf0ba50e86d2f8d96eda1803f08b8c0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.CommuteGeomSum.Variant38203fde4e073b2af47fb14acccaa5d46bf0ba50e86d2f8d96eda1803f08b8c0","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"38203fde4e073b2af47fb14acccaa5d46bf0ba50e86d2f8d96eda1803f08b8c0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Field/GeomSum.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Neil Strickland. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Neil Strickland
-/
module

public import Mathlib.Algebra.Field.Basic
public import Mathlib.Algebra.Ring.GeomSum

/-!
# Partial sums of geometric series in a field

This file determines the values of the geometric series $\sum_{i=0}^{n-1} x^i$ and
$\sum_{i=0}^{n-1} x^i y^{n-1-i}$ and variants thereof.

## Main statements

* `geom_sum_Ico` proves that $\sum_{i=m}^{n-1} x^i=\frac{x^n-x^m}{x-1}$ in a division ring.
* `geom_sum₂_Ico` proves that $\sum_{i=m}^{n-1} x^iy^{n - 1 - i}=\frac{x^n-y^{n-m}x^m}{x-y}$
  in a field.

Several variants are recorded, generalising in particular to the case of a division ring in
which `x` and `y` commute.
-/


namespace GRWTSK.Algebra.CommuteGeomSum.Variant38203fde4e073b2af47fb14acccaa5d46bf0ba50e86d2f8d96eda1803f08b8c0

public section

assert_not_exists IsOrderedRing

variable {K : Type*}

open Finset

section DivisionRing
variable [DivisionRing K] {x y : K}

protected theorem Commute.geom_sum₂ (h' : Commute x y) (h : x ≠ y)
    (n : ℕ) : ∑ i ∈ range n, x ^ i * y ^ (n - 1 - i) = (x ^ n - y ^ n) / (x - y) := by
  have : x - y ≠ 0 := by simp_all [sub_eq_iff_eq_add]
  rw [← h'.geom_sum₂_mul, mul_div_cancel_right₀ _ this]

theorem geom_sum_eq (h : x ≠ 1) (n : ℕ) : ∑ i ∈ range n, x ^ i = (x ^ n - 1) / (x - 1) := by
  have : x - 1 ≠ 0 := by simp_all [sub_eq_iff_eq_add]
  rw [← geom_sum_mul, mul_div_cancel_right₀ _ this]

protected theorem Commute.geom_sum₂_Ico (h : Commute x y) (hxy : x ≠ y) {m n : ℕ} (hmn : m ≤ n) :
    ∑ i ∈ Finset.Ico m n, x ^ i * y ^ (n - 1 - i) = (x ^ n - y ^ (n - m) * x ^ m) / (x - y) := by
  have : x - y ≠ 0 := by simp_all [sub_eq_iff_eq_add]
  rw [← h.geom_sum₂_Ico_mul hmn, mul_div_cancel_right₀ _ this]

lemma geom_sum_Ico (hx : x ≠ 1) {m n : ℕ} (hmn : m ≤ n) :
    ∑ i ∈ Finset.Ico m n, x ^ i = (x ^ n - x ^ m) / (x - 1) := by
  simp only [sum_Ico_eq_sub _ hmn, geom_sum_eq hx, div_sub_div_same, sub_sub_sub_cancel_right]

lemma geom_sum_Ico' (hx : x ≠ 1) {m n : ℕ} (hmn : m ≤ n) :
    ∑ i ∈ Finset.Ico m n, x ^ i = (x ^ m - x ^ n) / (1 - x) := by
  simpa [geom_sum_Ico hx hmn] using neg_div_neg_eq (x ^ m - x ^ n) (1 - x)

lemma geom_sum_inv (hx1 : x ≠ 1) (hx0 : x ≠ 0) (n : ℕ) :
    ∑ i ∈ range n, x⁻¹ ^ i = (x - 1)⁻¹ * (x - x⁻¹ ^ n * x) := by
  have h₁ : x⁻¹ ≠ 1 := by rwa [inv_eq_one_div, Ne, div_eq_iff_mul_eq hx0, one_mul]
  have h₂ : x⁻¹ - 1 ≠ 0 := mt sub_eq_zero.1 h₁
  have h₃ : x - 1 ≠ 0 := mt sub_eq_zero.1 hx1
  have h₄ : x * (x ^ n)⁻¹ = (x ^ n)⁻¹ * x :=
    Nat.recOn n (by simp) fun n h => by
      rw [pow_succ', mul_inv_rev, ← mul_assoc, h, mul_assoc, mul_inv_cancel₀ hx0, mul_assoc,
        inv_mul_cancel₀ hx0]
  rw [geom_sum_eq h₁, div_eq_iff_mul_eq h₂, ← mul_right_inj' h₃, ← mul_assoc, ← mul_assoc,
    mul_inv_cancel₀ h₃]
  simp only [inv_pow, sub_eq_add_neg, mul_add, one_mul, mul_neg, add_mul, mul_inv_cancel₀ hx0,
    neg_mul, mul_assoc, mul_one, add_comm, neg_add_rev, neg_neg, h₄, add_left_comm]
  rw [add_comm _ (-x), add_assoc, add_assoc _ _ 1]

end DivisionRing

section Field
variable [Field K] {x y : K}

lemma geom₂_sum (h : x ≠ y) (n : ℕ) :
    ∑ i ∈ range n, x ^ i * y ^ (n - 1 - i) = (x ^ n - y ^ n) / (x - y) :=
  (Commute.all x y).geom_sum₂ h n

lemma geom_sum₂_Ico (hxy : x ≠ y) {m n : ℕ} (hmn : m ≤ n) :
    (∑ i ∈ Finset.Ico m n, x ^ i * y ^ (n - 1 - i)) = (x ^ n - y ^ (n - m) * x ^ m) / (x - y) :=
  (Commute.all x y).geom_sum₂_Ico hxy hmn

end Field
```
