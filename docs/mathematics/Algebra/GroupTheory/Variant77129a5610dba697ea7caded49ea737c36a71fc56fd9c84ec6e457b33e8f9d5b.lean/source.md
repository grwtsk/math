# Complete source: GRWTSK.Algebra.Group.Variant77129a5610dba697ea7caded49ea737c36a71fc56fd9c84ec6e457b33e8f9d5b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3a252307f625cd30ae675b372e674d845b5e62f0` · SHA-256 `77129a5610dba697ea7caded49ea737c36a71fc56fd9c84ec6e457b33e8f9d5b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau
-/
import Mathlib.Algebra.GroupWithZero.Action.Basic
import Mathlib.Algebra.Ring.Action.Basic
import Mathlib.Algebra.Ring.Equiv

/-!
# If a group acts multiplicatively on a semiring, each group element acts by a ring automorphism.

This result is split out from `Mathlib/Algebra/Ring/Action/Basic.lean`
to avoid needing the import of `Mathlib/Algebra/GroupWithZero/Action/Basic.lean`.
-/

section Semiring

variable (G : Type*) [Group G]
variable (R : Type*) [Semiring R]

/-- Each element of the group defines a semiring isomorphism. -/
@[simps!]
def MulSemiringAction.toRingEquiv [MulSemiringAction G R] (x : G) : R ≃+* R :=
  { DistribMulAction.toAddEquiv R x, MulSemiringAction.toRingHom G R x with }

end Semiring
```
