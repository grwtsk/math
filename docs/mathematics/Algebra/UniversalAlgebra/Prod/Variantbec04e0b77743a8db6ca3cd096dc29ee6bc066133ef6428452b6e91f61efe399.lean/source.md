# Complete source: GRWTSK.Algebra.UniversalAlgebra.Prod.Variantbec04e0b77743a8db6ca3cd096dc29ee6bc066133ef6428452b6e91f61efe399

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `841a6e225803b6ba52d21d4e10c517a665164ee7` · SHA-256 `bec04e0b77743a8db6ca3cd096dc29ee6bc066133ef6428452b6e91f61efe399`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Algebra.Order.Sub.Defs
import Mathlib.Algebra.Notation.Pi
import Mathlib.Algebra.Notation.Prod

/-!
# Products of `OrderedSub` types.
-/

assert_not_exists MonoidWithZero

variable {α β : Type*}

instance Prod.orderedSub
    [Preorder α] [Add α] [Sub α] [OrderedSub α] [Sub β] [Preorder β] [Add β] [OrderedSub β] :
    OrderedSub (α × β) where
  tsub_le_iff_right _ _ _ :=
  ⟨fun w ↦ ⟨tsub_le_iff_right.mp w.1, tsub_le_iff_right.mp w.2⟩,
   fun w ↦ ⟨tsub_le_iff_right.mpr w.1, tsub_le_iff_right.mpr w.2⟩⟩

instance Pi.orderedSub {ι : Type*} {α : ι → Type*}
    [∀ i, Preorder (α i)] [∀ i, Add (α i)] [∀ i, Sub (α i)] [∀ i, OrderedSub (α i)] :
    OrderedSub ((i : ι) → α i) where
  tsub_le_iff_right _ _ _ :=
  ⟨fun w i ↦ tsub_le_iff_right.mp (w i), fun w i ↦ tsub_le_iff_right.mpr (w i)⟩
```
