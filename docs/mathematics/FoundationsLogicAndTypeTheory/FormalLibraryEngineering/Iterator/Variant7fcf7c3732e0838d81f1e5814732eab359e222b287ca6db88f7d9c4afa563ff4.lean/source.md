# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Iterator.Variant7fcf7c3732e0838d81f1e5814732eab359e222b287ca6db88f7d9c4afa563ff4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0ee4ae2190c0a241742e2e2aab4c61227bd96bb8` · SHA-256 `7fcf7c3732e0838d81f1e5814732eab359e222b287ca6db88f7d9c4afa563ff4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude
public import Std.Data.DTreeMap.Raw.Iterator
public import Std.Data.TreeMap.Raw.Basic
import Init.Data.Iterators.Lemmas.Combinators.FilterMap

/-!
# Iterators on `DTreeMap.Raw`
-/

namespace Std.TreeMap.Raw
open Std.Iterators

/--
Returns a finite iterator over the entries of a tree map.
The iterator yields the elements of the map in order and then terminates.

**Termination properties:**

* `Finite` instance: always
* `Productive` instance: always
-/
@[inline]
public def iter {α : Type u} {β : Type v}
    {cmp : α → α → Ordering} (m : Raw α β cmp) :=
  (m.inner.iter.map fun e => (e.1, e.2) : Iter (α × β))

/--
Returns a finite iterator over the keys of a tree map.
The iterator yields the keys in order and then terminates.

The key and value types must live in the same universe.

**Termination properties:**

* `Finite` instance: always
* `Productive` instance: always
-/
@[inline]
public def keysIter {α : Type u} {β : Type u}
    {cmp : α → α → Ordering} (m : Raw α β cmp) :=
  (m.inner.keysIter : Iter α)

/--
Returns a finite iterator over the values of a tree map.
The iterator yields the values in order and then terminates.

The key and value types must live in the same universe.

**Termination properties:**

* `Finite` instance: always
* `Productive` instance: always
-/
@[inline]
public def valuesIter {α : Type u} {β : Type u}
    {cmp : α → α → Ordering} (m : Raw α β cmp) :=
  (m.inner.valuesIter : Iter β)

@[simp]
public theorem toList_iter {α : Type u} {β : Type v} {cmp : α → α → Ordering} (m : Raw α β cmp) :
    (m.iter.toList) = m.toList := by
  simp only [iter, Iter.toList_map, DTreeMap.Raw.toList_iter]
  simp only [DTreeMap.Raw.toList, DTreeMap.Internal.Impl.toList_eq_toListModel, toList,
    DTreeMap.Raw.Const.toList, DTreeMap.Internal.Impl.Const.toList_eq_toListModel_map]

@[simp]
public theorem keysIter_toList {α β} {cmp : α → α → Ordering} (m : Raw α β cmp) :
    m.keysIter.toList = m.keys :=
  DTreeMap.Raw.keysIter_toList m.inner

@[simp]
public theorem valuesIter_toList {α β} {cmp : α → α → Ordering} (m : Raw α β cmp) :
    m.valuesIter.toList = m.values :=
  DTreeMap.Raw.valuesIter_toList m.inner

end Std.TreeMap.Raw
```
