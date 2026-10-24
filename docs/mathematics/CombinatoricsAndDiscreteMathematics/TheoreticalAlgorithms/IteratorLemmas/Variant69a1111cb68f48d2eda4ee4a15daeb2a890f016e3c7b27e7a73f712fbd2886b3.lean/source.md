# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IteratorLemmas.Variant69a1111cb68f48d2eda4ee4a15daeb2a890f016e3c7b27e7a73f712fbd2886b3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `764128016d38936a0b67c1579bdc9fd17d51f649` · SHA-256 `c807fb09b8388d4c95448679a569c764ec274c87e5f101d2c9aa5eaf72c9852f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToListInner.Variantb0fb103190c96b6db9baeba1e0458891b9dd608442aebb921cb3b678f077b687","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b0fb103190c96b6db9baeba1e0458891b9dd608442aebb921cb3b678f077b687","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ToListInner.Variantb0fb103190c96b6db9baeba1e0458891b9dd608442aebb921cb3b678f077b687","mathematical_subject":"Computation.DataStructures","original_sha256":"b0fb103190c96b6db9baeba1e0458891b9dd608442aebb921cb3b678f077b687","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/HashMap/IteratorLemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
import Init.Data.Iterators.Lemmas.Combinators

import Std.Data.DHashMap.IteratorLemmas
public import Std.Data.HashMap.Iterator
import all Std.Data.HashMap.Iterator
import Std.Data.HashMap.RawLemmas
import Std.Data.HashMap.Lemmas
import all Std.Data.DHashMap.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToListInner.Variantb0fb103190c96b6db9baeba1e0458891b9dd608442aebb921cb3b678f077b687

namespace Std.HashMap.Raw
open Std.Iterators

section EntriesIter

variable {α : Type u} {β : Type v} {m : Raw α β}

theorem toList_inner :
    m.inner.toList = m.toList.map fun e => ⟨e.1, e.2⟩ := by
  simp [toList, DHashMap.Internal.Raw.Const.toList_eq_toListModel_map,
    ← DHashMap.Internal.Raw.toList_eq_toListModel, Function.comp_def]

@[simp]
public theorem toList_iter :
    m.iter.toList = m.toList := by
  simp [Raw.iter, Iter.toList_map, DHashMap.Raw.toList_iter, toList_inner,
    Function.comp_def]

@[simp]
public theorem toListRev_iter :
    m.iter.toListRev = m.toList.reverse := by
  simp [Iter.toListRev_eq, toList_iter]

@[simp]
public theorem toArray_iter [BEq α] [Hashable α] (h : m.WF) :
    m.iter.toArray = m.toArray := by
  simp [← Iter.toArray_toList, ← Raw.toArray_toList h, toList_iter]

end EntriesIter

section KeysIter

variable {α β : Type u} {m : Raw α β}

theorem keys_inner :
    m.inner.keys = m.keys :=
  rfl

@[simp]
public theorem toList_keysIter [BEq α] [Hashable α] [EquivBEq α] [LawfulHashable α] (h : m.WF) :
    m.keysIter.toList = m.keys := by
  simp only [keysIter, ← map_fst_toList_eq_keys h, DHashMap.Raw.toList_keysIter h.out]
  simp [HashMap.Raw.map_fst_toList_eq_keys h, keys_inner]

@[simp]
public theorem toListRev_keysIter [BEq α] [Hashable α] [EquivBEq α] [LawfulHashable α] (h : m.WF) :
    m.keysIter.toListRev = m.keys.reverse := by
  simp [Iter.toListRev_eq, toList_keysIter h]

@[simp]
public theorem toArray_keysIter [BEq α] [Hashable α] [EquivBEq α] [LawfulHashable α] (h : m.WF) :
    m.keysIter.toArray = m.keysArray := by
  simp [← Iter.toArray_toList, ← Raw.toArray_keys h, toList_keysIter h]

end KeysIter

section ValuesIter

variable {α β : Type u} {m : Raw α β}

@[simp]
public theorem toList_valuesIter_eq_toList_map_snd :
    m.valuesIter.toList = m.toList.map Prod.snd := by
  simp [valuesIter, DHashMap.Raw.toList_valuesIter_eq_toList_map_snd,
    DHashMap.Internal.Raw.toList_eq_toListModel, toList,
    DHashMap.Internal.Raw.Const.toList_eq_toListModel_map]

@[simp]
public theorem toListRev_valuesIter :
    m.valuesIter.toListRev = (m.toList.map Prod.snd).reverse := by
  simp [Iter.toListRev_eq, toList_valuesIter_eq_toList_map_snd]

@[simp]
public theorem toArray_valuesIter :
    m.valuesIter.toArray = (m.toList.map Prod.snd).toArray := by
  simp [← Iter.toArray_toList, toList_valuesIter_eq_toList_map_snd]

end ValuesIter

end Std.HashMap.Raw

namespace Std.HashMap
open Std.Iterators

section EntriesIter

variable {α : Type u} {β : Type v} [BEq α] [Hashable α] {m : HashMap α β}

theorem toList_inner :
    m.inner.toList = m.toList.map fun e => ⟨e.1, e.2⟩ := by
  simp [toList, DHashMap.Const.toList, DHashMap.Internal.Raw.Const.toList_eq_toListModel_map,
    Function.comp_def, DHashMap.toList, DHashMap.Internal.Raw.toList_eq_toListModel]

@[simp]
public theorem toList_iter :
    m.iter.toList = m.toList := by
  simp [iter, DHashMap.toList_iter, toList_inner, Function.comp_def]

@[simp]
public theorem toListRev_iter :
    m.iter.toListRev = m.toList.reverse := by
  simp [Iter.toListRev_eq, toList_iter]

@[simp]
public theorem toArray_iter :
    m.iter.toArray = m.toArray := by
  simp [← Iter.toArray_toList, toList_iter]

end EntriesIter

section KeysIter

theorem keys_inner {α : Type u} {β : Type v} [BEq α] [Hashable α] {m : HashMap α β} :
    m.inner.keys = m.keys :=
  rfl

variable {α : Type u} {β : Type u} [BEq α] [Hashable α] {m : HashMap α β}

@[simp]
public theorem toList_keysIter [EquivBEq α] [LawfulHashable α] :
    m.keysIter.toList = m.keys := by
  simp [keysIter, DHashMap.toList_keysIter, keys_inner]

@[simp]
public theorem toListRev_keysIter [EquivBEq α] [LawfulHashable α] :
    m.keysIter.toListRev = m.keys.reverse := by
  simp [keysIter, DHashMap.toListRev_keysIter, keys_inner]

@[simp]
public theorem toArray_keysIter [EquivBEq α] [LawfulHashable α] :
    m.keysIter.toArray = m.keysArray := by
  simp [← Iter.toArray_toList, keysIter, keysArray, DHashMap.toList_keysIter]

end KeysIter

section ValuesIter

variable {α : Type u} {β : Type u} [BEq α] [Hashable α] {m : HashMap α β}

@[simp]
public theorem toList_valuesIter_eq_toList_map_snd :
    m.valuesIter.toList = m.toList.map Prod.snd := by
  simp [valuesIter, DHashMap.toList_valuesIter_eq_toList_map_snd, toList_inner]

@[simp]
public theorem toListRev_valuesIter :
    m.valuesIter.toListRev = (m.toList.map Prod.snd).reverse := by
  simp [Iter.toListRev_eq, toList_valuesIter_eq_toList_map_snd]

@[simp]
public theorem toArray_valuesIter :
    m.valuesIter.toArray = (m.toList.map Prod.snd).toArray := by
  simp [← Iter.toArray_toList, toList_valuesIter_eq_toList_map_snd]

end ValuesIter

end Std.HashMap
```
