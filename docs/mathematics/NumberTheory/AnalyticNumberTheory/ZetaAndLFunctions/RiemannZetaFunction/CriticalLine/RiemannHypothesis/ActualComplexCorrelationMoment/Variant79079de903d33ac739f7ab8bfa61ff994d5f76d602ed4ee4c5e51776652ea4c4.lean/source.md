# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualComplexCorrelationMoment.Variant79079de903d33ac739f7ab8bfa61ff994d5f76d602ed4ee4c5e51776652ea4c4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9360da3f6f7a03220a403c8092c99adaf44a17bc` · SHA-256 `79079de903d33ac739f7ab8bfa61ff994d5f76d602ed4ee4c5e51776652ea4c4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.ActualComplexSourceMoment

/-!
# Complex weighted Fubini consumer of the unchanged native correlation

The full real source correlation is embedded into complex scalars. Actual
compact-support integrability supplies both factors and their reflected
convolution; the resulting full complex moment is the square of the actual
complex test moment. This generalizes the qualified real-parameter route,
with its factorization laws and source definitions retained. Human exact
source and off-grid direction: grwtsk contributors. Local complex-domain
Fubini adapter: OpenAI Codex. It does not certify the complete native off-grid
countermodel or an arithmetic signed lower bound.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.ActualComplexCorrelationMoment
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open ActualComplexSourceMoment ActualCorrelationEdgeShell Realization CorrelationRegularity MeasureTheory Set
open scoped Convolution
noncomputable section
local notation "v" => normalizedTest explicitSecondDerivative
local notation "C" => sourceCorrelation explicitSecondDerivative

theorem complex_weighted_actual_correlation_convolution (A t : ℝ) (z : ℂ) :
    Complex.exp (z * (t : ℂ)) * (C A t : ℂ) =
      ((fun x : ℝ ↦ Complex.exp (z * (x : ℂ)) * (v A x : ℂ)) ⋆[ContinuousLinearMap.lsmul ℂ ℂ]
        (fun x : ℝ ↦ Complex.exp (z * (x : ℂ)) * (v A (-x) : ℂ))) t := by
  have hcast : (∫ x : ℝ, ((v A x * v A (x - t) : ℝ) : ℂ)) =
      ((∫ x : ℝ, v A x * v A (x - t) : ℝ) : ℂ) := by
    simpa using! (_root_.integral_ofReal (𝕜 := ℂ)
      (f := fun x : ℝ ↦ v A x * v A (x - t)) (μ := volume))
  rw [sourceCorrelation, ← hcast, ← integral_const_mul, convolution_lsmul]
  apply integral_congr_ae
  filter_upwards [] with x
  simp only [smul_eq_mul]
  simp only [Complex.ofReal_mul, Complex.ofReal_sub]
  rw [neg_sub]
  have he : Complex.exp (z * (t : ℂ)) =
      Complex.exp (z * (x : ℂ)) * Complex.exp (z * ((t - x) : ℂ)) := by
    rw [← Complex.exp_add]
    congr 1
    ring
  rw [he]
  ring

theorem complex_reflected_source_integrable {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    Integrable (fun x : ℝ ↦ Complex.exp (z * (x : ℂ)) * (v A (-x) : ℂ)) volume := by
  have h := (complex_weighted_normalized_source_integrable hA (-z)).comp_neg
  simpa only [Complex.ofReal_neg, neg_mul_neg] using! h

theorem complex_weighted_actual_correlation_integrable {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    Integrable (fun t : ℝ ↦ Complex.exp (z * (t : ℂ)) * (C A t : ℂ)) volume := by
  have hi := (complex_weighted_normalized_source_integrable hA z).integrable_convolution
    (ContinuousLinearMap.lsmul ℂ ℂ) (complex_reflected_source_integrable hA z)
  have he : (fun t : ℝ ↦ Complex.exp (z * (t : ℂ)) * (C A t : ℂ)) =
      ((fun x : ℝ ↦ Complex.exp (z * (x : ℂ)) * (v A x : ℂ)) ⋆[ContinuousLinearMap.lsmul ℂ ℂ]
        (fun x : ℝ ↦ Complex.exp (z * (x : ℂ)) * (v A (-x) : ℂ))) := by
    funext t
    exact complex_weighted_actual_correlation_convolution A t z
  rw [he]
  exact hi

theorem complex_actual_source_moment_even {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    complexTestMoment A (-z) = complexTestMoment A z := by
  unfold complexTestMoment
  have h := integral_neg_eq_self (fun x : ℝ ↦ Complex.exp (z * (x : ℂ)) * (v A x : ℂ)) volume
  simp_rw [actual_normalized_test_even (by linarith : 0 < A)] at h
  simpa only [Complex.ofReal_neg, mul_neg, neg_mul] using! h

theorem complex_actual_full_correlation_moment {A : ℝ} (hA : 1 ≤ A) (z : ℂ) :
    (∫ t : ℝ, Complex.exp (z * (t : ℂ)) * (C A t : ℂ)) = complexTestMoment A z ^ 2 := by
  simp_rw [complex_weighted_actual_correlation_convolution]
  rw [integral_convolution (ContinuousLinearMap.lsmul ℂ ℂ)
    (complex_weighted_normalized_source_integrable hA z) (complex_reflected_source_integrable hA z)]
  change (∫ x : ℝ, Complex.exp (z * (x : ℂ)) * (v A x : ℂ)) *
    (∫ x : ℝ, Complex.exp (z * (x : ℂ)) * (v A (-x) : ℂ)) = _
  have href : (∫ x : ℝ, Complex.exp (z * (x : ℂ)) * (v A (-x) : ℂ)) = complexTestMoment A (-z) := by
    have h := integral_neg_eq_self
      (fun x : ℝ ↦ Complex.exp ((-z) * (x : ℂ)) * (v A x : ℂ)) volume
    simpa only [complexTestMoment, Complex.ofReal_neg, neg_mul_neg] using h
  rw [href, complex_actual_source_moment_even hA]
  change complexTestMoment A z * complexTestMoment A z = _
  rw [pow_two]

end
end GRWTSK.RiemannHypothesis.Conversation.ActualComplexCorrelationMoment
```
