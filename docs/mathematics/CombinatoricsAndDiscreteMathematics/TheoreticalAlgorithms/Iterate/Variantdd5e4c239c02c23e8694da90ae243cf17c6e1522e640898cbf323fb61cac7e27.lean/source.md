# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Iterate.Variantdd5e4c239c02c23e8694da90ae243cf17c6e1522e640898cbf323fb61cac7e27

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aeea9d4b2b6bf32bf6259165f59892ab9d0363a3` · SHA-256 `dd5e4c239c02c23e8694da90ae243cf17c6e1522e640898cbf323fb61cac7e27`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Miyahara Kō. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Miyahara Kō
-/
import Mathlib.Algebra.Order.Group.Nat
import Mathlib.Data.List.Defs
import Mathlib.Data.Set.Function

/-!
# iterate

Proves various lemmas about `List.iterate`.
-/

variable {α : Type*}

namespace List

@[simp]
theorem length_iterate (f : α → α) (a : α) (n : ℕ) : length (iterate f a n) = n := by
  induction n generalizing a <;> simp [*]

@[simp]
theorem iterate_eq_nil {f : α → α} {a : α} {n : ℕ} : iterate f a n = [] ↔ n = 0 := by
  rw [← length_eq_zero_iff, length_iterate]

theorem getElem?_iterate (f : α → α) (a : α) :
    ∀ (n i : ℕ), i < n → (iterate f a n)[i]? = f^[i] a
  | n + 1, 0    , _ => by simp
  | n + 1, i + 1, h => by simp [getElem?_iterate f (f a) n i (by simpa using h)]

@[simp]
theorem getElem_iterate (f : α → α) (a : α) (n : ℕ) (i : Nat) (h : i < (iterate f a n).length) :
    (iterate f a n)[i] = f^[i] a :=
  (getElem_eq_iff _).2 <| getElem?_iterate _ _ _ _ <| by rwa [length_iterate] at h

@[simp]
theorem mem_iterate {f : α → α} {a : α} {n : ℕ} {b : α} :
    b ∈ iterate f a n ↔ ∃ m < n, b = f^[m] a := by
  simp [List.mem_iff_get, Fin.exists_iff, eq_comm (b := b)]

@[simp]
theorem range_map_iterate (n : ℕ) (f : α → α) (a : α) :
    (List.range n).map (f^[·] a) = List.iterate f a n := by
  apply List.ext_getElem <;> simp

theorem iterate_add (f : α → α) (a : α) (m n : ℕ) :
    iterate f a (m + n) = iterate f a m ++ iterate f (f^[m] a) n := by
  induction m generalizing a with
  | zero => simp
  | succ n ih => rw [iterate, add_right_comm, iterate, ih, Nat.iterate, cons_append]

theorem take_iterate (f : α → α) (a : α) (m n : ℕ) :
    take m (iterate f a n) = iterate f a (min m n) := by
  rw [← range_map_iterate, ← range_map_iterate, ← map_take, take_range]

end List
```
