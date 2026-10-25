# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ModCases.Variant7f32100cedc82d5b5b3d920ebcb34e472ec725e85ff39709684f26db102883ae

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e1bcbb11739b80e3945f96978ad6b1287d6e9326` · SHA-256 `cc07da6829abaefac67eb9487d8c6876f4911d0cbe67ec5ba1ac01e5c8c2ca4a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ModCases.Variant61e565d79b8e26c57d021381c125393514abcf49e394c5a157dafc6c1eab86b6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"61e565d79b8e26c57d021381c125393514abcf49e394c5a157dafc6c1eab86b6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ModCases.Variant61e565d79b8e26c57d021381c125393514abcf49e394c5a157dafc6c1eab86b6","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"61e565d79b8e26c57d021381c125393514abcf49e394c5a157dafc6c1eab86b6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/test/mod_cases.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.ModCases


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ModCases.Variant61e565d79b8e26c57d021381c125393514abcf49e394c5a157dafc6c1eab86b6

example (n : ℤ) : 3 ∣ n ^ 3 - n := by
  mod_cases n % 3
  · guard_hyp H :ₛ n ≡ 0 [ZMOD 3]; guard_target = 3 ∣ n ^ 3 - n; sorry
  · guard_hyp H :ₛ n ≡ 1 [ZMOD 3]; guard_target = 3 ∣ n ^ 3 - n; sorry
  · guard_hyp H :ₛ n ≡ 2 [ZMOD 3]; guard_target = 3 ∣ n ^ 3 - n; sorry

-- test case for https://github.com/leanprover-community/mathlib4/issues/1851
example (n : ℕ) (z : ℤ) : n = n := by
  induction n with
  | zero => rfl
  | succ n ih =>
     mod_cases h : z % 2
     · sorry
     · sorry
```
