# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OrderedMonoid.Variantdf6ec6afab7371519a6fe9b6caf312da030cd463718dc4c987a2e5c734b74b43

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `634b19fe4587fc6a518c4759b4c28777e7de30a5` · SHA-256 `df6ec6afab7371519a6fe9b6caf312da030cd463718dc4c987a2e5c734b74b43`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2015 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Algebra.Order.Group.Multiset
import Mathlib.Algebra.Order.Monoid.Canonical.Defs

/-!
# Multisets as ordered monoids

The `IsOrderedCancelAddMonoid` and `CanonicallyOrderedAdd` instances on `Multiset α`

-/

variable {α : Type*}

namespace Multiset

open List

instance : IsOrderedCancelAddMonoid (Multiset α) where
  add_le_add_left := fun _ _ => add_le_add_left
  le_of_add_le_add_left := fun _ _ _ => le_of_add_le_add_left

instance : CanonicallyOrderedAdd (Multiset α) where
  le_self_add := le_add_right
  exists_add_of_le h := exists_add_of_le h

end Multiset
```
