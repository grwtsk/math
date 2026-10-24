# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Finite.Variantaf74f2b78695ad65c8cffa781589e713e0726667b760b905fe51277b13b4da70

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `47102320149e4573dc980457541d5d10af2127d7` · SHA-256 `af74f2b78695ad65c8cffa781589e713e0726667b760b905fe51277b13b4da70`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Algebra.Group.Equiv.Defs
import Mathlib.Data.Fintype.Defs

/-!
# Finite types with addition/multiplications

This file contains basic results and instances for finite types that have an
addition/multiplication operator.

## Main results

* `Fintype.decidableEqMulEquivFintype`: `MulEquiv`s on finite types have decidable equality
-/

assert_not_exists MonoidWithZero MulAction

open Function

open Nat

universe u v

variable {α β γ : Type*}

open Function

namespace Fintype

section BundledHoms

@[to_additive]
instance decidableEqMulEquivFintype {α β : Type*} [DecidableEq β] [Fintype α] [Mul α] [Mul β] :
    DecidableEq (α ≃* β) :=
  fun a b => decidable_of_iff ((a : α → β) = b) (Injective.eq_iff DFunLike.coe_injective)

end BundledHoms

end Fintype
```
