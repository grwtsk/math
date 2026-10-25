# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Iterator.Variantb537eb6dd5fb9d406e2cc240021518fb3c18774089ff6c3aa422088b153fffcd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `51cb16f60cba86adce3f42d2e2f0f42fd29ba616` · SHA-256 `b537eb6dd5fb9d406e2cc240021518fb3c18774089ff6c3aa422088b153fffcd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude
public import Std.Data.TreeMap.Basic
public import Std.Data.DTreeMap.Iterator
import Init.Data.Iterators.Lemmas.Combinators.FilterMap

/-!
# Iterators on `DTreeMap`
-/

namespace Std.TreeMap
open Std.Iterators

/--
Returns a finite iterator over the entries of a tree map.
The iterator yields the elements of the map in order and then terminates.

**Termination properties:**

* `Finite` instance: always
* `Productive` instance: always
-/
@[inline, cbv_opaque]
public def iter {α : Type u} {β : Type v}
    {cmp : α → α → Ordering} (m : TreeMap α β cmp) :=
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
    {cmp : α → α → Ordering} (m : TreeMap α β cmp) :=
  m.inner.keysIter

/--
Returns a finite iterator over the values of a tree map.
The iterator yields the values in order and then terminates.

The key and value types must live in the same universe.

**Termination properties:**

* `Finite` instance: always
* `Productive` instance: always
-/
@[inline]
public def valuesIter {α : Type u} {β : Type u} {cmp : α → α → Ordering}
    (m : TreeMap α β cmp) :=
  m.inner.valuesIter

@[simp, cbv_eval]
public theorem toList_iter {cmp : α → α → Ordering} (m : TreeMap α β cmp) :
    m.iter.toList = m.toList := by
  simp only [iter, Iter.toList_map, DTreeMap.toList_iter, DTreeMap.toList,
    DTreeMap.Internal.Impl.toList_eq_toListModel, toList, DTreeMap.Const.toList,
    DTreeMap.Internal.Impl.Const.toList_eq_toListModel_map]


@[simp]
public theorem keysIter_toList {α β} {cmp : α → α → Ordering} (m : TreeMap α β cmp) :
    m.keysIter.toList = m.keys :=
  m.inner.keysIter_toList

@[simp]
public theorem valuesIter_toList {α β} {cmp : α → α → Ordering} (m : TreeMap α β cmp) :
    m.valuesIter.toList = m.values :=
  m.inner.valuesIter_toList

end Std.TreeMap
```
