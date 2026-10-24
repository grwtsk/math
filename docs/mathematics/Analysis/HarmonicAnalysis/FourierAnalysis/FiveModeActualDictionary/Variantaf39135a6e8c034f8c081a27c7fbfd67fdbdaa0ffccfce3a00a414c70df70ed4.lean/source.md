# Complete source: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.FiveModeActualDictionary.Variantaf39135a6e8c034f8c081a27c7fbfd67fdbdaa0ffccfce3a00a414c70df70ed4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1b0b406d0ba465563c608b8e6a049434a2865259` · SHA-256 `6e489fbc596e2382fa3d39dcf37d379907786896400f7407d390ad63252194ef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.HarmonicAnalysis.FourierAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ActualSourceMatrixDictionary.Variantab6e0fe4520f8c761bfbfcf148845072c13ab99b6bd18a87072ef0151aa8871b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ab6e0fe4520f8c761bfbfcf148845072c13ab99b6bd18a87072ef0151aa8871b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FourierAnalysis.SourceCorpus.ActualSourceMatrixDictionary.Variantab6e0fe4520f8c761bfbfcf148845072c13ab99b6bd18a87072ef0151aa8871b","mathematical_subject":"Analysis.FourierAnalysis","original_sha256":"ab6e0fe4520f8c761bfbfcf148845072c13ab99b6bd18a87072ef0151aa8871b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/common-mean-stieltjes-20261004/finite-stieltjes-independent-review/overlay/scratch/common_mean_20261004/FiveModeActualDictionary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import scratch.common_mean_20261004.FiveModeGammaAdmission
import scratch.common_mean_20261004.FiveModeTailTransport

/-!
The gamma admission premise is discharged for the actual five-mode source.
Every eventual estimate below still requires an independent arithmetic witness.
Originating direction: grwtsk contributors. Proof assistance: OpenAI Codex.
-/


namespace GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ActualSourceMatrixDictionary.Variantab6e0fe4520f8c761bfbfcf148845072c13ab99b6bd18a87072ef0151aa8871b

set_option autoImplicit false
noncomputable section
namespace CommonMeanScratch
open MeasureTheory
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization

theorem actual_source_matrix_dictionary (A : ℝ) (hA : 1 ≤ A) :
    dotProduct (alpha A) ((sourceMatrix A).mulVec (alpha A)) =
      sourceQuadraticValue explicitSecondDerivative A := by
  rw [matrix_dot_eq_contraction]
  exact geometric_matrix_dictionary A hA (gamma_entry_integrability A (by linarith))

/-- Exact S_A=alpha^T H alpha, with the actual normalized ordinary-square sum. -/
theorem actual_spectral_matrix_dictionary (A : ℝ) (hA : 1 ≤ A) :
    spectralValue A = (dotProduct (alpha A) ((sourceMatrix A).mulVec (alpha A)) : ℝ) :=
  spectralValue_eq_matrix_dot A hA (gamma_entry_integrability A (by linarith))

/-- Original angular Parseval factor, using the independently proved source mass. -/
theorem actual_angular_parseval (A : ℝ) (hA : 1 ≤ A) :
    (∫ ω : ℝ, Complex.normSq
      (sourceFourier (normalizedTest explicitSecondDerivative A) ω)) / (2*Real.pi) = 1 := by
  rw [SourcePlancherel.actual_source_fourier_mass A hA]
  exact div_self (by positivity)

/-- Conditional consumer only: the universal arithmetic inequality remains an
explicit hypothesis. No finite certificate supplies this hypothesis. -/
theorem actual_estimate_of_matrix_tail (D R : ℝ) (hR : 1 ≤ R)
    (hbound : ∀ A : ℝ, R ≤ A →
      -D ≤ dotProduct (alpha A) ((sourceMatrix A).mulVec (alpha A))) :
    CorrelationAssembly.EstimateObligation :=
  estimate_of_matrix_tail D R hR
    (fun A hRA => gamma_entry_integrability A (by linarith)) hbound

theorem actual_residual_upper_of_matrix_lower (A D a0 : ℝ) (hA : 1 ≤ A)
    (hbound : -D ≤ dotProduct (alpha A) ((sourceMatrix A).mulVec (alpha A)))
    (hgamma : archimedeanValue explicitSecondDerivative A ≤ a0 + 390/A^2)
    (ha0 : a0 ≤ 0) :
    EstimateMertensResidual.mertensResidual A ≤ 195 + D/2 :=
  residual_upper_of_matrix_lower A D a0 hA
    (gamma_entry_integrability A (by linarith)) hbound hgamma ha0

end CommonMeanScratch
```
