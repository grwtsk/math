-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.GaussianCorrelationError.Variant273a52d08690b3ed7d290c6661fffb106656c9bfceaffa19e2d7f24d8d5c8dc3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"273a52d08690b3ed7d290c6661fffb106656c9bfceaffa19e2d7f24d8d5c8dc3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.GaussianCorrelationError.Variant273a52d08690b3ed7d290c6661fffb106656c9bfceaffa19e2d7f24d8d5c8dc3","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"273a52d08690b3ed7d290c6661fffb106656c9bfceaffa19e2d7f24d8d5c8dc3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/FormalResearch/RiemannHypothesis/GaussianSourceConsumer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.GaussianCorrelationError.Variant273a52d08690b3ed7d290c6661fffb106656c9bfceaffa19e2d7f24d8d5c8dc3

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
