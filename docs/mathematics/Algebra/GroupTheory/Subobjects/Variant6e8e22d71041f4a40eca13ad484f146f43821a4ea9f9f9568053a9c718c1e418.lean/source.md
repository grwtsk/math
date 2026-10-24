# Complete source: GRWTSK.Algebra.GroupTheory.Subobjects.Variant6e8e22d71041f4a40eca13ad484f146f43821a4ea9f9f9568053a9c718c1e418

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `940e6eb55e6a677dc1fc881da50e38db9862cf2e` · SHA-256 `6e8e22d71041f4a40eca13ad484f146f43821a4ea9f9f9568053a9c718c1e418`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.Group.Subgroup.Defs
import Mathlib.Algebra.Group.Submonoid.DistribMulAction
import Mathlib.Algebra.Ring.Action.Basic

/-!
# Instances of `MulSemiringAction` for subobjects

These are defined in this file as `Semiring`s are not available yet where `Submonoid` and `Subgroup`
are defined.

Instances for `Subsemiring` and `Subring` are provided next to the other scalar actions instances
for those subobjects.

-/

assert_not_exists RelIso

variable {M G R : Type*}
variable [Monoid M] [Group G] [Semiring R]

instance (priority := low) [MulSemiringAction M R] {S : Type*} [SetLike S M] (s : S)
    [SubmonoidClass S M] : MulSemiringAction s R :=
  { inferInstanceAs (DistribMulAction s R), inferInstanceAs (MulDistribMulAction s R) with }

/-- A stronger version of `Submonoid.distribMulAction`. -/
instance Submonoid.mulSemiringAction [MulSemiringAction M R] (H : Submonoid M) :
    MulSemiringAction H R :=
  inferInstance

/-- A stronger version of `Subgroup.distribMulAction`. -/
instance Subgroup.mulSemiringAction [MulSemiringAction G R] (H : Subgroup G) :
    MulSemiringAction H R :=
  inferInstance
```
