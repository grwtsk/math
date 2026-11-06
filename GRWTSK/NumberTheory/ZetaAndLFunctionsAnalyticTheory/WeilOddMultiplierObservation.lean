/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddMultiplierBounds
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddOutputTrace
import Mathlib.Analysis.Complex.ExponentialBounds
import Mathlib.Analysis.Real.Pi.Bounds

set_option autoImplicit false
noncomputable section

/-!
# Outward observations of the odd periodic multiplier

Local attribution is to grwtsk contributors.

The omitted sequence starting at index `K` is the same multiplier sequence
with rate offset `a + 2*K`. The decreasing integral test for that offset
bounds the tail below by the integral and above by the integral plus the
first omitted term. The existing logarithmic primitive evaluates the
integral exactly. At zero frequency the integral and the first omitted
term both vanish, so the interval has zero width.

For finite observations, add the radii for the retained rational terms and
for the logarithmic integral. A separate upper bound for the first omitted
term gives a midpoint correction and half-width. These scalar enclosures
are inputs to the high-mode floor. At radius one, forty terms at a rational
lower frequency and rational exponential comparisons certify concrete
bounds for modes 257, 1025, and 2049. Independent mathematical review
and novelty assessment are pending.
-/

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddMultiplierObservation

open MeasureTheory Set
open OddMultiplierBounds OddOutputTrace

/-- The first `K` exact terms in the periodic multiplier. -/
def periodicMultiplierPartial (a : ℕ) (w : ℝ) (K : ℕ) : ℝ :=
  ∑ j ∈ Finset.range K, periodicMultiplierTerm a w j

/-- The exact logarithmic integral of the continuous summand from `K` onward. -/
def periodicMultiplierTailIntegral (a : ℕ) (w : ℝ) (K : ℕ) : ℝ :=
  (1 / 2 : ℝ) * Real.log (1 + w ^ 2 / (multiplierRate a K) ^ 2)

private theorem periodicMultiplierTerm_shift (a K : ℕ) (w x : ℝ) :
    periodicMultiplierTerm a w (x + K) = periodicMultiplierTerm (a + 2 * K) w x := by
  unfold periodicMultiplierTerm
  congr 2
  unfold multiplierRate
  push_cast
  ring

theorem periodicMultiplier_eq_partial_add_shift (a : ℕ) (w : ℝ) (K : ℕ) :
    periodicMultiplier a w =
      periodicMultiplierPartial a w K + periodicMultiplier (a + 2 * K) w := by
  unfold periodicMultiplier periodicMultiplierPartial
  rw [← (periodicMultiplier_summable a w).sum_add_tsum_nat_add K]
  congr 1
  apply tsum_congr
  intro j
  push_cast
  exact periodicMultiplierTerm_shift a K w j

/-- The integral and the first omitted term bound the complete positive tail. -/
theorem periodicMultiplier_truncation_bounds (a : ℕ) (w : ℝ) (K : ℕ) :
    periodicMultiplierPartial a w K + periodicMultiplierTailIntegral a w K ≤
      periodicMultiplier a w ∧
    periodicMultiplier a w ≤ periodicMultiplierPartial a w K +
      (periodicMultiplierTailIntegral a w K + periodicMultiplierTerm a w K) := by
  have hAnti := periodicMultiplierTerm_antitone (a + 2 * K) w
  have hSum := periodicMultiplier_summable (a + 2 * K) w
  have hNonneg (x : ℝ) (hx : x ∈ Ioi 0) :
      0 ≤ periodicMultiplierTerm (a + 2 * K) w x :=
    periodicMultiplierTerm_nonneg _ _ hx.le
  have hLower := hAnti.integral_le_tsum hSum hNonneg
  have hUpper := hAnti.tsum_le_integral (hAnti.integrableOn_Ioi_zero_of_summable hSum hNonneg)
    hNonneg
  have hIntegral : (∫ x in Ioi 0, periodicMultiplierTerm (a + 2 * K) w x) =
      periodicMultiplierTailIntegral a w K := by
    rw [integral_periodicMultiplierTerm]
    unfold periodicMultiplierTailIntegral multiplierRate
    push_cast
    congr 4
    ring
  have hFirst : periodicMultiplierTerm (a + 2 * K) w 0 = periodicMultiplierTerm a w K := by
    simpa only [zero_add] using (periodicMultiplierTerm_shift a K w 0).symm
  rw [hIntegral] at hLower
  rw [hIntegral, hFirst] at hUpper
  rw [periodicMultiplier_eq_partial_add_shift a w K]
  exact ⟨add_le_add le_rfl hLower, add_le_add le_rfl
    (hUpper.trans_eq (add_comm _ _))⟩

/-- Finite term and log enclosures, together with a bound for the first omitted term, yield a
symmetric observation of the entire multiplier. -/
theorem abs_periodicMultiplier_sub_observed_le (a : ℕ) (w : ℝ) (K : ℕ)
    (termHat termRadius : ℕ → ℝ) (integralHat integralRadius width : ℝ)
    (hTerm : ∀ j < K, |periodicMultiplierTerm a w j - termHat j| ≤ termRadius j)
    (hIntegral : |periodicMultiplierTailIntegral a w K - integralHat| ≤ integralRadius)
    (hWidth : periodicMultiplierTerm a w K ≤ width) :
    |periodicMultiplier a w - ((∑ j ∈ Finset.range K, termHat j) + integralHat + width / 2)| ≤
      (∑ j ∈ Finset.range K, termRadius j) + integralRadius + width / 2 := by
  have hPartial : |periodicMultiplierPartial a w K - ∑ j ∈ Finset.range K, termHat j| ≤
      ∑ j ∈ Finset.range K, termRadius j := by
    unfold periodicMultiplierPartial
    rw [← Finset.sum_sub_distrib]
    exact (Finset.abs_sum_le_sum_abs _ _).trans
      (Finset.sum_le_sum fun j hj => hTerm j (Finset.mem_range.mp hj))
  obtain ⟨hLower, hUpper⟩ := periodicMultiplier_truncation_bounds a w K
  rw [abs_le] at hIntegral hPartial ⊢
  constructor
  · linarith [hPartial.1, hIntegral.1]
  · linarith [hPartial.2, hIntegral.2]

private theorem exp_div_lt_of_pow_lt (p q : ℕ) (hq : q ≠ 0) {b : ℝ} (hb : 0 ≤ b)
    (h : ((68 : ℝ) / 25) ^ p < b ^ q) : Real.exp ((p : ℝ) / q) < b := by
  have hExpOne : Real.exp 1 < (68 : ℝ) / 25 := Real.exp_one_lt_d9.trans (by norm_num)
  have hqR : (q : ℝ) ≠ 0 := by exact_mod_cast hq
  have hArg : (q : ℝ) * ((p : ℝ) / q) = (p : ℝ) * 1 := by field_simp
  apply lt_of_pow_lt_pow_left₀ q hb
  rw [← Real.exp_nat_mul, hArg, Real.exp_nat_mul]
  exact (pow_le_pow_left₀ (Real.exp_nonneg _) hExpOne.le p).trans_lt h

private theorem radiusOne_mode_bound {n : ℕ} {b : ℝ}
    (hPartial : (79 / 10 : ℝ) < periodicMultiplierPartial 0 ((157 / 50) * n) 40)
    (hExp : Real.exp b < ((157 / 50) * (n : ℝ)) / multiplierRate 0 (40 : ℕ)) :
    (79 / 10 : ℝ) + b < periodicMultiplier 0 (frequency 1 n) := by
  let v : ℝ := (157 / 50) * n
  have hv : 0 ≤ v := by positivity
  have hω : v ≤ frequency 1 n := by
    unfold v frequency
    rw [div_one]
    have hpi : (157 / 50 : ℝ) ≤ Real.pi := by linarith [Real.pi_gt_d2]
    exact mul_le_mul_of_nonneg_right hpi (Nat.cast_nonneg _)
  have hMono := periodicMultiplier_abs_mono 0
    (show |v| ≤ |frequency 1 n| from by
      rwa [abs_of_nonneg hv, abs_of_nonneg (hv.trans hω)])
  have hLog : b < periodicMultiplierTailIntegral 0 v 40 := by
    unfold periodicMultiplierTailIntegral
    have hSquare := pow_lt_pow_left₀ hExp (Real.exp_nonneg _) (by decide : 2 ≠ 0)
    rw [div_pow, pow_two (Real.exp b), ← Real.exp_add] at hSquare
    have hPos : 0 < 1 + v ^ 2 / multiplierRate 0 (40 : ℕ) ^ 2 := by positivity
    have h := (Real.lt_log_iff_exp_lt hPos).mpr
      (hSquare.trans (lt_one_add _))
    linarith
  have hLower := (periodicMultiplier_truncation_bounds 0 v 40).1
  exact ((add_lt_add hPartial hLog).trans_le hLower).trans_le hMono

set_option maxRecDepth 4096 in
/-- A rational lower bound for the radius-one multiplier at the first mode above 256. -/
theorem fifty_one_fifths_lt_periodicMultiplier_radiusOne_mode257 :
    (51 / 5 : ℝ) < periodicMultiplier 0 (frequency 1 257) := by
  have hExp := exp_div_lt_of_pow_lt 23 10 (by decide) (by norm_num : 0 ≤ (10 : ℝ))
    (by norm_num)
  have h := radiusOne_mode_bound (n := 257) (b := 23 / 10) (by
    norm_num [periodicMultiplierPartial, Finset.sum_range_succ, periodicMultiplierTerm,
      PeriodicBoundary.multiplierSummand, multiplierRate])
    (hExp.trans (by norm_num [multiplierRate]))
  norm_num at h ⊢
  exact h

set_option maxRecDepth 4096 in
/-- A rational lower bound for the radius-one multiplier at the first mode above 1024. -/
theorem twenty_three_halves_lt_periodicMultiplier_radiusOne_mode1025 :
    (23 / 2 : ℝ) < periodicMultiplier 0 (frequency 1 1025) := by
  have hExp := exp_div_lt_of_pow_lt 18 5 (by decide) (by norm_num : 0 ≤ (39 : ℝ))
    (by norm_num)
  have h := radiusOne_mode_bound (n := 1025) (b := 18 / 5) (by
    norm_num [periodicMultiplierPartial, Finset.sum_range_succ, periodicMultiplierTerm,
      PeriodicBoundary.multiplierSummand, multiplierRate])
    (hExp.trans (by norm_num [multiplierRate]))
  norm_num at h ⊢
  exact h

set_option maxRecDepth 4096 in
/-- A rational lower bound for the radius-one multiplier at the first mode above 2048. -/
theorem sixty_one_fifths_lt_periodicMultiplier_radiusOne_mode2049 :
    (61 / 5 : ℝ) < periodicMultiplier 0 (frequency 1 2049) := by
  have hExp := exp_div_lt_of_pow_lt 43 10 (by decide) (by norm_num : 0 ≤ (79 : ℝ))
    (by norm_num)
  have h := radiusOne_mode_bound (n := 2049) (b := 43 / 10) (by
    norm_num [periodicMultiplierPartial, Finset.sum_range_succ, periodicMultiplierTerm,
      PeriodicBoundary.multiplierSummand, multiplierRate])
    (hExp.trans (by norm_num [multiplierRate]))
  norm_num at h ⊢
  exact h

end GRWTSK.NumberTheory.WeilQuadraticForm.OddMultiplierObservation
