# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Slice.Variant9ef01e1d8ed864a7f8c8f98bb96dda6475fcbb0793618b2a68938adba6a5ce79

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `27273d5410ea2de2ec8d2b6064a7df85e80f97a8` · SHA-256 `c70d43ea809ebba1f4e95904245ce3722444f3e78ff965e7ace30c41c98b9951`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InternalIterEqIter.Variantbe8242db17329b975260df545423659acb34e7f6ed8613bb40990e523d7457ea","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"be8242db17329b975260df545423659acb34e7f6ed8613bb40990e523d7457ea","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.InternalIterEqIter.Variantbe8242db17329b975260df545423659acb34e7f6ed8613bb40990e523d7457ea","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"be8242db17329b975260df545423659acb34e7f6ed8613bb40990e523d7457ea","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/Iterators/Lemmas/Producers/Slice.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Std.Data.Iterators.Producers.Slice
import all Std.Data.Iterators.Producers.Slice
public import Init.Data.Slice.Lemmas
import Init.Data.Slice.InternalLemmas


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InternalIterEqIter.Variantbe8242db17329b975260df545423659acb34e7f6ed8613bb40990e523d7457ea

public section

namespace Std.Slice

open Std.Iterators

variable {γ : Type u} {α β : Type v}

theorem Internal.iter_eq_iter [ToIterator (Slice γ) Id α β] {s : Slice γ} :
    s.iter = Internal.iter s :=
  (rfl)

theorem iter_eq_toIteratorIter {γ : Type u} {s : Slice γ}
    [ToIterator (Slice γ) Id α β] :
    s.iter = ToIterator.iter s := by
  simp [Internal.iter_eq_iter, Internal.iter_eq_toIteratorIter]

theorem forIn_iter {γ : Type u} {β : Type v}
    {m : Type w → Type x} [Monad m] {δ : Type w}
    [ToIterator (Slice γ) Id α β]
    [Iterator α Id β] [IteratorLoop α Id m]
    {s : Slice γ} {init : δ} {f : β → δ → m (ForInStep δ)} :
    ForIn.forIn s.iter init f = ForIn.forIn s init f := by
  simp [Internal.iter_eq_iter, Internal.forIn_iter]

theorem foldlM_iter [Monad m] [ToIterator (Slice γ) Id α β]
    [Iterator α Id β] [IteratorLoop α Id m]
    {s : Slice γ} {init : δ} {f : δ → β → m δ} :
    s.iter.foldM (init := init) f = s.foldlM (init := init) f := by
  simp [Internal.iter_eq_iter, Internal.foldlM_iter]

theorem foldl_iter [ToIterator (Slice γ) Id α β]
    [Iterator α Id β] [IteratorLoop α Id Id]
    {s : Slice γ} {init : δ} {f : δ → β → δ} :
    s.iter.fold (init := init) f = s.foldl (init := init) f := by
  simp [Internal.iter_eq_iter, Internal.foldl_iter]

theorem size_eq_length_iter [ToIterator (Slice γ) Id α β]
    [Iterator α Id β] {s : Slice γ}
    [Finite α Id]
    [IteratorLoop α Id Id] [LawfulIteratorLoop α Id Id]
    [SliceSize γ] [LawfulSliceSize γ] :
    s.size = s.iter.length := by
  simp [Internal.iter_eq_iter, Internal.size_eq_length_iter]

set_option linter.defProp false in
@[deprecated size_eq_length_iter (since := "2026-01-28")]
def size_eq_count_iter := @size_eq_length_iter

theorem length_iter_eq_size [ToIterator (Slice γ) Id α β]
    [Iterator α Id β] {s : Slice γ}
    [Finite α Id]
    [IteratorLoop α Id Id] [LawfulIteratorLoop α Id Id]
    [SliceSize γ] [LawfulSliceSize γ] :
    s.iter.length = s.size :=
  size_eq_length_iter.symm

set_option linter.defProp false in
@[deprecated length_iter_eq_size (since := "2026-01-28")]
def count_iter_eq_size := @length_iter_eq_size

@[simp]
theorem toArray_iter {s : Slice γ} [ToIterator (Slice γ) Id α β]
    [Iterator α Id β]
    [Finite α Id] :
    s.iter.toArray = s.toArray := by
  simp [Internal.iter_eq_iter, Internal.toArray_eq_toArray_iter]

@[deprecated toArray_iter (since := "2025-11-13")]
theorem toArray_eq_toArray_iter {s : Slice γ} [ToIterator (Slice γ) Id α β]
    [Iterator α Id β]
    [Finite α Id] :
    s.toArray = s.iter.toArray := by
  simp

@[simp]
theorem toList_iter {s : Slice γ} [ToIterator (Slice γ) Id α β]
    [Iterator α Id β]
    [Finite α Id] :
    s.iter.toList = s.toList := by
  simp [Internal.iter_eq_iter, Internal.toList_eq_toList_iter]

@[deprecated toList_iter (since := "2025-11-13")]
theorem toList_eq_toList_iter {s : Slice γ} [ToIterator (Slice γ) Id α β]
    [Iterator α Id β]
    [Finite α Id] :
    s.toList = s.iter.toList := by
  simp

@[simp]
theorem toListRev_iter {s : Slice γ} [ToIterator (Slice γ) Id α β]
    [Iterator α Id β] [Finite α Id] :
    s.iter.toListRev = s.toListRev := by
  simp [Internal.iter_eq_iter, Internal.toListRev_eq_toListRev_iter]

@[deprecated toListRev_iter (since := "2025-11-13")]
theorem toListRev_eq_toListRev_iter {s : Slice γ} [ToIterator (Slice γ) Id α β]
    [Iterator α Id β] [Finite α Id] :
    s.toListRev = s.iter.toListRev := by
  simp

theorem fold_iter [ToIterator (Slice γ) Id α β]
    [Iterator α Id β] [IteratorLoop α Id Id] [Iterators.Finite α Id] {s : Slice γ} :
    s.iter.fold (init := init) f = s.foldl (init := init) f := by
  simp [Internal.iter_eq_iter, Internal.fold_iter]

theorem foldM_iter {m : Type w → Type w'} [Monad m] [ToIterator (Slice γ) Id α β]
    [Iterator α Id β] [IteratorLoop α Id m] [Iterators.Finite α Id] {s : Slice γ} {f : δ → β → m δ} :
    s.iter.foldM (init := init) f = s.foldlM (init := init) f := by
  simp [Internal.iter_eq_iter, Internal.foldM_iter]

end Std.Slice
```
