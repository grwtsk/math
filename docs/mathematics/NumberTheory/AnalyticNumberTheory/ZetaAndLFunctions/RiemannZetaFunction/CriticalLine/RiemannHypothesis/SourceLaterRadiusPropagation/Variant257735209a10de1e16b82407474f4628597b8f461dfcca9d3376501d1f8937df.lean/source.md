# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceLaterRadiusPropagation.Variant257735209a10de1e16b82407474f4628597b8f461dfcca9d3376501d1f8937df

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a4e17774214424f0b1c1dfd7dff3f8e2de972148` · SHA-256 `3a00a0c139f9df3ff6acc73f3eb2aa3c7ab6fc0d9e3542fec16b411ed0e65a55`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ResidualUpperOfContractedXiAtRadius.Varianted1d86eadfeb7c9085bc1fec2fa5be52d7ccbecff4dcf62fbe7c2e72c7633124","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ed1d86eadfeb7c9085bc1fec2fa5be52d7ccbecff4dcf62fbe7c2e72c7633124","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ResidualUpperOfContractedXiAtRadius.Varianted1d86eadfeb7c9085bc1fec2fa5be52d7ccbecff4dcf62fbe7c2e72c7633124","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"ed1d86eadfeb7c9085bc1fec2fa5be52d7ccbecff4dcf62fbe7c2e72c7633124","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-lamzouri-01a11291/independent-1791327256245446000/SourceLaterRadiusPropagation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceFullXiOuterContraction
import SourceLeadingCesaroPropagation
import SourceResidualBudget
import SourceEndpointRadiusTriangularFollowthrough
import SourceUnconditionalCorrectedCalibration

/-!
Later-radius propagation with unrestricted signed witnesses. The original
real finite prefix is retained at the supplied radius. Scalar residual
transfers are distinguished from applications of actual source comparisons.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ResidualUpperOfContractedXiAtRadius.Varianted1d86eadfeb7c9085bc1fec2fa5be52d7ccbecff4dcf62fbe7c2e72c7633124

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceLaterRadiusPropagation
open MeasureTheory
open SourceFullXiOuterContraction SourceLeadingCesaroPropagation SourceLeadingTailBudget
open SourceActualPsiInverseSquare SourcePositiveSampling SourcePairing
open SourceFirstAtomSignedWork RH16ActualPsiNegativeBlock RH16ResumeBudget RH16ResumeApplication
open SourceCompleteCorrectedAbelPairing SourceUnconditionalCorrectedCalibration
open SourceAdaptiveTriangularConsumer RH16EndpointRadius
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual Realization
noncomputable section

/-- No nonnegativity or clipping is imposed on the supplied fixed signed J. -/
theorem residual_upper_of_contracted_Xi_at_radius (J R A : ℝ) (hR : 91 ≤ R)
    (hRA : R ≤ A)
    (hJ : -J ≤ ∫ y in 2..Real.exp (2 * A),
      shiftedActualChebyshev y * deriv (plainProfile A 1) y) :
    mertensResidual A ≤ J - 3 / 8 + criticalBaselineCorrection R :=
  residual_upper_of_remaining_signed_lower J R A (by linarith) hRA
    (remaining_lower_of_contracted_pairing J A (hR.trans hRA) hJ)

theorem all_real_lower_of_contracted_Xi_at_radius (J R : ℝ) (hR : 91 ≤ R)
    (hJ : ∀ A : ℝ, R ≤ A → -J ≤ ∫ y in 2..Real.exp (2 * A),
      shiftedActualChebyshev y * deriv (plainProfile A 1) y) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower R)
        (archimedeanMultiplier 0 - 2 * (J - 3 / 8 + criticalBaselineCorrection R)) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  apply all_real_source_lower_of_residual_tail
    (J - 3 / 8 + criticalBaselineCorrection R) R (by linarith)
  intro A hRA
  exact residual_upper_of_contracted_Xi_at_radius J R A hR hRA (hJ A hRA)

theorem estimate_of_contracted_Xi_at_radius (J R : ℝ) (hR : 91 ≤ R)
    (hJ : ∀ A : ℝ, R ≤ A → -J ≤ ∫ y in 2..Real.exp (2 * A),
      shiftedActualChebyshev y * deriv (plainProfile A 1) y) :
    CorrelationAssembly.EstimateObligation :=
  ⟨min (originalPrefixLower R)
      (archimedeanMultiplier 0 - 2 * (J - 3 / 8 + criticalBaselineCorrection R)),
    all_real_lower_of_contracted_Xi_at_radius J R hR hJ⟩

theorem leading_upper_of_contracted_Xi_at_radius (J R A : ℝ) (hR : 91 ≤ R)
    (hA : max 25600 R ≤ A)
    (hJ : -J ≤ ∫ y in 2..Real.exp (2 * A),
      shiftedActualChebyshev y * deriv (plainProfile A 1) y) :
    actualLeadingRenormalizedTail A ≤ J - 3 / 8 + criticalBaselineCorrection R -
      (riemannZeta (1 / 2)).re + 3103 / 50 := by
  apply actual_leading_upper_of_residual_upper A _ ((le_max_left _ _).trans hA)
  exact residual_upper_of_contracted_Xi_at_radius J R A hR
    ((le_max_right _ _).trans hA) hJ

theorem leading_tail_of_contracted_Xi_at_radius (J R : ℝ) (hR : 91 ≤ R)
    (hJ : ∀ A : ℝ, R ≤ A → -J ≤ ∫ y in 2..Real.exp (2 * A),
      shiftedActualChebyshev y * deriv (plainProfile A 1) y) :
    ∀ A : ℝ, max 25600 R ≤ A →
      actualLeadingRenormalizedTail A ≤ J - 3 / 8 + criticalBaselineCorrection R -
        (riemannZeta (1 / 2)).re + 3103 / 50 := by
  intro A hA
  exact leading_upper_of_contracted_Xi_at_radius J R A hR hA
    (hJ A ((le_max_right _ _).trans hA))

/-- Scalar conditional transfer; this statement supplies no half-unit comparison to a readout. -/
theorem leading_upper_of_residual_half (K A : ℝ) (hA : 25600 ≤ A)
    (hres : mertensResidual A ≤ K + 1 / 2) :
    actualLeadingRenormalizedTail A ≤ K - (riemannZeta (1 / 2)).re + 1564 / 25 := by
  have h := actual_leading_upper_of_residual_upper A (K + 1 / 2) hA hres
  linarith

/-- Scalar conditional transfer with its actual zeta cancellation. -/
theorem leading_upper_of_residual_corrected (K A : ℝ) (hA : 25600 ≤ A)
    (hres : mertensResidual A ≤ K + (riemannZeta (1 / 2)).re + 3 / 50) :
    actualLeadingRenormalizedTail A ≤ K + 1553 / 25 := by
  have h := actual_leading_upper_of_residual_upper A _ hA hres
  linarith

/-- Scalar conditional transfer; no native fourteen-twenty-fifths comparison is assumed true. -/
theorem leading_upper_of_residual_fourteen (K A : ℝ) (hA : 25600 ≤ A)
    (hres : mertensResidual A ≤ K + (riemannZeta (1 / 2)).re + 14 / 25) :
    actualLeadingRenormalizedTail A ≤ K + 3131 / 50 := by
  have h := actual_leading_upper_of_residual_upper A _ hA hres
  linarith

/-- Discharge the corrected-pairing residual comparison using its native radius-117 theorem. -/
theorem leading_upper_of_actual_corrected_pairing (K A : ℝ) (hA : 25600 ≤ A)
    (hpair : completeCorrectedAbelPairing A ≤ K) :
    actualLeadingRenormalizedTail A ≤ K + 1553 / 25 := by
  apply leading_upper_of_residual_corrected K A hA
  have he := (abs_lt.mp (residual_sub_complete_pairing_sub_zeta_abs_lt A
    (by linarith : 117 ≤ A))).2
  linarith

theorem leading_tail_of_actual_corrected_pairing (K R : ℝ) (_hR : 117 ≤ R)
    (hpair : ∀ A : ℝ, R ≤ A → completeCorrectedAbelPairing A ≤ K) :
    ∀ A : ℝ, max 25600 R ≤ A → actualLeadingRenormalizedTail A ≤ K + 1553 / 25 := by
  intro A hA
  exact leading_upper_of_actual_corrected_pairing K A ((le_max_left _ _).trans hA)
    (hpair A ((le_max_right _ _).trans hA))

/-- The actual triangular comparison pays one-half, its fixed endpoint and one ledger constant. -/
theorem leading_tail_of_triangular_upper (K R : ℝ) (hR : 1 ≤ R)
    (hG : ∀ A : ℝ, R ≤ A → triangularInterior A ≤ K) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, max 25600 R ≤ A →
      actualLeadingRenormalizedTail A ≤ K + endpointBudget R + C_F -
        (riemannZeta (1 / 2)).re + 1564 / 25 := by
  obtain ⟨C_F, hF0, hF⟩ :=
    SourceEndpointRadiusTriangularFollowthrough.residual_tail_of_triangular_upper K R hR hG
  refine ⟨C_F, hF0, ?_⟩
  intro A hA
  have h := actual_leading_upper_of_residual_upper A _ ((le_max_left _ _).trans hA)
    (hF A ((le_max_right _ _).trans hA))
  linarith

end
end FormalResearch.RiemannHypothesis.SourceLaterRadiusPropagation
```
