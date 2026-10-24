# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Finite.Variant6d38ade7a5482e6a0188256c713241e1c4b26016edcc2c908a74764073bb84c3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2b17ab38fda56725a1769a4c0f84c8f67a84475d` · SHA-256 `6d38ade7a5482e6a0188256c713241e1c4b26016edcc2c908a74764073bb84c3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public import Mathlib.Algebra.Group.Equiv.Defs
public import Mathlib.Data.Fintype.Defs

/-!
# Finite types with addition/multiplications

This file contains basic results and instances for finite types that have an
addition/multiplication operator.

## Main results

* `Fintype.decidableEqMulEquivFintype`: `MulEquiv`s on finite types have decidable equality
-/

public section

assert_not_exists MonoidWithZero MulAction

open Function

universe u v

variable {α β : Type*}

namespace Fintype

section BundledHoms

@[to_additive]
instance decidableEqMulEquivFintype {α β : Type*} [DecidableEq β] [Fintype α] [Mul α] [Mul β] :
    DecidableEq (α ≃* β) :=
  fun a b => decidable_of_iff ((a : α → β) = b) (Injective.eq_iff DFunLike.coe_injective)

end BundledHoms

end Fintype
```
