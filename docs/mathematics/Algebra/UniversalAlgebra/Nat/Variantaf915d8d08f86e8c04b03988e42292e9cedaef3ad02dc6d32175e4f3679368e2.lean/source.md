# Complete source: GRWTSK.Algebra.UniversalAlgebra.Nat.Variantaf915d8d08f86e8c04b03988e42292e9cedaef3ad02dc6d32175e4f3679368e2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `74467ee1cc0b8651cf33473385101fe21fc094a4` · SHA-256 `af915d8d08f86e8c04b03988e42292e9cedaef3ad02dc6d32175e4f3679368e2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2014 Floris van Doorn (c) 2016 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn, Leonardo de Moura, Jeremy Avigad, Mario Carneiro
-/
import Mathlib.Algebra.CharZero.Defs
import Mathlib.Algebra.GroupWithZero.Nat
import Mathlib.Algebra.Ring.Defs

/-!
# The natural numbers form a semiring

This file contains the commutative semiring instance on the natural numbers.

See note [foundational algebra order theory].
-/

namespace Nat

instance instAddMonoidWithOne : AddMonoidWithOne ℕ where
  natCast n := n
  natCast_zero := rfl
  natCast_succ _ := rfl

instance instAddCommMonoidWithOne : AddCommMonoidWithOne ℕ where
  __ := instAddMonoidWithOne
  __ := instAddCommMonoid

instance instDistrib : Distrib ℕ where
  left_distrib := Nat.left_distrib
  right_distrib := Nat.right_distrib

instance instNonUnitalNonAssocSemiring : NonUnitalNonAssocSemiring ℕ where
  __ := instAddCommMonoid
  __ := instDistrib
  __ := instMulZeroClass

instance instNonUnitalSemiring : NonUnitalSemiring ℕ where
  __ := instNonUnitalNonAssocSemiring
  __ := instSemigroupWithZero

instance instNonAssocSemiring : NonAssocSemiring ℕ where
  __ := instNonUnitalNonAssocSemiring
  __ := instMulZeroOneClass
  __ := instAddCommMonoidWithOne

instance instSemiring : Semiring ℕ where
  __ := instNonUnitalSemiring
  __ := instNonAssocSemiring
  __ := instMonoidWithZero

instance instCommSemiring : CommSemiring ℕ where
  __ := instSemiring
  __ := instCommMonoid

instance instCharZero : CharZero ℕ where cast_injective := Function.injective_id

end Nat
```
