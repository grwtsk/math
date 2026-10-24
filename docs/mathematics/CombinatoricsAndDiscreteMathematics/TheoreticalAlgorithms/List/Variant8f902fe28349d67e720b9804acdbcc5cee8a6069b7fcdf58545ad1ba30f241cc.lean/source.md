# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.List.Variant8f902fe28349d67e720b9804acdbcc5cee8a6069b7fcdf58545ad1ba30f241cc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `64c245c562ba1c8e7b9b017754e6cfce75b58c6a` · SHA-256 `8f902fe28349d67e720b9804acdbcc5cee8a6069b7fcdf58545ad1ba30f241cc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Stuart Presnell. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Stuart Presnell
-/
module

public import Mathlib.Algebra.Order.Ring.Canonical

/-!
# Big operators on a list in ordered rings

This file contains the results concerning the interaction of list big operators with ordered rings.
-/

public section

variable {R : Type*}

/-- A variant of `List.prod_pos` for `CanonicallyOrderedAdd`. -/
@[simp] lemma CanonicallyOrderedAdd.list_prod_pos {α : Type*}
    [CommSemiring α] [PartialOrder α] [CanonicallyOrderedAdd α] [NoZeroDivisors α] [Nontrivial α] :
    ∀ {l : List α}, 0 < l.prod ↔ (∀ x ∈ l, (0 : α) < x)
  | [] => by simp
  | (x :: xs) => by simp_rw [List.prod_cons, List.forall_mem_cons, CanonicallyOrderedAdd.mul_pos,
    list_prod_pos]
```
