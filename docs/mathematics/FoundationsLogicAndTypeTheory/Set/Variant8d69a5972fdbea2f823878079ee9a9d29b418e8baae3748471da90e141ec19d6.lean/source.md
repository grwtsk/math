# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Set.Variant8d69a5972fdbea2f823878079ee9a9d29b418e8baae3748471da90e141ec19d6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `54f788405ed46ae1857ba0b1394fd1559419b252` · SHA-256 `8d69a5972fdbea2f823878079ee9a9d29b418e8baae3748471da90e141ec19d6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
module

public import Mathlib.Data.Set.Image

/-!
# Recursion on the natural numbers and `Set.range`
-/

public section


namespace Nat

section Set

open Set

theorem zero_union_range_succ : {0} ∪ range succ = univ := by
  ext n
  cases n <;> simp

@[simp]
protected theorem range_succ : range succ = { i | 0 < i } := by
  ext (_ | i) <;> simp

variable {α : Type*}

theorem range_of_succ (f : ℕ → α) : {f 0} ∪ range (f ∘ succ) = range f := by
  rw [← image_singleton, range_comp, ← image_union, zero_union_range_succ, image_univ]

theorem range_rec {α : Type*} (x : α) (f : ℕ → α → α) :
    (Set.range fun n => Nat.rec x f n : Set α) =
      {x} ∪ Set.range fun n => Nat.rec (f 0 x) (f ∘ succ) n := by
  convert! (range_of_succ (fun n => Nat.rec x f n : ℕ → α)).symm using 4
  dsimp
  rename_i n
  induction n with
  | zero => rfl
  | succ n ihn => dsimp at ihn ⊢; rw [ihn]

theorem range_casesOn {α : Type*} (x : α) (f : ℕ → α) :
    (Set.range fun n => Nat.casesOn n x f : Set α) = {x} ∪ Set.range f :=
  (range_of_succ _).symm

end Set

end Nat
```
