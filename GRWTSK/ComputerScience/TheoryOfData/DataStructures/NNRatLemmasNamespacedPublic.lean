-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.CoeIndicator.Variant79005fa245fb3cc27cbc665b22490fc05da57a9ce780f09c35ff859a0f523086","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"79005fa245fb3cc27cbc665b22490fc05da57a9ce780f09c35ff859a0f523086","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.CoeIndicator.Variant79005fa245fb3cc27cbc665b22490fc05da57a9ce780f09c35ff859a0f523086","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"79005fa245fb3cc27cbc665b22490fc05da57a9ce780f09c35ff859a0f523086","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/NNRat/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies, Bhavik Mehta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies, Bhavik Mehta
-/
module

public import Mathlib.Algebra.Field.Rat
public import Mathlib.Algebra.Group.Indicator
public import Mathlib.Algebra.Order.Field.Rat
public import Mathlib.Data.Rat.Lemmas
public import Mathlib.Tactic.Zify

/-!
# Field and action structures on the nonnegative rationals

This file provides additional results about `NNRat` that cannot live in earlier files due to import
cycles.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.CoeIndicator.Variant79005fa245fb3cc27cbc665b22490fc05da57a9ce780f09c35ff859a0f523086

@[expose] public section

open scoped NNRat

namespace NNRat
variable {α : Type*}

@[simp, norm_cast]
lemma coe_indicator (s : Set α) (f : α → ℚ≥0) (a : α) :
    ((s.indicator f a : ℚ≥0) : ℚ) = s.indicator (fun x ↦ ↑(f x)) a :=
  map_indicator coeHom _ _ _

end NNRat

open NNRat

namespace Rat

variable {p q : ℚ}

lemma toNNRat_inv (q : ℚ) : toNNRat q⁻¹ = (toNNRat q)⁻¹ := by
  obtain hq | hq := le_total q 0
  · rw [toNNRat_eq_zero.mpr hq, inv_zero, toNNRat_eq_zero.mpr (inv_nonpos.mpr hq)]
  · nth_rw 1 [← Rat.coe_toNNRat q hq]
    rw [← coe_inv, toNNRat_coe]

lemma toNNRat_div (hp : 0 ≤ p) : toNNRat (p / q) = toNNRat p / toNNRat q := by
  rw [div_eq_mul_inv, div_eq_mul_inv, ← toNNRat_inv, ← toNNRat_mul hp]

lemma toNNRat_div' (hq : 0 ≤ q) : toNNRat (p / q) = toNNRat p / toNNRat q := by
  rw [div_eq_inv_mul, div_eq_inv_mul, toNNRat_mul (inv_nonneg.2 hq), toNNRat_inv]

end Rat

/-! ### Numerator and denominator -/

namespace NNRat

variable {q : ℚ≥0}

/-- A recursor for nonnegative rationals in terms of numerators and denominators. -/
protected def rec {α : ℚ≥0 → Sort*} (h : ∀ m n : ℕ, α (m / n)) (q : ℚ≥0) : α q := by
  rw [← num_div_den q]; apply h

theorem mul_num (q₁ q₂ : ℚ≥0) :
    (q₁ * q₂).num = q₁.num * q₂.num / Nat.gcd (q₁.num * q₂.num) (q₁.den * q₂.den) := by
  zify
  convert! Rat.mul_num q₁ q₂ <;> norm_cast

theorem mul_den (q₁ q₂ : ℚ≥0) :
    (q₁ * q₂).den = q₁.den * q₂.den / Nat.gcd (q₁.num * q₂.num) (q₁.den * q₂.den) := by
  convert! Rat.mul_den q₁ q₂
  norm_cast

/-- A version of `NNRat.mul_den` without division. -/
theorem den_mul_den_eq_den_mul_gcd (q₁ q₂ : ℚ≥0) :
    q₁.den * q₂.den = (q₁ * q₂).den * ((q₁.num * q₂.num).gcd (q₁.den * q₂.den)) := by
  convert! Rat.den_mul_den_eq_den_mul_gcd q₁ q₂
  norm_cast

/-- A version of `NNRat.mul_num` without division. -/
theorem num_mul_num_eq_num_mul_gcd (q₁ q₂ : ℚ≥0) :
    q₁.num * q₂.num = (q₁ * q₂).num * ((q₁.num * q₂.num).gcd (q₁.den * q₂.den)) := by
  zify
  convert! Rat.num_mul_num_eq_num_mul_gcd q₁ q₂ <;> norm_cast

end NNRat
