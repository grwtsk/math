-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToListIter.Variantd9b7309e0e04d66a72e1dcad80e78b55503ea2e056c9dce09293c8489fb599a1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d9b7309e0e04d66a72e1dcad80e78b55503ea2e056c9dce09293c8489fb599a1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ToListIter.Variantd9b7309e0e04d66a72e1dcad80e78b55503ea2e056c9dce09293c8489fb599a1","mathematical_subject":"Computation.DataStructures","original_sha256":"d9b7309e0e04d66a72e1dcad80e78b55503ea2e056c9dce09293c8489fb599a1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/HashSet/IteratorLemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ToListIter.Variantd9b7309e0e04d66a72e1dcad80e78b55503ea2e056c9dce09293c8489fb599a1

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
