# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ProofsQualified.Variant855bd82c0ae421afb6f7a15b07ba6a5cbe73d759da5ff1b3610b14a11f071fd5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `410ea2bc21372913d0ea21c7a13a72b518d7b3da` · SHA-256 `84b69f6d9920e09b0238cc1fa97ffedac194c9836b866bdae8a19a6bfc7b9d59`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualPsiComplexMellin.Variantd7c6dc8a9f0d5863122cf71195ba0d9d63c4910c028f3ffabef600601653d027","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d7c6dc8a9f0d5863122cf71195ba0d9d63c4910c028f3ffabef600601653d027","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceActualPsiComplexMellin.Variantd7c6dc8a9f0d5863122cf71195ba0d9d63c4910c028f3ffabef600601653d027","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"d7c6dc8a9f0d5863122cf71195ba0d9d63c4910c028f3ffabef600601653d027","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-psi-complex-mellin/ProofsQualified.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualPsiComplexMellin

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualPsiComplexMellin.Variantd7c6dc8a9f0d5863122cf71195ba0d9d63c4910c028f3ffabef600601653d027

set_option pp.maxSteps 1000000
set_option pp.proofs true
set_option pp.all true
set_option pp.fullNames true
#print FormalResearch.RiemannHypothesis.SourceActualPsiComplexMellin.actualPsiComplexMellin
#print FormalResearch.RiemannHypothesis.SourceActualPsiComplexMellin.actualPsiComplexMellin_integrableOn
#print FormalResearch.RiemannHypothesis.SourceActualPsiComplexMellin.actualPsiComplexMellin_mul_eq_LSeries
#print FormalResearch.RiemannHypothesis.SourceActualPsiComplexMellin.actualPsiComplexMellin_mul_eq_neg_zeta_deriv
```
