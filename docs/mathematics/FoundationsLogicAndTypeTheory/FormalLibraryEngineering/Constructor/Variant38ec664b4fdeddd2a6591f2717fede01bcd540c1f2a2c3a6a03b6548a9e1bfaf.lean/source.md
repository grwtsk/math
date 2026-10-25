# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Constructor.Variant38ec664b4fdeddd2a6591f2717fede01bcd540c1f2a2c3a6a03b6548a9e1bfaf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3f88f037cf6148c9ae76f25066eba4d884a15207` · SHA-256 `ec430aa12f683a92b757aaa427e35da84fc75331b0eb96146d753974cff5ceb9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variant84fdd5501df1c78696807452799bfe184dff47a0f8773a438b07c9d03bcf4527","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"84fdd5501df1c78696807452799bfe184dff47a0f8773a438b07c9d03bcf4527","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Foo.Variant84fdd5501df1c78696807452799bfe184dff47a0f8773a438b07c9d03bcf4527","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"84fdd5501df1c78696807452799bfe184dff47a0f8773a438b07c9d03bcf4527","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/Constructor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Constructor


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variant84fdd5501df1c78696807452799bfe184dff47a0f8773a438b07c9d03bcf4527

structure Foo where
  a : Type
  x : List a

-- fconstructor
example : Foo := by
  fconstructor
  exact Nat
  exact [0,1,2]

-- econstructor
example : Foo := by
  econstructor
  exact [0,1,2]
```
