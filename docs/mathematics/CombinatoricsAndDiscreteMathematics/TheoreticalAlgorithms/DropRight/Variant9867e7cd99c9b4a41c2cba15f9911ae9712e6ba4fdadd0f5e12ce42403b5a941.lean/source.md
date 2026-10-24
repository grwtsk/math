# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DropRight.Variant9867e7cd99c9b4a41c2cba15f9911ae9712e6ba4fdadd0f5e12ce42403b5a941

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6c5eb36f86f66e0386ebcb54ed0e39f5e346f733` · SHA-256 `c6b4759012d072a16c5387cb6bfd542fb7b65fb0184bd72cfb630dcae96b367a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Rdrop.Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Rdrop.Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f","mathematical_subject":"Computation.DataStructures","original_sha256":"3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/List/DropRight.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yakov Pechersky. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yakov Pechersky
-/
import Mathlib.Data.List.Induction
import Mathlib.Data.List.TakeWhile

/-!

# Dropping or taking from lists on the right

Taking or removing element from the tail end of a list

## Main definitions

- `rdrop n`: drop `n : ℕ` elements from the tail
- `rtake n`: take `n : ℕ` elements from the tail
- `rdropWhile p`: remove all the elements from the tail of a list until it finds the first element
  for which `p : α → Bool` returns false. This element and everything before is returned.
- `rtakeWhile p`:  Returns the longest terminal segment of a list for which `p : α → Bool` returns
  true.

## Implementation detail

The two predicate-based methods operate by performing the regular "from-left" operation on
`List.reverse`, followed by another `List.reverse`, so they are not the most performant.
The other two rely on `List.length l` so they still traverse the list twice. One could construct
another function that takes a `L : ℕ` and use `L - n`. Under a proof condition that
`L = l.length`, the function would do the right thing.

-/

-- Make sure we don't import algebra

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Rdrop.Variant3bb9772b6ab2093462eef62adaf7270d6bcff6419a3912aff2d809ebb62cb92f

assert_not_exists Monoid

variable {α : Type*} (p : α → Bool) (l : List α) (n : ℕ)

namespace List

/-- Drop `n` elements from the tail end of a list. -/
def rdrop : List α :=
  l.take (l.length - n)

@[simp]
theorem rdrop_nil : rdrop ([] : List α) n = [] := by simp [rdrop]

@[simp]
theorem rdrop_zero : rdrop l 0 = l := by simp [rdrop]

theorem rdrop_eq_reverse_drop_reverse : l.rdrop n = reverse (l.reverse.drop n) := by
  rw [rdrop]
  induction' l using List.reverseRecOn with xs x IH generalizing n
  · simp
  · cases n
    · simp [take_append]
    · simp [take_append_eq_append_take, IH]

@[simp]
theorem rdrop_concat_succ (x : α) : rdrop (l ++ [x]) (n + 1) = rdrop l n := by
  simp [rdrop_eq_reverse_drop_reverse]

/-- Take `n` elements from the tail end of a list. -/
def rtake : List α :=
  l.drop (l.length - n)

@[simp]
theorem rtake_nil : rtake ([] : List α) n = [] := by simp [rtake]

@[simp]
theorem rtake_zero : rtake l 0 = [] := by simp [rtake]

theorem rtake_eq_reverse_take_reverse : l.rtake n = reverse (l.reverse.take n) := by
  rw [rtake]
  induction' l using List.reverseRecOn with xs x IH generalizing n
  · simp
  · cases n
    · exact drop_length
    · simp [drop_append_eq_append_drop, IH]

@[simp]
theorem rtake_concat_succ (x : α) : rtake (l ++ [x]) (n + 1) = rtake l n ++ [x] := by
  simp [rtake_eq_reverse_take_reverse]

/-- Drop elements from the tail end of a list that satisfy `p : α → Bool`.
Implemented naively via `List.reverse` -/
def rdropWhile : List α :=
  reverse (l.reverse.dropWhile p)

@[simp]
theorem rdropWhile_nil : rdropWhile p ([] : List α) = [] := by simp [rdropWhile, dropWhile]

theorem rdropWhile_concat (x : α) :
    rdropWhile p (l ++ [x]) = if p x then rdropWhile p l else l ++ [x] := by
  simp only [rdropWhile, dropWhile, reverse_append, reverse_singleton, singleton_append]
  split_ifs with h <;> simp [h]

@[simp]
theorem rdropWhile_concat_pos (x : α) (h : p x) : rdropWhile p (l ++ [x]) = rdropWhile p l := by
  rw [rdropWhile_concat, if_pos h]

@[simp]
theorem rdropWhile_concat_neg (x : α) (h : ¬p x) : rdropWhile p (l ++ [x]) = l ++ [x] := by
  rw [rdropWhile_concat, if_neg h]

theorem rdropWhile_singleton (x : α) : rdropWhile p [x] = if p x then [] else [x] := by
  rw [← nil_append [x], rdropWhile_concat, rdropWhile_nil]

theorem rdropWhile_last_not (hl : l.rdropWhile p ≠ []) : ¬p ((rdropWhile p l).getLast hl) := by
  simp_rw [rdropWhile]
  rw [getLast_reverse, head_dropWhile_not p]
  simp

theorem rdropWhile_prefix : l.rdropWhile p <+: l := by
  rw [← reverse_suffix, rdropWhile, reverse_reverse]
  exact dropWhile_suffix _

variable {p} {l}

@[simp]
theorem rdropWhile_eq_nil_iff : rdropWhile p l = [] ↔ ∀ x ∈ l, p x := by simp [rdropWhile]

-- it is in this file because it requires `List.Infix`
@[simp]
theorem dropWhile_eq_self_iff : dropWhile p l = l ↔ ∀ hl : 0 < l.length, ¬p (l.get ⟨0, hl⟩) := by
  rcases l with - | ⟨hd, tl⟩
  · simp only [dropWhile, true_iff]
    intro h
    by_contra
    rwa [length_nil, lt_self_iff_false] at h
  · rw [dropWhile]
    refine ⟨fun h => ?_, fun h => ?_⟩
    · intro _ H
      rw [get] at H
      refine (cons_ne_self hd tl) (Sublist.antisymm ?_ (sublist_cons_self _ _))
      rw [← h]
      simp only [H]
      exact List.IsSuffix.sublist (dropWhile_suffix p)
    · have := h (by simp only [length, Nat.succ_pos])
      rw [get] at this
      simp_rw [this]

@[simp]
theorem rdropWhile_eq_self_iff : rdropWhile p l = l ↔ ∀ hl : l ≠ [], ¬p (l.getLast hl) := by
  simp [rdropWhile, reverse_eq_iff, getLast_eq_getElem, Nat.pos_iff_ne_zero]

variable (p) (l)

theorem dropWhile_idempotent : dropWhile p (dropWhile p l) = dropWhile p l := by
  simp only [dropWhile_eq_self_iff]
  exact fun h => dropWhile_get_zero_not p l h

theorem rdropWhile_idempotent : rdropWhile p (rdropWhile p l) = rdropWhile p l :=
  rdropWhile_eq_self_iff.mpr (rdropWhile_last_not _ _)

/-- Take elements from the tail end of a list that satisfy `p : α → Bool`.
Implemented naively via `List.reverse` -/
def rtakeWhile : List α :=
  reverse (l.reverse.takeWhile p)

@[simp]
theorem rtakeWhile_nil : rtakeWhile p ([] : List α) = [] := by simp [rtakeWhile, takeWhile]

theorem rtakeWhile_concat (x : α) :
    rtakeWhile p (l ++ [x]) = if p x then rtakeWhile p l ++ [x] else [] := by
  simp only [rtakeWhile, takeWhile, reverse_append, reverse_singleton, singleton_append]
  split_ifs with h <;> simp [h]

@[simp]
theorem rtakeWhile_concat_pos (x : α) (h : p x) :
    rtakeWhile p (l ++ [x]) = rtakeWhile p l ++ [x] := by rw [rtakeWhile_concat, if_pos h]

@[simp]
theorem rtakeWhile_concat_neg (x : α) (h : ¬p x) : rtakeWhile p (l ++ [x]) = [] := by
  rw [rtakeWhile_concat, if_neg h]

theorem rtakeWhile_suffix : l.rtakeWhile p <:+ l := by
  rw [← reverse_prefix, rtakeWhile, reverse_reverse]
  exact takeWhile_prefix _

variable {p} {l}

@[simp]
theorem rtakeWhile_eq_self_iff : rtakeWhile p l = l ↔ ∀ x ∈ l, p x := by
  simp [rtakeWhile, reverse_eq_iff]

@[simp]
theorem rtakeWhile_eq_nil_iff : rtakeWhile p l = [] ↔ ∀ hl : l ≠ [], ¬p (l.getLast hl) := by
  induction' l using List.reverseRecOn with l a <;> simp [rtakeWhile]

theorem mem_rtakeWhile_imp {x : α} (hx : x ∈ rtakeWhile p l) : p x := by
  rw [rtakeWhile, mem_reverse] at hx
  exact mem_takeWhile_imp hx

theorem rtakeWhile_idempotent (p : α → Bool) (l : List α) :
    rtakeWhile p (rtakeWhile p l) = rtakeWhile p l :=
  rtakeWhile_eq_self_iff.mpr fun _ => mem_rtakeWhile_imp

lemma rdrop_add (i j : ℕ) : (l.rdrop i).rdrop j = l.rdrop (i + j) := by
  simp_rw [rdrop_eq_reverse_drop_reverse, reverse_reverse, drop_drop]

@[simp]
lemma rdrop_append_length {l₁ l₂ : List α} :
    List.rdrop (l₁ ++ l₂) (List.length l₂) = l₁ := by
  rw [rdrop_eq_reverse_drop_reverse, ← length_reverse,
      reverse_append, drop_left, reverse_reverse]

lemma rdrop_append_of_le_length {l₁ l₂ : List α} (k : ℕ) :
    k ≤ length l₂ → List.rdrop (l₁ ++ l₂) k = l₁ ++ List.rdrop l₂ k := by
  intro hk
  rw [← length_reverse] at hk
  rw [rdrop_eq_reverse_drop_reverse, reverse_append, drop_append_of_le_length hk,
    reverse_append, reverse_reverse, ← rdrop_eq_reverse_drop_reverse]

@[simp]
lemma rdrop_append_length_add {l₁ l₂ : List α} (k : ℕ) :
    List.rdrop (l₁ ++ l₂) (length l₂ + k) = List.rdrop l₁ k := by
  rw [← rdrop_add, rdrop_append_length]

end List
```
