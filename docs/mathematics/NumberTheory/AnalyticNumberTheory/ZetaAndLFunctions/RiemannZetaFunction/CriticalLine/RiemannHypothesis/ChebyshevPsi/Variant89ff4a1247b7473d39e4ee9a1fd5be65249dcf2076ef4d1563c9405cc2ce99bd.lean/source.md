# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ChebyshevPsi.Variant89ff4a1247b7473d39e4ee9a1fd5be65249dcf2076ef4d1563c9405cc2ce99bd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4c99148e58ea05b3dc8c1c33837325c36bf08fef` · SHA-256 `6ab7f4cc117bd72106464d08d7a27ef668731030c7a13dffa37457d47a3ade51`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ChebyshevPsi.Variant7973eb8b63b32e7f9ae77cd954fce51fc166935030be92e3264e7efb0fdb3361","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7973eb8b63b32e7f9ae77cd954fce51fc166935030be92e3264e7efb0fdb3361","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ChebyshevPsi.Variant7973eb8b63b32e7f9ae77cd954fce51fc166935030be92e3264e7efb0fdb3361","mathematical_subject":"Foundations.Unclassified","original_sha256":"7973eb8b63b32e7f9ae77cd954fce51fc166935030be92e3264e7efb0fdb3361","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Test/ChebyshevPsi.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import LeanCert.Engine.ChebyshevPsi


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ChebyshevPsi.Variant7973eb8b63b32e7f9ae77cd954fce51fc166935030be92e3264e7efb0fdb3361

open LeanCert.Engine.ChebyshevPsi

-- Quick test: incremental checker (O(N), fast)
example : allPsiBoundsHold 11723 20 = true := by native_decide

-- Eval the incremental checker result
#eval allPsiBoundsHold 11723 20
```
