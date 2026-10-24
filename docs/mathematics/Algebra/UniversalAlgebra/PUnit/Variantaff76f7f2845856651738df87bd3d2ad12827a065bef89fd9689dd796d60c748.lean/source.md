# Complete source: GRWTSK.Algebra.UniversalAlgebra.PUnit.Variantaff76f7f2845856651738df87bd3d2ad12827a065bef89fd9689dd796d60c748

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b1c41e9b1116fa0c0d658a729bb1075ba0ae9325` · SHA-256 `aff76f7f2845856651738df87bd3d2ad12827a065bef89fd9689dd796d60c748`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau
-/
import Mathlib.Algebra.Group.PUnit
import Mathlib.Algebra.Order.AddGroupWithTop
/-!
# Instances on PUnit

This file collects facts about ordered algebraic structures on the one-element type.
-/

namespace PUnit

instance canonicallyOrderedAdd : CanonicallyOrderedAdd PUnit where
  exists_add_of_le {_ _} _ := ⟨unit, by subsingleton⟩
  le_self_add _ _ := trivial

instance isOrderedCancelAddMonoid : IsOrderedCancelAddMonoid PUnit where
  le_of_add_le_add_left _ _ _ _ := trivial
  add_le_add_left := by intros; rfl

instance : LinearOrderedAddCommMonoidWithTop PUnit where
  top := ()
  le_top _ := le_rfl
  top_add' _ := rfl

end PUnit
```
