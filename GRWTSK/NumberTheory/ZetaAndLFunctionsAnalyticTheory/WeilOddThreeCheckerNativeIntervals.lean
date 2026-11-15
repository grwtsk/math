/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerMidpoint
import Mathlib.Analysis.SpecialFunctions.Log.Deriv

/-!
# The radius-one checker's native logarithm and signed weight intervals

The four rows are those of `scripts/verify_odd_three_sine_hs.py`, blob
`b35434bed50c8a6ba218d01575e1964cae9a93e6`, lines 20–27. The bounds use
the real logarithm series at `1/3`, `1/9`, and `1/15` and rational comparisons
with real square roots. At the prime power `4`, the shift is `log 4` and the
native weight is `log 2 / 2`. The absent rows at `3` and `6` have weight zero
in the original radius-one prime-power sum.
-/

set_option autoImplicit false

open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt
namespace CheckerRounding

open LowSchur OddRootProjection OddThreeFullSignedShift

private theorem log_interval {x a b : ℝ} (n : ℕ) (h₀ : 0 ≤ x) (h₁ : x < 1)
    (hlo : a ≤ 2 * ∑ i ∈ Finset.range n, x ^ (2 * i + 1) / (2 * i + 1))
    (hhi : 2 * ((∑ i ∈ Finset.range n, x ^ (2 * i + 1) / (2 * i + 1)) +
      x ^ (2 * n + 1) / (1 - x ^ 2)) ≤ b) :
    a ≤ Real.log ((1 + x) / (1 - x)) ∧ Real.log ((1 + x) / (1 - x)) ≤ b := by
  exact ⟨by linarith only [hlo, Real.sum_range_le_log_div h₀ h₁ n],
    by linarith only [hhi, Real.log_div_le_sum_range_add h₀ h₁ n]⟩

private theorem log_two_bounds :
    (69314718055994 / 10 ^ 14 : ℝ) ≤ Real.log 2 ∧
    Real.log 2 ≤ 69314718055995 / 10 ^ 14 := by
  rw [show (2 : ℝ) = (1 + 1 / 3) / (1 - 1 / 3) by norm_num]
  apply log_interval 16 <;> norm_num [Finset.sum_range_succ]

private theorem log_five_fourths_bounds :
    (22314355131420 / 10 ^ 14 : ℝ) ≤ Real.log (5 / 4) ∧
    Real.log (5 / 4) ≤ 22314355131421 / 10 ^ 14 := by
  rw [show (5 / 4 : ℝ) = (1 + 1 / 9) / (1 - 1 / 9) by norm_num]
  apply log_interval 8 <;> norm_num [Finset.sum_range_succ]

private theorem log_eight_sevenths_bounds :
    (13353139262452 / 10 ^ 14 : ℝ) ≤ Real.log (8 / 7) ∧
    Real.log (8 / 7) ≤ 13353139262453 / 10 ^ 14 := by
  rw [show (8 / 7 : ℝ) = (1 + 1 / 15) / (1 - 1 / 15) by norm_num]
  apply log_interval 7 <;> norm_num [Finset.sum_range_succ]

private theorem log_four_eq : Real.log 4 = 2 * Real.log 2 := by
  rw [show (4 : ℝ) = 2 ^ (2 : ℕ) by norm_num, Real.log_pow]
  norm_num

private theorem log_five_bounds :
    (160943791243408 / 10 ^ 14 : ℝ) ≤ Real.log 5 ∧
    Real.log 5 ≤ 160943791243411 / 10 ^ 14 := by
  rw [show (5 : ℝ) = 4 * (5 / 4) by norm_num,
    Real.log_mul (by norm_num) (by norm_num), log_four_eq]
  obtain ⟨h₂lo, h₂hi⟩ := log_two_bounds
  obtain ⟨hlo, hhi⟩ := log_five_fourths_bounds
  exact ⟨by linarith only [h₂lo, hlo], by linarith only [h₂hi, hhi]⟩

private theorem log_seven_bounds :
    (194591014905529 / 10 ^ 14 : ℝ) ≤ Real.log 7 ∧
    Real.log 7 ≤ 194591014905533 / 10 ^ 14 := by
  obtain ⟨hlo, hhi⟩ := log_eight_sevenths_bounds
  have hlog : Real.log (8 / 7) = 3 * Real.log 2 - Real.log 7 := by
    rw [Real.log_div (by norm_num) (by norm_num),
      show (8 : ℝ) = 2 ^ (3 : ℕ) by norm_num, Real.log_pow]
    norm_num
  rw [hlog] at hlo hhi
  obtain ⟨h₂lo, h₂hi⟩ := log_two_bounds
  exact ⟨by linarith only [h₂lo, hhi], by linarith only [h₂hi, hlo]⟩

private theorem div_sqrt_bounds {n x lower upper : ℝ} (a b : ℝ)
    (ha : 0 < a) (hb : 0 < b) (hlo : a ^ 2 < n) (hhi : n < b ^ 2)
    (hlower : 0 ≤ lower) (hupper : 0 ≤ upper)
    (hl : lower * b ≤ x) (hu : x ≤ upper * a) :
    lower ≤ x / Real.sqrt n ∧ x / Real.sqrt n ≤ upper := by
  have ha' := Real.lt_sqrt_of_sq_lt hlo
  have hb' := (Real.sqrt_lt' hb).2 hhi
  have hn := ha.trans ha'
  exact ⟨(le_div_iff₀ hn).2 ((mul_le_mul_of_nonneg_left hb'.le hlower).trans hl),
    (div_le_iff₀ hn).2 (hu.trans (mul_le_mul_of_nonneg_left ha'.le hupper))⟩

private theorem log_two_div_sqrt_bounds :
    (49012907173425 / 10 ^ 14 : ℝ) ≤ Real.log 2 / Real.sqrt 2 ∧
    Real.log 2 / Real.sqrt 2 ≤ 49012907173430 / 10 ^ 14 := by
  apply div_sqrt_bounds (141421356237309 / 10 ^ 14) (141421356237310 / 10 ^ 14) <;>
    try norm_num
  · linarith only [log_two_bounds.1]
  · linarith only [log_two_bounds.2]

private theorem log_five_div_sqrt_bounds :
    (71976251555358 / 10 ^ 14 : ℝ) ≤ Real.log 5 / Real.sqrt 5 ∧
    Real.log 5 / Real.sqrt 5 ≤ 71976251555363 / 10 ^ 14 := by
  apply div_sqrt_bounds (223606797749978 / 10 ^ 14) (223606797749979 / 10 ^ 14) <;>
    try norm_num
  · linarith only [log_five_bounds.1]
  · linarith only [log_five_bounds.2]

private theorem log_seven_div_sqrt_bounds :
    (73548490401097 / 10 ^ 14 : ℝ) ≤ Real.log 7 / Real.sqrt 7 ∧
    Real.log 7 / Real.sqrt 7 ≤ 73548490401102 / 10 ^ 14 := by
  apply div_sqrt_bounds (264575131106459 / 10 ^ 14) (264575131106460 / 10 ^ 14) <;>
    try norm_num
  · linarith only [log_seven_bounds.1]
  · linarith only [log_seven_bounds.2]

/-- The four stored log shifts differ from the scaled real shifts by at most 100. -/
theorem abs_logNumerator_sub_scaled_log_le (i : Fin 4) :
    |(logNumerator i : ℝ) - (scale : ℝ) * Real.log (primeIndex i : ℝ)| ≤ 100 := by
  fin_cases i <;> norm_num [logNumerator, primeIndex, scale, log_four_eq, abs_le] <;>
    exact ⟨by linarith only [log_two_bounds.2, log_five_bounds.2, log_seven_bounds.2],
      by linarith only [log_two_bounds.1, log_five_bounds.1, log_seven_bounds.1]⟩

/-- The checker numerators enclose the negatives of the native paired weights. -/
theorem abs_weightNumerator_add_scaled_weight_le
    (χ : DirichletCharacter ℂ 3) (hodd : gammaParity χ = 1) (i : Fin 4) :
    |(weightNumerator i : ℝ) + (scale : ℝ) * pairedPrimeWeight χ (primeIndex i)| ≤ 100 := by
  obtain ⟨h₂, _, h₄, h₅, _, h₇⟩ := odd_three_native_signed_weights χ hodd
  fin_cases i <;> norm_num [weightNumerator, primeIndex, scale, h₂, h₄, h₅, h₇, abs_le]
  all_goals
    constructor <;> linarith only [log_two_bounds.1, log_two_bounds.2, log_two_div_sqrt_bounds.1,
      log_two_div_sqrt_bounds.2, log_five_div_sqrt_bounds.1, log_five_div_sqrt_bounds.2,
      log_seven_div_sqrt_bounds.1, log_seven_div_sqrt_bounds.2]

/-- The signed integer midpoint sum, with the original reserve, bounds the
full native radius-one prime-power response from below. -/
theorem certified_roundedPrimeMidpoint_with_reserve_le_native
    (χ : DirichletCharacter ℂ 3) (hodd : gammaParity χ = 1) (k : Fin 32768) :
    ((roundedPrimeMidpoint k - scale / 10 ^ (6 : ℕ) : ℤ) : ℝ) ≤
      -2 * (scale : ℝ) * ∑ n ∈ activePrimePowers 1, pairedPrimeWeight χ n *
        Real.cos (Real.log (n : ℝ) * checkerMidpoint k) :=
  roundedPrimeMidpoint_with_reserve_le_native χ hodd k
    abs_logNumerator_sub_scaled_log_le (abs_weightNumerator_add_scaled_weight_le χ hodd)

end CheckerRounding
end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt
