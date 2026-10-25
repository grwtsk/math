# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpTrace.Variantd09a3e751ddfc39986cab7d368886756ac04cde7bac168332411310d5730a313

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cc406c254dad9b76b540bc78e0cc96638e4b1040` · SHA-256 `065ac7fdb953536853ea76b976f476615dee2da199ce8827c5075c61acbd4668`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SqueezeScope.Variantab59b49eb98e931ffa8b55960b35b7bc447604c9b93a795c5c380fffef684a95","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ab59b49eb98e931ffa8b55960b35b7bc447604c9b93a795c5c380fffef684a95","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.SqueezeScope.Variantab59b49eb98e931ffa8b55960b35b7bc447604c9b93a795c5c380fffef684a95","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"ab59b49eb98e931ffa8b55960b35b7bc447604c9b93a795c5c380fffef684a95","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/test/simp_trace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Std.Tactic.SqueezeScope


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SqueezeScope.Variantab59b49eb98e931ffa8b55960b35b7bc447604c9b93a795c5c380fffef684a95

set_option linter.missingDocs false

example : x + 1 = 1 + x := by simp? [Nat.add_comm, Nat.mul_comm]
example : 1 + 1 = 2 := by dsimp?

@[simp] def bar (z : Nat) := 1 + z
@[simp] def baz (z : Nat) := 1 + z

@[simp] def foo : Nat → Nat → Nat
  | 0, z => bar z
  | _+1, z => baz z

example : foo x y = 1 + y := by
  cases x <;> simp? -- two printouts:
  -- "Try this: simp only [foo, bar]"
  -- "Try this: simp only [foo, baz]"

example : foo x y = 1 + y := by
  squeeze_scope
    cases x <;> simp -- only one printout: "Try this: simp only [foo, baz, bar]"
```
