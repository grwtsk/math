# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Iterator.Variant8863a4b0a0a39d220a10b54953bb353818bc72b12e59599ccebac339c66f96b6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `14def363fa6a67560dce6e7c3f11464bd5e6b003` · SHA-256 `8863a4b0a0a39d220a10b54953bb353818bc72b12e59599ccebac339c66f96b6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude
public import Std.Data.DTreeMap.Raw.Iterator

/-!
# Iterators on `DTreeMap`
-/

namespace Std.DTreeMap
open Std.Iterators

/--
Returns a finite iterator over the entries of a dependent tree map.
The iterator yields the elements of the map in order and then terminates.

**Termination properties:**

* `Finite` instance: always
* `Productive` instance: always
-/
@[inline]
public def iter {α : Type u} {β : α → Type v}
    {cmp : α → α → Ordering} (m : DTreeMap α β cmp) :=
  @Raw.iter _ _ cmp ⟨m.inner⟩

/--
Returns a finite iterator over the keys of a dependent tree map.
The iterator yields the keys in order and then terminates.

The key and value types must live in the same universe.

**Termination properties:**

* `Finite` instance: always
* `Productive` instance: always
-/
@[inline]
public def keysIter {α : Type u} {β : α → Type u} {cmp : α → α → Ordering} (m : DTreeMap α β cmp) :=
  @Raw.keysIter _ _ cmp ⟨m.inner⟩

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
    (m : DTreeMap α (fun _ => β) cmp) :=
  @Raw.valuesIter _ _ cmp  ⟨m.inner⟩

@[simp]
public theorem toList_iter {cmp : α → α → Ordering} (m : DTreeMap α β cmp) :
    m.iter.toList = m.toList := Raw.toList_iter ⟨m.inner⟩

@[simp]
public theorem keysIter_toList {cmp : α → α → Ordering} (m : DTreeMap α β cmp) :
    m.keysIter.toList = m.keys := Raw.keysIter_toList ⟨m.inner⟩

@[simp]
public theorem valuesIter_toList {cmp : α → α → Ordering} (m : DTreeMap α (fun _ => β) cmp) :
    m.valuesIter.toList = m.values := Raw.valuesIter_toList ⟨m.inner⟩

end Std.DTreeMap
```
