# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Slice.Variante8b8ea9a7ba025305532c0f35c9a0bd801445bfd1babab431800c55f8af96483

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d8a97466bfbc9ecf86ae705f52b80a62cae27e28` · SHA-256 `c45f3b36bc99e59b4e9dc05440eb2f63852441abfda4db3753dcc8743ff3e3f5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToListRic.Varianteda5738a950c9bb8fbbcfa2d490b27b81c61757c1190a24ff7677e8d19e231cc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"eda5738a950c9bb8fbbcfa2d490b27b81c61757c1190a24ff7677e8d19e231cc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ToListRic.Varianteda5738a950c9bb8fbbcfa2d490b27b81c61757c1190a24ff7677e8d19e231cc","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"eda5738a950c9bb8fbbcfa2d490b27b81c61757c1190a24ff7677e8d19e231cc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/DTreeMap/Raw/Slice.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude
public import Std.Data.DTreeMap.Internal.Zipper
public import Std.Data.DTreeMap.Raw.Basic

/-!
This module provides slice notation for `TreeMap` slices and implements an iterator
for those slices.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToListRic.Varianteda5738a950c9bb8fbbcfa2d490b27b81c61757c1190a24ff7677e8d19e231cc

namespace Std.DTreeMap.Raw
open Std.Iterators

public instance {α : Type u} {β : α → Type v}
    (cmp : α → α → Ordering := by exact compare) :
    Rii.Sliceable (Raw α β cmp) α (Internal.RiiSlice α β) where
  mkSlice carrier range := ⟨carrier.inner, range⟩

@[simp] public theorem toList_rii {α : Type u} {β : α → Type v}
    (cmp : α → α → Ordering := by exact compare) {t : Raw α β cmp} :
    t[*...*].toList = t.toList := by
  apply Internal.toList_rii

public instance {α : Type u} {β : α → Type v} (cmp : α → α → Ordering := by exact compare) :
    Ric.Sliceable (Raw α β cmp) α (@Internal.RicSlice α β ⟨cmp⟩) :=
  letI _ : Ord α := ⟨cmp⟩; ⟨fun carrier range => ⟨carrier.inner, range⟩⟩

public theorem toList_ric {α : Type u} {β : α → Type v} (cmp : α → α → Ordering := by exact compare)
    [TransCmp cmp] {t : Raw α β cmp} (wf : t.WF) {bound : α} :
    t[*...=bound].toList = t.toList.filter (fun e => (cmp e.fst bound).isLE) :=
  @Internal.toList_ric α β ⟨cmp⟩ _ t.inner (@wf.out.ordered α β ⟨cmp⟩ _) bound

public instance {α : Type u} {β : α → Type v} (cmp : α → α → Ordering := by exact compare) :
    Rio.Sliceable (Raw α β cmp) α (@Internal.RioSlice α β ⟨cmp⟩) :=
  letI _ : Ord α := ⟨cmp⟩; ⟨fun carrier range => ⟨carrier.inner, range⟩⟩

public theorem toList_rio {α : Type u} {β : α → Type v} (cmp : α → α → Ordering := by exact compare)
    [TransCmp cmp] {t : Raw α β cmp} (wf : t.WF) {bound : α} :
    t[*...<bound].toList = t.toList.filter (fun e => (cmp e.fst bound).isLT) :=
  @Internal.toList_rio α β ⟨cmp⟩ _ t.inner (@wf.out.ordered α β ⟨cmp⟩ _) bound

public instance {α : Type u} {β : α → Type v} (cmp : α → α → Ordering := by exact compare) :
    Rci.Sliceable (Raw α β cmp) α (@Internal.RciSlice α β ⟨cmp⟩) :=
  letI _ : Ord α := ⟨cmp⟩; ⟨fun carrier range => ⟨carrier.inner, range⟩⟩

public theorem toList_rci {α : Type u} {β : α → Type v} (cmp : α → α → Ordering := by exact compare)
    [TransCmp cmp] {t : Raw α β cmp} (wf : t.WF) {bound : α} :
    t[bound...*].toList = t.toList.filter (fun e => (cmp e.fst bound).isGE) :=
  @Internal.toList_rci α β ⟨cmp⟩ _ t.inner (@wf.out.ordered α β ⟨cmp⟩ _) bound

public instance {α : Type u} {β : α → Type v} (cmp : α → α → Ordering := by exact compare) :
    Rco.Sliceable (Raw α β cmp) α (@Internal.RcoSlice α β ⟨cmp⟩) :=
  letI _ : Ord α := ⟨cmp⟩; ⟨fun carrier range => ⟨carrier.inner, range⟩⟩

public theorem toList_rco {α : Type u} {β : α → Type v} (cmp : α → α → Ordering := by exact compare)
    [TransCmp cmp] {t : Raw α β cmp} (wf : t.WF) {lowerBound upperBound : α} :
    t[lowerBound...<upperBound].toList =
      t.toList.filter (fun e => (cmp e.fst lowerBound).isGE ∧ (cmp e.fst upperBound).isLT) :=
  @Internal.toList_rco α β ⟨cmp⟩ _ t.inner (@wf.out.ordered α β ⟨cmp⟩ _) lowerBound upperBound

public instance {α : Type u} {β : α → Type v} (cmp : α → α → Ordering := by exact compare) :
    Rcc.Sliceable (Raw α β cmp) α (@Internal.RccSlice α β ⟨cmp⟩) :=
  letI _ : Ord α := ⟨cmp⟩; ⟨fun carrier range => ⟨carrier.inner, range⟩⟩

public theorem toList_rcc {α : Type u} {β : α → Type v} (cmp : α → α → Ordering := by exact compare)
    [TransCmp cmp] {t : Raw α β cmp} (wf : t.WF) {lowerBound upperBound : α} :
    t[lowerBound...=upperBound].toList =
      t.toList.filter (fun e => (cmp e.fst lowerBound).isGE ∧ (cmp e.fst upperBound).isLE) :=
  @Internal.toList_rcc α β ⟨cmp⟩ _ t.inner (@wf.out.ordered α β ⟨cmp⟩ _) lowerBound upperBound

public instance {α : Type u} {β : α → Type v} (cmp : α → α → Ordering := by exact compare) :
    Roi.Sliceable (Raw α β cmp) α (@Internal.RoiSlice α β ⟨cmp⟩) :=
  letI _ : Ord α := ⟨cmp⟩; ⟨fun carrier range => ⟨carrier.inner, range⟩⟩

public theorem toList_roi {α : Type u} {β : α → Type v} (cmp : α → α → Ordering := by exact compare)
    [TransCmp cmp] {t : Raw α β cmp} (wf : t.WF) {bound: α} : t[bound<...*].toList =
      t.toList.filter (fun e => (cmp e.fst bound).isGT) :=
  @Internal.toList_roi α β ⟨cmp⟩ _ t.inner (@wf.out.ordered α β ⟨cmp⟩ _) bound

public instance {α : Type u} {β : α → Type v} (cmp : α → α → Ordering := by exact compare) :
    Roc.Sliceable (Raw α β cmp) α (@Internal.RocSlice α β ⟨cmp⟩) :=
  letI _ : Ord α := ⟨cmp⟩; ⟨fun carrier range => ⟨carrier.inner, range⟩⟩

public theorem toList_roc {α : Type u} {β : α → Type v} (cmp : α → α → Ordering := by exact compare)
    [TransCmp cmp] {t : Raw α β cmp} (wf : t.WF) {lowerBound upperBound : α} :
    t[lowerBound<...=upperBound].toList =
      t.toList.filter (fun e => (cmp e.fst lowerBound).isGT ∧ (cmp e.fst upperBound).isLE) :=
  @Internal.toList_roc α β ⟨cmp⟩ _ t.inner (@wf.out.ordered α β ⟨cmp⟩ _) lowerBound upperBound

public instance {α : Type u} {β : α → Type v} (cmp : α → α → Ordering := by exact compare) :
    Roo.Sliceable (Raw α β cmp) α (@Internal.RooSlice α β ⟨cmp⟩) :=
  letI _ : Ord α := ⟨cmp⟩; ⟨fun carrier range => ⟨carrier.inner, range⟩⟩

public theorem toList_roo {α : Type u} {β : α → Type v} (cmp : α → α → Ordering := by exact compare)
    [TransCmp cmp] {t : Raw α β cmp} (wf : t.WF) {lowerBound upperBound : α} :
    t[lowerBound<...upperBound].toList =
      t.toList.filter (fun e => (cmp e.fst lowerBound).isGT ∧ (cmp e.fst upperBound).isLT) :=
  @Internal.toList_roo α β ⟨cmp⟩ _ t.inner (@wf.out.ordered α β ⟨cmp⟩ _) lowerBound upperBound

end Std.DTreeMap.Raw
```
