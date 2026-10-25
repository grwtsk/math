# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Slice.Variant3f5c60de687221c864b6d6a6545122b29a6ffd117baefd57c8712cfb3d5986f8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c1b624cf8d16a0d89764e4a37bf7689cc2c25b24` · SHA-256 `aae65349ff35a47d2a5f0207606e3465b8322e9a0fe8efa34fe87e3b86fc753a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToListRic.Variant4f6abf46e80753911b70a0e71fd117ec5c0059aa5fb35200c7ac8182449e4533","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4f6abf46e80753911b70a0e71fd117ec5c0059aa5fb35200c7ac8182449e4533","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ToListRic.Variant4f6abf46e80753911b70a0e71fd117ec5c0059aa5fb35200c7ac8182449e4533","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"4f6abf46e80753911b70a0e71fd117ec5c0059aa5fb35200c7ac8182449e4533","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/TreeSet/Raw/Slice.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Wojciech Różowski
-/
module

prelude
public import Std.Data.TreeMap.Raw.Slice
public import Std.Data.TreeSet.Raw.Basic

/-!
This module provides slice notation for `TreeSet` slices and implements an iterator
for those slices.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToListRic.Variant4f6abf46e80753911b70a0e71fd117ec5c0059aa5fb35200c7ac8182449e4533

namespace Std.TreeSet.Raw
open Std.Iterators

public instance {α : Type u}
    (cmp : α → α → Ordering := by exact compare) :
    Rii.Sliceable (Raw α cmp) α (DTreeMap.Internal.Unit.RiiSlice α) where
  mkSlice carrier range := ⟨carrier.inner.inner.inner, range⟩

@[simp] public theorem toList_rii {α : Type u}
    (cmp : α → α → Ordering := by exact compare) {t : Raw α cmp} :
    t[*...*].toList = t.toList := by
  apply DTreeMap.Internal.Unit.toList_rii

public instance {α : Type u} (cmp : α → α → Ordering := by exact compare) :
    Ric.Sliceable (Raw α cmp) α (@DTreeMap.Internal.Unit.RicSlice α ⟨cmp⟩) :=
  letI _ : Ord α := ⟨cmp⟩; ⟨fun carrier range => ⟨carrier.inner.inner.inner, range⟩⟩

public theorem toList_ric {α : Type u} (cmp : α → α → Ordering := by exact compare)
    [TransCmp cmp] {t : Raw α cmp} (wf : t.WF) {bound : α} :
    t[*...=bound].toList = t.toList.filter (fun e => (cmp e bound).isLE) := by
  apply @DTreeMap.Internal.Unit.toList_ric _ ⟨cmp⟩ _ _
  · exact @wf.out.out.out.ordered _ _ ⟨cmp⟩ _

public instance {α : Type u} (cmp : α → α → Ordering := by exact compare) :
    Rio.Sliceable (Raw α cmp) α (@DTreeMap.Internal.Unit.RioSlice α ⟨cmp⟩) :=
  letI _ : Ord α := ⟨cmp⟩; ⟨fun carrier range => ⟨carrier.inner.inner.inner, range⟩⟩

public theorem toList_rio {α : Type u} (cmp : α → α → Ordering := by exact compare)
    [TransCmp cmp] {t : Raw α cmp} (wf : t.WF) {bound : α} :
    t[*...<bound].toList = t.toList.filter (fun e => (cmp e bound).isLT) := by
  apply @DTreeMap.Internal.Unit.toList_rio _ ⟨cmp⟩ _ _
  · exact @wf.out.out.out.ordered _ _ ⟨cmp⟩ _

public instance {α : Type u} (cmp : α → α → Ordering := by exact compare) :
    Rci.Sliceable (Raw α cmp) α (@DTreeMap.Internal.Unit.RciSlice α ⟨cmp⟩) :=
  letI _ : Ord α := ⟨cmp⟩; ⟨fun carrier range => ⟨carrier.inner.inner.inner, range⟩⟩

public theorem toList_rci {α : Type u} (cmp : α → α → Ordering := by exact compare)
    [TransCmp cmp] {t : Raw α cmp} (wf : t.WF) {bound : α} :
    t[bound...*].toList = t.toList.filter (fun e => (cmp e bound).isGE) := by
  apply @DTreeMap.Internal.Unit.toList_rci _ ⟨cmp⟩ _ _
  · exact @wf.out.out.out.ordered _ _ ⟨cmp⟩ _

public instance {α : Type u} (cmp : α → α → Ordering := by exact compare) :
    Rco.Sliceable (Raw α cmp) α (@DTreeMap.Internal.Unit.RcoSlice α ⟨cmp⟩) :=
  letI _ : Ord α := ⟨cmp⟩; ⟨fun carrier range => ⟨carrier.inner.inner.inner, range⟩⟩

public theorem toList_rco {α : Type u} (cmp : α → α → Ordering := by exact compare)
    [TransCmp cmp] {t : Raw α cmp} (wf : t.WF) {lowerBound upperBound : α} :
    t[lowerBound...<upperBound].toList =
      t.toList.filter (fun e => (cmp e lowerBound).isGE ∧ (cmp e upperBound).isLT) := by
  apply @DTreeMap.Internal.Unit.toList_rco _ ⟨cmp⟩ _ _
  · exact @wf.out.out.out.ordered _ _ ⟨cmp⟩ _

public instance {α : Type u} (cmp : α → α → Ordering := by exact compare) :
    Rcc.Sliceable (Raw α cmp) α (@DTreeMap.Internal.Unit.RccSlice α ⟨cmp⟩) :=
  letI _ : Ord α := ⟨cmp⟩; ⟨fun carrier range => ⟨carrier.inner.inner.inner, range⟩⟩

public theorem toList_rcc {α : Type u} (cmp : α → α → Ordering := by exact compare)
    [TransCmp cmp] {t : Raw α cmp} (wf : t.WF) {lowerBound upperBound : α} :
    t[lowerBound...=upperBound].toList =
      t.toList.filter (fun e => (cmp e lowerBound).isGE ∧ (cmp e upperBound).isLE) := by
  apply @DTreeMap.Internal.Unit.toList_rcc _ ⟨cmp⟩ _ _
  · exact @wf.out.out.out.ordered _ _ ⟨cmp⟩ _

public instance {α : Type u} (cmp : α → α → Ordering := by exact compare) :
    Roi.Sliceable (Raw α cmp) α (@DTreeMap.Internal.Unit.RoiSlice α ⟨cmp⟩) :=
  letI _ : Ord α := ⟨cmp⟩; ⟨fun carrier range => ⟨carrier.inner.inner.inner, range⟩⟩

public theorem toList_roi {α : Type u} (cmp : α → α → Ordering := by exact compare)
    [TransCmp cmp] {t : Raw α cmp} (wf : t.WF) {bound: α} : t[bound<...*].toList =
      t.toList.filter (fun e => (cmp e bound).isGT) := by
  apply @DTreeMap.Internal.Unit.toList_roi _ ⟨cmp⟩ _
  · exact @wf.out.out.out.ordered _ _ ⟨cmp⟩ _

public instance {α : Type u} (cmp : α → α → Ordering := by exact compare) :
    Roc.Sliceable (Raw α cmp) α (@DTreeMap.Internal.Unit.RocSlice α ⟨cmp⟩) :=
  letI _ : Ord α := ⟨cmp⟩; ⟨fun carrier range => ⟨carrier.inner.inner.inner, range⟩⟩

public theorem toList_roc {α : Type u} (cmp : α → α → Ordering := by exact compare)
    [TransCmp cmp] {t : Raw α cmp} (wf : t.WF) {lowerBound upperBound : α} :
    t[lowerBound<...=upperBound].toList =
      t.toList.filter (fun e => (cmp e lowerBound).isGT ∧ (cmp e upperBound).isLE) := by
  apply @DTreeMap.Internal.Unit.toList_roc _  ⟨cmp⟩ _
  · exact @wf.out.out.out.ordered _ _ ⟨cmp⟩ _

public instance {α : Type u} (cmp : α → α → Ordering := by exact compare) :
    Roo.Sliceable (Raw α cmp) α (@DTreeMap.Internal.Unit.RooSlice α ⟨cmp⟩) :=
  letI _ : Ord α := ⟨cmp⟩; ⟨fun carrier range => ⟨carrier.inner.inner.inner, range⟩⟩

public theorem toList_roo {α : Type u} (cmp : α → α → Ordering := by exact compare)
    [TransCmp cmp] {t : Raw α cmp} (wf : t.WF) {lowerBound upperBound : α} :
    t[lowerBound<...upperBound].toList =
      t.toList.filter (fun e => (cmp e lowerBound).isGT ∧ (cmp e upperBound).isLT) := by
  apply @DTreeMap.Internal.Unit.toList_roo _ ⟨cmp⟩ _
  · exact @wf.out.out.out.ordered _ _ ⟨cmp⟩ _

end Std.TreeSet.Raw
```
