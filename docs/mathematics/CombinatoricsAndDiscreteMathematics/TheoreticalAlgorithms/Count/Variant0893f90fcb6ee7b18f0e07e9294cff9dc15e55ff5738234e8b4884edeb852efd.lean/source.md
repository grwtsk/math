# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Count.Variant0893f90fcb6ee7b18f0e07e9294cff9dc15e55ff5738234e8b4884edeb852efd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8dbc61badd1e456facc5ddd69132b4c1a7c57a24` · SHA-256 `6f176673d74e27f8bec38c188d625aceebb7d6fd6c5c4a59c093c56f757c9a17`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CountNotAddCount.Variantd138886c40109a1a80d970622d6900c2f52cdddf397d3f01c289a0dd076058db","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d138886c40109a1a80d970622d6900c2f52cdddf397d3f01c289a0dd076058db","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CountNotAddCount.Variantd138886c40109a1a80d970622d6900c2f52cdddf397d3f01c289a0dd076058db","mathematical_subject":"Computation.DataStructures","original_sha256":"d138886c40109a1a80d970622d6900c2f52cdddf397d3f01c289a0dd076058db","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Bool/Count.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Algebra.Order.Ring.Nat
import Mathlib.Data.List.Chain

/-!
# List of booleans

In this file we prove lemmas about the number of `false`s and `true`s in a list of booleans. First
we prove that the number of `false`s plus the number of `true` equals the length of the list. Then
we prove that in a list with alternating `true`s and `false`s, the number of `true`s differs from
the number of `false`s by at most one. We provide several versions of these statements.
-/



namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CountNotAddCount.Variantd138886c40109a1a80d970622d6900c2f52cdddf397d3f01c289a0dd076058db

namespace List

@[simp]
theorem count_not_add_count (l : List Bool) (b : Bool) : count (!b) l + count b l = length l := by
  have := length_eq_countP_add_countP (l := l) (· == !b)
  aesop (add simp this)

@[simp]
theorem count_add_count_not (l : List Bool) (b : Bool) : count b l + count (!b) l = length l := by
  rw [add_comm, count_not_add_count]

@[simp]
theorem count_false_add_count_true (l : List Bool) : count false l + count true l = length l :=
  count_not_add_count l true

@[simp]
theorem count_true_add_count_false (l : List Bool) : count true l + count false l = length l :=
  count_not_add_count l false

theorem Chain.count_not :
    ∀ {b : Bool} {l : List Bool}, Chain (· ≠ ·) b l → count (!b) l = count b l + length l % 2
  | _, [], _h => rfl
  | b, x :: l, h => by
    obtain rfl : b = !x := Bool.eq_not_iff.2 (rel_of_chain_cons h)
    rw [Bool.not_not, count_cons_self, count_cons_of_ne x.not_ne_self.symm,
      Chain.count_not (chain_of_chain_cons h), length, add_assoc, Nat.mod_two_add_succ_mod_two]

namespace Chain'

variable {l : List Bool}

theorem count_not_eq_count (hl : Chain' (· ≠ ·) l) (h2 : Even (length l)) (b : Bool) :
    count (!b) l = count b l := by
  rcases l with - | ⟨x, l⟩
  · rfl
  rw [length_cons, Nat.even_add_one, Nat.not_even_iff] at h2
  suffices count (!x) (x :: l) = count x (x :: l) by
    cases b <;> cases x <;> (try exact this) <;> exact this.symm
  rw [count_cons_of_ne x.not_ne_self.symm, hl.count_not, h2, count_cons_self]

theorem count_false_eq_count_true (hl : Chain' (· ≠ ·) l) (h2 : Even (length l)) :
    count false l = count true l :=
  hl.count_not_eq_count h2 true

theorem count_not_le_count_add_one (hl : Chain' (· ≠ ·) l) (b : Bool) :
    count (!b) l ≤ count b l + 1 := by
  rcases l with - | ⟨x, l⟩
  · exact zero_le _
  obtain rfl | rfl : b = x ∨ b = !x := by simp only [Bool.eq_not_iff, em]
  · rw [count_cons_of_ne b.not_ne_self.symm, count_cons_self, hl.count_not, add_assoc]
    omega
  · rw [Bool.not_not, count_cons_self, count_cons_of_ne x.not_ne_self.symm, hl.count_not]
    omega

theorem count_false_le_count_true_add_one (hl : Chain' (· ≠ ·) l) :
    count false l ≤ count true l + 1 :=
  hl.count_not_le_count_add_one true

theorem count_true_le_count_false_add_one (hl : Chain' (· ≠ ·) l) :
    count true l ≤ count false l + 1 :=
  hl.count_not_le_count_add_one false

theorem two_mul_count_bool_of_even (hl : Chain' (· ≠ ·) l) (h2 : Even (length l)) (b : Bool) :
    2 * count b l = length l := by
  rw [← count_not_add_count l b, hl.count_not_eq_count h2, two_mul]

theorem two_mul_count_bool_eq_ite (hl : Chain' (· ≠ ·) l) (b : Bool) :
    2 * count b l =
      if Even (length l) then length l else
      if Option.some b == l.head? then length l + 1 else length l - 1 := by
  by_cases h2 : Even (length l)
  · rw [if_pos h2, hl.two_mul_count_bool_of_even h2]
  · rcases l with - | ⟨x, l⟩
    · exact (h2 .zero).elim
    simp only [if_neg h2, count_cons, mul_add, head?, Option.mem_some_iff, @eq_comm _ x]
    rw [length_cons, Nat.even_add_one, not_not] at h2
    replace hl : l.Chain' (· ≠ ·) := hl.tail
    rw [hl.two_mul_count_bool_of_even h2]
    cases b <;> cases x <;> split_ifs <;> simp <;> contradiction

theorem length_sub_one_le_two_mul_count_bool (hl : Chain' (· ≠ ·) l) (b : Bool) :
    length l - 1 ≤ 2 * count b l := by
  rw [hl.two_mul_count_bool_eq_ite]
  split_ifs <;> simp [le_tsub_add, Nat.le_succ_of_le]

theorem length_div_two_le_count_bool (hl : Chain' (· ≠ ·) l) (b : Bool) :
    length l / 2 ≤ count b l := by
  rw [Nat.div_le_iff_le_mul_add_pred two_pos, ← tsub_le_iff_right]
  exact length_sub_one_le_two_mul_count_bool hl b

theorem two_mul_count_bool_le_length_add_one (hl : Chain' (· ≠ ·) l) (b : Bool) :
    2 * count b l ≤ length l + 1 := by
  rw [hl.two_mul_count_bool_eq_ite]
  split_ifs <;> simp [Nat.le_succ_of_le]

end Chain'

end List
```
