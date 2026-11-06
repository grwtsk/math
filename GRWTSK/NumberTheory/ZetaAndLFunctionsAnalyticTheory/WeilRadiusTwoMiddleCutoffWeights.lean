/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddModeDependentTail

/-!
# Constant rational charges at the larger radius-two middle cutoffs

A short rational partial sum and the logarithmic tail of the literal
periodic multiplier give lower weights at modes 400001 and 1200001.
Monotonicity propagates those lower weights to all later modes. The
finite receiving covariance may use one rational inverse bound and
the complete remote charge may use a separate rational inverse bound.

These weights supply the complete middle matrix price. Its finite
sign and the numerical source-to-seed comparison are separate.
Local attribution is to grwtsk contributors.
Independent mathematical review and novelty assessment are pending.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoMiddleCutoffWeights

open OddModeDependentTail OddRootProjection OddOutputTrace OddMultiplierBounds
open OddMultiplierObservation UnitWindowOddEntries

private theorem boundaryLossHalfExp_two_le :
    OddSharpBoundaryNorm.boundaryLossHalfExp 2 ≤ (2.004 : ℝ) := by
  have hExp : Real.exp 2 < (200 / 27 : ℝ) := by
    rw [show (2 : ℝ) = (2 : ℕ) * (1 : ℝ) by norm_num, Real.exp_nat_mul]
    exact (pow_le_pow_left₀ (Real.exp_nonneg _) Real.exp_one_lt_d9.le 2).trans_lt (by norm_num)
  have hInv : (27 / 200 : ℝ) ≤ Real.exp (-2) := by
    rw [Real.exp_neg, ← one_div]
    have h := one_div_le_one_div_of_le (Real.exp_pos 2) hExp.le
    norm_num at h ⊢
    exact h
  unfold OddSharpBoundaryNorm.boundaryLossHalfExp
  linarith only [Real.pi_lt_d4, hInv]

private def rationalPartial : ℚ :=
  ∑ j ∈ Finset.range 128, (999999 / 1000000 : ℚ) * (2 / (2 * (j : ℚ) + 1 / 2))

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
private theorem rationalPartial_gt : (9077 / 1000 : ℚ) < rationalPartial := by
  decide +kernel

private theorem partial_gt (w : ℝ) (hw : 600000 ≤ w) :
    (9077 / 1000 : ℝ) < periodicMultiplierPartial 0 w 128 := by
  have hR : ((9077 / 1000 : ℚ) : ℝ) < (rationalPartial : ℝ) :=
    (Rat.cast_lt (K := ℝ)).mpr rationalPartial_gt
  push_cast at hR
  refine hR.trans_le ?_
  unfold rationalPartial periodicMultiplierPartial
  push_cast
  refine Finset.sum_le_sum (fun j hj => ?_)
  have hjN := Finset.mem_range.mp hj
  have hjR : (j : ℝ) < 128 := by exact_mod_cast hjN
  let a : ℝ := 2 * j + 1 / 2
  have ha : 0 < a := by unfold a; positivity
  have haU : a ≤ 257 := by unfold a; linarith
  have haSq : a^2 ≤ (257 : ℝ)^2 := pow_le_pow_left₀ ha.le haU 2
  have hwSq : (600000 : ℝ)^2 ≤ w^2 := pow_le_pow_left₀ (by norm_num) hw 2
  have hDen : 0 < a^2 + w^2 := add_pos_of_pos_of_nonneg (sq_pos_of_pos ha) (sq_nonneg _)
  have hFraction : (999999 / 1000000 : ℝ) ≤ w^2 / (a^2 + w^2) := by
    apply (le_div_iff₀ hDen).2
    linarith only [haSq, hwSq]
  have hTerm : periodicMultiplierTerm 0 w j = (w^2 / (a^2+w^2)) * (2/a) := by
    unfold periodicMultiplierTerm PeriodicBoundary.multiplierSummand multiplierRate
    norm_num only [Nat.cast_zero, add_zero]
    change 2 * (w^2 / (a * (a^2 + w^2))) = _
    field_simp [ha.ne', hDen.ne']
  rw [hTerm]
  exact mul_le_mul_of_nonneg_right hFraction (by positivity)

private theorem exp_ratio_lt (p q : ℕ) (hq : q ≠ 0) {b : ℝ} (hb : 0 ≤ b)
    (h : (2.7182818286 : ℝ)^p < b^q) : Real.exp ((p : ℝ) / q) < b := by
  have hqR : (q : ℝ) ≠ 0 := by exact_mod_cast hq
  have hArg : (q : ℝ) * ((p : ℝ) / q) = (p : ℝ) * 1 := by field_simp
  apply lt_of_pow_lt_pow_left₀ q hb
  rw [← Real.exp_nat_mul, hArg, Real.exp_nat_mul]
  exact (pow_le_pow_left₀ (Real.exp_nonneg _) Real.exp_one_lt_d9.le p).trans_lt h

private theorem cutoffMultiplier_gt {n : ℕ} {b : ℝ}
    (hw : 600000 ≤ (157 / 100 : ℝ) * n)
    (hExp : Real.exp b < ((157 / 100 : ℝ) * n) / multiplierRate 0 (128 : ℕ)) :
    (9077 / 1000 : ℝ) + b < periodicMultiplier 0 (frequency 2 n) := by
  let v : ℝ := (157 / 100) * n
  have hv : 0 ≤ v := by positivity
  have hω : v ≤ frequency 2 n := by
    unfold v frequency
    have hPi : (157 / 100 : ℝ) ≤ Real.pi / 2 := by linarith [Real.pi_gt_d2]
    calc
      _ ≤ (Real.pi / 2) * (n : ℝ) := mul_le_mul_of_nonneg_right hPi (Nat.cast_nonneg _)
      _ = _ := by ring
  have hMono := periodicMultiplier_abs_mono 0
    (show |v| ≤ |frequency 2 n| from by
      rwa [abs_of_nonneg hv, abs_of_nonneg (hv.trans hω)])
  have hLog : b < periodicMultiplierTailIntegral 0 v 128 := by
    unfold periodicMultiplierTailIntegral
    have hExp' : Real.exp b < v / multiplierRate 0 (128 : ℕ) := hExp
    have hSquare := pow_lt_pow_left₀ hExp' (Real.exp_nonneg _) (by decide : 2 ≠ 0)
    rw [div_pow, pow_two (Real.exp b), ← Real.exp_add] at hSquare
    have hPos : 0 < 1 + v^2 / multiplierRate 0 (128 : ℕ)^2 := by positivity
    have h := (Real.lt_log_iff_exp_lt hPos).mpr (hSquare.trans (lt_one_add _))
    linarith
  exact ((add_lt_add (partial_gt v hw) hLog).trans_le
    (periodicMultiplier_truncation_bounds 0 v 128).1).trans_le hMono

private theorem mode400001_multiplier :
    (16.877 : ℝ) < periodicMultiplier 0 (frequency 2 400001) := by
  have hExp := exp_ratio_lt 39 5 (by decide) (by norm_num : (0 : ℝ) ≤ 2448) (by norm_num)
  have h := cutoffMultiplier_gt (n := 400001) (b := 39 / 5) (by norm_num)
    (hExp.trans (by norm_num [multiplierRate]))
  norm_num at h ⊢
  exact h

private theorem mode1200001_multiplier :
    (17.977 : ℝ) < periodicMultiplier 0 (frequency 2 1200001) := by
  have hExp := exp_ratio_lt 89 10 (by decide) (by norm_num : (0 : ℝ) ≤ 7345) (by norm_num)
  have h := cutoffMultiplier_gt (n := 1200001) (b := 89 / 10) (by norm_num)
    (hExp.trans (by norm_num [multiplierRate]))
  norm_num at h ⊢
  exact h

private theorem middleWeight_mono : Monotone radiusTwoMiddleWeight :=
  modeWeight_mono 2 (by norm_num) (-3 / 10) (47 / 5) (OddSharpBoundaryNorm.boundaryLossHalfExp 2)

/-- All receiving modes of the larger cutoff have at least this literal weight. -/
theorem receivingWeight_le {m : ℕ} (hm : 400001 ≤ m) :
    (39 / 100 : ℝ) ≤ radiusTwoMiddleWeight m := by
  apply le_trans ?_ (middleWeight_mono hm)
  unfold radiusTwoMiddleWeight modeWeight
  linarith only [gammaConstant_one_zero_interval.1, boundaryLossHalfExp_two_le, mode400001_multiplier]

/-- All modes beyond the complete remote cutoff have at least this literal weight. -/
theorem distantWeight_le {m : ℕ} (hm : 1200001 ≤ m) :
    (149 / 100 : ℝ) ≤ radiusTwoMiddleWeight m := by
  apply le_trans ?_ (middleWeight_mono hm)
  unfold radiusTwoMiddleWeight modeWeight
  linarith only [gammaConstant_one_zero_interval.1, boundaryLossHalfExp_two_le, mode1200001_multiplier]

/-- The constant rational covariance weight dominates each true inverse. -/
theorem receivingInverse_le {m : ℕ} (hm : 400001 ≤ m) :
    (radiusTwoMiddleWeight m)⁻¹ ≤ (100 / 39 : ℝ) := by
  have h := inv_anti₀ (by norm_num : (0 : ℝ) < 39 / 100) (receivingWeight_le hm)
  norm_num at h
  exact h

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoMiddleCutoffWeights
