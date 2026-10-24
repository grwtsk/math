# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Disjoint.Variant5229ad78634dc1ffc7ee21d3578b9b0ea032d59c8693729742d57cc2470c7f63

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b5b588a19b65852a69c90ad22bb138ee1010d382` · SHA-256 `5229ad78634dc1ffc7ee21d3578b9b0ea032d59c8693729742d57cc2470c7f63`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Jeremy Avigad, Yury Kudryashov, Patrick Massot
-/
import Mathlib.Order.Filter.AtTopBot.Defs
import Mathlib.Order.Interval.Set.Disjoint

/-!
# Disjointness of `Filter.atTop` and `Filter.atBot`
-/

assert_not_exists Finset

variable {ι ι' α β γ : Type*}

open Set

namespace Filter

theorem disjoint_atBot_principal_Ioi [Preorder α] (x : α) : Disjoint atBot (𝓟 (Ioi x)) :=
  disjoint_of_disjoint_of_mem (Iic_disjoint_Ioi le_rfl) (Iic_mem_atBot x) (mem_principal_self _)

theorem disjoint_atTop_principal_Iio [Preorder α] (x : α) : Disjoint atTop (𝓟 (Iio x)) :=
  @disjoint_atBot_principal_Ioi αᵒᵈ _ _

theorem disjoint_atTop_principal_Iic [Preorder α] [NoTopOrder α] (x : α) :
    Disjoint atTop (𝓟 (Iic x)) :=
  disjoint_of_disjoint_of_mem (Iic_disjoint_Ioi le_rfl).symm (Ioi_mem_atTop x)
    (mem_principal_self _)

theorem disjoint_atBot_principal_Ici [Preorder α] [NoBotOrder α] (x : α) :
    Disjoint atBot (𝓟 (Ici x)) :=
  @disjoint_atTop_principal_Iic αᵒᵈ _ _ _

theorem disjoint_pure_atTop [Preorder α] [NoTopOrder α] (x : α) : Disjoint (pure x) atTop :=
  Disjoint.symm <| (disjoint_atTop_principal_Iic x).mono_right <| le_principal_iff.2 <|
    mem_pure.2 right_mem_Iic

theorem disjoint_pure_atBot [Preorder α] [NoBotOrder α] (x : α) : Disjoint (pure x) atBot :=
  @disjoint_pure_atTop αᵒᵈ _ _ _

theorem disjoint_atBot_atTop [PartialOrder α] [Nontrivial α] :
    Disjoint (atBot : Filter α) atTop := by
  rcases exists_pair_ne α with ⟨x, y, hne⟩
  by_cases hle : x ≤ y
  · refine disjoint_of_disjoint_of_mem ?_ (Iic_mem_atBot x) (Ici_mem_atTop y)
    exact Iic_disjoint_Ici.2 (hle.lt_of_ne hne).not_le
  · refine disjoint_of_disjoint_of_mem ?_ (Iic_mem_atBot y) (Ici_mem_atTop x)
    exact Iic_disjoint_Ici.2 hle

theorem disjoint_atTop_atBot [PartialOrder α] [Nontrivial α] : Disjoint (atTop : Filter α) atBot :=
  disjoint_atBot_atTop.symm

end Filter
```
