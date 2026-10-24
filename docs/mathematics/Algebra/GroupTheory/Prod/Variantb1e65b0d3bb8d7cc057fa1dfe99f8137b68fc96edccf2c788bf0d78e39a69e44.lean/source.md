# Complete source: GRWTSK.Algebra.GroupTheory.Prod.Variantb1e65b0d3bb8d7cc057fa1dfe99f8137b68fc96edccf2c788bf0d78e39a69e44

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `97fcd9eafb9a0ce36a482127558efd2a2c250681` · SHA-256 `b1e65b0d3bb8d7cc057fa1dfe99f8137b68fc96edccf2c788bf0d78e39a69e44`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser, Yaël Dillies
-/
import Mathlib.Algebra.Group.Prod
import Mathlib.Algebra.GroupWithZero.Hom
import Mathlib.Algebra.GroupWithZero.Units.Basic

/-!
# Products of monoids with zero, groups with zero

In this file we define `MonoidWithZero`, `GroupWithZero`, etc... instances for `M₀ × N₀`.

## Main declarations

* `mulMonoidWithZeroHom`: Multiplication bundled as a monoid with zero homomorphism.
* `divMonoidWithZeroHom`: Division bundled as a monoid with zero homomorphism.
-/

assert_not_exists DenselyOrdered Ring

variable {M₀ N₀ : Type*}

namespace Prod

instance instMulZeroClass [MulZeroClass M₀] [MulZeroClass N₀] : MulZeroClass (M₀ × N₀) where
  zero_mul := by simp [Prod.mul_def]
  mul_zero := by simp [Prod.mul_def]

instance instSemigroupWithZero [SemigroupWithZero M₀] [SemigroupWithZero N₀] :
    SemigroupWithZero (M₀ × N₀) where
  zero_mul := by simp [Prod.mul_def]
  mul_zero := by simp [Prod.mul_def]

instance instMulZeroOneClass [MulZeroOneClass M₀] [MulZeroOneClass N₀] :
    MulZeroOneClass (M₀ × N₀) where
  zero_mul := by simp [Prod.mul_def]
  mul_zero := by simp [Prod.mul_def]

instance instMonoidWithZero [MonoidWithZero M₀] [MonoidWithZero N₀] : MonoidWithZero (M₀ × N₀) where
  zero_mul := by simp [Prod.mul_def]
  mul_zero := by simp [Prod.mul_def]

instance instCommMonoidWithZero [CommMonoidWithZero M₀] [CommMonoidWithZero N₀] :
    CommMonoidWithZero (M₀ × N₀) where
  zero_mul := by simp [Prod.mul_def]
  mul_zero := by simp [Prod.mul_def]

end Prod

/-! ### Multiplication and division as homomorphisms -/

section BundledMulDiv

/-- Multiplication as a multiplicative homomorphism with zero. -/
@[simps]
def mulMonoidWithZeroHom [CommMonoidWithZero M₀] : M₀ × M₀ →*₀ M₀ where
  __ := mulMonoidHom
  map_zero' := mul_zero _

/-- Division as a multiplicative homomorphism with zero. -/
@[simps]
def divMonoidWithZeroHom [CommGroupWithZero M₀] : M₀ × M₀ →*₀ M₀ where
  __ := divMonoidHom
  map_zero' := zero_div _

end BundledMulDiv
```
