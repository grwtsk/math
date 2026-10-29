-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SlicePosLeFind.Variant423c959c3afa1c023b5bcb49d31ed5e58f8063e513870156515d54b2f9364644","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"423c959c3afa1c023b5bcb49d31ed5e58f8063e513870156515d54b2f9364644","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.SlicePosLeFind.Variant423c959c3afa1c023b5bcb49d31ed5e58f8063e513870156515d54b2f9364644","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"423c959c3afa1c023b5bcb49d31ed5e58f8063e513870156515d54b2f9364644","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/String/Lemmas/Search.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

prelude
public import Init.Data.String.Search
import all Init.Data.String.Search
import Init.Data.String.Lemmas.Slice
import Init.Data.String.Lemmas.FindPos


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SlicePosLeFind.Variant423c959c3afa1c023b5bcb49d31ed5e58f8063e513870156515d54b2f9364644

public section

namespace String
open Std String.Slice Pattern

variable {ρ : Type} {σ : Slice → Type}
variable [∀ s, Std.Iterator (σ s) Id (SearchStep s)]
variable [∀ s, Std.IteratorLoop (σ s) Id Id]

@[simp]
theorem Slice.Pos.le_find {s : Slice} (pos : s.Pos) (pattern : ρ) [ToForwardSearcher pattern σ] :
    pos ≤ pos.find pattern := by
  simp [Slice.Pos.find]

@[simp]
theorem Pos.le_find {s : String} (pos : s.Pos) (pattern : ρ) [ToForwardSearcher pattern σ] :
    pos ≤ pos.find pattern := by
  simp [Pos.find, ← toSlice_le]

@[simp]
theorem front?_toSlice {s : String} : s.toSlice.front? = s.front? :=
  (rfl)

theorem front?_eq_get? {s : String} : s.front? = s.startPos.get? := by
  simp [← front?_toSlice, ← Pos.get?_toSlice, Slice.front?_eq_get?]

theorem front?_eq {s : String} : s.front? = s.toList.head? := by
  simp [← front?_toSlice, Slice.front?_eq]

@[simp]
theorem front_toSlice {s : String} : s.toSlice.front = s.front :=
  (rfl)

@[simp]
theorem front_eq {s : String} : s.front = s.front?.getD default := by
  simp [← front_toSlice, Slice.front_eq]

@[simp]
theorem back?_toSlice {s : String} : s.toSlice.back? = s.back? :=
  (rfl)

theorem back?_eq_get? {s : String} : s.back? = s.endPos.prev?.bind Pos.get? := by
  simp only [← back?_toSlice, Slice.back?_eq_get?, endPos_toSlice, Slice.Pos.prev?_eq_dif,
    startPos_toSlice, Pos.toSlice_inj, Pos.prev?_eq_dif]
  split <;> simp [← Pos.get?_toSlice, Pos.toSlice_prev]

theorem back?_eq {s : String} : s.back? = s.toList.getLast? := by
  simp [← back?_toSlice, Slice.back?_eq]

@[simp]
theorem back_toSlice {s : String} : s.toSlice.back = s.back :=
  (rfl)

@[simp]
theorem back_eq {s : String} : s.back = s.back?.getD default := by
  simp [← back_toSlice, Slice.back_eq]

end String
