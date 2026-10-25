# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeftRight.Variante878e1a3b7e3f5f8b77bb084afadf8da0073204cc952ca82f4a4d9d8f9fe7d2f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6e0b5e4103e7d6b57223e5f130134573eae64bc1` · SHA-256 `32885b7337b1b06d0ae0af32c39dac7f4c19cdaa26b526f1af5731bccc7eaa61`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.F.Variantdace6f5c63a4327026220232e5e1a097b9a6e979173a9a13d32a7857e84164a4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dace6f5c63a4327026220232e5e1a097b9a6e979173a9a13d32a7857e84164a4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.F.Variantdace6f5c63a4327026220232e5e1a097b9a6e979173a9a13d32a7857e84164a4","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"dace6f5c63a4327026220232e5e1a097b9a6e979173a9a13d32a7857e84164a4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/August/-/spectral-proof-exe/.lake/packages/std/test/left_right.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Std.Tactic.LeftRight
import Std.Tactic.GuardMsgs


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.F.Variantdace6f5c63a4327026220232e5e1a097b9a6e979173a9a13d32a7857e84164a4

/-- Construct a natural number using `left`. -/
def zero : Nat := by
  left

example : zero = 0 := rfl

/-- Construct a natural number using `right`. -/
def two : Nat := by
  right
  exact 1

example : two = 2 := rfl

set_option linter.missingDocs false

/--
error: tactic 'constructor' failed,
left tactic works for inductive types with exactly 2 constructors
⊢ Unit
-/
#guard_msgs in
example : Unit := by
  left

inductive F
| a | b | c

/--
error: tactic 'constructor' failed,
left tactic works for inductive types with exactly 2 constructors
⊢ F
-/
#guard_msgs in
example : F := by
  left

def G := Nat

/-- Look through definitions. -/
example : G := by
  left

/--
error: tactic 'constructor' failed, target is not an inductive datatype
⊢ Type
-/
#guard_msgs in
example : Type := by
  left

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
