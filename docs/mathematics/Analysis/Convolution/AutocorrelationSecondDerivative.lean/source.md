# Complete source: GRWTSK.Analysis.Convolution.AutocorrelationSecondDerivative

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `23d0e8ee17a01b491a8df07b38a3b471d5270baf` · SHA-256 `b47947f0c16acd7d443c5de812474426d69b01fd75a5148b90ed0f794243c803`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Convolution.AutocorrelationDerivativeEnergy
import Mathlib.Analysis.Calculus.Taylor

/-!
# Curvature of the unchanged compact source correlation

Differentiating the two distinct convolution factors gives the negative
first-derivative autocorrelation. Only the source's proved global C¹
regularity is required: no second derivative across its zero-extension seams
is assumed. The exact derivative energy bounds the curvature uniformly.

AI attribution: developed with OpenAI Codex; the proof terms are checked by Lean.
-/

set_option autoImplicit false

namespace GRWTSK.RiemannHypothesis.SourceCorrelationCurvature

open MeasureTheory Function Set
open scoped Convolution
open SourcePairing SourceDerivativeEnergy SourceCorrelationEnergy
open GRWTSK.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open GRWTSK.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity

/-- The ordinary first derivative of the actual compact C¹ source is integrable. -/
theorem normalizedTest_deriv_integrable {A : ℝ} (hA : 0 < A) :
    Integrable (deriv (normalizedTest explicitSecondDerivative A)) :=
  ((normalizedTest_contDiff A hA).continuous_deriv (by norm_num)).integrable_of_hasCompactSupport
    (normalizedTest_hasCompactSupport A hA).deriv

/-- Reflection carries a minus sign in the ordinary derivative. -/
theorem reflectedTest_hasDerivAt {A : ℝ} (hA : 0 < A) (x : ℝ) :
    HasDerivAt (fun y ↦ normalizedTest explicitSecondDerivative A (-y))
      (-deriv (normalizedTest explicitSecondDerivative A) (-x)) x := by
  have h := ((normalizedTest_contDiff A hA).differentiable (by norm_num) (-x)).hasDerivAt
  convert h.comp x (hasDerivAt_neg x) using 1 <;> first | rfl | simp

/-- The first correlation derivative is exactly a convolution with the source derivative. -/
theorem sourceCorrelation_deriv_eq_convolution {A : ℝ} (hA : 0 < A) :
    deriv (sourceCorrelation explicitSecondDerivative A) =
      (deriv (normalizedTest explicitSecondDerivative A) ⋆
        (fun x ↦ normalizedTest explicitSecondDerivative A (-x))) := by
  funext t
  rw [sourceCorrelation_deriv_eq_integral hA]
  simp only [convolution, ContinuousLinearMap.lsmul_apply, smul_eq_mul, neg_sub]

/-- The first correlation derivative is globally C¹, including the moving seams. -/
theorem sourceCorrelation_deriv_contDiff {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 1 (deriv (sourceCorrelation explicitSecondDerivative A)) := by
  rw [sourceCorrelation_deriv_eq_convolution hA]
  exact (reflectedTest_hasCompactSupport A hA).contDiff_convolution_right
    (ContinuousLinearMap.lsmul ℝ ℝ) (normalizedTest_deriv_integrable hA).locallyIntegrable
    ((normalizedTest_contDiff A hA).comp contDiff_neg)

/-- The actual correlation is globally C² although its source only needs to be C¹. -/
theorem sourceCorrelation_contDiff_two {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 2 (sourceCorrelation explicitSecondDerivative A) := by
  rw [show (2 : WithTop ℕ∞) = 1 + 1 from rfl, contDiff_succ_iff_deriv]
  exact ⟨(sourceCorrelation_contDiff A hA).differentiable (by norm_num),
    by norm_num, sourceCorrelation_deriv_contDiff hA⟩

/-- Differentiating the reflected convolution factor produces the exact negative sign. -/
theorem sourceCorrelation_deriv_hasDerivAt_integral {A : ℝ} (hA : 0 < A) (t : ℝ) :
    HasDerivAt (deriv (sourceCorrelation explicitSecondDerivative A))
      (-(∫ x : ℝ, deriv (normalizedTest explicitSecondDerivative A) x *
        deriv (normalizedTest explicitSecondDerivative A) (x - t))) t := by
  rw [sourceCorrelation_deriv_eq_convolution hA]
  have hd := (reflectedTest_hasCompactSupport A hA).hasDerivAt_convolution_right
    (ContinuousLinearMap.lsmul ℝ ℝ) (normalizedTest_deriv_integrable hA).locallyIntegrable
    ((normalizedTest_contDiff A hA).comp contDiff_neg) t
  have heq : deriv (fun x ↦ normalizedTest explicitSecondDerivative A (-x)) =
      fun x ↦ -deriv (normalizedTest explicitSecondDerivative A) (-x) :=
    funext fun x ↦ (reflectedTest_hasDerivAt hA x).deriv
  simpa only [heq, convolution, ContinuousLinearMap.lsmul_apply, smul_eq_mul,
    neg_sub, mul_neg, integral_neg] using hd

/-- The second derivative is the negative first-derivative autocorrelation. -/
theorem sourceCorrelation_second_deriv_eq_integral {A : ℝ} (hA : 0 < A) (t : ℝ) :
    deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t =
      -(∫ x : ℝ, deriv (normalizedTest explicitSecondDerivative A) x *
        deriv (normalizedTest explicitSecondDerivative A) (x - t)) :=
  (sourceCorrelation_deriv_hasDerivAt_integral hA t).deriv

/-- Both differentiated factors give a genuine integrable correlation integrand. -/
theorem sourceCorrelation_second_deriv_integrand_integrable {A : ℝ} (hA : 0 < A) (t : ℝ) :
    Integrable (fun x : ℝ ↦ deriv (normalizedTest explicitSecondDerivative A) x *
      deriv (normalizedTest explicitSecondDerivative A) (x - t)) := by
  have hc := (normalizedTest_contDiff A hA).continuous_deriv (by norm_num)
  exact (hc.mul (hc.comp (continuous_id.sub continuous_const))).integrable_of_hasCompactSupport
    (normalizedTest_hasCompactSupport A hA).deriv.mul_right

/-- The curvature is bounded by the unchanged source's actual derivative energy. -/
theorem sourceCorrelation_second_deriv_abs_le_energy {A : ℝ} (hA : 0 < A) (t : ℝ) :
    |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t| ≤
      ∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x) ^ 2 := by
  rw [sourceCorrelation_second_deriv_eq_integral hA, abs_neg]
  let f := deriv (normalizedTest explicitSecondDerivative A)
  have hf : Integrable (fun x : ℝ ↦ (f x) ^ 2) := actual_derivative_square_integrable hA
  have hg := hf.comp_sub_right t
  have hm : Integrable (fun x : ℝ ↦ f x * f (x - t)) :=
    sourceCorrelation_second_deriv_integrand_integrable hA t
  calc
    |∫ x : ℝ, f x * f (x - t)| ≤ ∫ x : ℝ, |f x * f (x - t)| :=
      abs_integral_le_integral_abs
    _ ≤ ∫ x : ℝ, ((f x) ^ 2 + (f (x - t)) ^ 2) / 2 := by
      apply integral_mono hm.abs ((hf.add hg).div_const 2)
      intro x
      change |f x * f (x - t)| ≤ ((f x) ^ 2 + (f (x - t)) ^ 2) / 2
      rw [abs_mul]
      nlinarith [sq_nonneg (|f x| - |f (x - t)|), sq_abs (f x), sq_abs (f (x - t))]
    _ = ∫ x : ℝ, (f x) ^ 2 := by
      rw [integral_div, integral_add hf hg,
        integral_sub_right_eq_self (fun x : ℝ ↦ (f x) ^ 2) t]
      ring

/-- The exact coefficient from source-energy normalization bounds curvature at every separation. -/
theorem sourceCorrelation_second_deriv_abs_le_coefficient {A : ℝ}
    (hA : 1 ≤ A) (t : ℝ) :
    |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t| ≤
      162826 / (7623 * A ^ 2) := by
  have hpos : 0 < A := lt_of_lt_of_le (by norm_num) hA
  apply (sourceCorrelation_second_deriv_abs_le_energy hpos t).trans
  apply (le_div_iff₀ (by positivity : 0 < 7623 * A ^ 2)).2
  have henergy := actual_derivative_energy_upper hA
  nlinarith

/-- The exact curvature coefficient gives a global derivative increment bound. -/
theorem sourceCorrelation_deriv_increment_bound {A : ℝ} (hA : 1 ≤ A) (a y : ℝ) :
    |deriv (sourceCorrelation explicitSecondDerivative A) (a + y) -
      deriv (sourceCorrelation explicitSecondDerivative A) a| ≤
      162826 / (7623 * A ^ 2) * |y| := by
  have hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
  have h := Convex.norm_image_sub_le_of_norm_deriv_le
    (s := Set.univ) (f := deriv (sourceCorrelation explicitSecondDerivative A))
    (fun x _ ↦ (sourceCorrelation_deriv_contDiff hp).differentiable (by norm_num) x)
    (fun x _ ↦ by simpa only [Real.norm_eq_abs] using
      sourceCorrelation_second_deriv_abs_le_coefficient hA x)
    convex_univ (mem_univ a) (mem_univ (a + y))
  simpa only [Real.norm_eq_abs, add_sub_cancel_left] using h

/-- Linear Taylor expansion of the actual source has a quadratic, energy-controlled remainder. -/
theorem sourceCorrelation_linear_taylor_bound {A : ℝ} (hA : 1 ≤ A) (a y : ℝ) :
    |sourceCorrelation explicitSecondDerivative A (a + y) -
      sourceCorrelation explicitSecondDerivative A a -
      y * deriv (sourceCorrelation explicitSecondDerivative A) a| ≤
      162826 / (7623 * A ^ 2) * y ^ 2 / 2 := by
  have hp : 0 < A := lt_of_lt_of_le (by norm_num) hA
  by_cases hy : y = 0
  · subst y
    simp
  have hne : a ≠ a + y := by intro h; apply hy; linarith
  have hf := sourceCorrelation_contDiff_two hp
  obtain ⟨z, _, hz⟩ := taylor_mean_remainder_lagrange_iteratedDeriv
    (n := 1) hne hf.contDiffOn
  have ht : taylorWithinEval (sourceCorrelation explicitSecondDerivative A) 1
      (uIcc a (a + y)) a (a + y) =
      sourceCorrelation explicitSecondDerivative A a +
        y * deriv (sourceCorrelation explicitSecondDerivative A) a := by
    rw [show (1 : ℕ) = 0 + 1 from rfl, taylorWithinEval_succ]
    simp only [taylor_within_zero_eval, Nat.cast_zero, zero_add, Nat.factorial_zero,
      Nat.cast_one, mul_one, inv_one, one_mul, pow_one, smul_eq_mul,
      iteratedDerivWithin_one, add_sub_cancel_left]
    rw [((hf.differentiable (by norm_num)) a).derivWithin
      ((uniqueDiffOn_uIcc hne) a (left_mem_uIcc))]
  rw [ht] at hz
  simp only [iteratedDeriv_succ, iteratedDeriv_zero, Nat.factorial_succ,
    Nat.factorial_zero, Nat.cast_mul, mul_one,
    add_sub_cancel_left] at hz
  have heq : sourceCorrelation explicitSecondDerivative A (a + y) -
      sourceCorrelation explicitSecondDerivative A a -
      y * deriv (sourceCorrelation explicitSecondDerivative A) a =
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) z * y ^ 2 / 2 := by
    linarith [hz]
  rw [heq, abs_div, abs_mul, abs_of_nonneg (sq_nonneg y)]
  rw [abs_of_pos (by norm_num : (0 : ℝ) < 2)]
  gcongr
  exact sourceCorrelation_second_deriv_abs_le_coefficient hA z

end GRWTSK.RiemannHypothesis.SourceCorrelationCurvature
```
