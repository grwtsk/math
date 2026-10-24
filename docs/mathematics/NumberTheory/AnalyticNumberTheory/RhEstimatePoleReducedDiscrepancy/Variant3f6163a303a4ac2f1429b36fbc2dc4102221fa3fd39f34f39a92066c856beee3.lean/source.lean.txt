-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.EstimatePoleReducedDiscrepancy.Variant92cf8bf8fe430fb5d674c97053026b881d60bf29dcc2f2d11e6641c9691a1729","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"92cf8bf8fe430fb5d674c97053026b881d60bf29dcc2f2d11e6641c9691a1729","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.EstimatePoleReducedDiscrepancy.Variant92cf8bf8fe430fb5d674c97053026b881d60bf29dcc2f2d11e6641c9691a1729","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"92cf8bf8fe430fb5d674c97053026b881d60bf29dcc2f2d11e6641c9691a1729","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/rh16-translation-gate/tests/rh_estimate_pole_reduced_discrepancy.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePoleReducedDiscrepancy


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.EstimatePoleReducedDiscrepancy.Variant92cf8bf8fe430fb5d674c97053026b881d60bf29dcc2f2d11e6641c9691a1729

set_option autoImplicit false

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimatePoleReducedWeight EstimatePoleReducedDiscrepancy
open EstimatePrimeSmoothDefect EstimateCriticalPrimeErrorAbel
open FormalResearch.RiemannHypothesis.SourcePairing

example (A : ℝ) (hA : 1 ≤ A) :
    criticalSignedChebyshevIntegral A =
      2 * poleReducedPrimitive A lowerEndpoint -
        ∑ n ∈ PrimePowerDescent.primePowerInventory (2 * A),
          ArithmeticFunction.vonMangoldt n * poleReducedPrimitive A (Real.log n) +
      ∫ t in lowerEndpoint..2 * A,
        chebyshevPrimePower (Real.exp t) * poleReducedPrimitive A t :=
  criticalSignedChebyshevIntegral_eq_poleReducedDiscrepancy A hA

example (A : ℝ) (hA : 1 ≤ A) :
    criticalSignedChebyshevIntegral A =
      2 * Real.exp (-lowerEndpoint/2) *
        sourceCorrelation Realization.explicitSecondDerivative A lowerEndpoint +
      smoothMoment A - closedPrimeMoment A := by
  rw [criticalSignedChebyshevIntegral_eq_poleReducedDiscrepancy A hA,
    poleReduced_discrepancy_eq_primeMoment A hA]
