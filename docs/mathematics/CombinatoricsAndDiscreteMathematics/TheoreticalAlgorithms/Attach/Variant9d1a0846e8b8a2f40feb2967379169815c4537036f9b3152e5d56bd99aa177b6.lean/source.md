# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Attach.Variant9d1a0846e8b8a2f40feb2967379169815c4537036f9b3152e5d56bd99aa177b6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f873171207ec84f8ea351c3081b516c50644b4ed` · SHA-256 `12e3a8850f13c04f8d288627cb84f00e3f70e1eba810b3d2dd0249f191da8d1b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IterUnattachEqToIterUnattachToIterM.Variantf5ff212eb947dff8cf12b281c524ad8f44ffa906fedd1606e9684301cfaff290","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f5ff212eb947dff8cf12b281c524ad8f44ffa906fedd1606e9684301cfaff290","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.IterUnattachEqToIterUnattachToIterM.Variantf5ff212eb947dff8cf12b281c524ad8f44ffa906fedd1606e9684301cfaff290","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"f5ff212eb947dff8cf12b281c524ad8f44ffa906fedd1606e9684301cfaff290","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Iterators/Lemmas/Combinators/Attach.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Combinators.Attach
import all Init.Data.Iterators.Combinators.Attach
import all Init.Data.Iterators.Combinators.Monadic.Attach
public import Init.Data.Iterators.Lemmas.Consumers.Collect
public import Init.Data.Array.Attach
public import Init.Data.Iterators.Consumers.Loop
import Init.Data.Iterators.Lemmas.Combinators.Monadic.Attach
import Init.Data.Iterators.Lemmas.Consumers.Loop


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IterUnattachEqToIterUnattachToIterM.Variantf5ff212eb947dff8cf12b281c524ad8f44ffa906fedd1606e9684301cfaff290

public section

namespace Std
open Std.Iterators

theorem Iter.unattach_eq_toIter_unattach_toIterM [Iterator α Id β] {it : Iter (α := α) β} {hP} :
    it.attachWith P hP =
      (it.toIterM.attachWith P (fun out h =>
          hP out (isPlausibleIndirectOutput_iff_isPlausibleIndirectOutput_toIterM.mpr h))).toIter := by
  rfl

theorem Iter.unattach_toList_attachWith [Iterator α Id β]
    {it : Iter (α := α) β} {hP}
    [Finite α Id] :
    (it.attachWith P hP).toList.unattach = it.toList := by
  simp [Iter.unattach_eq_toIter_unattach_toIterM,
    ← Id.run_map (f := List.unattach), IterM.map_unattach_toList_attachWith,
    Iter.toList_eq_toList_toIterM]

@[cbv_eval, simp]
theorem Iter.toList_attachWith [Iterator α Id β]
    {it : Iter (α := α) β} {hP}
    [Finite α Id] :
    (it.attachWith P hP).toList = it.toList.attachWith P
        (fun out h => hP out (isPlausibleIndirectOutput_of_mem_toList h)) := by
  apply List.ext_getElem
  · rw [List.length_attachWith, ← unattach_toList_attachWith (it := it) (hP := hP), List.length_unattach]
  · intro i h₁ h₂
    apply Subtype.ext
    simp only [List.getElem_attachWith, ← unattach_toList_attachWith (it := it) (hP := hP),
      List.getElem_unattach]

theorem Iter.unattach_toListRev_attachWith [Iterator α Id β]
    {it : Iter (α := α) β} {hP}
    [Finite α Id] :
    (it.attachWith P hP).toListRev.unattach = it.toListRev := by
  simp [toListRev_eq]

@[simp]
theorem Iter.toListRev_attachWith [Iterator α Id β]
    {it : Iter (α := α) β} {hP}
    [Finite α Id] :
    (it.attachWith P hP).toListRev = it.toListRev.attachWith P
        (fun out h => hP out (isPlausibleIndirectOutput_of_mem_toListRev h)) := by
  simp [toListRev_eq]

@[simp]
theorem Iter.unattach_toArray_attachWith [Iterator α Id β]
    {it : Iter (α := α) β} {hP}
    [Finite α Id] :
    (it.attachWith P hP).toListRev.unattach = it.toListRev := by
  simp [toListRev_eq]

@[cbv_eval, simp]
theorem Iter.toArray_attachWith [Iterator α Id β]
    {it : Iter (α := α) β} {hP}
    [Finite α Id] :
    (it.attachWith P hP).toArray = it.toArray.attachWith P
        (fun out h => hP out (isPlausibleIndirectOutput_of_mem_toArray h)) := by
  suffices (it.attachWith P hP).toArray.toList = (it.toArray.attachWith P
      (fun out h => hP out (isPlausibleIndirectOutput_of_mem_toArray h))).toList by
    simpa only [Array.toList_inj]
  simp [Iter.toList_toArray]

@[simp]
theorem Iter.length_attachWith [Iterator α Id β]
    {it : Iter (α := α) β} {hP}
    [Finite α Id] [IteratorLoop α Id Id]
    [LawfulIteratorLoop α Id Id] :
    (it.attachWith P hP).length = it.length := by
  rw [← Iter.length_toList_eq_length, toList_attachWith]
  simp

set_option linter.defProp false in
@[deprecated Iter.length_attachWith (since := "2026-01-28")]
def Iter.count_attachWith := @Iter.length_attachWith

end Std
```
