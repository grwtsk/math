# Complete source: GRWTSK.Algebra.UniversalAlgebra.Flag.Variant058e73ba5a34852b1dec5d44f3bfbc0ba573ae2f4b222e4a63f0e1d1062a62bd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9c0df44a78e6dd3a7ac374598a0786401aa1b897` · SHA-256 `058e73ba5a34852b1dec5d44f3bfbc0ba573ae2f4b222e4a63f0e1d1062a62bd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Group.Action.Pointwise.Set.Basic
import Mathlib.Algebra.Order.Group.Action.End
import Mathlib.Order.Preorder.Chain

/-!
# Action on flags

Order isomorphisms act on flags.
-/

open scoped Pointwise

variable {α : Type*}

namespace Flag
variable [Preorder α]

instance : SMul (α ≃o α) (Flag α) where smul e := map e

@[simp, norm_cast]
lemma coe_smul (e : α ≃o α) (s : Flag α) : (↑(e • s) : Set α) = e • s := rfl

instance : MulAction (α ≃o α) (Flag α) := SetLike.coe_injective.mulAction _ coe_smul

end Flag
```
