# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LintDocBlame.Variantc3d876298dc697b20c5d353af57fb904a2ff24fc3811775f1c5d6eac9a36b912

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `04da23e5ba8012ac7df4647e5510f900755a2fdb` · SHA-256 `59b62db2d6cf7dbac7e9a524ef437abbec6b91117eaf68af9e34115d368a516e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AtLeastThirtySeven.Variant7a0a5b8482a5a550e5773a039497474564b5c2f6d2ed8d4da23b6f456b00f2e0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7a0a5b8482a5a550e5773a039497474564b5c2f6d2ed8d4da23b6f456b00f2e0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.AtLeastThirtySeven.Variant7a0a5b8482a5a550e5773a039497474564b5c2f6d2ed8d4da23b6f456b00f2e0","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"7a0a5b8482a5a550e5773a039497474564b5c2f6d2ed8d4da23b6f456b00f2e0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/lint_docBlame.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

import Batteries.Tactic.Lint


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AtLeastThirtySeven.Variant7a0a5b8482a5a550e5773a039497474564b5c2f6d2ed8d4da23b6f456b00f2e0

set_option linter.missingDocs false

public section

-- A docstring is needed here
structure AtLeastThirtySeven where
  -- and here
  val : Nat := 1
  -- but not here
  prop : 37 ≤ val

-- or here (due to being a theorem)
theorem AtLeastThirtySeven.lt (x : AtLeastThirtySeven) : 36 < x.val := x.prop

def foo_bad := 3 -- Needs a docstring
private def foo_ok := 7 -- Doesn't (due to being private)

/--
error: /- The `docBlame` linter reports:
DEFINITIONS ARE MISSING DOCUMENTATION STRINGS:
This linter can be disabled with `@[nolint docBlame]`. -/
#check AtLeastThirtySeven /- inductive missing documentation string -/
#check AtLeastThirtySeven.val /- definition missing documentation string -/
#check foo_bad /- definition missing documentation string -/
-/
#guard_msgs in
#lint- only docBlame
```
