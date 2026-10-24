-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Accumulate.Variant38b0fa24bbd49473d14fa6351e3b8f1a4b2858c16e35aedc9d9755712ffcd4a9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"38b0fa24bbd49473d14fa6351e3b8f1a4b2858c16e35aedc9d9755712ffcd4a9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Accumulate.Variant38b0fa24bbd49473d14fa6351e3b8f1a4b2858c16e35aedc9d9755712ffcd4a9","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"38b0fa24bbd49473d14fa6351e3b8f1a4b2858c16e35aedc9d9755712ffcd4a9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Data/Set/Accumulate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn
-/
import Mathlib.Data.Set.Lattice


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Accumulate.Variant38b0fa24bbd49473d14fa6351e3b8f1a4b2858c16e35aedc9d9755712ffcd4a9

#align_import data.set.accumulate from "leanprover-community/mathlib"@"207cfac9fcd06138865b5d04f7091e46d9320432"

/-!
# Accumulate

The function `Accumulate` takes a set `s` and returns `⋃ y ≤ x, s y`.
-/


variable {α β γ : Type*} {s : α → Set β} {t : α → Set γ}

namespace Set

/-- `Accumulate s` is the union of `s y` for `y ≤ x`. -/
def Accumulate [LE α] (s : α → Set β) (x : α) : Set β :=
  ⋃ y ≤ x, s y
#align set.accumulate Set.Accumulate

theorem accumulate_def [LE α] {x : α} : Accumulate s x = ⋃ y ≤ x, s y :=
  rfl
#align set.accumulate_def Set.accumulate_def

@[simp]
theorem mem_accumulate [LE α] {x : α} {z : β} : z ∈ Accumulate s x ↔ ∃ y ≤ x, z ∈ s y := by
  simp_rw [accumulate_def, mem_iUnion₂, exists_prop]
#align set.mem_accumulate Set.mem_accumulate

theorem subset_accumulate [Preorder α] {x : α} : s x ⊆ Accumulate s x := fun _ => mem_biUnion le_rfl
#align set.subset_accumulate Set.subset_accumulate

theorem monotone_accumulate [Preorder α] : Monotone (Accumulate s) := fun _ _ hxy =>
  biUnion_subset_biUnion_left fun _ hz => le_trans hz hxy
#align set.monotone_accumulate Set.monotone_accumulate

theorem biUnion_accumulate [Preorder α] (x : α) : ⋃ y ≤ x, Accumulate s y = ⋃ y ≤ x, s y := by
  apply Subset.antisymm
  · exact iUnion₂_subset fun y hy => monotone_accumulate hy
  · exact iUnion₂_mono fun y _ => subset_accumulate
#align set.bUnion_accumulate Set.biUnion_accumulate

theorem iUnion_accumulate [Preorder α] : ⋃ x, Accumulate s x = ⋃ x, s x := by
  apply Subset.antisymm
  · simp only [subset_def, mem_iUnion, exists_imp, mem_accumulate]
    intro z x x' ⟨_, hz⟩
    exact ⟨x', hz⟩
  · exact iUnion_mono fun i => subset_accumulate
#align set.Union_accumulate Set.iUnion_accumulate

end Set
