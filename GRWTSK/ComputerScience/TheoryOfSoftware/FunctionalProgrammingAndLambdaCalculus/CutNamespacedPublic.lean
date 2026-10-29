-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsCut.Variant1bb948db71c8b0d00d817b981eefdb71d27eb5542cf6bb43f71bc9475d0960ff","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1bb948db71c8b0d00d817b981eefdb71d27eb5542cf6bb43f71bc9475d0960ff","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.IsCut.Variant1bb948db71c8b0d00d817b981eefdb71d27eb5542cf6bb43f71bc9475d0960ff","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"1bb948db71c8b0d00d817b981eefdb71d27eb5542cf6bb43f71bc9475d0960ff","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/Internal/Cut.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
module

prelude
public import Init.Data.Order.Ord
import Init.RCases


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IsCut.Variant1bb948db71c8b0d00d817b981eefdb71d27eb5542cf6bb43f71bc9475d0960ff

@[expose] public section

set_option autoImplicit false

universe u

namespace Std.Internal

class IsCut {α : Type u} (cmp : α → α → Ordering) (cut : α → Ordering) where
  lt {k k'} : cut k' = .lt → cmp k' k = .lt → cut k = .lt
  gt {k k'} : cut k' = .gt → cmp k' k = .gt → cut k = .gt

class IsStrictCut {α : Type u} (cmp : α → α → Ordering) (cut : α → Ordering) extends IsCut cmp cut where
  eq (k) {k'} : cut k' = .eq → cut k = cmp k' k

variable {α : Type u} {cmp : α → α → Ordering} {cut : α → Ordering}

theorem IsStrictCut.gt_of_isGE_of_gt [IsStrictCut cmp cut] {k k' : α} :
    (cut k').isGE → cmp k' k = .gt → cut k = .gt := by
  cases h₁ : cut k' with
  | lt => rintro ⟨⟩
  | gt => exact fun _ => IsCut.gt h₁
  | eq => exact fun h₂ h₃ => by rw [← h₃, IsStrictCut.eq (cmp := cmp) k h₁]

theorem IsStrictCut.lt_of_isLE_of_lt [IsStrictCut cmp cut] {k k' : α} :
    (cut k').isLE → cmp k' k = .lt → cut k = .lt := by
  cases h₁ : cut k' with
  | gt => rintro ⟨⟩
  | lt => exact fun _ => IsCut.lt h₁
  | eq => exact fun h₂ h₃ => by rw [← h₃, IsStrictCut.eq (cmp := cmp) k h₁]

instance [Ord α] [TransOrd α] {k : α} : IsStrictCut compare (compare k) where
  lt := TransCmp.lt_trans
  gt h₁ h₂ := OrientedCmp.gt_of_lt (TransCmp.lt_trans (OrientedCmp.lt_of_gt h₂)
    (OrientedCmp.lt_of_gt h₁))
  eq _ _ := TransCmp.congr_left

instance [Ord α] : IsStrictCut (compare : α → α → Ordering) (fun _ => .lt) where
  lt := by simp
  gt := by simp
  eq := by simp

instance [Ord α] [TransOrd α] {k : α} : IsStrictCut compare fun k' => (compare k k').then .gt where
  lt {_ _} := by simpa [Ordering.then_eq_lt] using TransCmp.lt_trans
  eq {_ _} := by simp [Ordering.then_eq_eq]
  gt h h' := by
    simp only [Ordering.then_eq_gt, and_true] at h ⊢
    rcases h with (h | h)
    · exact .inl (TransCmp.gt_trans h h')
    · exact .inl (TransCmp.gt_of_eq_of_gt h h')

end Std.Internal
