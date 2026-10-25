# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Iterator.Variantf62f5d1c60f2ba8f6329d8f9475f54b1d4bf4c06ab78719ca589efe6348509ce

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e4a9cce68fa376ab47213e414ba7941c00fa1cc1` · SHA-256 `9fb3e111636a5ee3064bbdf44c325a2b0edab93612d0c7464ef84d0bfda0b763`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Iter.Variant7fcf7c3732e0838d81f1e5814732eab359e222b287ca6db88f7d9c4afa563ff4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7fcf7c3732e0838d81f1e5814732eab359e222b287ca6db88f7d9c4afa563ff4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Iter.Variant7fcf7c3732e0838d81f1e5814732eab359e222b287ca6db88f7d9c4afa563ff4","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"7fcf7c3732e0838d81f1e5814732eab359e222b287ca6db88f7d9c4afa563ff4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/TreeMap/Raw/Iterator.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Iter.Variant7fcf7c3732e0838d81f1e5814732eab359e222b287ca6db88f7d9c4afa563ff4

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
