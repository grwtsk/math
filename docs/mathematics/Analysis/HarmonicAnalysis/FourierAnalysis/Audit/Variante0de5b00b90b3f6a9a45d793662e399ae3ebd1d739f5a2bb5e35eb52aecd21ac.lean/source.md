# Complete source: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Audit.Variante0de5b00b90b3f6a9a45d793662e399ae3ebd1d739f5a2bb5e35eb52aecd21ac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `69d563b1262f5fd6c58f826192038308ceccd8e4` · SHA-256 `98fca946615692f962f30a08837b718ff60d7d0fe6c5d6947e8fe9716247a035`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.HarmonicAnalysis.FourierAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.SourceReflectionArithmetic.Variant2413e8068f8cde4a3bc02d2935c4afa80e622a2bfa97495f0dabfe7858136979","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2413e8068f8cde4a3bc02d2935c4afa80e622a2bfa97495f0dabfe7858136979","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FourierAnalysis.SourceCorpus.SourceReflectionArithmetic.Variant2413e8068f8cde4a3bc02d2935c4afa80e622a2bfa97495f0dabfe7858136979","mathematical_subject":"Analysis.FourierAnalysis","original_sha256":"2413e8068f8cde4a3bc02d2935c4afa80e622a2bfa97495f0dabfe7858136979","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh-reflection-duality/arithmetic/v1-archive/Audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceReflectionArithmetic

namespace GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.SourceReflectionArithmetic.Variant2413e8068f8cde4a3bc02d2935c4afa80e622a2bfa97495f0dabfe7858136979

set_option linter.hashCommand false
open FormalResearch.RiemannHypothesis.SourceReflectionArithmetic
#check
  complexify
#print axioms
  complexify
#check
  complexify_coe_ae
#print axioms
  complexify_coe_ae
#check
  complexify_inner
#print axioms
  complexify_inner
#check
  sourceL2
#print axioms
  sourceL2
#check
  sourceL2_coe_ae
#print axioms
  sourceL2_coe_ae
#check
  mangoldtComplexL2
#print axioms
  mangoldtComplexL2
#check
  centeredMobiusComplexL2
#print axioms
  centeredMobiusComplexL2
#check
  centeredReflectedComplexL2
#print axioms
  centeredReflectedComplexL2
#check
  mangoldtComplexL2_coe_ae
#print axioms
  mangoldtComplexL2_coe_ae
#check
  centeredMobiusComplexL2_coe_ae
#print axioms
  centeredMobiusComplexL2_coe_ae
#check
  centeredReflectedComplexL2_coe_ae
#print axioms
  centeredReflectedComplexL2_coe_ae
#check
  complex_pairing_eq_source
#print axioms
  complex_pairing_eq_source
#check
  complexify_norm_sq
#print axioms
  complexify_norm_sq
#check
  sourceL2_norm_sq
#print axioms
  sourceL2_norm_sq
#check
  sourceL2_ne_zero
#print axioms
  sourceL2_ne_zero
#check
  sourceL2_reflection
#print axioms
  sourceL2_reflection
#check
  translatedSource_coe_ae
#print axioms
  translatedSource_coe_ae
#check
  forwardComplex_eq_sum_translates
#print axioms
  forwardComplex_eq_sum_translates
#check
  centered_complex_reflection
#print axioms
  centered_complex_reflection
#check
  mangoldtComplex_eq_sum
#print axioms
  mangoldtComplex_eq_sum
#check
  centeredMobiusComplex_eq_sum
#print axioms
  centeredMobiusComplex_eq_sum
#check
  dualSourceL2
#print axioms
  dualSourceL2
#check
  dualMangoldtL2
#print axioms
  dualMangoldtL2
#check
  dualCenteredMobiusL2
#print axioms
  dualCenteredMobiusL2
#check
  dualReflectedMobiusL2
#print axioms
  dualReflectedMobiusL2
#check
  dual_reflected_state
#print axioms
  dual_reflected_state
#check
  dualSource_reflection
#print axioms
  dualSource_reflection
#check
  dualSource_norm_sq
#print axioms
  dualSource_norm_sq
#check
  original_reflected_kernel
#print axioms
  original_reflected_kernel
#check
  original_stationary_kernel
#print axioms
  original_stationary_kernel
#check
  reflectedDualKernel
#print axioms
  reflectedDualKernel
#check
  stationaryDualKernel
#print axioms
  stationaryDualKernel
#check
  dual_complex_pairing_eq_neg_source
#print axioms
  dual_complex_pairing_eq_neg_source
#check
  dual_plus_norm_eq_original_minus
#print axioms
  dual_plus_norm_eq_original_minus
#check
  dual_minus_norm_eq_original_plus
#print axioms
  dual_minus_norm_eq_original_plus
#check
  dual_source_reflected_unit_fixture
#print axioms
  dual_source_reflected_unit_fixture
#check
  reflectedDualKernel_eq_neg_source
#print axioms
  reflectedDualKernel_eq_neg_source
#check
  stationaryDualKernel_eq_source
#print axioms
  stationaryDualKernel_eq_source
#check
  dualPlainWeight
#print axioms
  dualPlainWeight
#check
  dualPlainWeight_eq_neg_source
#print axioms
  dualPlainWeight_eq_neg_source
#check
  dualPlainWeight_zero_above_cutoff
#print axioms
  dualPlainWeight_zero_above_cutoff
#check
  dualCenteredRectangle
#print axioms
  dualCenteredRectangle
#check
  dualCenteredDeletedDiagonal
#print axioms
  dualCenteredDeletedDiagonal
#check
  dualCenteredOffDiagonal
#print axioms
  dualCenteredOffDiagonal
#check
  dualCovarianceOperatorValue
#print axioms
  dualCovarianceOperatorValue
#check
  dualCenteredRectangle_eq_neg
#print axioms
  dualCenteredRectangle_eq_neg
#check
  dualCenteredDeletedDiagonal_eq_neg
#print axioms
  dualCenteredDeletedDiagonal_eq_neg
#check
  dualCenteredDeletedDiagonal_eq_neg_old_add_centering
#print axioms
  dualCenteredDeletedDiagonal_eq_neg_old_add_centering
#check
  dualCenteredOffDiagonal_eq_neg
#print axioms
  dualCenteredOffDiagonal_eq_neg
#check
  dualOffDiagonal_eq_unmasked
#print axioms
  dualOffDiagonal_eq_unmasked
#check
  dual_pairing_eq_rectangle
#print axioms
  dual_pairing_eq_rectangle
#check
  dualCovarianceOperatorValue_eq_neg
#print axioms
  dualCovarianceOperatorValue_eq_neg
#check
  dualCovariance_half_eq_pairing_sub_diagonal
#print axioms
  dualCovariance_half_eq_pairing_sub_diagonal
#check
  sourceL2_integrable
#print axioms
  sourceL2_integrable
#check
  dualMangoldt_eq_sum
#print axioms
  dualMangoldt_eq_sum
#check
  dualCenteredMobius_eq_sum
#print axioms
  dualCenteredMobius_eq_sum
#check
  source_dual_orthogonal
#print axioms
  source_dual_orthogonal
#check
  extra_duality_zero_fixture
#print axioms
  extra_duality_zero_fixture
#check
  extra_duality_not_reflected_pairing
#print axioms
  extra_duality_not_reflected_pairing
#check
  dualSource_not_integrable
#print axioms
  dualSource_not_integrable
#check
  dualSource_no_compact_representative
#print axioms
  dualSource_no_compact_representative
#check
  complexify_conjugation
#print axioms
  complexify_conjugation
#check
  dualSource_conjugation
#print axioms
  dualSource_conjugation
#check
  dualSource_real_part_zero
#print axioms
  dualSource_real_part_zero
#check
  dualMangoldt_real_part_zero
#print axioms
  dualMangoldt_real_part_zero
#check
  dualCenteredMobius_real_part_zero
#print axioms
  dualCenteredMobius_real_part_zero
#check
  dualReflectedMobius_real_part_zero
#print axioms
  dualReflectedMobius_real_part_zero
#check
  dual_pairing_original_fourier
#print axioms
  dual_pairing_original_fourier
#check
  dual_covariance_original_fourier
#print axioms
  dual_covariance_original_fourier
```
