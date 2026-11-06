/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddDiagonalObservation
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.Analysis.SumIntegralComparisons

/-!
# Exponential terms and truncation for the odd sine diagonal

The derivative of a linear combination of the hyperbolic and trigonometric
products evaluates the half-window moment. The normalized sine vanishes at
the two endpoints. Its endpoint cosine is a sign and disappears on squaring.
Simplifying the resulting hyperbolic square yields a single exponential with
nonpositive exponent. At positive image indices, replacing the exponential
factor by one and the frequency-dependent denominator by `(2*j)^4`
gives an inverse fourth-power majorant. The decreasing integral test from
`J - 1` then bounds the error in the literal diagonal after `J > 1`
terms. The bound accounts for every omitted image. Independent analytical
review and novelty assessment remain separate.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddDiagonalSeriesTail

open OddRootProjection OddOutputTrace OddDiagonalObservation OddMultiplierBounds

private theorem integral_sinh_mul_sine (T a : ℝ) (hT : 0 < T) (ha : 0 < a) (n : ℕ) :
    (∫ t in Ioo 0 T, Real.sinh (a * t) * zeroExtendedSine T n t) =
      -((-1 : ℝ) ^ n * frequency T n * Real.sinh (a * T)) /
        (Real.sqrt T * (a ^ 2 + frequency T n ^ 2)) := by
  let w := frequency T n
  let f := fun t : ℝ => Real.sinh (a * t) * (Real.sin (w * t) / Real.sqrt T)
  let F := fun t : ℝ =>
    (a * Real.cosh (a * t) * Real.sin (w * t) -
      w * Real.sinh (a * t) * Real.cos (w * t)) / (Real.sqrt T * (a ^ 2 + w ^ 2))
  have hsqrt : Real.sqrt T ≠ 0 := Real.sqrt_ne_zero'.mpr hT
  have hsq : a ^ 2 + w ^ 2 ≠ 0 := ne_of_gt (by positivity)
  have hDeriv (t : ℝ) : HasDerivAt F (f t) t := by
    have ht := (hasDerivAt_id t).const_mul a
    have hw := (hasDerivAt_id t).const_mul w
    apply ((((ht.cosh.const_mul a).mul hw.sin).sub
      ((ht.sinh.const_mul w).mul hw.cos)).div_const _).congr_deriv
    dsimp [f]
    field_simp [hsqrt, hsq]
    ring1
  have hEq : (∫ t in Ioo 0 T, Real.sinh (a * t) * zeroExtendedSine T n t) =
      ∫ t in Ioo 0 T, f t := by
    apply setIntegral_congr_fun measurableSet_Ioo
    intro t ht
    have hmem : t ∈ Icc (-T) T := ⟨by linarith [ht.1], ht.2.le⟩
    simp only [f, w, zeroExtendedSine, ite_eq_left hmem, frequency, div_mul_eq_mul_div]
  have hContinuous : Continuous f := by dsimp [f]; fun_prop
  rw [hEq, ← integral_Ioc_eq_integral_Ioo, ← intervalIntegral.integral_of_le hT.le,
    intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hDeriv t)
      (hContinuous.intervalIntegrable _ _)]
  have hwT : w * T = (n : ℝ) * Real.pi := by
    dsimp [w, frequency]
    rw [div_mul_cancel₀ _ hT.ne', mul_comm]
  change F T - F 0 = -((-1 : ℝ) ^ n * w * Real.sinh (a * T)) / (Real.sqrt T * (a ^ 2 + w ^ 2))
  dsimp [F]
  rw [hwT, Real.sin_nat_mul_pi, Real.cos_nat_mul_pi]
  simp only [mul_zero, sub_zero, zero_div, Real.sin_zero, Real.sinh_zero, Real.cos_zero, zero_mul]
  ring1

private theorem four_mul_sinh_sq (x : ℝ) :
    4 * Real.sinh x ^ 2 = (Real.exp (2 * x) - 1) * (1 - Real.exp (-(2 * x))) := by
  rw [Real.sinh_eq, Real.exp_neg, two_mul, Real.exp_neg, Real.exp_add]
  field_simp [Real.exp_ne_zero x]
  ring1

/-- Closed exponential form of each signed correction. -/
theorem sineBoundaryTerm_eq_exponential (T : ℝ) (hT : 0 < T) (n j : ℕ) :
    sineBoundaryTerm T n j =
      let a : ℝ := 2 * (j : ℝ) + 1 / 2
      let w := frequency T n
      (-(2 * w ^ 2 * (1 - Real.exp (-(2 * a * T)))) / (T * (a ^ 2 + w ^ 2) ^ 2)) := by
  let a : ℝ := 2 * (j : ℝ) + 1 / 2
  let w := frequency T n
  let d := a ^ 2 + w ^ 2
  let C := Real.exp (2 * a * T) - 1
  have ha : 0 < a := by dsimp [a]; positivity
  have hC : 0 < C := sub_pos.mpr (Real.one_lt_exp_iff.mpr (by positivity))
  have hd : 0 < d := by dsimp [d]; positivity
  have hSign : ((-1 : ℝ) ^ n) ^ 2 = 1 := by
    rw [← pow_mul, Nat.mul_comm n 2, pow_mul]
    norm_num
  have hMoment :
      (∫ t in Ioo 0 T, Real.sinh (a * t) * zeroExtendedSine T n t) ^ 2 =
        w ^ 2 * Real.sinh (a * T) ^ 2 / (T * d ^ 2) := by
    rw [integral_sinh_mul_sine T a hT ha n]
    change (-((-1 : ℝ) ^ n * w * Real.sinh (a * T)) / (Real.sqrt T * d)) ^ 2 = _
    simp only [div_pow, neg_sq, mul_pow, hSign, one_mul, Real.sq_sqrt hT.le]
  have hS : 4 * Real.sinh (a * T) ^ 2 = C * (1 - Real.exp (-(2 * a * T))) := by
    simpa only [C, mul_assoc] using four_mul_sinh_sq (a * T)
  change (-8 : ℝ) / C * (∫ t in Ioo 0 T, Real.sinh (a * t) * zeroExtendedSine T n t) ^ 2 =
    -(2 * w ^ 2 * (1 - Real.exp (-(2 * a * T)))) / (T * d ^ 2)
  rw [hMoment]
  have hratio : Real.sinh (a * T) ^ 2 / C = (1 - Real.exp (-(2 * a * T))) / 4 := by
    apply (div_eq_iff hC.ne').2
    linarith only [hS]
  calc
    _ = -(8 * w ^ 2) / (T * d ^ 2) * (Real.sinh (a * T) ^ 2 / C) := by
      field_simp [hC.ne', hT.ne', hd.ne']
    _ = _ := by rw [hratio]; ring1

private theorem neg_sineBoundaryTerm_le (T : ℝ) (hT : 0 < T) (n j : ℕ) (hj : 0 < j) :
    -sineBoundaryTerm T n j ≤ frequency T n ^ 2 / (8 * T) * (j : ℝ) ^ (-4 : ℝ) := by
  rw [sineBoundaryTerm_eq_exponential T hT]
  let a : ℝ := 2 * (j : ℝ) + 1 / 2
  let w := frequency T n
  let d := a ^ 2 + w ^ 2
  have hjr : (0 : ℝ) < (j : ℝ) := by exact_mod_cast hj
  have hD : 0 < d := by dsimp [d, a]; positivity
  have ha : 2 * (j : ℝ) ≤ a := by dsimp [a]; linarith
  have hSq : (2 * (j : ℝ)) ^ 2 ≤ d :=
    (pow_le_pow_left₀ (by positivity) ha 2).trans (le_add_of_nonneg_right (sq_nonneg w))
  have hPow : (2 * (j : ℝ)) ^ 4 ≤ d ^ 2 := by
    simpa only [← pow_mul] using pow_le_pow_left₀ (sq_nonneg (2 * (j : ℝ))) hSq 2
  change -(-(2 * w ^ 2 * (1 - Real.exp (-(2 * a * T)))) / (T * d ^ 2)) ≤ _
  rw [neg_div, neg_neg]
  calc
    _ ≤ (2 * w ^ 2) / (T * d ^ 2) := div_le_div_of_nonneg_right
      (mul_le_of_le_one_right (by positivity) (sub_le_self _ (Real.exp_nonneg _))) (by positivity)
    _ ≤ (2 * w ^ 2) / (T * (2 * (j : ℝ)) ^ 4) :=
      div_le_div_of_nonneg_left (by positivity) (by positivity) (mul_le_mul_of_nonneg_left hPow hT.le)
    _ = _ := by
      simp only [Real.rpow_neg_ofNat, zpow_neg]
      field_simp [hT.ne', hjr.ne']
      ring1

/-- Integral-test bound on the complete correction after the first `J` terms. -/
theorem abs_sineArchimedeanEntry_sub_partialSum_le (T : ℝ) (hT : 0 < T) {n : ℕ}
    (hn : 0 < n) (J : ℕ) (hJ : 1 < J) :
    |sineArchimedeanEntry T (gammaConstant 1 0) 0 n n -
      (gammaConstant 1 0 + periodicMultiplier 0 (frequency T n) +
        ∑ j ∈ Finset.range J, sineBoundaryTerm T n j)| ≤
      frequency T n ^ 2 / (24 * T * ((J : ℝ) - 1) ^ 3) := by
  let B := sineBoundaryTerm T n
  let C := frequency T n ^ 2 / (8 * T)
  let f := fun x : ℝ => x ^ (-4 : ℝ)
  have hJ' : (1 : ℝ) < (J : ℝ) := by exact_mod_cast hJ
  have hcut : 0 < ((J - 1 : ℕ) : ℝ) := by exact_mod_cast (show 0 < J - 1 by omega)
  have hcutEq : ((J - 1 : ℕ) : ℝ) = (J : ℝ) - 1 := by
    rw [Nat.cast_sub (show 1 ≤ J by omega), Nat.cast_one]
  have hanti : AntitoneOn f (Ici ((J - 1 : ℕ) : ℝ)) := fun x hx _ _ hxy =>
    Real.rpow_le_rpow_of_nonpos (hcut.trans_le hx) hxy (by norm_num)
  have hI : IntegrableOn f (Ioi ((J - 1 : ℕ) : ℝ)) :=
    integrableOn_Ioi_rpow_of_lt (by norm_num) hcut
  have hnn : ∀ x ∈ Ioi ((J - 1 : ℕ) : ℝ), 0 ≤ f x := fun x hx =>
    Real.rpow_nonneg (hcut.trans hx).le _
  have hCmp := hanti.tsum_comp_add_le_integral (J - 1) hI hnn
  have hIndices (k : ℕ) : k + (J - 1) + 1 = k + J := by omega
  simp_rw [hIndices] at hCmp
  have hC : 0 ≤ C := by dsimp [C]; positivity
  have hB := hasSum_sineBoundaryTerm T hT hn
  have hTail := (summable_nat_add_iff (f := B) J).2 hB.summable
  have hFS := hanti.summable_of_integrableOn_Ioi hI hnn
  have hBound :
      (∑' k : ℕ, -B (k + J)) ≤ C * ∫ x in Ioi ((J - 1 : ℕ) : ℝ), f x := by
    calc
      _ ≤ ∑' k : ℕ, C * f ((k + J : ℕ) : ℝ) := by
        have hShifted := (summable_nat_add_iff (f := fun n : ℕ => f n) J).2 hFS
        apply hTail.neg.tsum_le_tsum _ (hShifted.mul_left C)
        intro k
        exact neg_sineBoundaryTerm_le T hT n (k + J) (by omega)
      _ ≤ _ := by rw [tsum_mul_left]; exact mul_le_mul_of_nonneg_left hCmp hC
  have hBsum := (hB.summable.sum_add_tsum_nat_add J).trans hB.tsum_eq
  have hErr :
      sineArchimedeanEntry T (gammaConstant 1 0) 0 n n -
        (gammaConstant 1 0 + periodicMultiplier 0 (frequency T n) +
          ∑ j ∈ Finset.range J, B j) = ∑' k : ℕ, B (k + J) := by
    dsimp only [B]
    linarith only [hBsum]
  rw [hErr, abs_of_nonpos (tsum_nonpos fun k => sineBoundaryTerm_nonpos T hT n (k + J)),
    ← tsum_neg]
  apply hBound.trans_eq
  dsimp only [f]
  rw [integral_Ioi_rpow_of_lt (by norm_num : (-4 : ℝ) < -1) hcut, hcutEq]
  norm_num [C, Real.rpow_neg_ofNat, zpow_neg]
  field_simp [hT.ne', sub_ne_zero.mpr hJ'.ne']
  ring1

end GRWTSK.NumberTheory.WeilQuadraticForm.OddDiagonalSeriesTail
