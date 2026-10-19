import FormalResearch.RiemannHypothesis.SourceComparison.DerivativeEnergy
import FormalResearch.RiemannHypothesis.SourceComparison.CorrelationDifferenceMoments
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCorrelation

/-!+Scratch continuation: source correlation second derivative from opposite
convolution factors, assuming only the proved global C¹ regularity of the test.+-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceComparison.ScratchCorrelationSecondDerivative

open MeasureTheory
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity DerivativeEnergy
open CorrelationMoment CorrelationDifferenceMoments
open scoped Convolution

noncomputable section

theorem normalized_derivative_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (deriv (normalizedTest explicitSecondDerivative A)) volume :=
  (normalizedTest_contDiff A (by linarith)).continuous_deriv_one.integrable_of_hasCompactSupport
    (normalizedTest_hasCompactSupport A (by linarith)).deriv

theorem derivative_correlation_product_integrable (A t : ℝ) (hA : 1 ≤ A) :
    Integrable (fun x ↦ deriv (normalizedTest explicitSecondDerivative A) x *
      deriv (normalizedTest explicitSecondDerivative A) (x - t)) volume := by
  have hd := (normalizedTest_contDiff A (by linarith)).continuous_deriv_one
  exact (hd.mul (hd.comp (continuous_id.sub continuous_const))).integrable_of_hasCompactSupport
    (normalizedTest_hasCompactSupport A (by linarith)).deriv.mul_right

theorem sourceCorrelation_derivative_eq_convolution (A : ℝ) (hA : 1 ≤ A) :
    deriv (sourceCorrelation explicitSecondDerivative A) =
      deriv (normalizedTest explicitSecondDerivative A) ⋆
        (fun x ↦ normalizedTest explicitSecondDerivative A (-x)) := by
  funext t
  rw [(sourceCorrelation_hasDerivAt A t hA).deriv]
  simp only [convolution, ContinuousLinearMap.lsmul_apply, smul_eq_mul, neg_sub]

theorem reflectedTest_derivative (A : ℝ) (hA : 1 ≤ A) :
    deriv (fun x ↦ normalizedTest explicitSecondDerivative A (-x)) =
      fun x ↦ -deriv (normalizedTest explicitSecondDerivative A) (-x) := by
  funext x
  have hv := ((normalizedTest_contDiff A (by linarith)).differentiable (by norm_num) (-x)).hasDerivAt
  simpa only [Function.comp_def, mul_neg_one] using (hv.comp x (hasDerivAt_neg x)).deriv

theorem sourceCorrelation_derivative_hasDerivAt (A t : ℝ) (hA : 1 ≤ A) :
    HasDerivAt (deriv (sourceCorrelation explicitSecondDerivative A))
      (-(∫ x, deriv (normalizedTest explicitSecondDerivative A) x *
        deriv (normalizedTest explicitSecondDerivative A) (x - t))) t := by
  have h := (reflectedTest_hasCompactSupport A (by linarith)).hasDerivAt_convolution_right
    (ContinuousLinearMap.lsmul ℝ ℝ) (normalized_derivative_integrable A hA).locallyIntegrable
    ((normalizedTest_contDiff A (by linarith)).comp contDiff_neg) t
  rw [← sourceCorrelation_derivative_eq_convolution A hA, reflectedTest_derivative A hA] at h
  simpa only [convolution, ContinuousLinearMap.lsmul_apply, smul_eq_mul, neg_sub, mul_neg,
    integral_neg] using h

theorem sourceCorrelation_second_derivative_eq (A t : ℝ) (hA : 1 ≤ A) :
    deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t =
      -(∫ x, deriv (normalizedTest explicitSecondDerivative A) x *
        deriv (normalizedTest explicitSecondDerivative A) (x - t)) :=
  (sourceCorrelation_derivative_hasDerivAt A t hA).deriv

theorem sourceCorrelation_second_derivative_abs_le_energy (A t : ℝ) (hA : 1 ≤ A) :
    |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t| ≤
      ∫ x, deriv (normalizedTest explicitSecondDerivative A) x ^ 2 := by
  rw [sourceCorrelation_second_derivative_eq A t hA, abs_neg]
  let f := deriv (normalizedTest explicitSecondDerivative A)
  have hf : Integrable (fun x ↦ f x ^ 2) volume :=
    normalized_derivative_square_integrable A hA
  have hg : Integrable (fun x ↦ f (x - t) ^ 2) volume := hf.comp_sub_right t
  have hp : Integrable (fun x ↦ f x * f (x - t)) volume :=
    derivative_correlation_product_integrable A t hA
  have ng : (∫ x, f (x - t) ^ 2) = ∫ x, f x ^ 2 :=
    integral_sub_right_eq_self (μ := volume) (fun x ↦ f x ^ 2) t
  have upper := integral_mono (hp.const_mul 2) (hf.add hg)
    (fun x ↦ show 2 * (f x * f (x - t)) ≤ f x ^ 2 + f (x - t) ^ 2 by
      nlinarith [sq_nonneg (f x - f (x - t))])
  have lower := integral_mono (hp.const_mul (-2)) (hf.add hg)
    (fun x ↦ show -2 * (f x * f (x - t)) ≤ f x ^ 2 + f (x - t) ^ 2 by
      nlinarith [sq_nonneg (f x + f (x - t))])
  simp only [Pi.add_apply] at upper lower
  rw [integral_const_mul, integral_add hf hg, ng] at upper lower
  change |∫ x, f x * f (x - t)| ≤ ∫ x, f x ^ 2
  exact abs_le.mpr ⟨by linarith, by linarith⟩

theorem sourceCorrelation_second_derivative_abs_le (A t : ℝ) (hA : 1 ≤ A) :
    |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t| ≤ 65 / (3 * A ^ 2) :=
  (sourceCorrelation_second_derivative_abs_le_energy A t hA).trans
    (normalized_derivative_square_integral_le A hA)

theorem sourceCorrelation_derivative_contDiff (A : ℝ) (hA : 1 ≤ A) :
    ContDiff ℝ 1 (deriv (sourceCorrelation explicitSecondDerivative A)) := by
  rw [sourceCorrelation_derivative_eq_convolution A hA]
  exact (reflectedTest_hasCompactSupport A (by linarith)).contDiff_convolution_right
    (ContinuousLinearMap.lsmul ℝ ℝ) (normalized_derivative_integrable A hA).locallyIntegrable
    ((normalizedTest_contDiff A (by linarith)).comp contDiff_neg)

theorem sourceCorrelation_second_derivative_continuous (A : ℝ) (hA : 1 ≤ A) :
    Continuous (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) :=
  (sourceCorrelation_derivative_contDiff A hA).continuous_deriv_one

theorem correlationDifference_contDiff (A : ℝ) (hA : 1 ≤ A) :
    ContDiff ℝ 1 (correlationDifference A) :=
  (sourceCorrelation_derivative_contDiff A hA).sub
    ((sourceCorrelation_contDiff A (by linarith)).div_const 2)

theorem correlationDifference_hasCompactSupport (A : ℝ) (hA : 1 ≤ A) :
    HasCompactSupport (correlationDifference A) := by
  have hcs := sourceCorrelation_hasCompactSupport A (by linarith)
  have hdiv : HasCompactSupport
      (fun t ↦ sourceCorrelation explicitSecondDerivative A t / 2) := by
    rw [show (fun t ↦ sourceCorrelation explicitSecondDerivative A t / 2) =
        sourceCorrelation explicitSecondDerivative A * (fun _ ↦ (2 : ℝ)⁻¹) by
      funext t
      simp only [Pi.mul_apply, div_eq_mul_inv]]
    exact hcs.mul_right
  exact hcs.deriv.sub hdiv

theorem correlationDifference_abs_le (A t : ℝ) (hA : 1 ≤ A) :
    |correlationDifference A t| ≤ Real.sqrt (65 / 3) / A + 1 / 2 := by
  unfold correlationDifference
  calc
    _ ≤ |deriv (sourceCorrelation explicitSecondDerivative A) t| +
        |sourceCorrelation explicitSecondDerivative A t / 2| := abs_sub _ _
    _ ≤ Real.sqrt (65 / 3) / A + 1 / 2 := by
      rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
      exact add_le_add (sourceCorrelation_derivative_abs_le A t hA)
        (div_le_div_of_nonneg_right
          (EstimateCorrelation.actual_correlation_abs_le_one A t hA) (by norm_num))

theorem correlationDifference_hasDerivAt (A t : ℝ) (hA : 1 ≤ A) :
    HasDerivAt (correlationDifference A)
      (deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t -
        deriv (sourceCorrelation explicitSecondDerivative A) t / 2) t := by
  exact (((sourceCorrelation_derivative_contDiff A hA).differentiable (by norm_num) t).hasDerivAt).sub
    ((((sourceCorrelation_contDiff A (by linarith)).differentiable (by norm_num) t).hasDerivAt).div_const 2)

theorem correlationDifference_derivative_abs_le (A t : ℝ) (hA : 1 ≤ A) :
    |deriv (correlationDifference A) t| ≤
      65 / (3 * A ^ 2) + Real.sqrt (65 / 3) / (2 * A) := by
  rw [(correlationDifference_hasDerivAt A t hA).deriv]
  calc
    _ ≤ |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t| +
        |deriv (sourceCorrelation explicitSecondDerivative A) t / 2| := abs_sub _ _
    _ ≤ 65 / (3 * A ^ 2) + (Real.sqrt (65 / 3) / A) / 2 := by
      rw [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)]
      exact add_le_add (sourceCorrelation_second_derivative_abs_le A t hA)
        (div_le_div_of_nonneg_right (sourceCorrelation_derivative_abs_le A t hA) (by norm_num))
    _ = _ := by ring

end
end FormalResearch.RiemannHypothesis.SourceComparison.ScratchCorrelationSecondDerivative

#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ScratchCorrelationSecondDerivative.normalized_derivative_integrable
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ScratchCorrelationSecondDerivative.derivative_correlation_product_integrable
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ScratchCorrelationSecondDerivative.sourceCorrelation_derivative_eq_convolution
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ScratchCorrelationSecondDerivative.reflectedTest_derivative
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ScratchCorrelationSecondDerivative.sourceCorrelation_derivative_hasDerivAt
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ScratchCorrelationSecondDerivative.sourceCorrelation_second_derivative_eq
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ScratchCorrelationSecondDerivative.sourceCorrelation_second_derivative_abs_le_energy
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ScratchCorrelationSecondDerivative.sourceCorrelation_second_derivative_abs_le
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ScratchCorrelationSecondDerivative.sourceCorrelation_derivative_contDiff
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ScratchCorrelationSecondDerivative.sourceCorrelation_second_derivative_continuous
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ScratchCorrelationSecondDerivative.correlationDifference_contDiff
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ScratchCorrelationSecondDerivative.correlationDifference_hasCompactSupport
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ScratchCorrelationSecondDerivative.correlationDifference_abs_le
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ScratchCorrelationSecondDerivative.correlationDifference_hasDerivAt
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ScratchCorrelationSecondDerivative.correlationDifference_derivative_abs_le
