# Complete source: GRWTSK.Algebra.PUnit.Variantf15e5854308c465495ce7af111b375770722ec8c1ae7c7b2efcae2adc77b1a3c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `18dc75b92b2b24ee000c7bda32e3a6b0b0312a6d` · SHA-256 `f15e5854308c465495ce7af111b375770722ec8c1ae7c7b2efcae2adc77b1a3c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau
-/
import Mathlib.Algebra.Group.PUnit
import Mathlib.Algebra.Ring.Defs

/-!
# `PUnit` is a commutative ring

This file collects facts about algebraic structures on the one-element type, e.g. that it is a
commutative ring.
-/

assert_not_exists Field

namespace PUnit

instance commRing : CommRing PUnit where
  __ := PUnit.commGroup
  __ := PUnit.addCommGroup
  left_distrib := by intros; rfl
  right_distrib := by intros; rfl
  zero_mul := by intros; rfl
  mul_zero := by intros; rfl
  natCast _ := unit

instance cancelCommMonoidWithZero : CancelCommMonoidWithZero PUnit where
  mul_left_cancel_of_ne_zero := by simp

end PUnit
```
