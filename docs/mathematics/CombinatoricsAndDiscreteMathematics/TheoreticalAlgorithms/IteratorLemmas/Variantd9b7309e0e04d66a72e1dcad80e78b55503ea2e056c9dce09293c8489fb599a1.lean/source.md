# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IteratorLemmas.Variantd9b7309e0e04d66a72e1dcad80e78b55503ea2e056c9dce09293c8489fb599a1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `82f5e17fba0a5c5df053b97d6ebc857e0ffa69fa` · SHA-256 `d9b7309e0e04d66a72e1dcad80e78b55503ea2e056c9dce09293c8489fb599a1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude

import Std.Data.DHashMap.IteratorLemmas
import all Std.Data.HashMap.IteratorLemmas
public import Std.Data.HashSet.Iterator
import all Std.Data.HashSet.Iterator
import Std.Data.HashSet.RawLemmas
import all Std.Data.DHashMap.Basic

namespace Std.HashSet.Raw
open Std.Iterators

variable {α : Type u} {m : Raw α}

@[simp]
public theorem toList_iter [BEq α] [Hashable α] [EquivBEq α] [LawfulHashable α] (h : m.WF) :
    m.iter.toList = m.toList := by
  simp [toList, iter, DHashMap.Raw.toList_iter,
    ← HashMap.Raw.map_fst_toList_eq_keys h.out, HashMap.Raw.toList_inner]

@[simp]
public theorem toListRev_iter [BEq α] [Hashable α] [EquivBEq α] [LawfulHashable α] (h : m.WF) :
    m.iter.toListRev = m.toList.reverse := by
  simp [Iter.toListRev_eq, toList_iter h]

@[simp]
public theorem toArray_iter [BEq α] [Hashable α] [EquivBEq α] [LawfulHashable α] (h : m.WF) :
    m.iter.toArray = m.toArray := by
  simp [← Iter.toArray_toList, ← Raw.toArray_toList h, toList_iter h]

end Std.HashSet.Raw

namespace Std.HashSet
open Std.Iterators

variable {α : Type u} [BEq α] [Hashable α] {m : HashSet α}

@[simp]
public theorem toList_iter [EquivBEq α] [LawfulHashable α] :
    m.iter.toList = m.toList := by
  simp [iter, DHashMap.toList_iter, toList, HashMap.keys_inner]

@[simp]
public theorem toListRev_iter [EquivBEq α] [LawfulHashable α] :
    m.iter.toListRev = m.toList.reverse := by
  simp [iter, DHashMap.toListRev_iter, toList, HashMap.keys_inner]

@[simp]
public theorem toArray_iter [EquivBEq α] [LawfulHashable α] :
    m.iter.toArray = m.toArray := by
  simp [iter, DHashMap.toArray_iter, toArray, HashMap.keysArray]

end Std.HashSet
```
