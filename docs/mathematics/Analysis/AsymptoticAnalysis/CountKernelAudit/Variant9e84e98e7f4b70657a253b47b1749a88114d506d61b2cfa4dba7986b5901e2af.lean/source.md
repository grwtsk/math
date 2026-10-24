# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.CountKernelAudit.Variant9e84e98e7f4b70657a253b47b1749a88114d506d61b2cfa4dba7986b5901e2af

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8fe718fb4ca26b190160dabdc94ff18bd6d547af` · SHA-256 `223aa49343e1efb89ce6a84ff6dacd4e75d52cd591333782e25c3230f754c0b1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.CountKernel.Variant289f87cab934a899e0598a234e65203bb782aa7092a89a9fb244b8458b5c593b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"289f87cab934a899e0598a234e65203bb782aa7092a89a9fb244b8458b5c593b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.CountKernel.Variant289f87cab934a899e0598a234e65203bb782aa7092a89a9fb244b8458b5c593b","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"289f87cab934a899e0598a234e65203bb782aa7092a89a9fb244b8458b5c593b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/common-mean-stieltjes-20261004/count-audit/CountKernelAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import scratch.common_mean_stieltjes_20261004.CountKernel


namespace GRWTSK.Analysis.AsymptoticAnalysis.CountKernel.Variant289f87cab934a899e0598a234e65203bb782aa7092a89a9fb244b8458b5c593b

#print CommonMeanStieltjes.PositiveOccurrence
#print CommonMeanStieltjes.positiveOrdinate
#print CommonMeanStieltjes.positiveClosedCountKernel

#check CommonMeanStieltjes.PositiveOccurrence
#print axioms CommonMeanStieltjes.PositiveOccurrence
#check CommonMeanStieltjes.positiveOrdinate
#print axioms CommonMeanStieltjes.positiveOrdinate
#check CommonMeanStieltjes.positiveClosedCountSet
#print axioms CommonMeanStieltjes.positiveClosedCountSet
#check CommonMeanStieltjes.positiveClosedCountKernel
#print axioms CommonMeanStieltjes.positiveClosedCountKernel
#check CommonMeanStieltjes.positiveClosedWindowEquiv
#print axioms CommonMeanStieltjes.positiveClosedWindowEquiv
#check CommonMeanStieltjes.positive_closed_count_set_finite
#print axioms CommonMeanStieltjes.positive_closed_count_set_finite
#check CommonMeanStieltjes.positive_closed_count_kernel_hasFiniteSupport
#print axioms CommonMeanStieltjes.positive_closed_count_kernel_hasFiniteSupport
#check CommonMeanStieltjes.positive_closed_count_kernel_summable
#print axioms CommonMeanStieltjes.positive_closed_count_kernel_summable
#check CommonMeanStieltjes.positive_closed_count_kernel_tsum
#print axioms CommonMeanStieltjes.positive_closed_count_kernel_tsum
#check CommonMeanStieltjes.positiveStrictTailEquiv
#print axioms CommonMeanStieltjes.positiveStrictTailEquiv
#check CommonMeanStieltjes.positive_strict_tail_tsum_transport
#print axioms CommonMeanStieltjes.positive_strict_tail_tsum_transport

open Lean in
run_meta do
  let env ← getEnv
  for name in env.header.moduleNames do
    logInfo m!"CLOSURE_MODULE {name}"
```
