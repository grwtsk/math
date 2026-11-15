/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Sinc
import Mathlib.Tactic.Ring

/-!
# Sine kernel overlap for the radius-one Weil estimate

Formalizes the overlap and sinc variation used in §11 of
[`WeilOddSupportBoundaryReflection.md`](https://github.com/grwtsk/math/blob/6ec6e9557ebf284390e5417dac858d5a23d681a3/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilOddSupportBoundaryReflection.md#11-sound-sine-envelope-certificate-for-the-original-radius-one-stage)
and [grwtsk/hs#2 C0010/T4](https://github.com/grwtsk/hs/issues/2#issuecomment-6887388904).

The cosine integral gives the unnormalized sinc, with value one at zero.
Subtracting the two cosine addition formulas gives the sine overlap for every
pair of real angular frequencies, including the diagonal and opposite pairs.
Squaring this overlap with the squared operator prefactor `(2 / π)^2` gives
the integrand normalization of the written Hilbert–Schmidt identity. Integrating
the unit Lipschitz bound on cosine gives the sinc variation estimate used for
frequency cells. The operator identity, coefficient enclosures and source
return to `DirichletStageChain.PrimitiveStageLower` are separate proof obligations.
Independent analytical review: NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddSineKernelOverlap

/-- The integral representation has the correct value also at frequency zero. -/
theorem integral_cos_mul_eq_sinc (x : ℝ) :
    (∫ u in (0 : ℝ)..1, Real.cos (x * u)) = Real.sinc x := by
  by_cases hx : x = 0
  · simp [hx]
  rw [intervalIntegral.integral_comp_mul_left Real.cos hx,
    mul_zero, mul_one, integral_cos, Real.sin_zero, sub_zero, Real.sinc_of_ne_zero hx]
  simp [div_eq_mul_inv, mul_comm]

/-- Exact rank-one kernel pairing on the positive unit interval. -/
theorem integral_sin_mul_sin_eq (x y : ℝ) :
    (∫ u in (0 : ℝ)..1, Real.sin (x * u) * Real.sin (y * u)) =
      (Real.sinc (x - y) - Real.sinc (x + y)) / 2 := by
  have hsub : Continuous (fun u : ℝ => Real.cos ((x - y) * u)) := by fun_prop
  have hadd : Continuous (fun u : ℝ => Real.cos ((x + y) * u)) := by fun_prop
  calc
    (∫ u in (0 : ℝ)..1, Real.sin (x * u) * Real.sin (y * u)) =
        ∫ u in (0 : ℝ)..1, (Real.cos ((x - y) * u) - Real.cos ((x + y) * u)) / 2 := by
      apply intervalIntegral.integral_congr
      intro u _
      dsimp only
      rw [sub_mul, add_mul, Real.cos_sub, Real.cos_add]
      ring
    _ = _ := by
      rw [intervalIntegral.integral_div, intervalIntegral.integral_sub
        (hsub.intervalIntegrable _ _) (hadd.intervalIntegrable _ _),
        integral_cos_mul_eq_sinc, integral_cos_mul_eq_sinc]

/-- The two factors of two cancel in the squared kernel with the operator prefactor. -/
theorem scaled_integral_sin_mul_sin_sq (x y : ℝ) :
    (2 / Real.pi) ^ 2 *
        (∫ u in (0 : ℝ)..1, Real.sin (x * u) * Real.sin (y * u)) ^ 2 =
      (Real.sinc (x - y) - Real.sinc (x + y)) ^ 2 / Real.pi ^ 2 := by
  rw [integral_sin_mul_sin_eq]
  simp only [div_eq_mul_inv]
  ring

/-- Exact uniform sinc variation used to pass from frequency midpoints to the whole cell. -/
theorem abs_sinc_sub_sinc_le (x y : ℝ) :
    |Real.sinc x - Real.sinc y| ≤ |x - y| / 2 := by
  have hx : Continuous (fun u : ℝ => Real.cos (x * u)) := by fun_prop
  have hy : Continuous (fun u : ℝ => Real.cos (y * u)) := by fun_prop
  have hdiff : Continuous (fun u : ℝ => |Real.cos (x * u) - Real.cos (y * u)|) :=
    (hx.sub hy).abs
  have hbound : Continuous (fun u : ℝ => |x - y| * u) := by fun_prop
  rw [← integral_cos_mul_eq_sinc x, ← integral_cos_mul_eq_sinc y,
    ← intervalIntegral.integral_sub (hx.intervalIntegrable _ _) (hy.intervalIntegrable _ _)]
  calc
    _ ≤ ∫ u in (0 : ℝ)..1, |Real.cos (x * u) - Real.cos (y * u)| :=
      intervalIntegral.abs_integral_le_integral_abs zero_le_one
    _ ≤ ∫ u in (0 : ℝ)..1, |x - y| * u := by
      apply intervalIntegral.integral_mono_on zero_le_one
        (hdiff.intervalIntegrable _ _) (hbound.intervalIntegrable _ _)
      intro u hu
      simpa only [← sub_mul, abs_mul, abs_of_nonneg hu.1] using
        Real.abs_cos_sub_cos_le (x * u) (y * u)
    _ = _ := by
      rw [intervalIntegral.integral_const_mul, integral_id]
      ring

end GRWTSK.NumberTheory.WeilQuadraticForm.OddSineKernelOverlap
