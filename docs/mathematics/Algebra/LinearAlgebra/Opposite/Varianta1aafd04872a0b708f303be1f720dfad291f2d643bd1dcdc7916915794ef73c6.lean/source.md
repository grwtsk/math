# Complete source: GRWTSK.Algebra.LinearAlgebra.Opposite.Varianta1aafd04872a0b708f303be1f720dfad291f2d643bd1dcdc7916915794ef73c6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2cf03b2e666825b2b837ccb418b689605a39e464` · SHA-256 `a1aafd04872a0b708f303be1f720dfad291f2d643bd1dcdc7916915794ef73c6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
module

public import Mathlib.Algebra.GroupWithZero.Action.Opposite
public import Mathlib.Algebra.Module.Defs
public import Mathlib.Algebra.Ring.Opposite

/-!
# Module operations on `Mᵐᵒᵖ`

This file contains definitions that build on top of the group action definitions in
`Mathlib/Algebra/GroupWithZero/Action/Opposite.lean`.
-/

public section

assert_not_exists LinearMap

section

variable {R : Type*} [Semiring R]

-- see Note [lower instance priority]
/-- Like `Semiring.toModule`, but multiplies on the right. -/
instance (priority := 910) Semiring.toOppositeModule : Module Rᵐᵒᵖ R :=
  { MonoidWithZero.toOppositeMulActionWithZero R with
    smul_add := fun _ _ _ => add_mul _ _ _
    add_smul := fun _ _ _ => mul_add _ _ _ }

end

namespace MulOpposite

universe u v

variable (R : Type u) {M : Type v} [Semiring R] [AddCommMonoid M] [Module R M]

/-- `MulOpposite.distribMulAction` extends to a `Module` -/
instance instModule : Module R Mᵐᵒᵖ where
  add_smul _ _ _ := unop_injective <| add_smul _ _ _
  zero_smul _ := unop_injective <| zero_smul _ _

end MulOpposite
```
