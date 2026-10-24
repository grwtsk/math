# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TakeDrop.Variant62fa9f9ecbb5e9916e58471674e82bd2a734f4e844fdbcd20390abe6ad367c69

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7c934048cd93ebba226a9e33d57892a116665d5b` · SHA-256 `018d69b6112519d656999e37e6c2f581102f8cdc336b499c0a8b1eea1b5729c3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DropEqSliceFrom.Variant6a32e5e38c1c7232df2b043e3580e7f275cbadb87b53a141de97c932c35004be","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6a32e5e38c1c7232df2b043e3580e7f275cbadb87b53a141de97c932c35004be","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.DropEqSliceFrom.Variant6a32e5e38c1c7232df2b043e3580e7f275cbadb87b53a141de97c932c35004be","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"6a32e5e38c1c7232df2b043e3580e7f275cbadb87b53a141de97c932c35004be","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/String/Lemmas/TakeDrop.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: Julia Markus Himmel
-/
module

prelude
public import Init.Data.String.TakeDrop
import all Init.Data.String.Slice
import all Init.Data.String.TakeDrop
import Init.Data.String.Lemmas.Splits


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DropEqSliceFrom.Variant6a32e5e38c1c7232df2b043e3580e7f275cbadb87b53a141de97c932c35004be

public section

namespace String

namespace Slice

theorem drop_eq_sliceFrom {s : Slice} {n : Nat} : s.drop n = s.sliceFrom (s.startPos.nextn n) :=
  (rfl)

@[simp]
theorem toList_copy_drop {s : Slice} {n : Nat} : (s.drop n).copy.toList = s.copy.toList.drop n := by
  simp [drop_eq_sliceFrom, (s.splits_nextn_startPos n).copy_sliceFrom_eq]

theorem dropEnd_eq_sliceTo {s : Slice} {n : Nat} : s.dropEnd n = s.sliceTo (s.endPos.prevn n) :=
  (rfl)

@[simp]
theorem toList_copy_dropEnd {s : Slice} {n : Nat} :
    (s.dropEnd n).copy.toList = s.copy.toList.take (s.copy.toList.length - n) := by
  simp [dropEnd_eq_sliceTo, (s.splits_prevn_endPos n).copy_sliceTo_eq]

theorem take_eq_sliceTo {s : Slice} {n : Nat} : s.take n = s.sliceTo (s.startPos.nextn n) :=
  (rfl)

@[simp]
theorem toList_copy_take {s : Slice} {n : Nat} : (s.take n).copy.toList = s.copy.toList.take n := by
  simp [take_eq_sliceTo, (s.splits_nextn_startPos n).copy_sliceTo_eq]

theorem takeEnd_eq_sliceFrom {s : Slice} {n : Nat} : s.takeEnd n = s.sliceFrom (s.endPos.prevn n) :=
  (rfl)

@[simp]
theorem toList_copy_takeEnd {s : Slice} {n : Nat} :
    (s.takeEnd n).copy.toList = s.copy.toList.drop (s.copy.toList.length - n) := by
  simp [takeEnd_eq_sliceFrom, (s.splits_prevn_endPos n).copy_sliceFrom_eq]

end Slice

@[simp]
theorem drop_toSlice {s : String} {n : Nat} : s.toSlice.drop n = s.drop n :=
  (rfl)

@[simp]
theorem toList_copy_drop {s : String} {n : Nat} : (s.drop n).copy.toList = s.toList.drop n := by
  simp [← drop_toSlice]

@[simp]
theorem dropEnd_toSlice {s : String} {n : Nat} : s.toSlice.dropEnd n = s.dropEnd n :=
  (rfl)

@[simp]
theorem toList_copy_dropEnd {s : String} {n : Nat} :
    (s.dropEnd n).copy.toList = s.toList.take (s.toList.length - n) := by
  simp [← dropEnd_toSlice]

@[simp]
theorem take_toSlice {s : String} {n : Nat} : s.toSlice.take n = s.take n :=
  (rfl)

@[simp]
theorem toList_copy_take {s : String} {n : Nat} : (s.take n).copy.toList = s.toList.take n := by
  simp [← take_toSlice]

@[simp]
theorem takeEnd_toSlice {s : String} {n : Nat} : s.toSlice.takeEnd n = s.takeEnd n :=
  (rfl)

@[simp]
theorem toList_copy_takeEnd {s : String} {n : Nat} :
    (s.takeEnd n).copy.toList = s.toList.drop (s.toList.length - n) := by
  simp [← takeEnd_toSlice]

end String
```
