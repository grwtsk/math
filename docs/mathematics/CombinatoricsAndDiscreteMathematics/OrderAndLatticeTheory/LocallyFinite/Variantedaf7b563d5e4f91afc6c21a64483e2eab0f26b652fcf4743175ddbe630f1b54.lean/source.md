# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.LocallyFinite.Variantedaf7b563d5e4f91afc6c21a64483e2eab0f26b652fcf4743175ddbe630f1b54

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3c6711bd058d9f50330104c4b9a5c800aaa7df39` · SHA-256 `edaf7b563d5e4f91afc6c21a64483e2eab0f26b652fcf4743175ddbe630f1b54`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Yaël Dillies, Sara Rousta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Data.Set.Finite.Lattice
import Mathlib.Order.Interval.Finset.Defs
import Mathlib.Order.UpperLower.Closure

/-!
# Upper and lower sets in a locally finite order

In this file we characterise the interaction of `UpperSet`/`LowerSet` and `LocallyFiniteOrder`.
-/


namespace Set

variable {α : Type*} [Preorder α] {s : Set α}

protected theorem Finite.upperClosure [LocallyFiniteOrderTop α] (hs : s.Finite) :
    (upperClosure s : Set α).Finite := by
  rw [coe_upperClosure]
  exact hs.biUnion fun _ _ => finite_Ici _

protected theorem Finite.lowerClosure [LocallyFiniteOrderBot α] (hs : s.Finite) :
    (lowerClosure s : Set α).Finite := by
  rw [coe_lowerClosure]
  exact hs.biUnion fun _ _ => finite_Iic _

end Set
```
