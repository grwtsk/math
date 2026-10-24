# Complete source: GRWTSK.Algebra.UniversalAlgebra.OrderDual.Variantc945afeaa478e98835eb5c5dc24921129fe638451bc05686a07ca8b02a1ba98f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a50f4351f5f58085433d8d2a08696b761545f019` · SHA-256 `c945afeaa478e98835eb5c5dc24921129fe638451bc05686a07ca8b02a1ba98f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura, Mario Carneiro, Johannes Hölzl
-/
import Mathlib.Algebra.Order.Group.Synonym
import Mathlib.Algebra.Order.Monoid.Unbundled.OrderDual
import Mathlib.Algebra.Order.Monoid.Defs

/-! # Ordered monoid structures on the order dual. -/

universe u

variable {α : Type u}

open Function

namespace OrderDual

@[to_additive]
instance isOrderedMonoid [CommMonoid α] [PartialOrder α] [IsOrderedMonoid α] :
    IsOrderedMonoid αᵒᵈ :=
  { mul_le_mul_left := fun _ _ h c => mul_le_mul_left' h c }

@[to_additive]
instance isOrderedCancelMonoid [CommMonoid α] [PartialOrder α] [IsOrderedCancelMonoid α] :
    IsOrderedCancelMonoid αᵒᵈ :=
  { le_of_mul_le_mul_left := fun _ _ _ : α => le_of_mul_le_mul_left' }

end OrderDual
```
