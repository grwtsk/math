-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IterToHashSetEquivOfList.Variant5cca1872fe3ccff8223e4a43263c15a2cfafa08031094a9b9f681493a4db459e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5cca1872fe3ccff8223e4a43263c15a2cfafa08031094a9b9f681493a4db459e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.IterToHashSetEquivOfList.Variant5cca1872fe3ccff8223e4a43263c15a2cfafa08031094a9b9f681493a4db459e","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"5cca1872fe3ccff8223e4a43263c15a2cfafa08031094a9b9f681493a4db459e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/Iterators/Lemmas/Consumers/Set.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

prelude
public import Std.Data.Iterators.Consumers.Set
public import Init.Data.Iterators.Consumers.Collect
import all Std.Data.Iterators.Consumers.Set
import Std.Data.Iterators.Lemmas.Consumers.Monadic.Set
import Init.Data.Iterators.Lemmas.Consumers.Loop
import Std.Data.HashSet.Lemmas
import Std.Data.TreeSet.Lemmas
import Init.Data.Iterators.Lemmas.Consumers.Collect


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IterToHashSetEquivOfList.Variant5cca1872fe3ccff8223e4a43263c15a2cfafa08031094a9b9f681493a4db459e

public section

namespace Std
open Iterators

open HashSet in
theorem Iter.toHashSet_equiv_ofList {α β : Type w} {_ : BEq β} {_ : Hashable β} [Iterator α Id β]
    [Finite α Id] [IteratorLoop α Id Id] [LawfulIteratorLoop α Id Id] {it : Iter (α := α) β} :
    it.toHashSet ~m HashSet.ofList it.toList := by
  simpa [toHashSet, IterM.toHashSet_eq_fold, ← fold_eq_fold_toIterM,
    ← foldl_toList] using ofList_equiv_foldl.symm

@[simp]
theorem Iter.toExtHashSet_eq_ofList {α β : Type w} {_ : BEq β} {_ : Hashable β} [EquivBEq β]
    [LawfulHashable β] [Iterator α Id β] [Finite α Id] [IteratorLoop α Id Id]
    [LawfulIteratorLoop α Id Id] {it : Iter (α := α) β} :
    it.toExtHashSet = ExtHashSet.ofList it.toList := by
  simp [toExtHashSet, ← toList_eq_toList_toIterM]

open TreeSet in
theorem Iter.toTreeSet_equiv_ofList {α β : Type w} [Iterator α Id β] [Finite α Id]
    [IteratorLoop α Id Id] [LawfulIteratorLoop α Id Id] {it : Iter (α := α) β}
    {cmp : β → β → Ordering} : it.toTreeSet cmp ~m TreeSet.ofList it.toList cmp := by
  simpa [toTreeSet, IterM.toTreeSet_eq_fold, ← fold_eq_fold_toIterM,
    ← foldl_toList] using ofList_equiv_foldl.symm

@[simp]
theorem Iter.toExtTreeSet_eq_ofList {α β : Type w} [Iterator α Id β] [Finite α Id]
    [IteratorLoop α Id Id] [LawfulIteratorLoop α Id Id] {it : Iter (α := α) β}
    {cmp : β → β → Ordering} [TransCmp cmp] :
    it.toExtTreeSet cmp = ExtTreeSet.ofList it.toList cmp := by
  simp [toExtTreeSet, ← toList_eq_toList_toIterM]

end Std
