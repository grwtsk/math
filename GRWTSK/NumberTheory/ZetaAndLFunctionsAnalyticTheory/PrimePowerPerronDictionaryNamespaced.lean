-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceRieszExactComparison.Variantbed5f17af4d79938c9a628c122f919a428b3cdea738f7950b0ac29c1182794f9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bed5f17af4d79938c9a628c122f919a428b3cdea738f7950b0ac29c1182794f9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceRieszExactComparison.Variantbed5f17af4d79938c9a628c122f919a428b3cdea738f7950b0ac29c1182794f9","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"bed5f17af4d79938c9a628c122f919a428b3cdea738f7950b0ac29c1182794f9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/be/bed5f17af4d79938c9a628c122f919a428b3cdea738f7950b0ac29c1182794f9--PrimePowerPerronDictionary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.BoundaryRieszKernel
import FormalResearch.RiemannHypothesis.PoleSourceDetection
import FormalResearch.RiemannHypothesis.SourceLaplaceEndpoint

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceRieszExactComparison.Variantbed5f17af4d79938c9a628c122f919a428b3cdea738f7950b0ac29c1182794f9

namespace FormalResearch.RiemannHypothesis.PrimePowerPerron
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization SourceLaplaceDetection BoundaryRieszKernel
open PoleSourceDetection SourceLaplaceEndpoint SourceBumpLaplace
open scoped BigOperators

theorem source_riesz_exact_comparison (A : ℝ) (hA : 1 ≤ A) (z : ℂ) (hz : z ≠ 0) :
    (A : ℂ) ^ 9 * sourceLaplace A z =
      Complex.exp (2 * (A : ℂ) * z) * boundaryRieszTransform A z +
        Complex.exp (-2 * (A : ℂ) * z) * boundaryRieszTransform A (-z) -
          294912 * (z ^ 2 - 1 / 4) ^ 2 *
            ZeroSideTargets.transformPolynomial ((A : ℂ) * z) *
            ZeroSideTargets.transformPolynomial (-(A : ℂ) * z) /
              ((sourceNormalization A : ℂ) * (A : ℂ) ^ 8 * z ^ 18) := by
  have hAr : A ≠ 0 := ne_of_gt (by linarith : 0 < A)
  have hAc : (A : ℂ) ≠ 0 := by exact_mod_cast hAr
  have hZ : (sourceNormalization A : ℂ) ≠ 0 := by
    exact_mod_cast ne_of_gt (source_normalization_pos A hA)
  rw [source_laplace_eq_bump_square A (by linarith) z,
    bump_laplace_endpoint_formula _ (mul_ne_zero hAc hz),
    boundary_riesz_transform_eq_source_polynomial A hAr z hz,
    boundary_riesz_transform_eq_source_polynomial A hAr (-z) (neg_ne_zero.mpr hz)]
  have hp : Complex.exp ((A : ℂ) * z) ^ 2 = Complex.exp (2 * (A : ℂ) * z) := by
    rw [sq, ← Complex.exp_add]
    congr 1
    ring
  have hm : Complex.exp (-((A : ℂ) * z)) ^ 2 = Complex.exp (-2 * (A : ℂ) * z) := by
    rw [sq, ← Complex.exp_add]
    congr 1
    ring
  have hpm : Complex.exp ((A : ℂ) * z) * Complex.exp (-((A : ℂ) * z)) = 1 := by
    rw [← Complex.exp_add]
    simp
  have he (p m : ℂ) :
      (Complex.exp ((A : ℂ) * z) * p - Complex.exp (-((A : ℂ) * z)) * m) ^ 2 =
        Complex.exp (2 * (A : ℂ) * z) * p ^ 2 +
          Complex.exp (-2 * (A : ℂ) * z) * m ^ 2 - 2 * p * m := by
    calc _ = Complex.exp ((A : ℂ) * z) ^ 2 * p ^ 2 +
        Complex.exp (-((A : ℂ) * z)) ^ 2 * m ^ 2 -
          2 * (Complex.exp ((A : ℂ) * z) * Complex.exp (-((A : ℂ) * z))) * p * m := by ring
      _ = _ := by rw [hp, hm, hpm]; ring
  rw [mul_pow, he]
  unfold ZeroSideTargets.transformPolynomial
  field_simp
  ring
end FormalResearch.RiemannHypothesis.PrimePowerPerron
