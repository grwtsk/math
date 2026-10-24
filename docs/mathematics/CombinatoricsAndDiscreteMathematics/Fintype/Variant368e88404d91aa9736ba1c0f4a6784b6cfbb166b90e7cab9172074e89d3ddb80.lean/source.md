# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Fintype.Variant368e88404d91aa9736ba1c0f4a6784b6cfbb166b90e7cab9172074e89d3ddb80

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b983a6e56f06b2043f6f5d4d98a083a4887cbe87` · SHA-256 `368e88404d91aa9736ba1c0f4a6784b6cfbb166b90e7cab9172074e89d3ddb80`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 . All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes
-/
import Mathlib.Data.SetLike.Basic
import Mathlib.Data.Fintype.Powerset

/-!
# Set-like fintype

This file contains a fintype instance for set-like objects such as subgroups. If `SetLike A B`
and `Fintype B` then `Fintype A`.
-/


namespace SetLike

/-- TODO: It should be possible to obtain a computable version of this for most
SetLike objects. If we add those instances, we should remove this one. -/
noncomputable instance (priority := 100) {A B : Type*} [SetLike A B] [Fintype B] : Fintype A :=
  Fintype.ofInjective SetLike.coe SetLike.coe_injective

-- See note [lower instance priority]
instance (priority := 100) {A B : Type*} [SetLike A B] [Finite B] : Finite A :=
  Finite.of_injective SetLike.coe SetLike.coe_injective

end SetLike
```
