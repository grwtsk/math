-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ForInToList.Variantcb9830b9abc0fb62e3200a4e343f35341436ace56a46b978af090f9b43e8b5ad","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cb9830b9abc0fb62e3200a4e343f35341436ace56a46b978af090f9b43e8b5ad","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ForInToList.Variantcb9830b9abc0fb62e3200a4e343f35341436ace56a46b978af090f9b43e8b5ad","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"cb9830b9abc0fb62e3200a4e343f35341436ace56a46b978af090f9b43e8b5ad","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Slice/Lemmas.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Slice.Operations
import all Init.Data.Slice.Operations
import Init.Data.Iterators.Lemmas.Consumers
public import Init.Data.List.Control
public import Init.Data.Iterators.Consumers.Collect
import Init.Data.Slice.InternalLemmas


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ForInToList.Variantcb9830b9abc0fb62e3200a4e343f35341436ace56a46b978af090f9b43e8b5ad

public section

open Std Std.Iterators

namespace Std.Slice

variable {γ : Type u} {α β : Type v}

@[simp]
theorem forIn_toList {γ : Type u} {β : Type v}
    {m : Type w → Type x} [Monad m] [LawfulMonad m] {δ : Type w}
    [ToIterator (Slice γ) Id α β]
    [Iterator α Id β]
    [IteratorLoop α Id m]
    [LawfulIteratorLoop α Id m]
    [Finite α Id] {s : Slice γ}
    {init : δ} {f : β → δ → m (ForInStep δ)} :
    ForIn.forIn s.toList init f = ForIn.forIn s init f := by
  rw [← Internal.forIn_iter, ← Iter.forIn_toList, Slice.toList]

@[simp]
theorem forIn_toArray {γ : Type u} {β : Type v}
    {m : Type w → Type x} [Monad m] [LawfulMonad m] {δ : Type w}
    [ToIterator (Slice γ) Id α β]
    [Iterator α Id β]
    [IteratorLoop α Id m]
    [LawfulIteratorLoop α Id m]
    [Finite α Id] {s : Slice γ}
    {init : δ} {f : β → δ → m (ForInStep δ)} :
    ForIn.forIn s.toArray init f = ForIn.forIn s init f := by
  rw [← Internal.forIn_iter, ← Iter.forIn_toArray, Slice.toArray]

theorem Internal.foldlM_iter [Monad m] [ToIterator (Slice γ) Id α β]
    [Iterator α Id β] [IteratorLoop α Id m]
    {s : Slice γ} {init : δ} {f : δ → β → m δ} :
    (Internal.iter s).foldM (init := init) f = s.foldlM (init := init) f :=
  (rfl)

theorem foldlM_toList [Monad m] [ToIterator (Slice γ) Id α β]
    [Iterator α Id β] [IteratorLoop α Id m] [LawfulIteratorLoop α Id m]
    [Finite α Id] [LawfulMonad m] {s : Slice γ} {init : δ} {f : δ → β → m δ} :
    s.toList.foldlM (init := init) f = s.foldlM (init := init) f := by
  simp [← Internal.foldlM_iter, ← Iter.foldlM_toList, Slice.toList]

theorem foldlM_toArray [Monad m] [ToIterator (Slice γ) Id α β]
    [Iterator α Id β] [IteratorLoop α Id m] [LawfulIteratorLoop α Id m]
    [Finite α Id] [LawfulMonad m] {s : Slice γ} {init : δ} {f : δ → β → m δ} :
    s.toArray.foldlM (init := init) f = s.foldlM (init := init) f := by
  simp [← Internal.foldlM_iter, ← Iter.foldlM_toArray, Slice.toArray]

theorem Internal.foldl_iter [ToIterator (Slice γ) Id α β]
    [Iterator α Id β] [IteratorLoop α Id Id]
    {s : Slice γ} {init : δ} {f : δ → β → δ} :
    (Internal.iter s).fold (init := init) f = s.foldl (init := init) f :=
  (rfl)

theorem foldl_toList [ToIterator (Slice γ) Id α β]
    [Iterator α Id β] [IteratorLoop α Id Id] [LawfulIteratorLoop α Id Id]
    [Finite α Id] {s : Slice γ} {init : δ} {f : δ → β → δ} :
    s.toList.foldl (init := init) f = s.foldl (init := init) f := by
  simp [← Internal.foldl_iter, ← Iter.foldl_toList, Slice.toList]

theorem foldl_toArray [ToIterator (Slice γ) Id α β]
    [Iterator α Id β] [IteratorLoop α Id Id] [LawfulIteratorLoop α Id Id]
    [Finite α Id] {s : Slice γ} {init : δ} {f : δ → β → δ} :
    s.toArray.foldl (init := init) f = s.foldl (init := init) f := by
  simp [← Internal.foldl_iter, ← Iter.foldl_toArray, Slice.toArray]

@[simp, grind =, suggest_for ListSlice.size_toArray ListSlice.size_toArray_eq_size]
theorem size_toArray_eq_size [ToIterator (Slice γ) Id α β]
    [Iterator α Id β] [SliceSize γ] [LawfulSliceSize γ]
    [Finite α Id]
    {s : Slice γ} :
    s.toArray.size = s.size := by
  letI : IteratorLoop α Id Id := .defaultImplementation
  rw [Internal.size_eq_length_iter, Internal.toArray_eq_toArray_iter, Iter.size_toArray_eq_length]

@[simp, grind =, suggest_for ListSlice.length_toList ListSlice.length_toList_eq_size]
theorem length_toList_eq_size [ToIterator (Slice γ) Id α β]
    [Iterator α Id β] {s : Slice γ}
    [SliceSize γ] [LawfulSliceSize γ]
    [Finite α Id] :
    s.toList.length = s.size := by
  letI : IteratorLoop α Id Id := .defaultImplementation
  rw [Internal.size_eq_length_iter, Internal.toList_eq_toList_iter, Iter.length_toList_eq_length]

@[simp, grind =]
theorem length_toListRev_eq_size [ToIterator (Slice γ) Id α β]
    [Iterator α Id β] {s : Slice γ}
    [IteratorLoop α Id Id.{v}] [SliceSize γ] [LawfulSliceSize γ]
    [Finite α Id]
    [LawfulIteratorLoop α Id Id] :
    s.toListRev.length = s.size := by
  rw [Internal.size_eq_length_iter, Internal.toListRev_eq_toListRev_iter,
    Iter.length_toListRev_eq_length]

end Std.Slice
