# Complete source: GRWTSK.Algebra.UniversalAlgebra.Units.Variantd9d012a0659aebcf4cf3d1451fb3caf88b777e3bf774023704d89b20b481a0fb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8ded710aa98f50de4bb3ba525d59e2910c44b402` · SHA-256 `d9d012a0659aebcf4cf3d1451fb3caf88b777e3bf774023704d89b20b481a0fb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura, Mario Carneiro, Johannes Hölzl
-/
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Algebra.Order.Monoid.Units

/-!
# The units of an ordered commutative monoid form an ordered commutative group
-/


variable {α : Type*}

/-- The units of an ordered commutative monoid form an ordered commutative group. -/
@[to_additive
      "The units of an ordered commutative additive monoid form an ordered commutative
      additive group."]
instance Units.isOrderedMonoid [CommMonoid α] [PartialOrder α] [IsOrderedMonoid α] :
    IsOrderedMonoid αˣ :=
  { mul_le_mul_left := fun _ _ h _ => (mul_le_mul_left' (α := α) h _) }
```
