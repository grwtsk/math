# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ProofsQualified.Variantd648603eda2cf1d8c4e6f4b687f2d50f732d169c8e4aa02f53fe64d8dc30cbb4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c6dfcbb9aac70552f16d5f5f08048015f73466b0` · SHA-256 `91683078e76229513f98cd267d108187af9e19e737d8dd7c0aeb25a975ee8e34`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualLowerTraceArithmeticExpansion.Variantf2f7d8f0301f502ec3aa7a9ae40b8c91fef25dec6ac2f4f2b9e3e51d2fb65e0c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f2f7d8f0301f502ec3aa7a9ae40b8c91fef25dec6ac2f4f2b9e3e51d2fb65e0c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualLowerTraceArithmeticExpansion.Variantf2f7d8f0301f502ec3aa7a9ae40b8c91fef25dec6ac2f4f2b9e3e51d2fb65e0c","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"f2f7d8f0301f502ec3aa7a9ae40b8c91fef25dec6ac2f4f2b9e3e51d2fb65e0c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/independent-lower-trace-expansion/ProofsQualified.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualLowerTraceArithmeticExpansion

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualLowerTraceArithmeticExpansion.Variantf2f7d8f0301f502ec3aa7a9ae40b8c91fef25dec6ac2f4f2b9e3e51d2fb65e0c

set_option pp.all true
set_option pp.fullNames true
#print FormalResearch.RiemannHypothesis.ActualLowerTraceArithmeticExpansion.actualLowerColumnPrimeTest
#print FormalResearch.RiemannHypothesis.ActualLowerTraceArithmeticExpansion.actualLowerColumnHalfMangoldtRow
#print FormalResearch.RiemannHypothesis.ActualLowerTraceArithmeticExpansion.actualLowerColumnMangoldtBracket
#print FormalResearch.RiemannHypothesis.ActualLowerTraceArithmeticExpansion.actualLowerColumnPrimeTest_hasDerivAt
#print FormalResearch.RiemannHypothesis.ActualLowerTraceArithmeticExpansion.actualLowerColumnPrimeTest_at_upper
#print FormalResearch.RiemannHypothesis.ActualLowerTraceArithmeticExpansion.actualLowerColumnPrimeWindow_eq_halfRow
#print FormalResearch.RiemannHypothesis.ActualLowerTraceArithmeticExpansion.actualLowerColumnTimeFactor_eq_closed_window
#print FormalResearch.RiemannHypothesis.ActualLowerTraceArithmeticExpansion.actualAdjointLowerColumnTrace_eq_half_inventory_product
```
