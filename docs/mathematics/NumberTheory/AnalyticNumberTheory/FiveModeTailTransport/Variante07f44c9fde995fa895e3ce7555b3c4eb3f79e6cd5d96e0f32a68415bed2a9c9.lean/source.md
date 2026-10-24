# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.FiveModeTailTransport.Variante07f44c9fde995fa895e3ce7555b3c4eb3f79e6cd5d96e0f32a68415bed2a9c9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2e2542de0bf91fcf4b07a8e39af27e63ab1fd97f` · SHA-256 `e8ef8979519c33489e17de8438603bbcce1bd55e549566ea045d4c4dede8dfef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.EstimateOfMatrixTail.Variant2a3d595a051ed7023eb532c43666019fad28f6eaab0f9b7f25bc8b630166f752","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2a3d595a051ed7023eb532c43666019fad28f6eaab0f9b7f25bc8b630166f752","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.EstimateOfMatrixTail.Variant2a3d595a051ed7023eb532c43666019fad28f6eaab0f9b7f25bc8b630166f752","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"2a3d595a051ed7023eb532c43666019fad28f6eaab0f9b7f25bc8b630166f752","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/common-mean-stieltjes-20261004/finite-stieltjes-independent-review/overlay/scratch/common_mean_20261004/FiveModeTailTransport.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import scratch.common_mean_20261004.FiveModeMatrix
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual

/-!
Exact conditional transports for a future independently proved matrix witness.
No witness is constructed here and no finite certificate is used as one.
Originating direction: grwtsk contributors. Proof assistance: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.EstimateOfMatrixTail.Variant2a3d595a051ed7023eb532c43666019fad28f6eaab0f9b7f25bc8b630166f752

set_option autoImplicit false
noncomputable section
namespace CommonMeanScratch
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

/-- Reuse the established finite-prefix consumer; the missing eventual bound
and matrix-entry admission are explicit hypotheses, not inferred from coordinates. -/
theorem estimate_of_matrix_tail (D R : ℝ) (hR : 1 ≤ R)
    (hg : ∀ A : ℝ, R ≤ A → GammaEntryIntegrability A)
    (hbound : ∀ A : ℝ, R ≤ A →
      -D ≤ dotProduct (alpha A) ((sourceMatrix A).mulVec (alpha A))) :
    CorrelationAssembly.EstimateObligation := by
  apply EstimateTailReduction.estimate_of_quadratic_tail_lower_bound
  refine ⟨-D, R, hR, ?_⟩
  intro A hRA
  have hA := hR.trans hRA
  rw [← geometric_matrix_dictionary A hA (hg A hRA), ← matrix_dot_eq_contraction]
  exact hbound A hRA

/-- The actual Mertens residual is the full original closed prime-power moment.
The full gamma upper bound is an explicit premise; it is not supplied by a
finite interval certificate for larger scales. -/
theorem residual_upper_of_matrix_lower (A D a0 : ℝ) (hA : 1 ≤ A)
    (hg : GammaEntryIntegrability A)
    (hbound : -D ≤ dotProduct (alpha A) ((sourceMatrix A).mulVec (alpha A)))
    (hgamma : archimedeanValue explicitSecondDerivative A ≤ a0 + 390/A^2)
    (ha0 : a0 ≤ 0) :
    EstimateMertensResidual.mertensResidual A ≤ 195 + D/2 := by
  have hq := hbound
  rw [matrix_dot_eq_contraction, geometric_matrix_dictionary A hA hg,
    sourceQuadraticValue] at hq
  have hres : EstimateMertensResidual.mertensResidual A =
      primePowerContribution explicitSecondDerivative A := by
    rw [EstimateMertensResidual.mertensResidual_eq_closedPrimeMoment A hA]
    exact (EstimatePrimeSmoothDefect.primePowerContribution_eq_closedPrimeMoment A hA).symm
  rw [hres]
  have hA2 : (1 : ℝ) ≤ A^2 := by nlinarith [sq_nonneg (A-1)]
  have hApos : 0 < A^2 := by linarith
  have hquot : 390/A^2 ≤ (390 : ℝ) := by
    rw [div_le_iff₀ hApos]
    nlinarith
  linarith

end CommonMeanScratch
```
