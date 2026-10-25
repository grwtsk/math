-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Hyperoperation.Variant1864f5a2de2a762c9d56c8e2b72edcbaebfc6d2a5a102dfa9f9023e9d683f111","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1864f5a2de2a762c9d56c8e2b72edcbaebfc6d2a5a102dfa9f9023e9d683f111","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Hyperoperation.Variant1864f5a2de2a762c9d56c8e2b72edcbaebfc6d2a5a102dfa9f9023e9d683f111","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1864f5a2de2a762c9d56c8e2b72edcbaebfc6d2a5a102dfa9f9023e9d683f111","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Data/Nat/Hyperoperation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Mark Andrew Gerads. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mark Andrew Gerads, Junyan Xu, Eric Wieser
-/
import Mathlib.Tactic.Ring
import Mathlib.Data.Nat.Parity


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Hyperoperation.Variant1864f5a2de2a762c9d56c8e2b72edcbaebfc6d2a5a102dfa9f9023e9d683f111

#align_import data.nat.hyperoperation from "leanprover-community/mathlib"@"f7fc89d5d5ff1db2d1242c7bb0e9062ce47ef47c"

/-!
# Hyperoperation sequence

This file defines the Hyperoperation sequence.
`hyperoperation 0 m k = k + 1`
`hyperoperation 1 m k = m + k`
`hyperoperation 2 m k = m * k`
`hyperoperation 3 m k = m ^ k`
`hyperoperation (n + 3) m 0 = 1`
`hyperoperation (n + 1) m (k + 1) = hyperoperation n m (hyperoperation (n + 1) m k)`

## References

* <https://en.wikipedia.org/wiki/Hyperoperation>

## Tags

hyperoperation
-/


/-- Implementation of the hyperoperation sequence
where `hyperoperation n m k` is the `n`th hyperoperation between `m` and `k`.
-/
-- porting note: termination_by was not required before port
def hyperoperation : ℕ → ℕ → ℕ → ℕ
  | 0, _, k => k + 1
  | 1, m, 0 => m
  | 2, _, 0 => 0
  | _ + 3, _, 0 => 1
  | n + 1, m, k + 1 => hyperoperation n m (hyperoperation (n + 1) m k)
  termination_by hyperoperation a b c => (a, b, c)
#align hyperoperation hyperoperation

-- Basic hyperoperation lemmas
@[simp]
theorem hyperoperation_zero (m : ℕ) : hyperoperation 0 m = Nat.succ :=
  funext fun k => by rw [hyperoperation, Nat.succ_eq_add_one]
#align hyperoperation_zero hyperoperation_zero

theorem hyperoperation_ge_three_eq_one (n m : ℕ) : hyperoperation (n + 3) m 0 = 1 := by
  rw [hyperoperation]
#align hyperoperation_ge_three_eq_one hyperoperation_ge_three_eq_one

theorem hyperoperation_recursion (n m k : ℕ) :
    hyperoperation (n + 1) m (k + 1) = hyperoperation n m (hyperoperation (n + 1) m k) := by
  rw [hyperoperation]
#align hyperoperation_recursion hyperoperation_recursion

-- Interesting hyperoperation lemmas
@[simp]
theorem hyperoperation_one : hyperoperation 1 = (· + ·) := by
  ext m k
  induction' k with bn bih
  · rw [Nat.add_zero m, hyperoperation]
  · rw [hyperoperation_recursion, bih, hyperoperation_zero]
    exact Nat.add_assoc m bn 1
#align hyperoperation_one hyperoperation_one

@[simp]
theorem hyperoperation_two : hyperoperation 2 = (· * ·) := by
  ext m k
  induction' k with bn bih
  · rw [hyperoperation]
    exact (Nat.mul_zero m).symm
  · rw [hyperoperation_recursion, hyperoperation_one, bih]
    -- porting note: was `ring`
    dsimp only
    nth_rewrite 1 [← mul_one m]
    rw [← mul_add, add_comm, Nat.succ_eq_add_one]
#align hyperoperation_two hyperoperation_two

@[simp]
theorem hyperoperation_three : hyperoperation 3 = (· ^ ·) := by
  ext m k
  induction' k with bn bih
  · rw [hyperoperation_ge_three_eq_one]
    exact (pow_zero m).symm
  · rw [hyperoperation_recursion, hyperoperation_two, bih]
    exact (pow_succ m bn).symm
#align hyperoperation_three hyperoperation_three

theorem hyperoperation_ge_two_eq_self (n m : ℕ) : hyperoperation (n + 2) m 1 = m := by
  induction' n with nn nih
  · rw [hyperoperation_two]
    ring
  · rw [hyperoperation_recursion, hyperoperation_ge_three_eq_one, nih]
#align hyperoperation_ge_two_eq_self hyperoperation_ge_two_eq_self

theorem hyperoperation_two_two_eq_four (n : ℕ) : hyperoperation (n + 1) 2 2 = 4 := by
  induction' n with nn nih
  · rw [hyperoperation_one]
  · rw [hyperoperation_recursion, hyperoperation_ge_two_eq_self, nih]
#align hyperoperation_two_two_eq_four hyperoperation_two_two_eq_four

theorem hyperoperation_ge_three_one (n : ℕ) : ∀ k : ℕ, hyperoperation (n + 3) 1 k = 1 := by
  induction' n with nn nih
  · intro k
    rw [hyperoperation_three]
    dsimp
    rw [one_pow]
  · intro k
    cases k
    · rw [hyperoperation_ge_three_eq_one]
    · rw [hyperoperation_recursion, nih]
#align hyperoperation_ge_three_one hyperoperation_ge_three_one

theorem hyperoperation_ge_four_zero (n k : ℕ) :
    hyperoperation (n + 4) 0 k = if Even k then 1 else 0 := by
  induction' k with kk kih
  · rw [hyperoperation_ge_three_eq_one]
    simp only [even_zero, if_true]
  · rw [hyperoperation_recursion]
    rw [kih]
    simp_rw [Nat.even_add_one]
    split_ifs
    · exact hyperoperation_ge_two_eq_self (n + 1) 0
    · exact hyperoperation_ge_three_eq_one n 0
#align hyperoperation_ge_four_zero hyperoperation_ge_four_zero
