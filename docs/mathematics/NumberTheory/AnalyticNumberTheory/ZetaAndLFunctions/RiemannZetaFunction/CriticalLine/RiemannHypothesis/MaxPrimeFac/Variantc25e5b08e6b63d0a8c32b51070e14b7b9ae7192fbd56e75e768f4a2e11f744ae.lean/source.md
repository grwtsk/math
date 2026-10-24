# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.MaxPrimeFac.Variantc25e5b08e6b63d0a8c32b51070e14b7b9ae7192fbd56e75e768f4a2e11f744ae

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `064f0a2703c4b58e085ceb48f5903b5ebdb85872` · SHA-256 `87d0d7c8c007dd5b1841db413b114ed849252333d06dad69ce61aee21caacdef`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.MaxPrimeFac.Varianta07acfc1dc08186ffb2b5e8f1e0de12ace66b03d8ec3755b8f0ec7f8ef9a0faa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a07acfc1dc08186ffb2b5e8f1e0de12ace66b03d8ec3755b8f0ec7f8ef9a0faa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.MaxPrimeFac.Varianta07acfc1dc08186ffb2b5e8f1e0de12ace66b03d8ec3755b8f0ec7f8ef9a0faa","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"a07acfc1dc08186ffb2b5e8f1e0de12ace66b03d8ec3755b8f0ec7f8ef9a0faa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/MathlibTest/MaxPrimeFac.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

meta import Mathlib.Data.Nat.MaxPrimeFac


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.MaxPrimeFac.Varianta07acfc1dc08186ffb2b5e8f1e0de12ace66b03d8ec3755b8f0ec7f8ef9a0faa

#guard Nat.maxPrimeFac 0 = 0
#guard Nat.maxPrimeFac 1 = 1
#guard Nat.maxPrimeFac 12 = 3
#guard Nat.maxPrimeFac 97 = 97
#guard Nat.maxPrimeFac 125 = 5
#guard Nat.maxPrimeFac 360 = 5
```
