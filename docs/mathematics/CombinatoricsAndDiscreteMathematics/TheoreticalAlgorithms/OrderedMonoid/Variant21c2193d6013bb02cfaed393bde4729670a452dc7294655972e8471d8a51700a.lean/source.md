# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OrderedMonoid.Variant21c2193d6013bb02cfaed393bde4729670a452dc7294655972e8471d8a51700a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f8a71115ac35b53f244821371babecd7b8840f3a` · SHA-256 `21c2193d6013bb02cfaed393bde4729670a452dc7294655972e8471d8a51700a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2015 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public import Mathlib.Algebra.Order.Group.Multiset
public import Mathlib.Algebra.Order.Monoid.Canonical.Defs

/-!
# Multisets as ordered monoids

The `IsOrderedCancelAddMonoid` and `CanonicallyOrderedAdd` instances on `Multiset α`

-/

public section

variable {α : Type*}

namespace Multiset

instance : IsOrderedCancelAddMonoid (Multiset α) where
  add_le_add_left := fun _ _ => add_le_add_left
  le_of_add_le_add_left := fun _ _ _ => le_of_add_le_add_left

instance : CanonicallyOrderedAdd (Multiset α) where
  le_add_self := le_add_left
  le_self_add := le_add_right
  exists_add_of_le h := exists_add_of_le h

end Multiset
```
