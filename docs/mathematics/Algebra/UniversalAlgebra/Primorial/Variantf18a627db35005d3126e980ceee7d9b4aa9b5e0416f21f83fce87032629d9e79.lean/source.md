# Complete source: GRWTSK.Algebra.UniversalAlgebra.Primorial.Variantf18a627db35005d3126e980ceee7d9b4aa9b5e0416f21f83fce87032629d9e79

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7bfc07db4e12ad867c53121a791282438a2e332d` · SHA-256 `5b9a36494521957232a9364ccb38aa817272d8d1fb554d66742b19f4a383562d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Primorial.Variantd5fdcd63e5932381ded113c3ca6621bea0704d0f5e40e71030cb71105f97d589","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d5fdcd63e5932381ded113c3ca6621bea0704d0f5e40e71030cb71105f97d589","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Primorial.Variantd5fdcd63e5932381ded113c3ca6621bea0704d0f5e40e71030cb71105f97d589","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"d5fdcd63e5932381ded113c3ca6621bea0704d0f5e40e71030cb71105f97d589","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/NumberTheory/Primorial.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Patrick Stevens. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Patrick Stevens, Yury Kudryashov
-/
import Mathlib.Algebra.BigOperators.Associated
import Mathlib.Algebra.Order.BigOperators.Ring.Finset
import Mathlib.Algebra.Order.Ring.Abs
import Mathlib.Data.Nat.Choose.Sum
import Mathlib.Data.Nat.Choose.Dvd
import Mathlib.Data.Nat.Prime.Basic

/-!
# Primorial

This file defines the primorial function (the product of primes less than or equal to some bound),
and proves that `primorial n ≤ 4 ^ n`.

## Notations

We use the local notation `n#` for the primorial of `n`: that is, the product of the primes less
than or equal to `n`.
-/



namespace GRWTSK.Algebra.UniversalAlgebra.Primorial.Variantd5fdcd63e5932381ded113c3ca6621bea0704d0f5e40e71030cb71105f97d589

open Finset

open Nat

/-- The primorial `n#` of `n` is the product of the primes less than or equal to `n`.
-/
def primorial (n : ℕ) : ℕ := ∏ p ∈ range (n + 1) with p.Prime, p

local notation x "#" => primorial x

theorem primorial_pos (n : ℕ) : 0 < n# :=
  prod_pos fun _p hp ↦ (mem_filter.1 hp).2.pos

theorem primorial_succ {n : ℕ} (hn1 : n ≠ 1) (hn : Odd n) : (n + 1)# = n# := by
  refine prod_congr ?_ fun _ _ ↦ rfl
  rw [range_succ, filter_insert, if_neg fun h ↦ not_even_iff_odd.2 hn _]
  exact fun h ↦ h.even_sub_one <| mt succ.inj hn1

theorem primorial_add (m n : ℕ) :
    (m + n)# = m# * ∏ p ∈ Ico (m + 1) (m + n + 1) with p.Prime, p := by
  rw [primorial, primorial, ← Ico_zero_eq_range, ← prod_union, ← filter_union, Ico_union_Ico_eq_Ico]
  exacts [Nat.zero_le _, add_le_add_right (Nat.le_add_right _ _) _,
    disjoint_filter_filter <| Ico_disjoint_Ico_consecutive _ _ _]

theorem primorial_add_dvd {m n : ℕ} (h : n ≤ m) : (m + n)# ∣ m# * choose (m + n) m :=
  calc
    (m + n)# = m# * ∏ p ∈ Ico (m + 1) (m + n + 1) with p.Prime, p := primorial_add _ _
    _ ∣ m# * choose (m + n) m :=
      mul_dvd_mul_left _ <|
        prod_primes_dvd _ (fun _ hk ↦ (mem_filter.1 hk).2.prime) fun p hp ↦ by
          rw [mem_filter, mem_Ico] at hp
          exact hp.2.dvd_choose_add hp.1.1 (h.trans_lt (m.lt_succ_self.trans_le hp.1.1))
              (Nat.lt_succ_iff.1 hp.1.2)

theorem primorial_add_le {m n : ℕ} (h : n ≤ m) : (m + n)# ≤ m# * choose (m + n) m :=
  le_of_dvd (mul_pos (primorial_pos _) (choose_pos <| Nat.le_add_right _ _)) (primorial_add_dvd h)

theorem primorial_le_4_pow (n : ℕ) : n# ≤ 4 ^ n := by
  induction n using Nat.strong_induction_on with | h n ihn =>
  rcases n with - | n; · rfl
  rcases n.even_or_odd with (⟨m, rfl⟩ | ho)
  · rcases m.eq_zero_or_pos with (rfl | hm)
    · decide
    calc
      (m + m + 1)# = (m + 1 + m)# := by rw [add_right_comm]
      _ ≤ (m + 1)# * choose (m + 1 + m) (m + 1) := primorial_add_le m.le_succ
      _ = (m + 1)# * choose (2 * m + 1) m := by rw [choose_symm_add, two_mul, add_right_comm]
      _ ≤ 4 ^ (m + 1) * 4 ^ m :=
        mul_le_mul' (ihn _ <| succ_lt_succ <| (lt_add_iff_pos_left _).2 hm) (choose_middle_le_pow _)
      _ ≤ 4 ^ (m + m + 1) := by rw [← pow_add, add_right_comm]
  · rcases Decidable.eq_or_ne n 1 with (rfl | hn)
    · decide
    · calc
        (n + 1)# = n# := primorial_succ hn ho
        _ ≤ 4 ^ n := ihn n n.lt_succ_self
        _ ≤ 4 ^ (n + 1) := Nat.pow_le_pow_right four_pos n.le_succ
```
