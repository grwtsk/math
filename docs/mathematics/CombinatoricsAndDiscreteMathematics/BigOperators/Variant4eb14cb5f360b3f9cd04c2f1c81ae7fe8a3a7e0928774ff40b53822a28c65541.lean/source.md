# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.BigOperators.Variant4eb14cb5f360b3f9cd04c2f1c81ae7fe8a3a7e0928774ff40b53822a28c65541

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6e341dc41e93dcfc2bbc04b439d79f81dfe9c32b` · SHA-256 `a1f91b852b25b6dc12a6d397f39bf162fc1fe7c0110143840b613ad831719eb1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.MonotoneFactorial.Variant02cea5a91daa2705f70c537fb5861dad551698a49a0c3d45a5dc889f14ba8c15","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"02cea5a91daa2705f70c537fb5861dad551698a49a0c3d45a5dc889f14ba8c15","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.MonotoneFactorial.Variant02cea5a91daa2705f70c537fb5861dad551698a49a0c3d45a5dc889f14ba8c15","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"02cea5a91daa2705f70c537fb5861dad551698a49a0c3d45a5dc889f14ba8c15","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Nat/Factorial/BigOperators.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Pim Otte. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller, Pim Otte
-/
module

public import Mathlib.Algebra.Order.BigOperators.Ring.Finset
public import Mathlib.Data.Nat.Prime.Defs
public import Mathlib.Tactic.Zify

import Mathlib.Algebra.BigOperators.Associated

/-!
# Factorial with big operators

This file contains some lemmas on factorials in combination with big operators.

While in terms of semantics they could be in the `Basic.lean` file, importing
`Algebra.BigOperators.Group.Finset` leads to a cyclic import.

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.MonotoneFactorial.Variant02cea5a91daa2705f70c537fb5861dad551698a49a0c3d45a5dc889f14ba8c15

public section


open Finset Nat

namespace Nat

lemma monotone_factorial : Monotone factorial := fun _ _ => factorial_le

variable {α : Type*} (s : Finset α) (f : α → ℕ)

theorem prod_factorial_pos : 0 < ∏ i ∈ s, (f i)! := prod_pos fun _ _ ↦ factorial_pos _

theorem prod_factorial_dvd_factorial_sum : (∏ i ∈ s, (f i)!) ∣ (∑ i ∈ s, f i)! := by
  induction s using Finset.cons_induction_on with
  | empty => simp
  | cons a s has ih =>
    rw [prod_cons, Finset.sum_cons]
    exact (mul_dvd_mul_left _ ih).trans (Nat.factorial_mul_factorial_dvd_factorial_add _ _)

theorem factorial_eq_prod_range_add_one : ∀ n, (n)! = ∏ i ∈ range n, (i + 1)
  | 0 => rfl
  | n + 1 => by rw [factorial, prod_range_succ_comm, factorial_eq_prod_range_add_one n]

@[simp]
theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.MonotoneFactorial.Variant02cea5a91daa2705f70c537fb5861dad551698a49a0c3d45a5dc889f14ba8c15.Finset.prod_range_add_one_eq_factorial (n : ℕ) : ∏ i ∈ range n, (i + 1) = (n)! :=
  factorial_eq_prod_range_add_one _ |>.symm

theorem ascFactorial_eq_prod_range (n : ℕ) : ∀ k, n.ascFactorial k = ∏ i ∈ range k, (n + i)
  | 0 => rfl
  | k + 1 => by rw [ascFactorial, prod_range_succ_comm, ascFactorial_eq_prod_range n k]

lemma Prime.dvd_ascFactorial_iff {p k n : ℕ} (hp : p.Prime) :
    p ∣ k.ascFactorial n ↔ ∃ i < n, p ∣ k + i := by
  simp [Nat.ascFactorial_eq_prod_range, hp.prime.dvd_finsetProd_iff]

theorem descFactorial_eq_prod_range (n : ℕ) : ∀ k, n.descFactorial k = ∏ i ∈ range k, (n - i)
  | 0 => rfl
  | k + 1 => by rw [descFactorial, prod_range_succ_comm, descFactorial_eq_prod_range n k]

/-- `k!` divides the product of any `k` consecutive integers. -/
lemma factorial_coe_dvd_prod (k : ℕ) (n : ℤ) : (k ! : ℤ) ∣ ∏ i ∈ range k, (n + i) := by
  rw [Int.dvd_iff_emod_eq_zero, Finset.prod_int_mod]
  simp_rw [← Int.emod_add_emod n]
  have hn : 0 ≤ n % k ! := Int.emod_nonneg n <| Int.natCast_ne_zero.mpr k.factorial_ne_zero
  obtain ⟨x, hx⟩ := Int.eq_ofNat_of_zero_le hn
  have hdivk := x.factorial_dvd_ascFactorial k
  zify [x.ascFactorial_eq_prod_range k] at hdivk
  rwa [← Finset.prod_int_mod, ← Int.dvd_iff_emod_eq_zero, hx]

end Nat
```
