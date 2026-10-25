# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GuardMsgs.Variant959bc6daba4412fb8fb14099b1dd47dbc2db0e1b94db8074e911fb2c058cfc25

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c9f637fb19cb43aa3bc881dd635f363b6ef4a32f` · SHA-256 `66c19cff3346ae0dec5232027f0238b9ebb68df916cf03b595a87b22708c6e86`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GuardMsgs.Variantedad5189cb5aefeae3565dc3913c783c2e4b835de0f9dacc0cdca327d2c05791","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"edad5189cb5aefeae3565dc3913c783c2e4b835de0f9dacc0cdca327d2c05791","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.GuardMsgs.Variantedad5189cb5aefeae3565dc3913c783c2e4b835de0f9dacc0cdca327d2c05791","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"edad5189cb5aefeae3565dc3913c783c2e4b835de0f9dacc0cdca327d2c05791","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/test/guard_msgs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Std.Tactic.GuardMsgs


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GuardMsgs.Variantedad5189cb5aefeae3565dc3913c783c2e4b835de0f9dacc0cdca327d2c05791

#guard_msgs in
/-- error: unknown identifier 'x' -/
#guard_msgs in
example : α := x

/--
error: unknown identifier 'x'
---
error: ❌ Docstring on `#guard_msgs` does not match generated message:

error: unknown identifier 'x'
-/
#guard_msgs in
#guard_msgs in
example : α := x

#guard_msgs in
/-- warning: declaration uses 'sorry' -/
#guard_msgs in
example : α := sorry

#guard_msgs in
/-- warning: declaration uses 'sorry' -/
#guard_msgs(warning) in
example : α := sorry

/-- warning: declaration uses 'sorry' -/
#guard_msgs in
#guard_msgs(error) in
example : α := sorry

#guard_msgs in
#guard_msgs(drop warning) in
example : α := sorry

#guard_msgs in
#guard_msgs(error, drop warning) in
example : α := sorry

#guard_msgs in
/-- error: unknown identifier 'x' -/
#guard_msgs(error, drop warning) in
example : α := x

#guard_msgs in
/--
error: failed to synthesize instance
  OfNat α 22
-/
#guard_msgs(error) in
example : α := 22
```
