# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CancelDenoms.Variantc80a721d5285d9ad759d92f0bf02bdc4f83c5a584617eed3c8f687f42d93d8da

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c168a620477622dd2c6a87428e991c2909c05433` · SHA-256 `62562ad8417c21da8afa9a164c4bd5fdb6b828b000612fee772b9c0356c085e5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.C.Variantabb03f46f10952ddee8c62e9cba7b4c4ba4a06be4770a45fb7d157961a821f68","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"abb03f46f10952ddee8c62e9cba7b4c4ba4a06be4770a45fb7d157961a821f68","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.C.Variantabb03f46f10952ddee8c62e9cba7b4c4ba4a06be4770a45fb7d157961a821f68","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"abb03f46f10952ddee8c62e9cba7b4c4ba4a06be4770a45fb7d157961a821f68","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/test/cancel_denoms.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.CancelDenoms
import Mathlib.Tactic.Ring


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.C.Variantabb03f46f10952ddee8c62e9cba7b4c4ba4a06be4770a45fb7d157961a821f68

universe u
section
variable {α : Type u} [LinearOrderedField α] (a b c d : α)

example (h : a / 5 + b / 4 < c) : 4*a + 5*b < 20*c := by
  cancel_denoms at h
  exact h

example (h : a > 0) : a / 5 > 0 := by
  cancel_denoms
  exact h

example (h : a + b = c) : a/5 + d*(b/4) = c - 4*a/5 + b*2*d/8 - b := by
  cancel_denoms
  rw [← h]
  ring

example (h : 0 < a) : a / (3/2) > 0 := by
  cancel_denoms
  exact h

example (h : 0 < a): 0 < a / 1 := by
  cancel_denoms
  exact h

example (h : a < 0): 0 < a / -1 := by
  cancel_denoms
  exact h

example (h : -a < 2 * b): a / -2 < b := by
  cancel_denoms
  exact h

example (h : a < 6 * a) : a / 2 / 3 < a := by
  cancel_denoms
  exact h

example (h : a < 9 * a) : a / 3 / 3 < a := by
  cancel_denoms
  exact h

end

-- Some tests with a concrete type universe.
section
variable {α : Type} [LinearOrderedField α] (a b c d : α)

example (h : a / 5 + b / 4 < c) : 4*a + 5*b < 20*c := by
  cancel_denoms at h
  exact h

example (h : a > 0) : a / 5 > 0 := by
  cancel_denoms
  exact h

variable {α : Type} [Field α] [CharZero α] (a b c d : α)
example (h : a + b = c) : a/5 + d*(b/4) = c - 4*a/5 + b*2*d/8 - b := by
  cancel_denoms
  rw [← h]
  ring
end

-- Some tests with a concrete type.
section
variable (a b c d : ℚ)

example (h : a / 5 + b / 4 < c) : 4*a + 5*b < 20*c := by
  cancel_denoms at h
  exact h

example (h : a > 0) : a / 5 > 0 := by
  cancel_denoms
  exact h

example (h : a + b = c) : a/5 + d*(b/4) = c - 4*a/5 + b*2*d/8 - b := by
  cancel_denoms
  rw [← h]
  ring

example (h : 2 * (4 * a + d * 5 * b) ≠ (40 * c - 32 * a + b * 2 * 5 * d - 40 * b)) : a/5 + d*(b/4) ≠ c - 4*a/5 + b*2*d/8 - b := by
  cancel_denoms
  assumption

end

section
-- simulate the type of complex numbers
def C : Type := sorry
instance : Field C := sorry
instance : CharZero C := sorry
variable (a b c d : C)
example (h : a + b = c) : a/5 + d*(b/4) = c - 4*a/5 + b*2*d/8 - b := by
  cancel_denoms
  rw [← h]
  ring
end
```
