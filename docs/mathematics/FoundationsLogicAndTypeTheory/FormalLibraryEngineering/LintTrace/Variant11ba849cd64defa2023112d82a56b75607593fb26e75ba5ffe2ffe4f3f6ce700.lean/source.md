# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LintTrace.Variant11ba849cd64defa2023112d82a56b75607593fb26e75ba5ffe2ffe4f3f6ce700

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cc18d3955f76d70796b4c9aa7ec6c1bcd96097d6` · SHA-256 `3507feddcbd535b6d57f2f207b2d99d5ecd0b0fb087553fc1eaf4a5a9f1e4e0f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variant97fafde26e371803c74d97592af5d118aa323cd950d7c00029dc1bb4baef25c5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"97fafde26e371803c74d97592af5d118aa323cd950d7c00029dc1bb4baef25c5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Foo.Variant97fafde26e371803c74d97592af5d118aa323cd950d7c00029dc1bb4baef25c5","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"97fafde26e371803c74d97592af5d118aa323cd950d7c00029dc1bb4baef25c5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/lintTrace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Batteries.Tactic.Lint

/-!
Tests tracing in `#lint`.

Note that this does not test tracing in `runLinter` per se.
-/

-- oops, no docstring

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variant97fafde26e371803c74d97592af5d118aa323cd950d7c00029dc1bb4baef25c5

def foo := 3

theorem bar : foo = 3 := rfl

set_option trace.Batteries.Lint true

/--
trace: [Batteries.Lint] Running linters:
      docBlame
[Batteries.Lint] - docBlame: (0/2) Starting...
[Batteries.Lint] - docBlame: (1/2) Getting...
[Batteries.Lint] - docBlame: (2/2) Failed with 1 messages.
[Batteries.Lint] Completed linting!
-/
#guard_msgs (trace, drop error) in
#lint- only docBlame

/--
trace: [Batteries.Lint] Running linters:
      unusedHavesSuffices
[Batteries.Lint] - unusedHavesSuffices: (0/2) Starting...
[Batteries.Lint] - unusedHavesSuffices: (1/2) Getting...
[Batteries.Lint] - unusedHavesSuffices: (2/2) Passed!
[Batteries.Lint] Completed linting!
-/
#guard_msgs in
#lint- only unusedHavesSuffices
```
