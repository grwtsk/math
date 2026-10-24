# Complete source: GRWTSK.Algebra.Field.Variantaf7c9475ff3eeaaa1db63797e8a8056a25f9a2a03792fae7543e7ecd4c1353d3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4cab5483cf3bd61191365be74c4ef99ca3570108` · SHA-256 `af7c9475ff3eeaaa1db63797e8a8056a25f9a2a03792fae7543e7ecd4c1353d3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.Order.Positive.Ring

/-!
# Algebraic structures on the set of positive numbers

In this file we prove that the set of positive elements of a linear ordered field is a linear
ordered commutative group.
-/


variable {K : Type*} [Field K] [LinearOrder K] [IsStrictOrderedRing K]

namespace Positive

instance Subtype.inv : Inv { x : K // 0 < x } := ⟨fun x => ⟨x⁻¹, inv_pos.2 x.2⟩⟩

@[simp]
theorem coe_inv (x : { x : K // 0 < x }) : ↑x⁻¹ = (x⁻¹ : K) :=
  rfl

instance : Pow { x : K // 0 < x } ℤ :=
  ⟨fun x n => ⟨(x : K) ^ n, zpow_pos x.2 _⟩⟩

@[simp]
theorem coe_zpow (x : { x : K // 0 < x }) (n : ℤ) : ↑(x ^ n) = (x : K) ^ n :=
  rfl

instance : CommGroup { x : K // 0 < x } :=
  { Positive.commMonoid with
    inv_mul_cancel := fun a => Subtype.ext <| inv_mul_cancel₀ a.2.ne' }

end Positive
```
