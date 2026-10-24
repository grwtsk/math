# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.GaussianSourceConsumer.Variant8eb6e29d795a7a6f8ac78bb953fed60898603b0f12f67d7da1d075d649b55851

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a1a33bbe026795fe5eccfcde51067122e3c1d7b` · SHA-256 `8eb6e29d795a7a6f8ac78bb953fed60898603b0f12f67d7da1d075d649b55851`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceCenteredSmoothing
import FormalResearch.RiemannHypothesis.GaussianMoments

/-!
# Gaussian consumer of the unchanged source correlation

Research direction and high-priority emphasis: grwtsk contributors.
Precise lemma selection and formal construction: OpenAI Codex, 7 October 2026.
These bounds pay value and slope smoothing costs on the actual correlation and
finite signed shell consumer; they leave both arithmetic coefficient masses
explicit and supply no signed Mangoldt cap.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.GaussianSourceConsumer

open scoped NNReal ENNReal BigOperators

open MeasureTheory ProbabilityTheory SourcePairing SourceCenteredSmoothing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateCorrelation

theorem gaussian_correlation_error {A : ℝ} (hA : 200 ≤ A) (v : ℝ≥0) (t : ℝ) :
    |sourceCorrelation explicitSecondDerivative A t -
      smoothedCorrelation (gaussianReal 0 v) A t| ≤ (5 / (2 * A ^ 2)) * (v : ℝ) := by
  have h := smoothedCorrelation_error (gaussianReal 0 v) hA t
    (GaussianCenteredMoments.integrable_id v)
    (GaussianCenteredMoments.integral_id_zero v)
    (GaussianCenteredMoments.integrable_square v)
  rwa [GaussianCenteredMoments.integral_square v] at h

theorem gaussian_slope_error {A : ℝ} (hA : 200 ≤ A) (v : ℝ≥0) (t : ℝ) :
    |deriv (sourceCorrelation explicitSecondDerivative A) t -
      smoothedSlope (gaussianReal 0 v) A t| ≤ (5 / A ^ 2) * Real.sqrt (v : ℝ) := by
  calc
    _ ≤ (5 / A ^ 2) * (∫ y : ℝ, |y| ∂gaussianReal 0 v) :=
      smoothedSlope_error (gaussianReal 0 v) hA t (GaussianCenteredMoments.integrable_abs v)
    _ ≤ _ := mul_le_mul_of_nonneg_left (GaussianCenteredMoments.integral_abs_le_sqrt v)
      (by positivity)

theorem gaussian_finite_tangent_error {A : ℝ} (hA : 200 ≤ A) (v : ℝ≥0) (N : ℕ) :
    |SourceKapitzaSquareShell.finiteCompensatedReadout A N -
      ∑ n ∈ Finset.Icc 2 N, (ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n *
        (smoothedCorrelation (gaussianReal 0 v) A
          (Real.log (SourceKapitzaSquareShell.shellEndpoint N n)) +
          (Real.log n - Real.log (SourceKapitzaSquareShell.shellEndpoint N n)) *
            smoothedSlope (gaussianReal 0 v) A
              (Real.log (SourceKapitzaSquareShell.shellEndpoint N n)))| ≤
      SourceKapitzaSquareShell.tangentErrorConstant / A ^ 2 +
        ((5 / (2 * A ^ 2)) * (v : ℝ)) *
          (∑ n ∈ Finset.Icc 2 N, |(ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n|) +
        ((5 / A ^ 2) * Real.sqrt (v : ℝ)) *
          ∑ n ∈ Finset.Icc 2 N,
            |(ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n| *
              |Real.log n - Real.log (SourceKapitzaSquareShell.shellEndpoint N n)| := by
  have h := finite_tangent_smoothed_error (gaussianReal 0 v) hA N
    (GaussianCenteredMoments.integrable_id v)
    (GaussianCenteredMoments.integral_id_zero v)
    (GaussianCenteredMoments.integrable_square v)
  rw [GaussianCenteredMoments.integral_square v] at h
  refine h.trans (add_le_add le_rfl ?_)
  exact mul_le_mul_of_nonneg_right
    (mul_le_mul_of_nonneg_left (GaussianCenteredMoments.integral_abs_le_sqrt v) (by positivity))
    (Finset.sum_nonneg (fun n hn => mul_nonneg (abs_nonneg _) (abs_nonneg _)))


end FormalResearch.RiemannHypothesis.GaussianSourceConsumer
```
