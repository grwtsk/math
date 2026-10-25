# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SeqFocus.Variant476179d5276114ed5e9f6bde70e017be9d60a9eeaaa015cc69aaa92d9c3f6a48

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2627376bc482ed95ec7569b6ba3348a7abc91344` · SHA-256 `813abf8cdbfd4f5e4b2f6febf100c4deb75c1cbaa1262bc3276fe37503152f7e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SeqFocus.Variant10e567ad5a3594c3d5889f9932eaf836a92cd64cc3897fe166b50abad0af465e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"10e567ad5a3594c3d5889f9932eaf836a92cd64cc3897fe166b50abad0af465e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.SeqFocus.Variant10e567ad5a3594c3d5889f9932eaf836a92cd64cc3897fe166b50abad0af465e","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"10e567ad5a3594c3d5889f9932eaf836a92cd64cc3897fe166b50abad0af465e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/test/seq_focus.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Std.Tactic.SeqFocus


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SeqFocus.Variant10e567ad5a3594c3d5889f9932eaf836a92cd64cc3897fe166b50abad0af465e

example : (True ∧ (∃ x : Nat, x = x)) ∧ True := by
  constructor
  constructor
  -- error: too many tactics
  fail_if_success map_tacs [trivial; exact ⟨0, rfl⟩; trivial; trivial]
  -- error: not enough tactics
  fail_if_success map_tacs [trivial; exact ⟨0, rfl⟩]
  map_tacs [trivial; exact ⟨0, rfl⟩; trivial]

example : ((True ∧ True) ∧ (∃ x : Nat, x = x)) ∧ (True ∧ (∃ x : Nat, x = x)) := by
  constructor
  constructor
  map_tacs [(constructor; trivial); exact ⟨0, rfl⟩; constructor]
  trivial
  trivial
  exact ⟨0, rfl⟩

example : (True ∧ (∃ x : Nat, x = x)) ∧ True := by
  constructor
  -- error: not enough tactics
  fail_if_success constructor <;> [trivial]
  map_tacs [constructor <;> [trivial; exact ⟨0, rfl⟩]; constructor]
```
