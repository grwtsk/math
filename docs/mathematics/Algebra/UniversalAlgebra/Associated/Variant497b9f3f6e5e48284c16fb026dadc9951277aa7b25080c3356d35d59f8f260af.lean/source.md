# Complete source: GRWTSK.Algebra.UniversalAlgebra.Associated.Variant497b9f3f6e5e48284c16fb026dadc9951277aa7b25080c3356d35d59f8f260af

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bb01c2f54e3410b6ae8f7c8c441d108033273d72` · SHA-256 `497b9f3f6e5e48284c16fb026dadc9951277aa7b25080c3356d35d59f8f260af`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Jens Wagemaker
-/
import Mathlib.Algebra.GroupWithZero.Associated
import Mathlib.Algebra.Order.Monoid.Canonical.Defs

/-!
# Associated, prime, and irreducible elements.

In this file we define the predicate `Prime p`
saying that an element of a commutative monoid with zero is prime.
Namely, `Prime p` means that `p` isn't zero, it isn't a unit,
and `p ∣ a * b → p ∣ a ∨ p ∣ b` for all `a`, `b`;

In decomposition monoids (e.g., `ℕ`, `ℤ`), this predicate is equivalent to `Irreducible`,
however this is not true in general.

We also define an equivalence relation `Associated`
saying that two elements of a monoid differ by a multiplication by a unit.
Then we show that the quotient type `Associates` is a monoid
and prove basic properties of this quotient.
-/

variable {M : Type*} [CancelCommMonoidWithZero M]

namespace Associates

instance instIsOrderedMonoid : IsOrderedMonoid (Associates M) where
  mul_le_mul_left := fun a _ ⟨d, hd⟩ c => hd.symm ▸ mul_assoc c a d ▸ le_mul_right

instance : CanonicallyOrderedMul (Associates M) where
  exists_mul_of_le h := h
  le_self_mul _ b := ⟨b, rfl⟩

end Associates
```
