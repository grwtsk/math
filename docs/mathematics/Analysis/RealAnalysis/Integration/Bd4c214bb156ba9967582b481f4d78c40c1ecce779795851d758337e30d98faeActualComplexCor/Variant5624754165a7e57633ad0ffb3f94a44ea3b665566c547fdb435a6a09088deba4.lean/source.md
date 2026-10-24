# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.Bd4c214bb156ba9967582b481f4d78c40c1ecce779795851d758337e30d98faeActualComplexCor.Variant5624754165a7e57633ad0ffb3f94a44ea3b665566c547fdb435a6a09088deba4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5dedd993b099e4e798d9a67703064a2941841719` · SHA-256 `5624754165a7e57633ad0ffb3f94a44ea3b665566c547fdb435a6a09088deba4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualComplexEndpointAsymptotic
import ActualCorrelationOppositeHalf
import Mathlib.Analysis.Convolution

/-!
The literal complex transform of the actual normalized autocorrelation is an
ordinary complex square. Compact support supplies genuine L1 before Fubini.
Both source support endpoints are retained. No conjugate or modulus square,
zero expansion, arithmetic bound or holomorphic continuation is substituted.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.ActualComplexCorrelationSquare
open MeasureTheory Set
open scoped Interval Convolution
open SourcePairing ActualCorrelationOppositeHalf SourceActualComplexEndpointAsymptotic
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity
noncomputable section

private theorem actual_test_even (A : ℝ) (hA : 0 < A) (x : ℝ) :
    normalizedTest explicitSecondDerivative A (-x) =
      normalizedTest explicitSecondDerivative A x := by
  rw [normalizedTest_eq_indicator A hA]
  have hi : normalizedInterior A (-x) = normalizedInterior A x := by
    unfold normalizedInterior secondInterior bumpInterior
    ring
  by_cases hx : x ∈ Icc (-A) A
  · have hn : -x ∈ Icc (-A) A := by constructor <;> linarith [hx.1, hx.2]
    rw [indicator_of_mem hx, indicator_of_mem hn, hi]
  · have hn : -x ∉ Icc (-A) A := by
      intro h
      apply hx
      constructor <;> linarith [h.1, h.2]
    rw [indicator_of_notMem hx, indicator_of_notMem hn]

/-- Every complex exponential is genuinely integrable against the actual compact test. -/
theorem actual_complex_test_integrable {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    Integrable (fun x : ℝ => (normalizedTest explicitSecondDerivative A x : ℂ) *
      Complex.exp (z * (x : ℂ))) volume := by
  have hp : 0 < A := by linarith
  have hc : Continuous (fun x : ℝ => (normalizedTest explicitSecondDerivative A x : ℂ) *
      Complex.exp (z * (x : ℂ))) :=
    (Complex.continuous_ofReal.comp (normalizedTest_contDiff A hp).continuous).mul
      (by fun_prop)
  have hs : HasCompactSupport (fun x : ℝ =>
      (normalizedTest explicitSecondDerivative A x : ℂ)) :=
    (normalizedTest_hasCompactSupport A hp).comp_left (g := Complex.ofReal) (by simp)
  exact hc.integrable_of_hasCompactSupport hs.mul_right

/-- The exact complex weight of the actual correlation is a convolution with itself. -/
theorem actual_complex_correlation_eq_convolution {A : ℝ} (hA : 1 ≤ A) (z : ℂ)
    (t : ℝ) :
    (sourceCorrelation explicitSecondDerivative A t : ℂ) * Complex.exp (z * (t : ℂ)) =
      ((fun x : ℝ => (normalizedTest explicitSecondDerivative A x : ℂ) *
        Complex.exp (z * (x : ℂ))) ⋆[ContinuousLinearMap.mul ℂ ℂ, volume]
        (fun x : ℝ => (normalizedTest explicitSecondDerivative A x : ℂ) *
          Complex.exp (z * (x : ℂ)))) t := by
  rw [sourceCorrelation, ← integral_complex_ofReal, ← integral_mul_const, convolution_mul]
  apply integral_congr_ae
  exact Filter.Eventually.of_forall fun x => by
    dsimp only
    rw [← neg_sub t x, actual_test_even A (by linarith)]
    push_cast
    have he : Complex.exp (z * (x : ℂ)) *
        Complex.exp (z * ((t : ℂ) - (x : ℂ))) = Complex.exp (z * (t : ℂ)) := by
      rw [← Complex.exp_add]
      congr 1
      ring
    calc
      _ = (normalizedTest explicitSecondDerivative A x : ℂ) *
          (normalizedTest explicitSecondDerivative A (t - x) : ℂ) *
          (Complex.exp (z * (x : ℂ)) *
            Complex.exp (z * ((t : ℂ) - (x : ℂ)))) := by rw [he]
      _ = _ := by ring

/-- The genuine whole product L1 prerequisite for weighted source Fubini. -/
theorem actual_complex_correlation_product_integrable {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    Integrable (fun p : ℝ × ℝ =>
      ((normalizedTest explicitSecondDerivative A p.2 : ℂ) * Complex.exp (z * (p.2 : ℂ))) *
      ((normalizedTest explicitSecondDerivative A (p.1 - p.2) : ℂ) *
        Complex.exp (z * ((p.1 - p.2 : ℝ) : ℂ)))) (volume.prod volume) :=
  (actual_complex_test_integrable hA z).convolution_integrand
    (ContinuousLinearMap.mul ℂ ℂ) (actual_complex_test_integrable hA z)

/-- The exact weighted correlation itself is globally L1. -/
theorem actual_complex_correlation_integrable {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    Integrable (fun t : ℝ => (sourceCorrelation explicitSecondDerivative A t : ℂ) *
      Complex.exp (z * (t : ℂ))) volume := by
  have hi := (actual_complex_test_integrable hA z).integrable_convolution
    (ContinuousLinearMap.mul ℂ ℂ) (actual_complex_test_integrable hA z)
  have he : (fun t : ℝ => (sourceCorrelation explicitSecondDerivative A t : ℂ) *
      Complex.exp (z * (t : ℂ))) =
        ((fun x : ℝ => (normalizedTest explicitSecondDerivative A x : ℂ) *
          Complex.exp (z * (x : ℂ))) ⋆[ContinuousLinearMap.mul ℂ ℂ, volume]
          (fun x : ℝ => (normalizedTest explicitSecondDerivative A x : ℂ) *
            Complex.exp (z * (x : ℂ)))) := by
    funext t
    exact actual_complex_correlation_eq_convolution hA z t
  rw [he]
  exact hi

/-- The actual closed source interval equals its genuine whole-line transform. -/
theorem actualSourceComplexTransform_eq_full {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    actualSourceComplexTransform A z =
      ∫ x : ℝ, (normalizedTest explicitSecondDerivative A x : ℂ) *
        Complex.exp (z * (x : ℂ)) := by
  unfold actualSourceComplexTransform
  apply intervalIntegral.integral_eq_integral_of_support_subset
  intro x hx
  change ((normalizedTest explicitSecondDerivative A x : ℂ) *
    Complex.exp (z * (x : ℂ))) ≠ 0 at hx
  have hlt : |x| < A := by
    by_contra hn
    have hz := normalizedTest_zero_of_le_abs A x (by linarith) (le_of_not_gt hn)
    simp only [hz, Complex.ofReal_zero, zero_mul, ne_eq, not_true_eq_false] at hx
  exact ⟨(abs_lt.mp hlt).1, (abs_lt.mp hlt).2.le⟩

/-- The literal bilateral correlation interval includes both genuine zero support seams. -/
theorem actualBilateralCorrelationTransform_eq_full {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    actualBilateralCorrelationTransform A z =
      ∫ t : ℝ, Complex.exp (z * (t : ℂ)) *
        (sourceCorrelation explicitSecondDerivative A t : ℂ) := by
  unfold actualBilateralCorrelationTransform
  apply intervalIntegral.integral_eq_integral_of_support_subset
  intro t ht
  change (Complex.exp (z * (t : ℂ)) *
    (sourceCorrelation explicitSecondDerivative A t : ℂ)) ≠ 0 at ht
  have hlt : |t| < 2 * A := by
    by_contra hn
    have hz := sourceCorrelation_eq_zero_of_two_mul_le_abs A t
      (by linarith) (le_of_not_gt hn)
    simp only [hz, Complex.ofReal_zero, mul_zero, ne_eq, not_true_eq_false] at ht
  exact ⟨(abs_lt.mp hlt).1, (abs_lt.mp hlt).2.le⟩

/-- Exact Fubini gives the ordinary complex square of the original normalized source test. -/
theorem actual_full_complex_correlation_integral_eq_square {A : ℝ} (hA : 1 ≤ A)
    (z : ℂ) :
    (∫ t : ℝ, (sourceCorrelation explicitSecondDerivative A t : ℂ) *
      Complex.exp (z * (t : ℂ))) =
        (∫ x : ℝ, (normalizedTest explicitSecondDerivative A x : ℂ) *
          Complex.exp (z * (x : ℂ))) ^ 2 := by
  simp_rw [actual_complex_correlation_eq_convolution hA z]
  rw [integral_convolution (ContinuousLinearMap.mul ℂ ℂ)
    (actual_complex_test_integrable hA z) (actual_complex_test_integrable hA z)]
  exact (pow_two _).symm

/-- All complex arguments retain the ordinary square, without a conjugate or modulus. -/
theorem actualBilateralCorrelationTransform_eq_square {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    actualBilateralCorrelationTransform A z = actualSourceComplexTransform A z ^ 2 := by
  rw [actualBilateralCorrelationTransform_eq_full hA z]
  calc
    _ = ∫ t : ℝ, (sourceCorrelation explicitSecondDerivative A t : ℂ) *
        Complex.exp (z * (t : ℂ)) := by
      apply integral_congr_ae
      exact Filter.Eventually.of_forall fun t => mul_comm _ _
    _ = _ := actual_full_complex_correlation_integral_eq_square hA z
    _ = _ := by rw [← actualSourceComplexTransform_eq_full hA z]

end
end FormalResearch.RiemannHypothesis.ActualComplexCorrelationSquare
```
