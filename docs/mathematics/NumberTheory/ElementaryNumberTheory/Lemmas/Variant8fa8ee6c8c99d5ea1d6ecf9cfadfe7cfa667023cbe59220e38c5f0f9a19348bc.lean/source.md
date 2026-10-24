# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.Lemmas.Variant8fa8ee6c8c99d5ea1d6ecf9cfadfe7cfa667023cbe59220e38c5f0f9a19348bc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f3c76238c61f09776c780581707348ccd7e97037` · SHA-256 `03f4c518631cb07fa15630992c03f3a28afa76d70d97d9928b74fa16c3399032`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.CastPow.Variant548339185ab224cce61b217d2a90beabe4ca96741c36428ca81cc9a0aa1f7e10","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"548339185ab224cce61b217d2a90beabe4ca96741c36428ca81cc9a0aa1f7e10","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.PrimeArithmetic.SourceCorpus.CastPow.Variant548339185ab224cce61b217d2a90beabe4ca96741c36428ca81cc9a0aa1f7e10","mathematical_subject":"NumberTheory.PrimeArithmetic","original_sha256":"548339185ab224cce61b217d2a90beabe4ca96741c36428ca81cc9a0aa1f7e10","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Rat/Cast/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro
-/
import Mathlib.Algebra.Order.Nonneg.Field
import Mathlib.Data.Rat.Cast.Defs
import Mathlib.Tactic.Positivity.Basic

/-!
# Some exiled lemmas about casting

These lemmas have been removed from `Mathlib/Data/Rat/Cast/Defs.lean`
to avoiding needing to import `Mathlib/Algebra/Field/Basic.lean` there.

In fact, these lemmas don't appear to be used anywhere in Mathlib,
so perhaps this file can simply be deleted.
-/


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.CastPow.Variant548339185ab224cce61b217d2a90beabe4ca96741c36428ca81cc9a0aa1f7e10

namespace Rat

variable {α : Type*} [DivisionRing α]

-- Note that this is more general than `(Rat.castHom α).map_pow`.
@[simp, norm_cast]
lemma cast_pow (p : ℚ) (n : ℕ) : ↑(p ^ n) = (p ^ n : α) := by
  rw [cast_def, cast_def, den_pow, num_pow, Nat.cast_pow, Int.cast_pow, div_eq_mul_inv, ← inv_pow,
    ← (Int.cast_commute _ _).mul_pow, ← div_eq_mul_inv]

@[simp]
theorem cast_inv_nat (n : ℕ) : ((n⁻¹ : ℚ) : α) = (n : α)⁻¹ := by
  rcases n with - | n
  · simp
  rw [cast_def, inv_natCast_num, inv_natCast_den, if_neg n.succ_ne_zero,
    Int.sign_eq_one_of_pos (Int.ofNat_succ_pos n), Int.cast_one, one_div]

@[simp]
theorem cast_inv_int (n : ℤ) : ((n⁻¹ : ℚ) : α) = (n : α)⁻¹ := by
  rcases n with n | n
  · simp [ofInt_eq_cast, cast_inv_nat]
  · simp only [ofInt_eq_cast, Int.cast_negSucc, ← Nat.cast_succ, cast_neg, inv_neg, cast_inv_nat]

@[simp, norm_cast]
theorem cast_nnratCast {K} [DivisionRing K] (q : ℚ≥0) :
    ((q : ℚ) : K) = (q : K) := by
  rw [Rat.cast_def, NNRat.cast_def, NNRat.cast_def]
  have hn := @num_div_eq_of_coprime q.num q.den ?hdp q.coprime_num_den
  on_goal 1 => have hd := @den_div_eq_of_coprime q.num q.den ?hdp q.coprime_num_den
  case hdp => simpa only [Int.ofNat_pos] using q.den_pos
  simp only [Int.cast_natCast, Nat.cast_inj] at hn hd
  rw [hn, hd, Int.cast_natCast]

/-- Casting a scientific literal via `ℚ` is the same as casting directly. -/
@[simp, norm_cast]
theorem cast_ofScientific {K} [DivisionRing K] (m : ℕ) (s : Bool) (e : ℕ) :
    (OfScientific.ofScientific m s e : ℚ) = (OfScientific.ofScientific m s e : K) := by
  rw [← NNRat.cast_ofScientific (K := K), ← NNRat.cast_ofScientific, cast_nnratCast]

end Rat

namespace NNRat

@[simp, norm_cast]
theorem cast_pow {K} [DivisionSemiring K] (q : ℚ≥0) (n : ℕ) :
    NNRat.cast (q ^ n) = (NNRat.cast q : K) ^ n := by
  rw [cast_def, cast_def, den_pow, num_pow, Nat.cast_pow, Nat.cast_pow, div_eq_mul_inv, ← inv_pow,
    ← (Nat.cast_commute _ _).mul_pow, ← div_eq_mul_inv]

theorem cast_zpow_of_ne_zero {K} [DivisionSemiring K] (q : ℚ≥0) (z : ℤ) (hq : (q.num : K) ≠ 0) :
    NNRat.cast (q ^ z) = (NNRat.cast q : K) ^ z := by
  obtain ⟨n, rfl | rfl⟩ := z.eq_nat_or_neg
  · simp
  · simp_rw [zpow_neg, zpow_natCast, ← inv_pow, NNRat.cast_pow]
    congr
    rw [cast_inv_of_ne_zero hq]

open OfScientific in
theorem Nonneg.coe_ofScientific {K} [Field K] [LinearOrder K] [IsStrictOrderedRing K]
    (m : ℕ) (s : Bool) (e : ℕ) :
    (ofScientific m s e : {x : K // 0 ≤ x}).val = ofScientific m s e := rfl

end NNRat
```
