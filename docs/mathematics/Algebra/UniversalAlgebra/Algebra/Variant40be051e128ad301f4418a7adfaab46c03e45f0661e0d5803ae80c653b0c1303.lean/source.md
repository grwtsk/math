# Complete source: GRWTSK.Algebra.UniversalAlgebra.Algebra.Variant40be051e128ad301f4418a7adfaab46c03e45f0661e0d5803ae80c653b0c1303

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cfc565ba0d1f45742effbc41432af2c259a730ea` · SHA-256 `40be051e128ad301f4418a7adfaab46c03e45f0661e0d5803ae80c653b0c1303`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Algebra.Algebra.Defs
import Mathlib.Algebra.Order.Module.OrderedSMul

/-!
# Ordered algebras

An ordered algebra is an ordered semiring, which is an algebra over an ordered commutative semiring,
for which scalar multiplication is "compatible" with the two orders.

The prototypical example is 2x2 matrices over the reals or complexes (or indeed any C^* algebra)
where the ordering the one determined by the positive cone of positive operators,
i.e. `A ≤ B` iff `B - A = star R * R` for some `R`.
(We don't yet have this example in mathlib.)

## Implementation

Because the axioms for an ordered algebra are exactly the same as those for the underlying
module being ordered, we don't actually introduce a new class, but just use the `OrderedSMul`
mixin.

## Tags

ordered algebra
-/

section OrderedAlgebra

variable {R A : Type*} [CommRing R] [PartialOrder R] [IsOrderedRing R]
  [Ring A] [PartialOrder A] [IsOrderedRing A] [Algebra R A] [OrderedSMul R A]

theorem algebraMap_monotone : Monotone (algebraMap R A) := fun a b h => by
  rw [Algebra.algebraMap_eq_smul_one, Algebra.algebraMap_eq_smul_one, ← sub_nonneg, ← sub_smul]
  trans (b - a) • (0 : A)
  · simp
  · exact smul_le_smul_of_nonneg_left zero_le_one (sub_nonneg.mpr h)

end OrderedAlgebra
```
