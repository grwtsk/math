/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddOutputTrace
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSchurAccounting
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.FunProp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

/-!
# The pole moment on the literal odd Weil coordinates

Connes–Consani–Moscovici, arXiv:2511.22755v1, (3.19), retain both pole
orientations. Here the existing integral-defined sine compression uses the
normalized sine on the support interval and its zero extension elsewhere.
For frequency `w`, an antiderivative of the exponential moment has numerator
`exp(a*t) * (a*sin(w*t) - w*cos(w*t))`. At both endpoints the sine
vanishes and the cosine equals `(-1)^n`. Taking the difference of the
two pole moments gives the exact bordered coefficient already used in
`OddOutputTrace`. Taking their sum gives zero by oddness.

This compares literal entries at positive support size. Full-domain
coercivity and the complete remote-tail allowance remain separate. These
are classical integral evaluations. Independent analytical review and
novelty assessment: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped Interval
namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddPoleMoment
open OddRootProjection OddSchurAccounting OddOutputTrace

private theorem sinePoleMoment_formula (T a : ℝ) (n : ℕ) (hT : 0 < T) (ha : a ≠ 0) :
    sinePoleMoment T a n =
      -(2 * (-1 : ℝ) ^ n * frequency T n * Real.sinh (a * T)) /
        (Real.sqrt T * (a ^ 2 + frequency T n ^ 2)) := by
  let w := frequency T n
  have hshape : (fun t : ℝ => zeroExtendedSine T n t * Real.exp (a * t)) =
      (Icc (-T) T).indicator (fun t : ℝ => Real.sin (w * t) / Real.sqrt T * Real.exp (a * t)) := by
    funext t
    by_cases ht : t ∈ Icc (-T) T <;>
      simp [zeroExtendedSine, ht, w, frequency, div_mul_eq_mul_div]
  unfold sinePoleMoment
  rw [hshape, integral_indicator measurableSet_Icc, integral_Icc_eq_integral_Ioc,
    ← intervalIntegral.integral_of_le (by linarith : -T ≤ T)]
  let F := fun t : ℝ => Real.exp (a * t) *
    (a * Real.sin (w * t) - w * Real.cos (w * t)) /
      (Real.sqrt T * (a ^ 2 + w ^ 2))
  have hsqrt : Real.sqrt T ≠ 0 := Real.sqrt_ne_zero'.mpr hT
  have hsq : a ^ 2 + w ^ 2 ≠ 0 :=
    ne_of_gt (add_pos_of_pos_of_nonneg (sq_pos_of_ne_zero ha) (sq_nonneg w))
  have hderiv (t : ℝ) :
      HasDerivAt F (Real.sin (w * t) / Real.sqrt T * Real.exp (a * t)) t := by
    have ha' := (hasDerivAt_id t).const_mul a
    have hw := (hasDerivAt_id t).const_mul w
    apply ((ha'.exp.mul ((hw.sin.const_mul a).sub (hw.cos.const_mul w))).div_const
      (Real.sqrt T * (a ^ 2 + w ^ 2))).congr_deriv
    dsimp
    field_simp [hsqrt, hsq]
    ring
  have hcontinuous :
      Continuous (fun t : ℝ => Real.sin (w * t) / Real.sqrt T * Real.exp (a * t)) := by
    fun_prop
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hderiv t)
    (hcontinuous.intervalIntegrable _ _)]
  have hwT : w * T = (n : ℝ) * Real.pi := by
    dsimp [w, frequency]
    rw [div_mul_cancel₀ _ hT.ne', mul_comm]
  have hwneg : w * (-T) = -((n : ℝ) * Real.pi) := by rw [mul_neg, hwT]
  change F T - F (-T) =
      -(2 * (-1 : ℝ) ^ n * w * Real.sinh (a * T)) / (Real.sqrt T * (a ^ 2 + w ^ 2))
  dsimp [F]
  rw [hwT, hwneg, Real.sin_neg, Real.cos_neg, Real.sin_nat_mul_pi, Real.cos_nat_mul_pi,
    show a * (-T) = -(a * T) by ring, Real.sinh_eq]
  ring

/-- The closed-form sine coefficient is the actual bordered pole coupling. -/
theorem sinhMomentRow_eq_sinePoleCoefficient (T : ℝ) (hT : 0 < T) {M : ℕ} (i : Fin M) :
    sinhMomentRow T M i = sinePoleCoefficient T (i.val + 1) := by
  unfold sinhMomentRow
  rw [sinePoleMoment_formula _ _ _ hT (by norm_num),
    sinePoleMoment_formula _ _ _ hT (by norm_num)]
  unfold sinePoleCoefficient
  rw [show (1 / 2 : ℝ) * T = T / 2 by ring,
    show (-1 / 2 : ℝ) * T = -(T / 2) by ring, Real.sinh_neg, pow_succ]
  norm_num
  ring

/-- The even pole moment vanishes in every retained sine coordinate. -/
theorem coshMomentRow_eq_zero (T : ℝ) (hT : 0 < T) {M : ℕ} (i : Fin M) :
    coshMomentRow T M i = 0 := by
  unfold coshMomentRow
  rw [sinePoleMoment_formula _ _ _ hT (by norm_num),
    sinePoleMoment_formula _ _ _ hT (by norm_num)]
  rw [show (1 / 2 : ℝ) * T = T / 2 by ring,
    show (-1 / 2 : ℝ) * T = -(T / 2) by ring, Real.sinh_neg]
  norm_num
  ring

end GRWTSK.NumberTheory.WeilQuadraticForm.OddPoleMoment
