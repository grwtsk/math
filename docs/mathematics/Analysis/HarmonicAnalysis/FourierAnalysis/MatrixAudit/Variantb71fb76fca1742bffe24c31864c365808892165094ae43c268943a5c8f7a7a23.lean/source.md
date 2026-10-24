# Complete source: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.MatrixAudit.Variantb71fb76fca1742bffe24c31864c365808892165094ae43c268943a5c8f7a7a23

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e5f2b19aab7b2ba2ae5cdc327e808c0213f11ca2` · SHA-256 `4f6322cc6cf3fc80e829a6147ac326dd1a0ec32cfb0c1651e8027e2ce449aaa5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.HarmonicAnalysis.FourierAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.FiveModeMatrix.Variant5d95237e2a3a23510b0fac2837d0f2a9d94b24a3a2a10e8effe0a689642d50b7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5d95237e2a3a23510b0fac2837d0f2a9d94b24a3a2a10e8effe0a689642d50b7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FourierAnalysis.SourceCorpus.FiveModeMatrix.Variant5d95237e2a3a23510b0fac2837d0f2a9d94b24a3a2a10e8effe0a689642d50b7","mathematical_subject":"Analysis.FourierAnalysis","original_sha256":"5d95237e2a3a23510b0fac2837d0f2a9d94b24a3a2a10e8effe0a689642d50b7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/common-mean-20261004/matrix-independent-review/MatrixAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import scratch.common_mean_20261004.FiveModeMatrix

namespace GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.FiveModeMatrix.Variant5d95237e2a3a23510b0fac2837d0f2a9d94b24a3a2a10e8effe0a689642d50b7

set_option autoImplicit false

#check CommonMeanScratch.modeFourier
#check CommonMeanScratch.mode_fourier_integrable
#check CommonMeanScratch.mode_fourier_conj
#check CommonMeanScratch.mode_fourier_im_zero
#check CommonMeanScratch.actual_fourier_reconstruction
#check CommonMeanScratch.actual_fourier_square_reconstruction
#check CommonMeanScratch.gammaEntry
#check CommonMeanScratch.GammaEntryIntegrability
#check CommonMeanScratch.gamma_contraction
#check CommonMeanScratch.arithmeticEntry
#check CommonMeanScratch.geometricEntry
#check CommonMeanScratch.negative_pole_eq_positive
#check CommonMeanScratch.actual_closed_arithmetic
#check CommonMeanScratch.arithmetic_contraction
#check CommonMeanScratch.geometric_matrix_dictionary
#check CommonMeanScratch.geometric_matrix_zero_dictionary
#check CommonMeanScratch.gammaEntry_symm
#check CommonMeanScratch.arithmeticEntry_symm
#check CommonMeanScratch.geometricEntry_symm
#check CommonMeanScratch.normalizedBilateral
#check CommonMeanScratch.normalizedBilateral_eq_actual_integral
#check CommonMeanScratch.normalized_bilateral_integrable
#check CommonMeanScratch.spectralValue
#check CommonMeanScratch.normalized_bilateral_square
#check CommonMeanScratch.normalized_transform_squares_summable
#check CommonMeanScratch.spectralValue_eq_matrix
#check CommonMeanScratch.sourceMatrix
#check CommonMeanScratch.matrix_dot_eq_contraction
#check CommonMeanScratch.spectralValue_eq_matrix_dot
#print CommonMeanScratch.modeFourier
#print CommonMeanScratch.gammaEntry
#print CommonMeanScratch.GammaEntryIntegrability
#print CommonMeanScratch.arithmeticEntry
#print CommonMeanScratch.geometricEntry
#print CommonMeanScratch.normalizedBilateral
#print CommonMeanScratch.spectralValue
#print CommonMeanScratch.sourceMatrix
#print axioms CommonMeanScratch.mode_fourier_integrable
#print axioms CommonMeanScratch.mode_fourier_conj
#print axioms CommonMeanScratch.mode_fourier_im_zero
#print axioms CommonMeanScratch.actual_fourier_reconstruction
#print axioms CommonMeanScratch.actual_fourier_square_reconstruction
#print axioms CommonMeanScratch.gamma_contraction
#print axioms CommonMeanScratch.negative_pole_eq_positive
#print axioms CommonMeanScratch.actual_closed_arithmetic
#print axioms CommonMeanScratch.arithmetic_contraction
#print axioms CommonMeanScratch.geometric_matrix_dictionary
#print axioms CommonMeanScratch.geometric_matrix_zero_dictionary
#print axioms CommonMeanScratch.gammaEntry_symm
#print axioms CommonMeanScratch.arithmeticEntry_symm
#print axioms CommonMeanScratch.geometricEntry_symm
#print axioms CommonMeanScratch.normalizedBilateral_eq_actual_integral
#print axioms CommonMeanScratch.normalized_bilateral_integrable
#print axioms CommonMeanScratch.normalized_bilateral_square
#print axioms CommonMeanScratch.normalized_transform_squares_summable
#print axioms CommonMeanScratch.spectralValue_eq_matrix
#print axioms CommonMeanScratch.matrix_dot_eq_contraction
#print axioms CommonMeanScratch.spectralValue_eq_matrix_dot
```
