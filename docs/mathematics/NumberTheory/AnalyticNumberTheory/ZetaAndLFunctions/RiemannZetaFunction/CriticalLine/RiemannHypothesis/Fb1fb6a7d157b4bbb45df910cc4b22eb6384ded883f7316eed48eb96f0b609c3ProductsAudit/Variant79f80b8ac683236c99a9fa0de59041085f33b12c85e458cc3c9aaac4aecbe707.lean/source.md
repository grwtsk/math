# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Fb1fb6a7d157b4bbb45df910cc4b22eb6384ded883f7316eed48eb96f0b609c3ProductsAudit.Variant79f80b8ac683236c99a9fa0de59041085f33b12c85e458cc3c9aaac4aecbe707

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8fdde22afe38908e0b055b6ebf96f427ac46650f` · SHA-256 `ceef859a10f94d28518c3bf88000af67179f09fbb31437d0ce8aefc42bb54b0a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaTailRankTwo.Variantfb1fb6a7d157b4bbb45df910cc4b22eb6384ded883f7316eed48eb96f0b609c3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fb1fb6a7d157b4bbb45df910cc4b22eb6384ded883f7316eed48eb96f0b609c3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ThetaTailRankTwo.Variantfb1fb6a7d157b4bbb45df910cc4b22eb6384ded883f7316eed48eb96f0b609c3","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"fb1fb6a7d157b4bbb45df910cc4b22eb6384ded883f7316eed48eb96f0b609c3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/fb/fb1fb6a7d157b4bbb45df910cc4b22eb6384ded883f7316eed48eb96f0b609c3--ProductsAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaTailRankTwo

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaTailRankTwo.Variantfb1fb6a7d157b4bbb45df910cc4b22eb6384ded883f7316eed48eb96f0b609c3

open FormalResearch.RiemannHypothesis.ThetaPositiveLift
#check thetaTail_ratio_eq_product
#check thetaTail_ratio_product_antitone
#check thetaTail_div_antitone
#check thetaTailSignRegular_two
#print axioms thetaTail_ratio_eq_product
#print axioms thetaTail_ratio_product_antitone
#print axioms thetaTail_div_antitone
#print axioms thetaTailSignRegular_two
```
