/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddLiteralWindow
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddMultiplierObservation
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSharpBoundaryNorm
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilUnitWindowOddEntries
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoPrimeNorm

/-!
# A multiplier budget for the radius-two odd high complement

Local attribution is to grwtsk contributors.

At mode 524289 use the rational lower frequency `(157/100)*524289`.
The first forty multiplier terms exceed `791/100`. The decreasing
integral comparison gives a logarithmic tail exceeding `923/100`.
The latter uses the slightly larger exponent `120/13`. Raise its
exponential to the thirteenth power and compare with an integer power
of the rational upper bound on `exp 1`. Monotonicity in frequency
returns to the literal multiplier.

The exact odd periodization theorem spends this multiplier against
the gamma constant, the physical shift and the separate boundary and
prime losses. The weighted row estimate supplies the prime bound on
the same radius-two supported inputs. The result controls the high
complement with the scalar pole retained in the head. The finite head
sign is separate. With half the exponential remainder in the boundary
majorant, mode 344065 yields the same floor with the unchanged prime
price. Independent mathematical review and novelty
assessment are pending.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoHighFloor

open MeasureTheory Set
open OddRootProjection OddOutputTrace OddMultiplierBounds OddMultiplierObservation
open OddExactPeriodization OddLiteralWindow OddSineForm UnitWindowOddEntries

private theorem exp_923_over_100_lt_10220 : Real.exp (923 / 100) < 10220 := by
  have h : Real.exp (120 / 13) < 10220 := by
    apply lt_of_pow_lt_pow_left₀ 13 (by norm_num : 0 ≤ (10220 : ℝ))
    rw [← Real.exp_nat_mul,
      show ((13 : ℕ) : ℝ) * (120 / 13) = (120 : ℕ) * (1 : ℝ) by norm_num,
      Real.exp_nat_mul]
    exact (pow_le_pow_left₀ (Real.exp_nonneg _) Real.exp_one_lt_d9.le 120).trans_lt (by norm_num)
  exact (Real.exp_lt_exp.mpr (by norm_num : (923 / 100 : ℝ) < 120 / 13)).trans h

private theorem radiusTwo_mode_bound {n : ℕ} {b : ℝ}
    (hPartial : (791 / 100 : ℝ) < periodicMultiplierPartial 0 ((157 / 100) * n) 40)
    (hExp : Real.exp b < ((157 / 100) * (n : ℝ)) / multiplierRate 0 (40 : ℕ)) :
    (791 / 100 : ℝ) + b < periodicMultiplier 0 (frequency 2 n) := by
  let v : ℝ := (157 / 100) * n
  have hv : 0 ≤ v := by positivity
  have hω : v ≤ frequency 2 n := by
    unfold v frequency
    rw [mul_div_assoc, mul_comm Real.pi]
    have hPi : (157 / 100 : ℝ) ≤ Real.pi / 2 := by linarith [Real.pi_gt_d2]
    calc
      _ ≤ (Real.pi / 2) * (n : ℝ) := mul_le_mul_of_nonneg_right hPi (Nat.cast_nonneg _)
      _ = _ := by ring
  have hMono := periodicMultiplier_abs_mono 0
    (show |v| ≤ |frequency 2 n| from by
      rwa [abs_of_nonneg hv, abs_of_nonneg (hv.trans hω)])
  have hLog : b < periodicMultiplierTailIntegral 0 v 40 := by
    unfold periodicMultiplierTailIntegral
    have hExp' : Real.exp b < v / multiplierRate 0 (40 : ℕ) := hExp
    have hSquare := pow_lt_pow_left₀ hExp' (Real.exp_nonneg _) (by decide : 2 ≠ 0)
    rw [div_pow, pow_two (Real.exp b), ← Real.exp_add] at hSquare
    have hPos : 0 < 1 + v ^ 2 / multiplierRate 0 (40 : ℕ) ^ 2 := by positivity
    have h := (Real.lt_log_iff_exp_lt hPos).mpr (hSquare.trans (lt_one_add _))
    linarith
  have hV := (add_lt_add hPartial hLog).trans_le (periodicMultiplier_truncation_bounds 0 v 40).1
  exact hV.trans_le hMono

set_option maxRecDepth 4096 in
/-- The actual radius-two multiplier at mode 524289 exceeds the rational budget. -/
theorem periodicMultiplier_radiusTwo_mode524289_gt :
    (17.14 : ℝ) < periodicMultiplier 0 (frequency 2 524289) := by
  have h := radiusTwo_mode_bound (n := 524289) (b := 923 / 100) (by
    norm_num [periodicMultiplierPartial, Finset.sum_range_succ, periodicMultiplierTerm,
      PeriodicBoundary.multiplierSummand, multiplierRate])
    (exp_923_over_100_lt_10220.trans (by norm_num [multiplierRate]))
  norm_num at h ⊢
  exact h

private theorem exp_44_over_5_lt_6640 : Real.exp (44 / 5) < 6640 := by
  apply lt_of_pow_lt_pow_left₀ 5 (by norm_num : 0 ≤ (6640 : ℝ))
  rw [← Real.exp_nat_mul,
    show ((5 : ℕ) : ℝ) * (44 / 5) = (44 : ℕ) * (1 : ℝ) by norm_num,
    Real.exp_nat_mul]
  exact (pow_le_pow_left₀ (Real.exp_nonneg _) Real.exp_one_lt_d9.le 44).trans_lt (by norm_num)

set_option maxRecDepth 4096 in
/-- The radius-two multiplier at mode 344065 exceeds the sharpened budget. -/
theorem periodicMultiplier_radiusTwo_mode344065_gt :
    (16.71 : ℝ) < periodicMultiplier 0 (frequency 2 344065) := by
  have h := radiusTwo_mode_bound (n := 344065) (b := 44 / 5) (by
    norm_num [periodicMultiplierPartial, Finset.sum_range_succ, periodicMultiplierTerm,
      PeriodicBoundary.multiplierSummand, multiplierRate])
    (exp_44_over_5_lt_6640.trans (by norm_num [multiplierRate]))
  norm_num at h ⊢
  exact h

private theorem one_eighth_le_exp_neg_two : (1 / 8 : ℝ) ≤ Real.exp (-2) := by
  have hExp : Real.exp 2 < 8 := by
    rw [show (2 : ℝ) = (2 : ℕ) * (1 : ℝ) by norm_num, Real.exp_nat_mul]
    exact (pow_le_pow_left₀ (Real.exp_nonneg _) Real.exp_one_lt_d9.le 2).trans_lt (by norm_num)
  rw [Real.exp_neg, ← one_div]
  exact one_div_le_one_div_of_le (Real.exp_pos _) hExp.le

/-- A rational upper bound on the exact radius-two signed boundary loss. -/
theorem boundaryLoss_two_le : OddSharpBoundaryNorm.boundaryLoss 2 ≤ (49 / 20 : ℝ) := by
  unfold OddSharpBoundaryNorm.boundaryLoss
  linarith [Real.pi_lt_d2, one_eighth_le_exp_neg_two]

/-- A radius-two high floor from a uniform prime form bound on the literal support. -/
theorem highFloor_two_of_primeCost {N : ℕ} (hN : 524288 ≤ N)
    (hPrime : ∀ ⦃f : ℝ → ℝ⦄, MemLp f 2 volume →
      (∀ᵐ t : ℝ, t ∉ Icc (-2) 2 → f t = 0) →
      primeEnergy 2 f ≤ (47 / 5 : ℝ) * (∫ t : ℝ, ‖f t‖ ^ 2)) :
    HighFloor 2 (-1 / 2) (2 / 5) N := by
  intro f hf hfM ho hs hh henergy
  have hMode : 524289 ≤ N + 1 := by omega
  have hFreq : frequency 2 524289 ≤ frequency 2 (N + 1) := by
    unfold frequency
    exact div_le_div_of_nonneg_right
      (mul_le_mul_of_nonneg_left (by exact_mod_cast hMode) Real.pi_pos.le) (by norm_num)
  have hPos (n : ℕ) : 0 ≤ frequency 2 n := by unfold frequency; positivity
  have hMultiplier := periodicMultiplier_radiusTwo_mode524289_gt.trans_le
    (periodicMultiplier_abs_mono 0 (w := frequency 2 (N + 1)) (by
      rwa [abs_of_nonneg (hPos 524289), abs_of_nonneg (hPos (N + 1))]))
  have hbudget : (2 / 5 : ℝ) ≤ gammaConstant 1 0 - (-1 / 2) +
      periodicMultiplier 0 (frequency 2 (N + 1)) - 47 / 5 -
      OddSharpBoundaryNorm.boundaryLoss 2 := by
    linarith [gammaConstant_one_zero_interval.1, boundaryLoss_two_le]
  have hBoundary := OddSharpBoundaryNorm.oddKernel_quadratic_ge 2 (by norm_num) f hfM
    hf.integrable_sq.integrableOn
  exact shiftedOddCoreEnergy_ge_of_exactBudget 2 (by norm_num) (-1 / 2) (47 / 5)
    (OddSharpBoundaryNorm.boundaryLoss 2) (2 / 5) hbudget
    hfM hf ho hs hh henergy (hPrime hf hs) hBoundary

/-- The entire literal shifted radius-two high complement has floor `2/5`
at every retained head of at least 524288 physical modes. -/
theorem highFloor_two {N : ℕ} (hN : 524288 ≤ N) : HighFloor 2 (-1 / 2) (2 / 5) N := by
  apply highFloor_two_of_primeCost hN
  intro f hf hs
  have h := RadiusTwoPrimeNorm.abs_primeEnergy_two_le hf hs
  simp only [Real.norm_eq_abs, sq_abs]
  exact (le_abs_self _).trans h

private theorem boundaryLossHalfExp_two_le :
    OddSharpBoundaryNorm.boundaryLossHalfExp 2 ≤ (201 / 100 : ℝ) := by
  unfold OddSharpBoundaryNorm.boundaryLossHalfExp
  linarith [Real.pi_lt_d4, one_eighth_le_exp_neg_two]

/-- The sharper boundary budget gives the same floor at 344064 modes. -/
theorem highFloor_two_sharp {N : ℕ} (hN : 344064 ≤ N) : HighFloor 2 (-1 / 2) (2 / 5) N := by
  intro f hf hfM ho hs hh henergy
  have hMode : 344065 ≤ N + 1 := by omega
  have hFreq : frequency 2 344065 ≤ frequency 2 (N + 1) := by
    unfold frequency
    exact div_le_div_of_nonneg_right
      (mul_le_mul_of_nonneg_left (by exact_mod_cast hMode) Real.pi_pos.le) (by norm_num)
  have hPos (n : ℕ) : 0 ≤ frequency 2 n := by unfold frequency; positivity
  have hMultiplier := periodicMultiplier_radiusTwo_mode344065_gt.trans_le
    (periodicMultiplier_abs_mono 0 (w := frequency 2 (N + 1)) (by
      rwa [abs_of_nonneg (hPos 344065), abs_of_nonneg (hPos (N + 1))]))
  have hbudget : (2 / 5 : ℝ) ≤ gammaConstant 1 0 - (-1 / 2) +
      periodicMultiplier 0 (frequency 2 (N + 1)) - 47 / 5 -
      OddSharpBoundaryNorm.boundaryLossHalfExp 2 := by
    linarith [gammaConstant_one_zero_interval.1, boundaryLossHalfExp_two_le]
  have hBoundary := OddSharpBoundaryNorm.oddKernel_quadratic_ge_half_exp 2 (by norm_num) f hfM
    hf.integrable_sq.integrableOn
  have hPrime := (le_abs_self (primeEnergy 2 f)).trans (RadiusTwoPrimeNorm.abs_primeEnergy_two_le hf hs)
  exact shiftedOddCoreEnergy_ge_of_exactBudget 2 (by norm_num) (-1 / 2) (47 / 5)
    (OddSharpBoundaryNorm.boundaryLossHalfExp 2) (2 / 5) hbudget hfM hf ho hs hh henergy (by
      simpa only [Real.norm_eq_abs, sq_abs] using hPrime) hBoundary

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoHighFloor
