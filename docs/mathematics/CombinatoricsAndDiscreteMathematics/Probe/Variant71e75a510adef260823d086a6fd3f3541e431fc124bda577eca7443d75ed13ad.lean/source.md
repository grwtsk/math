# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Probe.Variant71e75a510adef260823d086a6fd3f3541e431fc124bda577eca7443d75ed13ad

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f94de987ebab513a7cf399fd08a9de4a27dd625c` · SHA-256 `ff4f760884232078241a0dcf7345720b0984bc6d25fc94b6cd097d98c6e7154c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.SourceAdaptiveSignedCoefficientRows.Variant363e7d52824a1b82d3290b45862911da46b9b61a680e928e424335eaf11a5e86","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"363e7d52824a1b82d3290b45862911da46b9b61a680e928e424335eaf11a5e86","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.SourceAdaptiveSignedCoefficientRows.Variant363e7d52824a1b82d3290b45862911da46b9b61a680e928e424335eaf11a5e86","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"363e7d52824a1b82d3290b45862911da46b9b61a680e928e424335eaf11a5e86","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-coefficient-product-probe/Probe.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceAdaptiveSignedCoefficientRows

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.SourceAdaptiveSignedCoefficientRows.Variant363e7d52824a1b82d3290b45862911da46b9b61a680e928e424335eaf11a5e86

set_option autoImplicit false
open ArithmeticFunction
open RH16AdaptiveSignedCoefficients

example : truncatedConvolution 4 13 5 = vonMangoldt 5 := by
  norm_num [truncatedConvolution, Finset.sum_Icc_succ_top]

example : truncatedConvolution 4 13 7 = vonMangoldt 7 := by
  norm_num [truncatedConvolution, Finset.sum_Icc_succ_top]

example : truncatedConvolution 4 13 35 = 0 := by
  norm_num [truncatedConvolution, Finset.sum_Icc_succ_top]
```
