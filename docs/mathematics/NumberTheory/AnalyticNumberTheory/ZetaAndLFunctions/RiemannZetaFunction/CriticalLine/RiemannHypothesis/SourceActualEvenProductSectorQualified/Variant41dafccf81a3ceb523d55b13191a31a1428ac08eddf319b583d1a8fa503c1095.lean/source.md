# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualEvenProductSectorQualified.Variant41dafccf81a3ceb523d55b13191a31a1428ac08eddf319b583d1a8fa503c1095

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `615a20a7d5ec7727e6548000078c70c1d59212e6` · SHA-256 `7d69ddf3442d2787ce279212ce5955955bf8c3760bda686c8d75e75b4aaa0d88`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualEvenProductSector.Variant3c7ad69776e8bf3a72de2e4864043a55cb687a5563e9880791b057d4f051774c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3c7ad69776e8bf3a72de2e4864043a55cb687a5563e9880791b057d4f051774c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceActualEvenProductSector.Variant3c7ad69776e8bf3a72de2e4864043a55cb687a5563e9880791b057d4f051774c","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"3c7ad69776e8bf3a72de2e4864043a55cb687a5563e9880791b057d4f051774c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-even-product-sector-v1/SourceActualEvenProductSectorQualified.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualEvenProductSector

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualEvenProductSector.Variant3c7ad69776e8bf3a72de2e4864043a55cb687a5563e9880791b057d4f051774c

set_option linter.hashCommand false
set_option linter.style.setOption false
set_option linter.style.longLine false
set_option maxHeartbeats 10000000
set_option maxRecDepth 100000
set_option pp.maxSteps 100000000
set_option pp.proofs true
set_option pp.all true
set_option pp.fullNames true
#print FormalResearch.RiemannHypothesis.SourceActualEvenProductSector.actualEvenProductMoment
#print FormalResearch.RiemannHypothesis.SourceActualEvenProductSector.actualOddProductMoment
#print FormalResearch.RiemannHypothesis.SourceActualEvenProductSector.actualEvenMobiusProductMoment
#print FormalResearch.RiemannHypothesis.SourceActualEvenProductSector.actualEvenMobiusProductMoment_eq
#print FormalResearch.RiemannHypothesis.SourceActualEvenProductSector.mertensResidual_eq_even_add_odd
#print FormalResearch.RiemannHypothesis.SourceActualEvenProductSector.actualEvenPowerInventory
#print FormalResearch.RiemannHypothesis.SourceActualEvenProductSector.actualEvenProductMoment_eq_two_power_sum
#print FormalResearch.RiemannHypothesis.SourceActualEvenProductSector.actualEvenProductMoment_abs_le
#print FormalResearch.RiemannHypothesis.SourceActualEvenProductSector.actualUpperEvenProductMoment
#print FormalResearch.RiemannHypothesis.SourceActualEvenProductSector.actualUpperEvenProductMoment_eq_full_mobius_sum
#print FormalResearch.RiemannHypothesis.SourceActualEvenProductSector.actualEvenProductMoment_eq_upper_add_closed_low
#print FormalResearch.RiemannHypothesis.SourceActualEvenProductSector.actualUpperEvenProductMoment_abs_le
#print FormalResearch.RiemannHypothesis.SourceActualEvenProductSector.actualUpperEvenProductMoment_tendsto_zero
```
