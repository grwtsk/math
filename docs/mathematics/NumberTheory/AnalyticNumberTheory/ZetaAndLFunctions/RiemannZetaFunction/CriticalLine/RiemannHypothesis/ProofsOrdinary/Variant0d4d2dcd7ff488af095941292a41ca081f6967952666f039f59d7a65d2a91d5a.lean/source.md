# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ProofsOrdinary.Variant0d4d2dcd7ff488af095941292a41ca081f6967952666f039f59d7a65d2a91d5a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d85fe75faa3d3e31f485007a041b0552223b2c08` · SHA-256 `38e2ad0e954574f751f2d5bfb8d5efe93868203fe120e0d96647109c7ff028ec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualLowerTraceArithmeticExpansion.Variantc4d946586bb641b728df234cb734bf98a5565b597dfe9172494668bc7232f2e5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c4d946586bb641b728df234cb734bf98a5565b597dfe9172494668bc7232f2e5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualLowerTraceArithmeticExpansion.Variantc4d946586bb641b728df234cb734bf98a5565b597dfe9172494668bc7232f2e5","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"c4d946586bb641b728df234cb734bf98a5565b597dfe9172494668bc7232f2e5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/independent-lower-trace-expansion/ProofsOrdinary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualLowerTraceArithmeticExpansion

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualLowerTraceArithmeticExpansion.Variantc4d946586bb641b728df234cb734bf98a5565b597dfe9172494668bc7232f2e5

set_option pp.all true
set_option pp.fullNames false
#print FormalResearch.RiemannHypothesis.ActualLowerTraceArithmeticExpansion.actualLowerColumnPrimeTest
#print FormalResearch.RiemannHypothesis.ActualLowerTraceArithmeticExpansion.actualLowerColumnHalfMangoldtRow
#print FormalResearch.RiemannHypothesis.ActualLowerTraceArithmeticExpansion.actualLowerColumnMangoldtBracket
#print FormalResearch.RiemannHypothesis.ActualLowerTraceArithmeticExpansion.actualLowerColumnPrimeTest_hasDerivAt
#print FormalResearch.RiemannHypothesis.ActualLowerTraceArithmeticExpansion.actualLowerColumnPrimeTest_at_upper
#print FormalResearch.RiemannHypothesis.ActualLowerTraceArithmeticExpansion.actualLowerColumnPrimeWindow_eq_halfRow
#print FormalResearch.RiemannHypothesis.ActualLowerTraceArithmeticExpansion.actualLowerColumnTimeFactor_eq_closed_window
#print FormalResearch.RiemannHypothesis.ActualLowerTraceArithmeticExpansion.actualAdjointLowerColumnTrace_eq_half_inventory_product
```
