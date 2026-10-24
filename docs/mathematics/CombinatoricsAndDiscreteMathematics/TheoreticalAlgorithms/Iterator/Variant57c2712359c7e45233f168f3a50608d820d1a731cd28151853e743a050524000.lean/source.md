# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Iterator.Variant57c2712359c7e45233f168f3a50608d820d1a731cd28151853e743a050524000

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `94d3833ab3ad978873946e886fa9e00549a3e0b2` · SHA-256 `57c2712359c7e45233f168f3a50608d820d1a731cd28151853e743a050524000`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Std.Data.HashMap.Iterator
public import Std.Data.HashSet.Basic
public import Std.Data.HashSet.Raw
import Init.Data.Iterators.Combinators.FilterMap

/-!
# Iterators on `HashSet` and `HashSet.Raw`
-/

namespace Std.HashSet.Raw

/--
Returns a finite iterator over the elements of a hash set.
The iterator yields the elements of the set in order and then terminates.

**Termination properties:**

* `Finite` instance: always
* `Productive` instance: always
-/
@[inline]
public def iter {α : Type u} (m : Raw α) :=
  (m.inner.inner.iter.map fun e => e.1 : Iter α)

end Std.HashSet.Raw

namespace Std.HashSet

@[inline, inherit_doc Raw.iter]
public def iter {α : Type u} [BEq α] [Hashable α] (m : HashSet α) :=
  (m.inner.inner.iter.map fun e => e.1 : Iter α)

end Std.HashSet
```
