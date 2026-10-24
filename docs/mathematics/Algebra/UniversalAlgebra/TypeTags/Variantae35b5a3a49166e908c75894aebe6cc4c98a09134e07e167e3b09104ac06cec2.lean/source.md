# Complete source: GRWTSK.Algebra.UniversalAlgebra.TypeTags.Variantae35b5a3a49166e908c75894aebe6cc4c98a09134e07e167e3b09104ac06cec2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2d071c333a0c932b06ba7354ff4a850c50afed55` · SHA-256 `ae35b5a3a49166e908c75894aebe6cc4c98a09134e07e167e3b09104ac06cec2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura, Mario Carneiro, Johannes Hölzl
-/
import Mathlib.Algebra.Order.Monoid.Unbundled.TypeTags
import Mathlib.Algebra.Order.Monoid.Canonical.Defs

/-! # Bundled ordered monoid structures on `Multiplicative α` and `Additive α`. -/

variable {α : Type*}

instance Multiplicative.isOrderedMonoid [AddCommMonoid α] [PartialOrder α] [IsOrderedAddMonoid α] :
    IsOrderedMonoid (Multiplicative α) :=
  { mul_le_mul_left := @IsOrderedAddMonoid.add_le_add_left α _ _ _ }

instance Additive.isOrderedAddMonoid [CommMonoid α] [PartialOrder α] [IsOrderedMonoid α] :
    IsOrderedAddMonoid (Additive α) :=
  { add_le_add_left := @IsOrderedMonoid.mul_le_mul_left α _ _ _ }

instance Multiplicative.isOrderedCancelMonoid
    [AddCommMonoid α] [PartialOrder α] [IsOrderedCancelAddMonoid α] :
    IsOrderedCancelMonoid (Multiplicative α) :=
  { le_of_mul_le_mul_left := @IsOrderedCancelAddMonoid.le_of_add_le_add_left α _ _ _ }

instance Additive.isOrderedCancelAddMonoid
    [CommMonoid α] [PartialOrder α] [IsOrderedCancelMonoid α] :
    IsOrderedCancelAddMonoid (Additive α) :=
  { le_of_add_le_add_left := @IsOrderedCancelMonoid.le_of_mul_le_mul_left α _ _ _ }

instance Multiplicative.canonicallyOrderedMul
    [AddMonoid α] [PartialOrder α] [CanonicallyOrderedAdd α] :
    CanonicallyOrderedMul (Multiplicative α) where
  le_self_mul _ _ := le_self_add (α := α)

instance Additive.canonicallyOrderedAdd
    [Monoid α] [PartialOrder α] [CanonicallyOrderedMul α] :
    CanonicallyOrderedAdd (Additive α) where
  le_self_add _ _ := le_self_mul (α := α)
```
