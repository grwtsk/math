# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeftRight.Variant95e5f4ed71b967c38e8b1468d1a8c62124a5f4a09e2b913a0e87b306cc6ec349

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `516571ec9ee5995ffbd83af5ac926ae43c3f5e38` · SHA-256 `e4e9495d3594423d2c88dd0e77d846c6b3183929335277130e9a50f9e961c975`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Zero.Varianta8c8a1af204f48a27e4e1c457a6b7f9fb47d9cbbd78830b1a38856465173b9ff","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a8c8a1af204f48a27e4e1c457a6b7f9fb47d9cbbd78830b1a38856465173b9ff","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Zero.Varianta8c8a1af204f48a27e4e1c457a6b7f9fb47d9cbbd78830b1a38856465173b9ff","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a8c8a1af204f48a27e4e1c457a6b7f9fb47d9cbbd78830b1a38856465173b9ff","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/test/left_right.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.LeftRight


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Zero.Varianta8c8a1af204f48a27e4e1c457a6b7f9fb47d9cbbd78830b1a38856465173b9ff

def zero : Nat := by
  left

#eval zero -- 0

def two : Nat := by
  right
  exact 1

#eval two -- 2

example : Sum Nat (List Nat) := by
  left
  exact zero

example : Sum Nat (List Nat) := by
  right
  exact [0]

example : (1 = 1) ∨ (2 = 3) := by
  left
  rfl

example : (1 = 2) ∨ (3 = 3) := by
  right
  rfl
```
