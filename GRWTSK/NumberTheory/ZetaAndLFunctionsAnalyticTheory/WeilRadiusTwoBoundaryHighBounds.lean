/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddBoundarySignalBounds
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddRationalTrapezoid
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoRemoteScalars

/-!
# Radius-two boundary signal at high sine modes

The half-line trapezoid estimate applies to the shifted rational series.
Subtracting the geometric leading exponential correction accounts for all
exponential terms, with an explicit fourth-order error. Both estimates
use the source frequency `π n / 2`. For modes starting at 1024, this gives
a uniform rational error for the rescaled signal used in the Schur seed.
Independent mathematical review and novelty assessment are pending.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoBoundaryHighBounds

open OddBoundarySignalBounds

/-- Two-term approximation at sine frequency `u` for the radius-two signal. -/
def highApprox (u : ℝ) : ℝ :=
  Real.pi / (4 * u) + (1 / 4 - Real.exp (-2) / (1 - Real.exp (-8))) / u ^ 2

/-- High-frequency enclosure for the complete radius-two boundary signal. -/
theorem abs_boundarySignal_sub_highApprox_le {n : ℕ} (hn : 0 < n) :
    let u := Real.pi * (n : ℝ) / 2
    |boundarySignal 2 n - highApprox u| ≤ Real.pi / (2 * u ^ 3) + (34 / 15) / u ^ 4 := by
  let u : ℝ := Real.pi * (n : ℝ) / 2
  have hu : 0 < u := div_pos (mul_pos Real.pi_pos (by exact_mod_cast hn)) (by norm_num)
  let c := Real.exp (-2) / (1 - Real.exp (-8))
  let s := ∑' j : ℕ, 1 / ((2 * (j : ℝ) + 1 / 2) ^ 2 + u ^ 2)
  have hr : |s - (Real.pi / (4 * u) + 1 / (4 * u ^ 2))| ≤
      Real.pi / (2 * u ^ 3) + (13 / 6) / u ^ 4 := by
    simpa only [s, OddRationalTrapezoid.kernel, one_div] using
      OddRationalTrapezoid.abs_sum_sub_highApprox_le hu
  have he := boundarySignal_two_sub_expansion hn
  change 0 ≤ boundarySignal 2 n - (s - c * (1 / u ^ 2)) ∧
    boundarySignal 2 n - (s - c * (1 / u ^ 2)) ≤ 1 / (10 * u ^ 4) at he
  have habs : |boundarySignal 2 n - (s - c * (1 / u ^ 2))| ≤ 1 / (10 * u ^ 4) := by
    rw [abs_of_nonneg he.1]
    exact he.2
  have hshift :
      s - c * (1 / u ^ 2) - highApprox u =
        s - (Real.pi / (4 * u) + 1 / (4 * u ^ 2)) := by
    unfold highApprox c
    ring
  change |boundarySignal 2 n - highApprox u| ≤ _
  calc
    _ ≤ |boundarySignal 2 n - (s - c * (1 / u ^ 2))| +
        |s - c * (1 / u ^ 2) - highApprox u| := abs_sub_le _ _ _
    _ ≤ 1 / (10 * u ^ 4) + (Real.pi / (2 * u ^ 3) + (13 / 6) / u ^ 4) := by
      rw [hshift]
      exact add_le_add habs hr
    _ = _ := by ring

/-- The rescaled literal boundary scalar has a uniform error on every mode
from 1024, including the finite middle and receiving ranges. -/
theorem abs_scaled_boundarySignal_sub_highApprox_le {n : ℕ} (hn : 1024 ≤ n) :
    let u := Real.pi * (n : ℝ) / 2
    |(n : ℝ) * boundarySignal 2 n - (n : ℝ) * highApprox u| ≤ 57 / 100000000 := by
  let u : ℝ := Real.pi * (n : ℝ) / 2
  have hnR : (1024 : ℝ) ≤ n := by exact_mod_cast hn
  have hpos : (0 : ℝ) < n := by linarith
  have hu : 3 * (n : ℝ) / 2 ≤ u := by
    unfold u
    nlinarith [mul_nonneg (sub_nonneg.mpr Real.pi_gt_three.le) hpos.le]
  have hu8 : 8 ≤ u := by linarith
  have hu0 : 0 < u := by linarith
  have hcoeff : Real.pi / 2 + (34 / 15) / u ≤ 2 := by
    have hdiv : (34 / 15 : ℝ) / u ≤ (34 / 15 : ℝ) / 8 :=
      div_le_div_of_nonneg_left (by norm_num) (by norm_num) hu8
    linarith [Real.pi_lt_d2]
  have hbase := abs_boundarySignal_sub_highApprox_le (show 0 < n by exact_mod_cast hpos)
  change |boundarySignal 2 n - highApprox u| ≤
    Real.pi / (2 * u ^ 3) + (34 / 15) / u ^ 4 at hbase
  have hcubic : |boundarySignal 2 n - highApprox u| ≤ 2 / u ^ 3 := by
    refine hbase.trans ?_
    calc
      _ = (Real.pi / 2 + (34 / 15) / u) / u ^ 3 := by field_simp
      _ ≤ _ := div_le_div_of_nonneg_right hcoeff (by positivity)
  have hden : (3 * (n : ℝ) / 2) ^ 3 ≤ u ^ 3 :=
    pow_le_pow_left₀ (by positivity) hu 3
  change |(n : ℝ) * boundarySignal 2 n - (n : ℝ) * highApprox u| ≤ _
  rw [← mul_sub, abs_mul, abs_of_pos hpos]
  calc
    _ ≤ (n : ℝ) * (2 / u ^ 3) := mul_le_mul_of_nonneg_left hcubic hpos.le
    _ ≤ (n : ℝ) * (2 / (3 * (n : ℝ) / 2) ^ 3) :=
      mul_le_mul_of_nonneg_left
        (div_le_div_of_nonneg_left (by norm_num) (by positivity) hden) hpos.le
    _ = 16 / (27 * (n : ℝ) ^ 2) := by field_simp; ring
    _ ≤ 16 / (27 * (1024 : ℝ) ^ 2) := by
      apply div_le_div_of_nonneg_left (by norm_num) (by norm_num)
      exact mul_le_mul_of_nonneg_left (pow_le_pow_left₀ (by norm_num) hnR 2) (by norm_num)
    _ ≤ _ := by norm_num

open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds

private theorem highCoefficient_bounds :
    |(5 * OddResidualRows.poleNode 2 - OddResidualMajorant.boundaryErrorScale 2) -
      46453453 / 1000000000| ≤ 1 / 1000000000 := by
  let coeff := sub (scale 5 RadiusTwoRemoteScalars.poleNodeBounds)
    RadiusTwoRemoteScalars.boundaryErrorScaleBounds
  have h : Encloses coeff (5 * OddResidualRows.poleNode 2 -
      OddResidualMajorant.boundaryErrorScale 2) :=
    sub_sound (scale_sound 5 RadiusTwoRemoteScalars.poleNodeBounds_sound)
      RadiusTwoRemoteScalars.boundaryErrorScaleBounds_sound
  have hlo : (46453452 / 1000000000 : ℚ) ≤ coeff.1 := by decide +kernel
  have hhi : coeff.2 ≤ (46453454 / 1000000000 : ℚ) := by decide +kernel
  have hloR := (Rat.cast_le (K := ℝ)).mpr hlo
  have hhiR := (Rat.cast_le (K := ℝ)).mpr hhi
  push_cast at hloR hhiR
  rw [abs_le]
  exact ⟨by linarith [hloR.trans h.1], by linarith [h.2.trans hhiR]⟩

/-- A rational center for the rescaled high-mode signal. -/
def scaledBoundaryCenter (n : ℕ) : ℚ :=
  1 / 2 + (46453453 / 1000000000) / n

/-- A directly rational enclosure for the literal source signal on the high branch. -/
theorem abs_scaled_boundarySignal_sub_center_le {n : ℕ} (hn : 1024 ≤ n) :
    |(n : ℝ) * boundarySignal 2 n - (scaledBoundaryCenter n : ℝ)| ≤ 58 / 100000000 := by
  let u : ℝ := Real.pi * (n : ℝ) / 2
  have hnR : (1024 : ℝ) ≤ n := by exact_mod_cast hn
  have hpos : (0 : ℝ) < n := by linarith
  have hform :
      (n : ℝ) * highApprox u =
        1 / 2 + (5 * OddResidualRows.poleNode 2 - OddResidualMajorant.boundaryErrorScale 2) / n := by
    unfold u highApprox OddResidualRows.poleNode OddResidualMajorant.boundaryErrorScale
    norm_num
    field_simp [Real.pi_ne_zero, hpos.ne']
    ring
  have hdiff :
      |(n : ℝ) * highApprox u - (scaledBoundaryCenter n : ℝ)| ≤ 1 / 100000000 := by
    rw [hform]
    push_cast [scaledBoundaryCenter]
    rw [add_sub_add_left_eq_sub, ← sub_div, abs_div, abs_of_pos hpos]
    calc
      _ ≤ (1 / 1000000000 : ℝ) / n :=
        div_le_div_of_nonneg_right highCoefficient_bounds hpos.le
      _ ≤ (1 / 1000000000 : ℝ) / 1024 :=
        div_le_div_of_nonneg_left (by norm_num) (by norm_num) hnR
      _ ≤ _ := by norm_num
  calc
    _ ≤ |(n : ℝ) * boundarySignal 2 n - (n : ℝ) * highApprox u| +
      |(n : ℝ) * highApprox u - (scaledBoundaryCenter n : ℝ)| := abs_sub_le _ _ _
    _ ≤ (57 : ℝ) / 100000000 + 1 / 100000000 :=
      add_le_add (abs_scaled_boundarySignal_sub_highApprox_le hn) hdiff
    _ = _ := by norm_num

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoBoundaryHighBounds
