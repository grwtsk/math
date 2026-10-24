# Complete source: GRWTSK.Algebra.GroupTheory.Nat.Variant15fd93e08508062f7ac6049b965a1d3292a3a3e08b9296ded4253514f19df299

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `90a47d00cdf09b9b7d0a6d840f89e909069ea5b8` · SHA-256 `15fd93e08508062f7ac6049b965a1d3292a3a3e08b9296ded4253514f19df299`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2014 Floris van Doorn (c) 2016 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn, Leonardo de Moura, Jeremy Avigad, Mario Carneiro
-/
import Mathlib.Algebra.Group.Nat.Defs
import Mathlib.Algebra.GroupWithZero.Defs
import Mathlib.Tactic.Spread

/-!
# The natural numbers form a `CancelCommMonoidWithZero`

This file contains the `CancelCommMonoidWithZero` instance on the natural numbers.

See note [foundational algebra order theory].
-/

assert_not_exists Ring

namespace Nat

instance instMulZeroClass : MulZeroClass ℕ where
  zero_mul := Nat.zero_mul
  mul_zero := Nat.mul_zero

instance instSemigroupWithZero : SemigroupWithZero ℕ where
  __ := instSemigroup
  __ := instMulZeroClass

instance instMonoidWithZero : MonoidWithZero ℕ where
  __ := instMonoid
  __ := instMulZeroClass
  __ := instSemigroupWithZero

instance instCommMonoidWithZero : CommMonoidWithZero ℕ where
  __ := instCommMonoid
  __ := instMonoidWithZero

instance instIsLeftCancelMulZero : IsLeftCancelMulZero ℕ where
  mul_left_cancel_of_ne_zero h := Nat.eq_of_mul_eq_mul_left (Nat.pos_of_ne_zero h)

instance instCancelCommMonoidWithZero : CancelCommMonoidWithZero ℕ where
  __ := instCommMonoidWithZero
  __ := instIsLeftCancelMulZero

instance instMulDivCancelClass : MulDivCancelClass ℕ where
  mul_div_cancel _ _b hb := Nat.mul_div_cancel _ (Nat.pos_iff_ne_zero.2 hb)

instance instMulZeroOneClass : MulZeroOneClass ℕ where
  __ := instMulZeroClass
  __ := instMulOneClass

end Nat
```
