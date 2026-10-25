# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestMultivar.Variant0dcdeb697a419a1028ab39bcaa893de8ea73505cb809fcbf97169e8e5189a6c3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a89084679bb015f18d8ab8a6c663a6cde1029e2` · SHA-256 `78da8bfcb3ff8ca7a849d5bdcf771dedb40d074549e695170226f775ead368ac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestDSumLe.Variantcbc555d41148bbaec6ccd421cda35c993c9269bd7cae4a2dc9d51eb8fa29a990","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cbc555d41148bbaec6ccd421cda35c993c9269bd7cae4a2dc9d51eb8fa29a990","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TestDSumLe.Variantcbc555d41148bbaec6ccd421cda35c993c9269bd7cae4a2dc9d51eb8fa29a990","mathematical_subject":"Foundations.Unclassified","original_sha256":"cbc555d41148bbaec6ccd421cda35c993c9269bd7cae4a2dc9d51eb8fa29a990","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Test/test_multivar.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import LeanCert.Tactic.IntervalAuto

-- Test: x + y ≤ 2 on [0,1] × [0,1]

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestDSumLe.Variantcbc555d41148bbaec6ccd421cda35c993c9269bd7cae4a2dc9d51eb8fa29a990

theorem test_2d_sum_le : ∀ x ∈ Set.Icc (0:ℝ) 1, ∀ y ∈ Set.Icc (0:ℝ) 1, x + y ≤ (2 : ℚ) := by
  multivariate_bound
```
