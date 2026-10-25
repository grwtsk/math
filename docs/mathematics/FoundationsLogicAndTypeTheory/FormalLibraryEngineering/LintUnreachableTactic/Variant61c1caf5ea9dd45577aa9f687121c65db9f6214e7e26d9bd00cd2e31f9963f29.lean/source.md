# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LintUnreachableTactic.Variant61c1caf5ea9dd45577aa9f687121c65db9f6214e7e26d9bd00cd2e31f9963f29

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6548006474cb07683f7489cb512deca5512a7c7e` · SHA-256 `c0cbed325a52976a5354c7c6e66d554641eaab911b5885be35e22ed308357b4f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.T.Variantd72ef4afd518066bf26444b83d36ef37355c1307446bb82c9b5fdf591645a5d9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d72ef4afd518066bf26444b83d36ef37355c1307446bb82c9b5fdf591645a5d9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.T.Variantd72ef4afd518066bf26444b83d36ef37355c1307446bb82c9b5fdf591645a5d9","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"d72ef4afd518066bf26444b83d36ef37355c1307446bb82c9b5fdf591645a5d9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/test/lint_unreachableTactic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Std.Linter.UnreachableTactic
import Std.Tactic.GuardMsgs


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.T.Variantd72ef4afd518066bf26444b83d36ef37355c1307446bb82c9b5fdf591645a5d9

/-- warning: this tactic is never executed [linter.unreachableTactic] -/
#guard_msgs in
example : 1 = 1 := by
  rfl <;> simp

/--
warning: declaration uses 'sorry'
-/
#guard_msgs in
example : 1 = 1 := by
  stop
  rfl

def t : Nat → Nat := sorry
@[simp]
theorem a : aa = 0 → t aa = 0 := sorry

#guard_msgs in
example (ha : aa = 0) : t aa = 0 := by
  simp (disch := assumption)
```
