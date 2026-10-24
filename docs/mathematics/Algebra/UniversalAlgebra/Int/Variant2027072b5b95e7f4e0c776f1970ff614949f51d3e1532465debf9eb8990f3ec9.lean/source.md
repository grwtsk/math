# Complete source: GRWTSK.Algebra.UniversalAlgebra.Int.Variant2027072b5b95e7f4e0c776f1970ff614949f51d3e1532465debf9eb8990f3ec9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5b96cfa1ab753b3a2b88fcb2446e24d74944d9b8` · SHA-256 `2027072b5b95e7f4e0c776f1970ff614949f51d3e1532465debf9eb8990f3ec9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad
-/
import Mathlib.Algebra.Group.Int.Defs
import Mathlib.Algebra.Order.Monoid.Defs

/-!
# The integers form a linear ordered group

This file contains the instance necessary to show that the integers are a linear ordered
additive group.

See note [foundational algebra order theory].
-/

-- We should need only a minimal development of sets in order to get here.
assert_not_exists Set.Subsingleton Ring

instance Int.instIsOrderedAddMonoid : IsOrderedAddMonoid ℤ where
  add_le_add_left _ _ := Int.add_le_add_left
```
