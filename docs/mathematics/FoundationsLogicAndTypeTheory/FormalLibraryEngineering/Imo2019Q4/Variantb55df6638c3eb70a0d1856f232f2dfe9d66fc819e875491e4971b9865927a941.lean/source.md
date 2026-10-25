# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Imo2019Q4.Variantb55df6638c3eb70a0d1856f232f2dfe9d66fc819e875491e4971b9865927a941

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eeac1b7c69e64586849c16031849c37ad5fbbd2e` · SHA-256 `877dfc7927b321e96bb1dadfad4dae6fca80253781280fda14ad87376260e78b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UpperBound.Variantf954b65dd5b22489f1ec3d743e8780de930a435bd3201e816ec23a0f22716a3c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f954b65dd5b22489f1ec3d743e8780de930a435bd3201e816ec23a0f22716a3c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.UpperBound.Variantf954b65dd5b22489f1ec3d743e8780de930a435bd3201e816ec23a0f22716a3c","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"f954b65dd5b22489f1ec3d743e8780de930a435bd3201e816ec23a0f22716a3c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Archive/Imo/Imo2019Q4.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn
-/
import Mathlib.Tactic.IntervalCases
import Mathlib.Algebra.BigOperators.Order
import Mathlib.Data.Nat.Multiplicity
import Mathlib.Tactic.GCongr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.UpperBound.Variantf954b65dd5b22489f1ec3d743e8780de930a435bd3201e816ec23a0f22716a3c

#align_import imo.imo2019_q4 from "leanprover-community/mathlib"@"308826471968962c6b59c7ff82a22757386603e3"

/-!
# IMO 2019 Q4

Find all pairs `(k, n)` of positive integers such that
```
  k! = (2 ^ n - 1)(2 ^ n - 2)(2 ^ n - 4)···(2 ^ n - 2 ^ (n - 1))
```
We show in this file that this property holds iff `(k, n) = (1, 1) ∨ (k, n) = (3, 2)`.

Proof sketch:
The idea of the proof is to count the factors of 2 on both sides. The LHS has less than `k` factors
of 2, and the RHS has exactly `n * (n - 1) / 2` factors of 2. So we know that `n * (n - 1) / 2 < k`.
Now for `n ≥ 6` we have `RHS < 2 ^ (n ^ 2) < (n(n-1)/2)! < k!`. We then treat the cases `n < 6`
individually.
-/


open scoped Nat BigOperators

local macro_rules | `($x ^ $y) => `(HPow.hPow $x $y) -- Porting note: See issue lean4#2220

open Nat hiding zero_le Prime

open Finset multiplicity

namespace Imo2019Q4

theorem upper_bound {k n : ℕ} (hk : k > 0)
    (h : (k ! : ℤ) = ∏ i in range n, ((2:ℤ) ^ n - (2:ℤ) ^ i)) : n < 6 := by
  have h2 : ∑ i in range n, i < k
  · suffices multiplicity 2 (k ! : ℤ) = ↑(∑ i in range n, i : ℕ) by
      rw [← PartENat.coe_lt_coe, ← this]; change multiplicity ((2 : ℕ) : ℤ) _ < _
      simp_rw [Int.coe_nat_multiplicity, multiplicity_two_factorial_lt hk.lt.ne.symm]
    rw [h, multiplicity.Finset.prod Int.prime_two, Nat.cast_sum]
    apply sum_congr rfl; intro i hi
    rw [multiplicity_sub_of_gt, multiplicity_pow_self_of_prime Int.prime_two]
    rwa [multiplicity_pow_self_of_prime Int.prime_two, multiplicity_pow_self_of_prime Int.prime_two,
      PartENat.coe_lt_coe, ← mem_range]
  rw [← not_le]; intro hn
  apply _root_.ne_of_gt _ h
  calc ∏ i in range n, ((2:ℤ) ^ n - (2:ℤ) ^ i) ≤ ∏ __ in range n, (2:ℤ) ^ n := ?_
    _ < ↑ k ! := ?_
  · gcongr
    · intro i hi
      simp only [mem_range] at hi
      have : (2:ℤ) ^ i ≤ (2:ℤ) ^ n := by gcongr; norm_num
      linarith
    · apply sub_le_self
      positivity
  norm_cast
  calc ∏ __ in range n, 2 ^ n = 2 ^ (n * n) := by rw [prod_const, card_range, ← pow_mul]
    _ < (∑ i in range n, i)! := ?_
    _ ≤ k ! := by gcongr
  clear h h2
  induction' n, hn using Nat.le_induction with n' hn' IH
  · norm_num
  let A := ∑ i in range n', i
  have le_sum : ∑ i in range 6, i ≤ A
  · apply sum_le_sum_of_subset
    simpa using hn'
  calc 2 ^ ((n' + 1) * (n' + 1))
      ≤ 2 ^ (n' * n' + 4 * n') := by gcongr <;> linarith
    _ = 2 ^ (n' * n') * (2 ^ 4) ^ n' := by rw [← pow_mul, ← pow_add]
    _ < A ! * (2 ^ 4) ^ n' := by gcongr
    _ = A ! * (15 + 1) ^ n' := rfl
    _ ≤ A ! * (A + 1) ^ n' := by gcongr; exact le_sum
    _ ≤ (A + n')! := factorial_mul_pow_le_factorial
    _ = (∑ i in range (n' + 1), i)! := by rw [sum_range_succ]
#align imo2019_q4.upper_bound Imo2019Q4.upper_bound

end Imo2019Q4

theorem imo2019_q4 {k n : ℕ} (hk : k > 0) (hn : n > 0) :
    (k ! : ℤ) = ∏ i in range n, ((2:ℤ) ^ n - (2:ℤ) ^ i) ↔ (k, n) = (1, 1) ∨ (k, n) = (3, 2) := by
  -- The implication `←` holds.
  constructor
  swap
  · rintro (h | h) <;> simp [Prod.ext_iff] at h <;> rcases h with ⟨rfl, rfl⟩ <;>
    norm_num [prod_range_succ, succ_mul]
  intro h
  -- We know that n < 6.
  have := Imo2019Q4.upper_bound hk h
  interval_cases n
  -- n = 1
  · left; congr; norm_num at h; rw [factorial_eq_one] at h; apply antisymm h
    apply succ_le_of_lt hk
  -- n = 2
  · right; congr; norm_num [prod_range_succ] at h; norm_cast at h; rw [← factorial_inj]
    exact h; rw [h]; norm_num
  all_goals exfalso; norm_num [prod_range_succ] at h; norm_cast at h
  -- n = 3
  · refine' monotone_factorial.ne_of_lt_of_lt_nat 5 _ _ _ h <;> norm_num
  -- n = 4
  · refine' monotone_factorial.ne_of_lt_of_lt_nat 7 _ _ _ h <;> norm_num
  -- n = 5
  · refine' monotone_factorial.ne_of_lt_of_lt_nat 10 _ _ _ h <;> norm_num
#align imo2019_q4 imo2019_q4
````
