# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Lattice.Variant0b9f4b71ba9e2ce5dc839a1d9795c942c4635028c336af6d4cd97cde7a0f86db

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9f1c66d33ee1da271a2153245a804e0db4424a17` · SHA-256 `0b9f4b71ba9e2ce5dc839a1d9795c942c4635028c336af6d4cd97cde7a0f86db`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Christopher Hoskin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christopher Hoskin
-/
import Mathlib.Data.Set.Lattice.Image

/-!
# Unions and intersections of bounds

Some results about upper and lower bounds over collections of sets.

## Implementation notes

In a separate file as we need to import `Mathlib/Data/Set/Lattice.lean`.

-/

variable {α : Type*} [Preorder α] {ι : Sort*} {s : ι → Set α}

open Set

theorem gc_upperBounds_lowerBounds : GaloisConnection
    (OrderDual.toDual ∘ upperBounds : Set α → (Set α)ᵒᵈ)
    (lowerBounds ∘ OrderDual.ofDual : (Set α)ᵒᵈ → Set α) := by
  simpa [GaloisConnection, subset_def, mem_upperBounds, mem_lowerBounds]
    using fun S T ↦ forall₂_swap

@[simp]
theorem upperBounds_iUnion :
    upperBounds (⋃ i, s i) = ⋂ i, upperBounds (s i) :=
  gc_upperBounds_lowerBounds.l_iSup

@[simp]
theorem lowerBounds_iUnion :
    lowerBounds (⋃ i, s i) = ⋂ i, lowerBounds (s i) :=
  gc_upperBounds_lowerBounds.u_iInf

theorem isLUB_iUnion_iff_of_isLUB {u : ι → α} (hs : ∀ i, IsLUB (s i) (u i)) (c : α) :
    IsLUB (Set.range u) c ↔ IsLUB (⋃ i, s i) c := by
  refine isLUB_congr ?_
  simp_rw [range_eq_iUnion, upperBounds_iUnion, upperBounds_singleton, (hs _).upperBounds_eq]

theorem isGLB_iUnion_iff_of_isLUB {u : ι → α} (hs : ∀ i, IsGLB (s i) (u i)) (c : α) :
    IsGLB (Set.range u) c ↔ IsGLB (⋃ i, s i) c := by
  refine isGLB_congr ?_
  simp_rw [range_eq_iUnion, lowerBounds_iUnion, lowerBounds_singleton, (hs _).lowerBounds_eq]
```
