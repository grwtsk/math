# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FailIfNoProgress.Variantb734f70f382d3d6e6ed4ce9d373afea7cd86353f679c91a99e6cfe84bba815c0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `98b9d193e0f17125afe8c2bcabd3a5c6c1544d94` · SHA-256 `8fc486fb034d4bb6d9b331c9202af584c931e90df8eed64d48546dec1a157fec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FailIfNoProgress.Varianta39b237cfc228bbb9e3b0af3952db2671d121323d779bb2ebe51c3764ac4098d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a39b237cfc228bbb9e3b0af3952db2671d121323d779bb2ebe51c3764ac4098d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.FailIfNoProgress.Varianta39b237cfc228bbb9e3b0af3952db2671d121323d779bb2ebe51c3764ac4098d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a39b237cfc228bbb9e3b0af3952db2671d121323d779bb2ebe51c3764ac4098d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/test/fail_if_no_progress.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.FailIfNoProgress


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FailIfNoProgress.Varianta39b237cfc228bbb9e3b0af3952db2671d121323d779bb2ebe51c3764ac4098d

section success

example : 1 = 1 := by fail_if_no_progress rfl
example (h : 1 = 1) : True := by
  fail_if_no_progress simp at h
  trivial

end success

section failure

example (x : Bool) (h : x = true) : x = true := by
  fail_if_success
    fail_if_no_progress simp
  exact h


example (x : Bool) (h : x = true) : True := by
  fail_if_success
    fail_if_no_progress simp at h
  trivial

end failure
```
