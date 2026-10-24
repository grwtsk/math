# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceCubicCorrelationTaylorAuditTypes.Variant132d11221ad64dbd6293426d0a217de90451e58f4cce945354948bd622cacaaf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f9bb45bb506afa06ddb9daef9aaf64a52cfb73ea` · SHA-256 `7283137a4f219da4cd18a690d1bed16b2bdb707934f1ce3d4a5cdc16706e3738`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceCubicCorrelationTaylor.Variantf7d7f341bf1a75533780516429b5748ecf2241806ad2ee3722de357218640f62","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f7d7f341bf1a75533780516429b5748ecf2241806ad2ee3722de357218640f62","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceCubicCorrelationTaylor.Variantf7d7f341bf1a75533780516429b5748ecf2241806ad2ee3722de357218640f62","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"f7d7f341bf1a75533780516429b5748ecf2241806ad2ee3722de357218640f62","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-challenge-next/SourceCubicCorrelationTaylorAuditTypes.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceCubicCorrelationTaylor

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceCubicCorrelationTaylor.Variantf7d7f341bf1a75533780516429b5748ecf2241806ad2ee3722de357218640f62

set_option autoImplicit false
set_option linter.style.longLine false
#check FormalResearch.RiemannHypothesis.SourceCubicCorrelationTaylor.cubicCorrelationJet
#print axioms FormalResearch.RiemannHypothesis.SourceCubicCorrelationTaylor.cubicCorrelationJet
#check FormalResearch.RiemannHypothesis.SourceCubicCorrelationTaylor.cubicCorrelationRemainder
#print axioms FormalResearch.RiemannHypothesis.SourceCubicCorrelationTaylor.cubicCorrelationRemainder
#check FormalResearch.RiemannHypothesis.SourceCubicCorrelationTaylor.cubicCorrelationRemainder_abs_le
#print axioms FormalResearch.RiemannHypothesis.SourceCubicCorrelationTaylor.cubicCorrelationRemainder_abs_le
#check FormalResearch.RiemannHypothesis.SourceCubicCorrelationTaylor.cubicCorrelationJet_hasDerivAt
#print axioms FormalResearch.RiemannHypothesis.SourceCubicCorrelationTaylor.cubicCorrelationJet_hasDerivAt
#check FormalResearch.RiemannHypothesis.SourceCubicCorrelationTaylor.cubicCorrelationRemainder_hasDerivAt
#print axioms FormalResearch.RiemannHypothesis.SourceCubicCorrelationTaylor.cubicCorrelationRemainder_hasDerivAt
#check FormalResearch.RiemannHypothesis.SourceCubicCorrelationTaylor.cubicCorrelationRemainder_deriv_abs_le
#print axioms FormalResearch.RiemannHypothesis.SourceCubicCorrelationTaylor.cubicCorrelationRemainder_deriv_abs_le
```
