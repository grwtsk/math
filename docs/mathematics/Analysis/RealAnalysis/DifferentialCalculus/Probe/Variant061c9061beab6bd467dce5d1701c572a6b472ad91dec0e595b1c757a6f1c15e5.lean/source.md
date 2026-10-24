# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Probe.Variant061c9061beab6bd467dce5d1701c572a6b472ad91dec0e595b1c757a6f1c15e5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2638af610b7e417a7d6018320db2ca7abf5bb1fd` · SHA-256 `061c9061beab6bd467dce5d1701c572a6b472ad91dec0e595b1c757a6f1c15e5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvature

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceCorrelationCurvatureFive

open MeasureTheory Function Set SourcePairing SourceDerivativeEnergy SourceDerivativeCoefficientBound
open SourceCorrelationCurvature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

/-- The exact numerator is at most five times its unchanged normalization on the native range. -/
theorem derivativePolynomial_le_five_normPolynomial {r : ℝ}
    (hr0 : 0 ≤ r) (hr : r ≤ 1 / 40000) :
    derivativePolynomial r ≤ 5 * normPolynomial r := by
  have hsq : r ^ 2 ≤ (1 / 40000 : ℝ) ^ 2 :=
    (sq_le_sq₀ hr0 (by norm_num)).2 hr
  unfold derivativePolynomial normPolynomial
  nlinarith

/-- A source-specific coefficient bound for the small inverse squared scale. -/
theorem exact_ratio_upper_five {r : ℝ} (hr0 : 0 ≤ r) (hr : r ≤ 1 / 40000) :
    derivativePolynomial r / normPolynomial r ≤ 5 := by
  apply (div_le_iff₀ (normPolynomial_pos r hr0)).2
  exact derivativePolynomial_le_five_normPolynomial hr0 hr

/-- The actual normalized source has derivative energy at most five at native large scales. -/
theorem actual_derivative_energy_upper_five {A : ℝ} (hA : 200 ≤ A) :
    A ^ 2 * (∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x) ^ 2) ≤ 5 := by
  have hp : 0 < A := by linarith
  rw [actual_derivative_energy_eq hp]
  apply exact_ratio_upper_five (by positivity)
  have hsq : (40000 : ℝ) ≤ A ^ 2 := by nlinarith
  simpa only [one_div] using one_div_le_one_div_of_le (by norm_num : (0 : ℝ) < 40000) hsq

/-- Curvature of the actual unchanged source correlation, including its zero-extension seams. -/
theorem sourceCorrelation_second_deriv_abs_le_five {A : ℝ} (hA : 200 ≤ A) (t : ℝ) :
    |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t| ≤ 5 / A ^ 2 := by
  have hp : 0 < A := by linarith
  apply (sourceCorrelation_second_deriv_abs_le_energy hp t).trans
  apply (le_div_iff₀ (sq_pos_of_pos hp)).2
  have henergy := actual_derivative_energy_upper_five hA
  nlinarith

/-- The curvature coefficient controls every derivative increment. -/
theorem sourceCorrelation_deriv_increment_bound_five {A : ℝ} (hA : 200 ≤ A) (a y : ℝ) :
    |deriv (sourceCorrelation explicitSecondDerivative A) (a + y) -
      deriv (sourceCorrelation explicitSecondDerivative A) a| ≤ 5 / A ^ 2 * |y| := by
  have hp : 0 < A := by linarith
  have h := Convex.norm_image_sub_le_of_norm_deriv_le
    (s := Set.univ) (f := deriv (sourceCorrelation explicitSecondDerivative A))
    (fun x _ ↦ (sourceCorrelation_deriv_contDiff hp).differentiable (by norm_num) x)
    (fun x _ ↦ by simpa only [Real.norm_eq_abs] using
      sourceCorrelation_second_deriv_abs_le_five hA x)
    convex_univ (mem_univ a) (mem_univ (a + y))
  simpa only [Real.norm_eq_abs, add_sub_cancel_left] using h

/-- The even source correlation has vanishing first derivative at the retained origin. -/
theorem sourceCorrelation_deriv_zero {A : ℝ} (hA : 0 < A) :
    deriv (sourceCorrelation explicitSecondDerivative A) 0 = 0 := by
  have hd := ((sourceCorrelation_contDiff A hA).differentiable (by norm_num) 0).hasDerivAt
  have heq : (fun x : ℝ ↦ sourceCorrelation explicitSecondDerivative A (-x)) =
      sourceCorrelation explicitSecondDerivative A := funext (sourceCorrelation_even A)
  have hdneg : HasDerivAt (sourceCorrelation explicitSecondDerivative A)
      (deriv (sourceCorrelation explicitSecondDerivative A) 0) (-0) := by
    simpa only [neg_zero] using hd
  have hn := hdneg.comp 0 (hasDerivAt_neg (0 : ℝ))
  have hn' : HasDerivAt (sourceCorrelation explicitSecondDerivative A)
      (-deriv (sourceCorrelation explicitSecondDerivative A) 0) 0 := by
    simpa only [Function.comp_def, heq, mul_neg, mul_one] using hn
  have h := hd.unique hn'
  linarith

/-- The first derivative grows linearly from the unchanged zero-mode anchor. -/
theorem sourceCorrelation_deriv_abs_le_scaled_distance {A : ℝ} (hA : 200 ≤ A) (t : ℝ) :
    |deriv (sourceCorrelation explicitSecondDerivative A) t| ≤ 5 / A ^ 2 * |t| := by
  have hp : 0 < A := by linarith
  simpa only [zero_add, sourceCorrelation_deriv_zero hp, sub_zero] using
    sourceCorrelation_deriv_increment_bound_five hA 0 t

/-- Linear expansion retains its first moment with the sharp source curvature constant. -/
theorem sourceCorrelation_linear_taylor_bound_five {A : ℝ} (hA : 200 ≤ A) (a y : ℝ) :
    |sourceCorrelation explicitSecondDerivative A (a + y) -
      sourceCorrelation explicitSecondDerivative A a -
      y * deriv (sourceCorrelation explicitSecondDerivative A) a| ≤
      5 / A ^ 2 * y ^ 2 / 2 := by
  have hp : 0 < A := by linarith
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
  exact sourceCorrelation_second_deriv_abs_le_five hA z

/-- The actual unit-norm correlation differs from one quadratically at the origin. -/
theorem sourceCorrelation_sub_one_abs_le_five {A : ℝ} (hA : 200 ≤ A) (t : ℝ) :
    |sourceCorrelation explicitSecondDerivative A t - 1| ≤ 5 / A ^ 2 * t ^ 2 / 2 := by
  have hp : 0 < A := by linarith
  have hc0 : sourceCorrelation explicitSecondDerivative A 0 = 1 := by
    simpa only [sourceCorrelation, sub_zero, pow_two] using
      normalized_square_integral A (by linarith : 1 ≤ A)
  simpa only [zero_add, hc0, sourceCorrelation_deriv_zero hp,
    mul_zero, sub_zero] using sourceCorrelation_linear_taylor_bound_five hA 0 t

/-- Every four-corner rectangle keeps the exact support seams and both increments. -/
theorem sourceCorrelation_rectangle_defect_bound {A : ℝ} (hA : 200 ≤ A)
    (t u v : ℝ) :
    |sourceCorrelation explicitSecondDerivative A (t + u + v) -
      sourceCorrelation explicitSecondDerivative A (t + u) -
      sourceCorrelation explicitSecondDerivative A (t + v) +
      sourceCorrelation explicitSecondDerivative A t| ≤ 5 / A ^ 2 * |u| * |v| := by
  have hp : 0 < A := by linarith
  let f : ℝ → ℝ := fun x ↦ sourceCorrelation explicitSecondDerivative A (t + u + x) -
    sourceCorrelation explicitSecondDerivative A (t + x)
  have hd := (sourceCorrelation_contDiff A hp).differentiable (by norm_num)
  have hf (x : ℝ) : HasDerivAt f
      (deriv (sourceCorrelation explicitSecondDerivative A) (t + u + x) -
        deriv (sourceCorrelation explicitSecondDerivative A) (t + x)) x := by
    have h1 := (hd (t + u + x)).hasDerivAt.comp x ((hasDerivAt_id x).const_add (t + u))
    have h2 := (hd (t + x)).hasDerivAt.comp x ((hasDerivAt_id x).const_add t)
    convert h1.sub h2 using 1 <;> first | rfl | ring
  have h := Convex.norm_image_sub_le_of_norm_deriv_le
    (s := Set.univ) (f := f) (fun x _ ↦ (hf x).differentiableAt)
    (C := 5 / A ^ 2 * |u|)
    (fun x _ ↦ by
      rw [Real.norm_eq_abs, (hf x).deriv]
      simpa only [add_assoc, add_comm, add_left_comm] using
        sourceCorrelation_deriv_increment_bound_five hA (t + x) u)
    convex_univ (mem_univ 0) (mem_univ v)
  have heq : sourceCorrelation explicitSecondDerivative A (t + u + v) -
      sourceCorrelation explicitSecondDerivative A (t + u) -
      sourceCorrelation explicitSecondDerivative A (t + v) +
      sourceCorrelation explicitSecondDerivative A t = f v - f 0 := by
    simp only [f, add_zero]
    ring
  rw [heq]
  simpa only [Real.norm_eq_abs, sub_zero] using h

end FormalResearch.RiemannHypothesis.SourceCorrelationCurvatureFive
```
