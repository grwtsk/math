-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.SourceCorrelationDerivativeIntervalIntegrable.Variant270d87bcf2273dffc0d321cb3f64bff89454f80cb0d478bfcad4e04a719e6f86","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"270d87bcf2273dffc0d321cb3f64bff89454f80cb0d478bfcad4e04a719e6f86","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.SourceCorrelationDerivativeIntervalIntegrable.Variant270d87bcf2273dffc0d321cb3f64bff89454f80cb0d478bfcad4e04a719e6f86","mathematical_subject":"Analysis.Integration","original_sha256":"270d87bcf2273dffc0d321cb3f64bff89454f80cb0d478bfcad4e04a719e6f86","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/higher-prime-powers/CorrelationDeviation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareCorrelation
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCorrelation

/-!
# Quadratic deviation of the actual normalized correlation

The derivative vanishes at the origin and has the checked linear bound.
Genuine finite integration then gives the quadratic deviation at every real
argument. Evenness treats negative arguments without modifying the source.
The final transport retains the original Mangoldt and square-root weights.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.SourceCorrelationDerivativeIntervalIntegrable.Variant270d87bcf2273dffc0d321cb3f64bff89454f80cb0d478bfcad4e04a719e6f86

namespace CorrelationDeviationScratch
open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity
open FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareCorrelation

noncomputable section

theorem sourceCorrelation_derivative_intervalIntegrable (A a b : ℝ) (hA : 1 ≤ A) :
    IntervalIntegrable (deriv (sourceCorrelation explicitSecondDerivative A)) volume a b :=
  (sourceCorrelation_contDiff A (by linarith)).continuous_deriv_one.intervalIntegrable a b

theorem sourceCorrelation_deviation_integral (A t : ℝ) (hA : 1 ≤ A) :
    sourceCorrelation explicitSecondDerivative A t - 1 =
      ∫ u in 0..t, deriv (sourceCorrelation explicitSecondDerivative A) u := by
  rw [intervalIntegral.integral_deriv_eq_sub
    (fun u _ => ((sourceCorrelation_contDiff A (by linarith)).differentiable (by norm_num)) u)
    (sourceCorrelation_derivative_intervalIntegrable A 0 t hA),
    EstimateCorrelation.actual_correlation_at_zero A hA]

private theorem sourceCorrelation_deviation_bound_nonneg (A t : ℝ) (hA : 1 ≤ A)
    (ht : 0 ≤ t) :
    |sourceCorrelation explicitSecondDerivative A t - 1| ≤ 65 * t ^ 2 / (6 * A ^ 2) := by
  rw [sourceCorrelation_deviation_integral A t hA]
  have hd := sourceCorrelation_derivative_intervalIntegrable A 0 t hA
  calc
    _ ≤ ∫ u in 0..t, |deriv (sourceCorrelation explicitSecondDerivative A) u| := by
      simpa only [Real.norm_eq_abs] using
        intervalIntegral.norm_integral_le_integral_norm (f := deriv
          (sourceCorrelation explicitSecondDerivative A)) ht
    _ ≤ ∫ u in 0..t, (65 / (3 * A ^ 2)) * u := by
      apply intervalIntegral.integral_mono_on ht
        (by simpa only [Real.norm_eq_abs] using hd.norm)
        ((continuous_const.mul continuous_id).intervalIntegrable 0 t)
      intro u hu
      have h := sourceCorrelation_derivative_linear_bound A u hA
      rwa [abs_of_nonneg hu.1] at h
    _ = _ := by
      rw [intervalIntegral.integral_const_mul, integral_id]
      ring

theorem sourceCorrelation_deviation_bound (A t : ℝ) (hA : 1 ≤ A) :
    |sourceCorrelation explicitSecondDerivative A t - 1| ≤ 65 * t ^ 2 / (6 * A ^ 2) := by
  by_cases ht : 0 ≤ t
  · exact sourceCorrelation_deviation_bound_nonneg A t hA ht
  · have h := sourceCorrelation_deviation_bound_nonneg A (-t) hA (by linarith)
    simpa only [sourceCorrelation_even A t, neg_sq] using h

theorem sourcePrimeWeight_deviation_bound (A : ℝ) (n : ℕ) (hA : 1 ≤ A) :
    |ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
      (sourceCorrelation explicitSecondDerivative A (Real.log n) - 1)| ≤
        (65 / (6 * A ^ 2)) *
          (ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) * (Real.log n) ^ 2) := by
  have hw : 0 ≤ ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) :=
    div_nonneg ArithmeticFunction.vonMangoldt_nonneg (Real.sqrt_nonneg _)
  rw [abs_mul, abs_of_nonneg hw]
  calc
    _ ≤ (ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ)) *
        (65 * (Real.log n) ^ 2 / (6 * A ^ 2)) :=
      mul_le_mul_of_nonneg_left (sourceCorrelation_deviation_bound A (Real.log n) hA) hw
    _ = _ := by ring

end
end CorrelationDeviationScratch
