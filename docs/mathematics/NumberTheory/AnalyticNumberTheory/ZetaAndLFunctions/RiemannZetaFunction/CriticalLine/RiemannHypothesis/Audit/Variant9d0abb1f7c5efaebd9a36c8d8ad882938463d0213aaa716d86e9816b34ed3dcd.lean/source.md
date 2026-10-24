# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Audit.Variant9d0abb1f7c5efaebd9a36c8d8ad882938463d0213aaa716d86e9816b34ed3dcd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f3df9613ee908d468f0b377b9260b4fe8489930` · SHA-256 `f2211dedf68bcde69e58c2ebe0aeb5b7531c2bbf59c6c0f36fbc495e0b81ef59`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourcePhasePolynomialBudget.Variant96ba28c73c5f71c9e52a342a141728a829ee7a90eee4c5001224b82f14eae703","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"96ba28c73c5f71c9e52a342a141728a829ee7a90eee4c5001224b82f14eae703","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.SourcePhasePolynomialBudget.Variant96ba28c73c5f71c9e52a342a141728a829ee7a90eee4c5001224b82f14eae703","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"96ba28c73c5f71c9e52a342a141728a829ee7a90eee4c5001224b82f14eae703","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle15/phase-polynomial-canonical/Audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourcePhasePolynomialBudget


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourcePhasePolynomialBudget.Variant96ba28c73c5f71c9e52a342a141728a829ee7a90eee4c5001224b82f14eae703

set_option linter.hashCommand false
open FormalResearch.RiemannHypothesis.SourcePhasePolynomialBudget

#check @phasePolynomialCoefficient
#print axioms phasePolynomialCoefficient
#check @phasePolynomialCoefficient_pos
#print axioms phasePolynomialCoefficient_pos
#check @positiveMass_ge_taylor
#print axioms positiveMass_ge_taylor
#check @positiveMass_gt_polynomial
#print axioms positiveMass_gt_polynomial
#check @positiveMass_eventually_gt_polynomial
#print axioms positiveMass_eventually_gt_polynomial
#check @positiveMass_not_eventually_polynomial_bounded
#print axioms positiveMass_not_eventually_polynomial_bounded
```
