# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestExpBound.Variantda0e439b06896563c10e6adf189e0b0ea8d128956f6ad9e8389616c76db5aa61

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8b4316fc845a013f635fc095fedd1c7b5b23e345` · SHA-256 `60e58da1c645e7d39f550973444e22d9217dc5748fccd758197f0f0175691daa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanCert.Variantcae374e7e377c44216daa3dd8ed2e5e4c9cfde57eaf5c460372b0884822ecb85","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cae374e7e377c44216daa3dd8ed2e5e4c9cfde57eaf5c460372b0884822ecb85","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.LeanCert.Variantcae374e7e377c44216daa3dd8ed2e5e4c9cfde57eaf5c460372b0884822ecb85","mathematical_subject":"Foundations.Unclassified","original_sha256":"cae374e7e377c44216daa3dd8ed2e5e4c9cfde57eaf5c460372b0884822ecb85","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Test/test_exp_bound.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import LeanCert


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanCert.Variantcae374e7e377c44216daa3dd8ed2e5e4c9cfde57eaf5c460372b0884822ecb85

example : ∀ x ∈ Set.Icc 0 1, Real.exp x ≤ 2.718282 := by
  interval_bound
```
