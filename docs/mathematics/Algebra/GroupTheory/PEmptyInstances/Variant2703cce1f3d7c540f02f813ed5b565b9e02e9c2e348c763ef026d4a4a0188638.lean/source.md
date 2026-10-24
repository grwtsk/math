# Complete source: GRWTSK.Algebra.GroupTheory.PEmptyInstances.Variant2703cce1f3d7c540f02f813ed5b565b9e02e9c2e348c763ef026d4a4a0188638

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `640e051181174ca8deacced747a599635e9785b8` · SHA-256 `2703cce1f3d7c540f02f813ed5b565b9e02e9c2e348c763ef026d4a4a0188638`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Julian Kuelshammer. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Julian Kuelshammer
-/
module

public import Mathlib.Algebra.Group.Semigroup

/-!
# Instances on pempty

This file collects facts about algebraic structures on the (universe-polymorphic) empty type, e.g.
that it is a semigroup.
-/

public section


universe u

@[to_additive]
instance SemigroupPEmpty : Semigroup PEmpty.{u + 1} where
  mul x _ := by cases x
  mul_assoc x y z := by cases x
```
