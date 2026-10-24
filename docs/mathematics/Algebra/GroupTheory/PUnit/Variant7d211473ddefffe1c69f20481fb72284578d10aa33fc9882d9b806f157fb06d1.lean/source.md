# Complete source: GRWTSK.Algebra.GroupTheory.PUnit.Variant7d211473ddefffe1c69f20481fb72284578d10aa33fc9882d9b806f157fb06d1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8a8b0aa4ff7a04eafa1323055d2c4c5391e86329` · SHA-256 `7d211473ddefffe1c69f20481fb72284578d10aa33fc9882d9b806f157fb06d1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau
-/
import Mathlib.Algebra.Group.Defs

/-!
# `PUnit` is a commutative group

This file collects facts about algebraic structures on the one-element type, e.g. that it is a
commutative ring.
-/

assert_not_exists MonoidWithZero

namespace PUnit

@[to_additive]
instance commGroup : CommGroup PUnit where
  mul _ _ := unit
  one := unit
  inv _ := unit
  div _ _ := unit
  npow _ _ := unit
  zpow _ _ := unit
  mul_assoc _ _ _ := rfl
  one_mul _ := rfl
  mul_one _ := rfl
  inv_mul_cancel _ := rfl
  mul_comm _ _ := rfl

-- shortcut instances
@[to_additive] instance : One PUnit where one := unit
@[to_additive] instance : Mul PUnit where mul _ _ := unit
@[to_additive] instance : Div PUnit where div _ _ := unit
@[to_additive] instance : Inv PUnit where inv _ := unit

@[to_additive (attr := simp)] lemma one_eq : (1 : PUnit) = unit := rfl

-- note simp can prove this when the Boolean ring structure is introduced
@[to_additive] lemma mul_eq (x y : PUnit) : x * y = unit := rfl

@[to_additive (attr := simp)] lemma div_eq (x y : PUnit) : x / y = unit := rfl
@[to_additive (attr := simp)] lemma inv_eq (x : PUnit) : x⁻¹ = unit := rfl

end PUnit
```
