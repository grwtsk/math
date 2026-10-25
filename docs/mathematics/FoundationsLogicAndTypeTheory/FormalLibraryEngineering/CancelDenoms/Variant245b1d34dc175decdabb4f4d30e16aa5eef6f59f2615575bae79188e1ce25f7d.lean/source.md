# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CancelDenoms.Variant245b1d34dc175decdabb4f4d30e16aa5eef6f59f2615575bae79188e1ce25f7d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dcce78a09fe05f9e3152d123fa7e074d67db61ad` · SHA-256 `7b2a14d09c61de9822e06c66b554e39c83c49ae0ef2cd9103365a087fcd64488`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestSorry.Variant105d6b8380461e6c3679cb168413769055b034ba31f4abc81e0f5c6751d1d1ed","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"105d6b8380461e6c3679cb168413769055b034ba31f4abc81e0f5c6751d1d1ed","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.TestSorry.Variant105d6b8380461e6c3679cb168413769055b034ba31f4abc81e0f5c6751d1d1ed","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"105d6b8380461e6c3679cb168413769055b034ba31f4abc81e0f5c6751d1d1ed","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/cancel_denoms.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.Order.Field.Rat
import Mathlib.Tactic.CancelDenoms
import Mathlib.Tactic.Ring


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestSorry.Variant105d6b8380461e6c3679cb168413769055b034ba31f4abc81e0f5c6751d1d1ed

private axiom test_sorry : ∀ {α}, α
universe u
section
variable {α : Type u} [Field α] [LinearOrder α] [IsStrictOrderedRing α] (a b c d : α)

-- prior to https://github.com/leanprover-community/mathlib4/pull/12083, `cancel_denoms` would not make progress on this
example : ¬ (4 / 2 : ℚ) = 3 := by cancel_denoms

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
variable {α : Type} [Field α] [LinearOrder α] [IsStrictOrderedRing α] (a b c d : α)

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

-- inspired by automated testing
example : (1 : ℚ) > 0 := by
  have := 0
  cancel_denoms

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

example (h : 2 * (4 * a + d * 5 * b) ≠ (40 * c - 32 * a + b * 2 * 5 * d - 40 * b)) :
    a/5 + d*(b/4) ≠ c - 4*a/5 + b*2*d/8 - b := by
  cancel_denoms
  assumption

example (h : 27 ≤ (a + 3) ^ 3) : 1 ≤ (a / 3 + 1) ^ 3 := by
  cancel_denoms
  assumption

example (h : a > 2) : 1 < 2⁻¹ * a := by
  cancel_denoms
  assumption

example (h : 6 * b = a⁻¹ * 3 + c * 2): b = a⁻¹ * 2⁻¹ + c * 3⁻¹ := by
  cancel_denoms
  assumption

example (h : a * 5 + b * 6 = 30 * c) : a * 2⁻¹ * 3⁻¹ + b * 5⁻¹ = c := by
  cancel_denoms
  assumption

example (h : 5 * a ^ 2 + 4 * b ^ 3 = 0) : a ^ 2 / 4 + b ^ 3 / 5 = 0 := by
  cancel_denoms
  assumption

example (h : 5 * a ^ 3 * b ^ 2 = 72 * c) : (a / 2) ^ 3 * (b / 3) ^ 2 = c / 5 := by
  cancel_denoms
  assumption

example (h : (5 * a ^ 3 + 8) ^ 2 = 1600 * c) : ((a / 2) ^ 3 + 1 / 5) ^ 2 = c := by
  cancel_denoms
  assumption

end

section
-- simulate the type of complex numbers
def C : Type := test_sorry
noncomputable instance : Field C := test_sorry
instance : CharZero C := test_sorry
variable (a b c d : C)
example (h : a + b = c) : a/5 + d*(b/4) = c - 4*a/5 + b*2*d/8 - b := by
  cancel_denoms
  rw [← h]
  ring
end
```
