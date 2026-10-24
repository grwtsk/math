# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.ZeroHeadAudit.Variantfbe6807b4f41b566926af55d6398e34a93a020994b4c216e02ed9962f8b2c32c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7e4aabed75c2c2e324718253f19188f266e0f034` · SHA-256 `542c89615347e2ad5e4ea2dc6d09b6a5e374b75a3304692bc66a37f053eea580`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.FiveModeZeroHead.Variantd743fe9262ee5616aa95b614b1e07c6c29abbc981ac57aa006236d5d318a832f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d743fe9262ee5616aa95b614b1e07c6c29abbc981ac57aa006236d5d318a832f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.FiveModeZeroHead.Variantd743fe9262ee5616aa95b614b1e07c6c29abbc981ac57aa006236d5d318a832f","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"d743fe9262ee5616aa95b614b1e07c6c29abbc981ac57aa006236d5d318a832f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/common-mean-20261004/finite-external-adapter/ZeroHeadAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import scratch.common_mean_20261004.FiveModeZeroHead


namespace GRWTSK.Analysis.AsymptoticAnalysis.FiveModeZeroHead.Variantd743fe9262ee5616aa95b614b1e07c6c29abbc981ac57aa006236d5d318a832f

#check CommonMeanScratch.zero_head_compl_eq_strict_tail
#print axioms CommonMeanScratch.zero_head_compl_eq_strict_tail
#check CommonMeanScratch.actual_zero_head_tail_decomposition
#print axioms CommonMeanScratch.actual_zero_head_tail_decomposition
#check CommonMeanScratch.actual_matrix_head_tail_decomposition
#print axioms CommonMeanScratch.actual_matrix_head_tail_decomposition
#check CommonMeanScratch.complete_verified_height_of_positive
#print axioms CommonMeanScratch.complete_verified_height_of_positive
#check CommonMeanScratch.complete_positive_verified_height_mono
#print axioms CommonMeanScratch.complete_positive_verified_height_mono
#check CommonMeanScratch.published_height_covers_working_cutoff
#print axioms CommonMeanScratch.published_height_covers_working_cutoff
#check CommonMeanScratch.working_complete_verified_height
#print axioms CommonMeanScratch.working_complete_verified_height
#check CommonMeanScratch.normalized_bilateral_im_zero_on_imaginary_axis
#print axioms CommonMeanScratch.normalized_bilateral_im_zero_on_imaginary_axis
#check CommonMeanScratch.normalized_bilateral_im_zero_of_critical
#print axioms CommonMeanScratch.normalized_bilateral_im_zero_of_critical
#check CommonMeanScratch.actual_zero_head_nonnegative
#print axioms CommonMeanScratch.actual_zero_head_nonnegative
#check CommonMeanScratch.normalized_bilateral_conjugate
#print axioms CommonMeanScratch.normalized_bilateral_conjugate
#check CommonMeanScratch.actual_zero_square_norm_conjugate
#print axioms CommonMeanScratch.actual_zero_square_norm_conjugate
#check CommonMeanScratch.actual_zero_square_norms_summable
#print axioms CommonMeanScratch.actual_zero_square_norms_summable
#check CommonMeanScratch.actual_negative_absolute_tail_eq_positive
#print axioms CommonMeanScratch.actual_negative_absolute_tail_eq_positive
#check CommonMeanScratch.actual_absolute_tail_eq_two_positive
#print axioms CommonMeanScratch.actual_absolute_tail_eq_two_positive
#check CommonMeanScratch.actual_strict_tail_norm_le_absolute
#print axioms CommonMeanScratch.actual_strict_tail_norm_le_absolute

open Lean in
run_meta do
  let env ← getEnv
  for name in env.header.moduleNames do
    logInfo m!"CLOSURE_MODULE {name}"
```
