# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UnusedTactic.Variant4e7626acec9de214fce40dcca78c3b889034d44676482499b50c6ae286e431b8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `604b8305c07b11ea33c86b274be577b3e2a08ca9` · SHA-256 `2836e364d222977bf606ff0888ff0f2f6a2ef566c66a6e45a9046b37a82d3ae4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Why2.Variant004827ea0597e93cc2bde7c314ea49144d8d6d88dca48eccbac490de6448d669","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"004827ea0597e93cc2bde7c314ea49144d8d6d88dca48eccbac490de6448d669","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Why2.Variant004827ea0597e93cc2bde7c314ea49144d8d6d88dca48eccbac490de6448d669","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"004827ea0597e93cc2bde7c314ea49144d8d6d88dca48eccbac490de6448d669","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/UnusedTactic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Linter.UnusedTactic
import Mathlib.Tactic.AdaptationNote


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Why2.Variant004827ea0597e93cc2bde7c314ea49144d8d6d88dca48eccbac490de6448d669

example (h : 0 + 1 = 0) : False := by
  change 1 = 0 at h
  simp at h

example : 0 + 1 = 1 := by
  change 1 = 1
  rfl

/--
warning: 'change 1 = 1' tactic does nothing
note: this linter can be disabled with `set_option linter.unusedTactic false`
-/
#guard_msgs in
example : 1 = 1 := by
  change 1 = 1
  rfl

def why2 : True → True := (by refine ·)

example : True := by
  #adaptation_note /-- hi -/
  exact .intro

-- both `;` and `<;>` are unseen by the linter
example : True ∧ True := by
  constructor <;> trivial;

set_option linter.unusedTactic true
/--
warning: 'congr' tactic does nothing
note: this linter can be disabled with `set_option linter.unusedTactic false`
---
warning: 'done' tactic does nothing
note: this linter can be disabled with `set_option linter.unusedTactic false`
-/
#guard_msgs in
-- the linter notices that `congr` is unused
example : True := by
  congr
  constructor
  done

section allowing_more_unused_tactics

/-- info: The `SyntaxNodeKind` is 'Lean.Parser.Tactic.refine'. -/
#guard_msgs in
#show_kind refine _

/-- info: The `SyntaxNodeKind` is 'Lean.Parser.Tactic.skip'. -/
#guard_msgs in
#show_kind skip

/--
error: unknown constant 'skip'
The command `#show_kind skip` may help to find the correct `SyntaxNodeKind`.
-/
#guard_msgs in
#allow_unused_tactic rfl skip

--  test that allowing more unused tactics has the desired effect of silencing the linter
#allow_unused_tactic Lean.Parser.Tactic.done Lean.Parser.Tactic.skip

#guard_msgs in
example : True := by
  skip
  constructor
  done

end allowing_more_unused_tactics
```
