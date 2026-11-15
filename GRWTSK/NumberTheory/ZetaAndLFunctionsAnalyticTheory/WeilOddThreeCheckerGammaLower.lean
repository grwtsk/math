/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddMultiplierObservation
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineCheckerRounding
import Mathlib.Analysis.SpecialFunctions.Log.Deriv

/-!
# Gamma lower bound in the original conductor-three sine checker

The integer definitions follow `gamma_lower` in `scripts/verify_odd_three_sine_hs.py`
(blob `b35434bed50c8a6ba218d01575e1964cae9a93e6`, lines 84–97). The first 64
divisions round the exact parity-one summands down. The omitted series has
rate offset 129 and is bounded below by its logarithmic integral. The next
twelve divisions bound that integral by flooring the nonnegative terms of
the finite atanh series, including the floors on the argument and its square.

The bound supplies the gamma increment for the midpoint and tail prices of
the original radius-one `q3SineMultiplier`. The base constant and the native
coefficient enclosures in `check_source_constants` require separate bounds.
-/

set_option autoImplicit false

open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerGamma

open CheckerRounding (scale cast_ediv_remainder_lt_one)
open OddMultiplierBounds OddMultiplierObservation

private def squareNumerator (num : ℤ) : ℤ := (2 * num) ^ 2

private def doubledRate (j : ℕ) : ℤ := 3 + 4 * (j : ℤ)

private def gammaHeadTerm (num den : ℤ) (j : ℕ) : ℤ :=
  4 * squareNumerator num * scale /
    (doubledRate j * ((doubledRate j * den) ^ 2 + squareNumerator num))

private def gammaTailArgument (num den : ℤ) : ℤ :=
  squareNumerator num * scale / (2 * (doubledRate 64 * den) ^ 2 + squareNumerator num)

private def gammaTailSquare (z : ℤ) : ℤ := z * z / scale

private def gammaTailTerm (z : ℤ) : ℕ → ℤ
  | 0 => z
  | k + 1 => gammaTailTerm z k * gammaTailSquare z / scale

/-- The checker integer in units of `scale`, with every division kept in loop order. -/
def gammaLower (num den : ℤ) : ℤ :=
  (∑ j ∈ Finset.range 64, gammaHeadTerm num den j) +
    ∑ k ∈ Finset.range 12, gammaTailTerm (gammaTailArgument num den) k / (2 * (k : ℤ) + 1)

private theorem scale_pos : (0 : ℤ) < scale := by norm_num [scale]

private theorem real_scale_pos : (0 : ℝ) < (scale : ℝ) := by exact_mod_cast scale_pos

private noncomputable def unscale (v : ℤ) : ℝ := (v : ℝ) / (scale : ℝ)

private theorem unscale_ediv_le {n d : ℤ} (hd : 0 < d) :
    unscale (n / d) ≤ unscale n / (d : ℝ) := by
  have h := sub_nonneg.mp (cast_ediv_remainder_lt_one n d hd).1
  unfold unscale
  rw [div_right_comm (n : ℝ)]
  exact div_le_div_of_nonneg_right h real_scale_pos.le

private theorem unscale_mul_ediv_scale_le (u v : ℤ) :
    unscale (u * v / scale) ≤ unscale u * unscale v := by
  refine (unscale_ediv_le scale_pos).trans_eq ?_
  unfold unscale
  push_cast
  ring

private theorem unscale_sum {m : ℕ} (f : ℕ → ℤ) :
    unscale (∑ j ∈ Finset.range m, f j) = ∑ j ∈ Finset.range m, unscale (f j) := by
  simp only [unscale, Int.cast_sum, Finset.sum_div]

private theorem gammaHeadTerm_le (num den : ℤ) (hden : 0 < den) (j : ℕ) :
    unscale (gammaHeadTerm num den j) ≤ periodicMultiplierTerm 1 ((num : ℝ) / den) j := by
  have ha : 0 < doubledRate j := by unfold doubledRate; positivity
  have hdenom : 0 < doubledRate j * ((doubledRate j * den) ^ 2 + squareNumerator num) := by
    unfold squareNumerator
    positivity
  have hd : (0 : ℝ) < den := by exact_mod_cast hden
  have hj : (0 : ℝ) ≤ j := Nat.cast_nonneg j
  have hr : 0 < 2 * (j : ℝ) + 1 + 1 / 2 := by positivity
  unfold gammaHeadTerm
  refine (unscale_ediv_le hdenom).trans_eq ?_
  unfold unscale squareNumerator doubledRate periodicMultiplierTerm multiplierRate
    PeriodicBoundary.multiplierSummand
  push_cast
  norm_num only [Nat.cast_one] at *
  field_simp [real_scale_pos.ne']
  ring

private noncomputable def tailArgument (x : ℝ) : ℝ :=
  x ^ 2 / (2 * (259 / 2 : ℝ) ^ 2 + x ^ 2)

private theorem gammaTailArgument_nonneg (num den : ℤ) :
    0 ≤ gammaTailArgument num den := by
  unfold gammaTailArgument squareNumerator
  exact Int.ediv_nonneg (by have := scale_pos; positivity) (by positivity)

private theorem gammaTailArgument_le (num den : ℤ) (hden : 0 < den) :
    unscale (gammaTailArgument num den) ≤ tailArgument ((num : ℝ) / den) := by
  have ha : 0 < doubledRate 64 := by norm_num [doubledRate]
  have hdenom : 0 < 2 * (doubledRate 64 * den) ^ 2 + squareNumerator num := by
    unfold squareNumerator
    positivity
  have hd : (0 : ℝ) < den := by exact_mod_cast hden
  unfold gammaTailArgument
  refine (unscale_ediv_le hdenom).trans_eq ?_
  unfold unscale squareNumerator doubledRate tailArgument
  push_cast
  norm_num
  field_simp [real_scale_pos.ne']
  ring

private theorem gammaTailTerm_le {z : ℤ} (hz : 0 ≤ z) {u : ℝ} (hu : 0 ≤ u)
    (hzU : unscale z ≤ u) (k : ℕ) : unscale (gammaTailTerm z k) ≤ u ^ (2 * k + 1) := by
  have hs : 0 ≤ gammaTailSquare z := by
    unfold gammaTailSquare
    exact Int.ediv_nonneg (mul_self_nonneg z) scale_pos.le
  have hsU : unscale (gammaTailSquare z) ≤ u ^ 2 :=
    (unscale_mul_ediv_scale_le z z).trans (by
      rw [pow_two]
      have hzR : (0 : ℝ) ≤ z := by exact_mod_cast hz
      exact mul_le_mul hzU hzU (div_nonneg hzR real_scale_pos.le) hu)
  induction k with
  | zero => simpa [gammaTailTerm] using hzU
  | succ k ih =>
    rw [gammaTailTerm, show 2 * (k + 1) + 1 = (2 * k + 1) + 2 by omega, pow_add]
    refine (unscale_mul_ediv_scale_le _ _).trans (mul_le_mul ih hsU ?_ (by positivity))
    have hsR : (0 : ℝ) ≤ (gammaTailSquare z : ℝ) := by exact_mod_cast hs
    exact div_nonneg hsR real_scale_pos.le

private theorem gammaTailSum_le (num den : ℤ) (hden : 0 < den) :
    unscale (∑ k ∈ Finset.range 12,
      gammaTailTerm (gammaTailArgument num den) k / (2 * (k : ℤ) + 1)) ≤
    (1 / 2 : ℝ) * Real.log (1 + ((num : ℝ) / den) ^ 2 / (259 / 2 : ℝ) ^ 2) := by
  let x : ℝ := (num : ℝ) / den
  let u := tailArgument x
  have hu : 0 ≤ u := by dsimp [u, tailArgument]; positivity
  have hu1 : u < 1 := by
    dsimp [u, tailArgument]
    apply (div_lt_iff₀ (by positivity)).2
    linarith [sq_nonneg x]
  have hratio : (1 + u) / (1 - u) = 1 + x ^ 2 / (259 / 2 : ℝ) ^ 2 := by
    have h1 : 1 - u ≠ 0 := sub_ne_zero.mpr hu1.ne'
    apply (div_eq_iff h1).2
    dsimp [u, tailArgument]
    field_simp
    ring
  rw [unscale_sum, ← hratio]
  refine le_trans ?_ (Real.sum_range_le_log_div hu hu1 12)
  apply Finset.sum_le_sum
  intro k _
  have hk : 0 < 2 * (k : ℤ) + 1 := by positivity
  have hkR : 0 ≤ 2 * (k : ℝ) + 1 := by positivity
  refine (unscale_ediv_le hk).trans ?_
  push_cast
  exact div_le_div_of_nonneg_right
    (gammaTailTerm_le (gammaTailArgument_nonneg num den) hu (gammaTailArgument_le num den hden) k)
    hkR

/-- The original fixed-point checker value bounds the complete parity-one gamma
increment at any rational frequency with positive denominator, including zero. -/
theorem gammaLower_le_periodicMultiplier (num den : ℤ) (hden : 0 < den) :
    (gammaLower num den : ℝ) / (scale : ℝ) ≤ periodicMultiplier 1 ((num : ℝ) / den) := by
  change unscale (gammaLower num den) ≤ _
  have hadd (a b : ℤ) : unscale (a + b) = unscale a + unscale b := by
    simp only [unscale, Int.cast_add, add_div]
  rw [gammaLower, hadd, unscale_sum]
  refine le_trans ?_ (periodicMultiplier_truncation_bounds 1 ((num : ℝ) / den) 64).1
  apply add_le_add (Finset.sum_le_sum fun j _ => gammaHeadTerm_le num den hden j)
  convert gammaTailSum_le num den hden using 1
  norm_num [periodicMultiplierTailIntegral, multiplierRate]

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt.CheckerGamma
