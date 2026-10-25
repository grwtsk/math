# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Absurd.Variantac052906f3e747804cb8a5a750d965ab8e2c9aa898ef09889d19ecf46eb479a6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `235de355460fe286e91d1879c1e7c5eca772edc9` · SHA-256 `d841372c3e2ba2ec1f547f72c08355e27fd4503339bb4514ed187535adc29e80`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variant198ee8197b3bfc9ee3c7629d34172f457c3e14e150c29051cdfa7630b25548a7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"198ee8197b3bfc9ee3c7629d34172f457c3e14e150c29051cdfa7630b25548a7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Tactic.Variant198ee8197b3bfc9ee3c7629d34172f457c3e14e150c29051cdfa7630b25548a7","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"198ee8197b3bfc9ee3c7629d34172f457c3e14e150c29051cdfa7630b25548a7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/test/absurd.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Std.Tactic.Basic
import Std.Tactic.GuardMsgs

/-! Tests for `absurd` tactic -/

-- Basic example

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tactic.Variant198ee8197b3bfc9ee3c7629d34172f457c3e14e150c29051cdfa7630b25548a7

/--
error: unsolved goals
p : Prop
h : p
⊢ ¬p
-/
#guard_msgs in
example {p : Prop} (h : p) : 0 = 0 := by
  absurd h

-- Negative example
/--
error: unsolved goals
p : Prop
h : ¬p
⊢ p
-/
#guard_msgs in
example {p : Prop} (h : ¬p) : 0 = 1 := by
  absurd h

-- Inequality example
/--
error: unsolved goals
n : Nat
h : n ≠ 0
⊢ n = 0
-/
#guard_msgs in
example (h : n ≠ 0) : 0 = 2 := by
  absurd h

-- Example with implies false
/--
error: unsolved goals
p : Prop
h : p → False
⊢ p
-/
#guard_msgs in
example (h : p → False) : 0 = 3 := by
  absurd h
```
