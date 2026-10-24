# Complete source: GRWTSK.Analysis.Real.RationalLogEnclosure

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1b240a6bfa660e8396ad14beb4ef3948a21c4b09` · SHA-256 `3a64dce482e98e8d00ec0d0e97f7e398127fba4824bd4975c4f2ab65e54d7637`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.SpecialFunctions.Log.Deriv
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

set_option autoImplicit false

/-!
# Rational logarithm enclosures, with optional dyadic reduction

Only finite rational sums occur in the data. Pinned Mathlib supplies the
complete odd-power remainder and its one-sided sign. The natural dyadic
exponent is checked by an exact source identity, never by an approximate log.
Theorems require mantissa >= 1; totalized rational expressions outside this
domain do not certify anything. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.Real.RationalLogEnclosure

open Filter
open scoped Topology BigOperators

/-- The Cayley coordinate is in [0,1) when q >= 1. -/
def ratio (q : ℚ) : ℚ := (q - 1) / (q + 1)

/-- Exactly K odd-power terms; this is a lower endpoint, not a midpoint. -/
def lower (q : ℚ) (K : ℕ) : ℚ :=
  2 * ∑ j ∈ Finset.range K, ratio q ^ (2 * j + 1) / (2 * (j : ℚ) + 1)

/-- A complete remainder, not the next term alone. -/
def width (q : ℚ) (K : ℕ) : ℚ :=
  2 * ratio q ^ (2 * K + 1) / (1 - ratio q ^ 2)

theorem ratio_bounds (q : ℚ) (hq : 1 ≤ q) : 0 ≤ ratio q ∧ ratio q < 1 := by
  have hd : 0 < q + 1 := by linarith
  constructor
  · exact div_nonneg (sub_nonneg.mpr hq) hd.le
  · unfold ratio
    exact (div_lt_one hd).mpr (by linarith)

theorem ratio_le_third (q : ℚ) (hq : 1 ≤ q) (hu : q ≤ 2) : ratio q ≤ 1 / 3 := by
  unfold ratio
  apply (div_le_iff₀ (by linarith : 0 < q + 1)).mpr
  linarith

theorem width_nonneg (q : ℚ) (hq : 1 ≤ q) (K : ℕ) : 0 ≤ width q K := by
  obtain ⟨hr0, hr1⟩ := ratio_bounds q hq
  have hd : 0 < 1 - ratio q ^ 2 := by nlinarith
  exact div_nonneg (mul_nonneg (by norm_num) (pow_nonneg hr0 _)) hd.le

/-- Reconstruct the positive source before invoking its actual logarithm. -/
theorem source_of_ratio (q : ℚ) (hq : 1 ≤ q) :
    (1 + (ratio q : ℝ)) / (1 - (ratio q : ℝ)) = (q : ℝ) := by
  have hqR : (1 : ℝ) ≤ q := by exact_mod_cast hq
  have hq0 : (q : ℝ) ≠ 0 := by linarith
  have hd : (q : ℝ) + 1 ≠ 0 := by linarith
  simp only [ratio, Rat.cast_div, Rat.cast_sub, Rat.cast_add, Rat.cast_one]
  field_simp [hq0, hd]
  <;> ring

/-- The lower endpoint and the whole omitted remainder enclose actual Real.log. -/
theorem log_bounds (q : ℚ) (hq : 1 ≤ q) (K : ℕ) :
    (lower q K : ℝ) ≤ Real.log (q : ℝ) ∧
      Real.log (q : ℝ) ≤ (lower q K : ℝ) + (width q K : ℝ) := by
  have hr0 : (0 : ℝ) ≤ (ratio q : ℝ) := by exact_mod_cast (ratio_bounds q hq).1
  have hr1 : (ratio q : ℝ) < 1 := by exact_mod_cast (ratio_bounds q hq).2
  have hlo := Real.sum_range_le_log_div hr0 hr1 K
  have hup := Real.log_div_le_sum_range_add hr0 hr1 K
  rw [source_of_ratio q hq] at hlo hup
  have hL : (lower q K : ℝ) = 2 *
      ∑ j ∈ Finset.range K, (ratio q : ℝ) ^ (2 * j + 1) / (2 * (j : ℝ) + 1) := by
    simp only [lower, Rat.cast_mul, Rat.cast_ofNat, Rat.cast_sum, Rat.cast_div,
      Rat.cast_pow, Rat.cast_add, Rat.cast_natCast, Rat.cast_one]
  have hW : (width q K : ℝ) =
      2 * (ratio q : ℝ) ^ (2 * K + 1) / (1 - (ratio q : ℝ) ^ 2) := by
    simp only [width, Rat.cast_div, Rat.cast_mul, Rat.cast_ofNat, Rat.cast_pow,
      Rat.cast_sub, Rat.cast_one]
  rw [hL, hW]
  simp only [mul_div_assoc]
  constructor <;> linarith

/-- Reduction to [1,2] gives a uniform rational geometric width. -/
theorem width_le_geometric (q : ℚ) (hq : 1 ≤ q) (hu : q ≤ 2) (K : ℕ) :
    width q K ≤ (3 / 4 : ℚ) * (1 / 9 : ℚ) ^ K := by
  have hr0 := (ratio_bounds q hq).1
  have hr := ratio_le_third q hq hu
  have hd : (8 / 9 : ℚ) ≤ 1 - ratio q ^ 2 := by nlinarith
  have hp := pow_le_pow_left₀ hr0 hr (2 * K + 1)
  unfold width
  calc
    _ ≤ (2 * (1 / 3 : ℚ) ^ (2 * K + 1)) / (1 - ratio q ^ 2) :=
      div_le_div_of_nonneg_right (mul_le_mul_of_nonneg_left hp (by norm_num))
        (by linarith)
    _ ≤ (2 * (1 / 3 : ℚ) ^ (2 * K + 1)) / (8 / 9 : ℚ) :=
      div_le_div_of_nonneg_left (by positivity) (by norm_num) hd
    _ = (3 / 4 : ℚ) * (1 / 9 : ℚ) ^ K := by
      rw [pow_add, pow_mul]
      norm_num <;> ring

/-- Exact dyadic source data. No logarithm value or logarithm-error proof is a field.
The upper mantissa bound is optional: it is needed for the fast uniform rate,
not for soundness. Every rational q>=1 has the direct exponent-zero input. -/
structure DyadicInput (t : ℝ) where
  mantissa : ℚ
  exponent : ℕ
  terms : ℕ
  mantissa_ge_one : 1 ≤ mantissa
  source_eq : t = (2 : ℝ) ^ exponent * (mantissa : ℝ)

namespace DyadicInput

variable {t : ℝ}

def lowerValue (p : DyadicInput t) : ℚ :=
  (p.exponent : ℚ) * lower 2 p.terms + lower p.mantissa p.terms

def totalWidth (p : DyadicInput t) : ℚ :=
  (p.exponent : ℚ) * width 2 p.terms + width p.mantissa p.terms

def center (p : DyadicInput t) : ℚ := p.lowerValue + p.totalWidth / 2

def error (p : DyadicInput t) : ℚ := p.totalWidth / 2

theorem totalWidth_nonneg (p : DyadicInput t) : 0 ≤ p.totalWidth := by
  exact add_nonneg (mul_nonneg (Nat.cast_nonneg _)
    (width_nonneg 2 (by norm_num) p.terms))
    (width_nonneg p.mantissa p.mantissa_ge_one p.terms)

theorem error_nonneg (p : DyadicInput t) : 0 ≤ p.error :=
  div_nonneg p.totalWidth_nonneg (by norm_num)

theorem source_pos (p : DyadicInput t) : 0 < t := by
  have hm : (0 : ℝ) < p.mantissa := by
    have h : (1 : ℝ) ≤ p.mantissa := by exact_mod_cast p.mantissa_ge_one
    linarith
  rw [p.source_eq]
  positivity

/-- The log(2) contribution is enclosed too, including its exponent multiplier. -/
theorem bounds (p : DyadicInput t) :
    (p.lowerValue : ℝ) ≤ Real.log t ∧
      Real.log t ≤ (p.lowerValue : ℝ) + (p.totalWidth : ℝ) := by
  have hm := log_bounds p.mantissa p.mantissa_ge_one p.terms
  have h2 := log_bounds 2 (by norm_num) p.terms
  have hmp : (0 : ℝ) < p.mantissa := by
    have h : (1 : ℝ) ≤ p.mantissa := by exact_mod_cast p.mantissa_ge_one
    linarith
  have he : Real.log t = (p.exponent : ℝ) * Real.log 2 + Real.log (p.mantissa : ℝ) := by
    calc
      Real.log t = Real.log ((2 : ℝ) ^ p.exponent * (p.mantissa : ℝ)) :=
        congrArg Real.log p.source_eq
      _ = _ := by rw [Real.log_mul (by positivity) hmp.ne', Real.log_pow]
  have hl := mul_le_mul_of_nonneg_left h2.1 (Nat.cast_nonneg p.exponent : (0 : ℝ) ≤ p.exponent)
  have hu := mul_le_mul_of_nonneg_left h2.2 (Nat.cast_nonneg p.exponent : (0 : ℝ) ≤ p.exponent)
  simp only [Rat.cast_ofNat] at hl hu
  rw [he]
  simp only [lowerValue, totalWidth, Rat.cast_add, Rat.cast_mul, Rat.cast_natCast]
  constructor <;> nlinarith [hm.1, hm.2]

/-- Midpoint conversion uses half the COMPLETE width, not half a next term. -/
theorem sound (p : DyadicInput t) :
    |Real.log t - (p.center : ℝ)| ≤ (p.error : ℝ) := by
  obtain ⟨hl, hu⟩ := p.bounds
  rw [abs_le]
  simp only [center, error, Rat.cast_add, Rat.cast_div, Rat.cast_ofNat]
  constructor <;> linarith

/-- Fixed exact source, arbitrary truncation length; no numerical log oracle. -/
def direct (q : ℚ) (hq : 1 ≤ q) (K : ℕ) : DyadicInput (q : ℝ) where
  mantissa := q
  exponent := 0
  terms := K
  mantissa_ge_one := hq
  source_eq := by simp

/-- A supplied dyadic factorization needs only exact arithmetic checks. -/
def reduced (q : ℚ) (k K : ℕ) (hq : 1 ≤ q / (2 : ℚ) ^ k) :
    DyadicInput (q : ℝ) where
  mantissa := q / (2 : ℚ) ^ k
  exponent := k
  terms := K
  mantissa_ge_one := hq
  source_eq := by
    push_cast
    field_simp
    <;> ring

/-- Refining precision does not alter the represented endpoint. -/
def withTerms (p : DyadicInput t) (K : ℕ) : DyadicInput t := { p with terms := K }

theorem reduced_error_le (p : DyadicInput t) (hm : p.mantissa ≤ 2) :
    p.error ≤ (((p.exponent : ℚ) + 1) * (3 / 8 : ℚ)) * (1 / 9 : ℚ) ^ p.terms := by
  have h2 := width_le_geometric 2 (by norm_num) (by norm_num) p.terms
  have hu := width_le_geometric p.mantissa p.mantissa_ge_one hm p.terms
  have hk := mul_le_mul_of_nonneg_left h2 (Nat.cast_nonneg p.exponent : (0 : ℚ) ≤ p.exponent)
  unfold error totalWidth
  nlinarith

/-- The uniform geometric rate is for a fixed dyadic factorization, not growing exponents. -/
theorem error_tendsto_zero (p : DyadicInput t) (hm : p.mantissa ≤ 2) :
    Tendsto (fun K : ℕ => ((p.withTerms K).error : ℝ)) atTop (𝓝 0) := by
  have hb (K : ℕ) : ((p.withTerms K).error : ℝ) ≤
      (((p.exponent : ℝ) + 1) * (3 / 8 : ℝ)) * (1 / 9 : ℝ) ^ K := by
    have h := (p.withTerms K).reduced_error_le hm
    change (p.withTerms K).error ≤ ((p.exponent : ℚ) + 1) * (3 / 8 : ℚ) * (1 / 9 : ℚ) ^ K at h
    have hcast := (Rat.cast_le (K := ℝ)).2 h
    simpa only [Rat.cast_mul, Rat.cast_add, Rat.cast_natCast, Rat.cast_one,
      Rat.cast_div, Rat.cast_ofNat, Rat.cast_pow] using hcast
  have ht := (tendsto_pow_atTop_nhds_zero_of_lt_one
    (by norm_num : (0 : ℝ) ≤ 1 / 9) (by norm_num : (1 / 9 : ℝ) < 1)).const_mul
      (((p.exponent : ℝ) + 1) * (3 / 8 : ℝ))
  exact squeeze_zero (fun K => by exact_mod_cast (p.withTerms K).error_nonneg)
    hb (by simpa using ht)

end DyadicInput
end GRWTSK.Analysis.Real.RationalLogEnclosure
```
