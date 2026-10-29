-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ApplyCovByApplyIff.Variant220dd9ba5140283dfb1d4f3bc168fa8b89cb9779654188f0dc618e43cdc6e060","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"220dd9ba5140283dfb1d4f3bc168fa8b89cb9779654188f0dc618e43cdc6e060","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.ApplyCovByApplyIff.Variant220dd9ba5140283dfb1d4f3bc168fa8b89cb9779654188f0dc618e43cdc6e060","mathematical_subject":"Algebra.OrderTheory","original_sha256":"220dd9ba5140283dfb1d4f3bc168fa8b89cb9779654188f0dc618e43cdc6e060","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/SuccPred/InitialSeg.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Violeta Hernández Palacios. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Violeta Hernández Palacios
-/
import Mathlib.Order.InitialSeg
import Mathlib.Order.SuccPred.Limit

/-!
# Initial segments and successors

We establish some connections between initial segment embeddings and successors and predecessors.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.ApplyCovByApplyIff.Variant220dd9ba5140283dfb1d4f3bc168fa8b89cb9779654188f0dc618e43cdc6e060

variable {α β : Type*} {a b : α} [PartialOrder α] [PartialOrder β]

open Order

namespace InitialSeg

@[simp]
theorem apply_covBy_apply_iff (f : α ≤i β) : f a ⋖ f b ↔ a ⋖ b :=
  (isLowerSet_range f).ordConnected.apply_covBy_apply_iff f.toOrderEmbedding

@[simp]
theorem apply_wCovBy_apply_iff (f : α ≤i β) : f a ⩿ f b ↔ a ⩿ b := by
  simp [wcovBy_iff_eq_or_covBy]

theorem map_succ [SuccOrder α] [NoMaxOrder α] [SuccOrder β] (f : α ≤i β) (a : α) :
    f (succ a) = succ (f a) :=
  (f.apply_covBy_apply_iff.2 (covBy_succ a)).succ_eq.symm

theorem map_pred [PredOrder α] [NoMinOrder α] [PredOrder β] (f : α ≤i β) (a : α) :
    f (pred a) = pred (f a) :=
  (f.apply_covBy_apply_iff.2 (pred_covBy a)).pred_eq.symm

@[simp]
theorem isSuccPrelimit_apply_iff (f : α ≤i β) : IsSuccPrelimit (f a) ↔ IsSuccPrelimit a := by
  constructor <;> intro h b hb
  · rw [← f.apply_covBy_apply_iff] at hb
    exact h _ hb
  · obtain ⟨c, rfl⟩ := f.mem_range_of_rel hb.lt
    rw [f.apply_covBy_apply_iff] at hb
    exact h _ hb

@[simp]
theorem isSuccLimit_apply_iff (f : α ≤i β) : IsSuccLimit (f a) ↔ IsSuccLimit a := by
  simp [IsSuccLimit]

alias ⟨_, map_isSuccPrelimit⟩ := isSuccPrelimit_apply_iff
alias ⟨_, map_isSuccLimit⟩ := isSuccLimit_apply_iff

end InitialSeg

namespace PrincipalSeg

@[simp]
theorem apply_covBy_apply_iff (f : α <i β) : f a ⋖ f b ↔ a ⋖ b :=
  (f : α ≤i β).apply_covBy_apply_iff

@[simp]
theorem apply_wCovBy_apply_iff (f : α <i β) : f a ⩿ f b ↔ a ⩿ b :=
  (f : α ≤i β).apply_wCovBy_apply_iff

theorem map_succ [SuccOrder α] [NoMaxOrder α] [SuccOrder β] (f : α <i β) (a : α) :
    f (succ a) = succ (f a) :=
  (f : α ≤i β).map_succ a

theorem map_pred [PredOrder α] [NoMinOrder α] [PredOrder β] (f : α ≤i β) (a : α) :
    f (pred a) = pred (f a) :=
  (f : α ≤i β).map_pred a

@[simp]
theorem isSuccPrelimit_apply_iff (f : α <i β) : IsSuccPrelimit (f a) ↔ IsSuccPrelimit a :=
  (f : α ≤i β).isSuccPrelimit_apply_iff

@[simp]
theorem isSuccLimit_apply_iff (f : α <i β) : IsSuccLimit (f a) ↔ IsSuccLimit a :=
  (f : α ≤i β).isSuccLimit_apply_iff

alias ⟨_, map_isSuccPrelimit⟩ := isSuccPrelimit_apply_iff
alias ⟨_, map_isSuccLimit⟩ := isSuccLimit_apply_iff

end PrincipalSeg
