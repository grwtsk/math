-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BoolIndicator.Variant378e2297a2757a5b687a3298e2d889c106dc167eca45a16a1d7c03b9a3f3cf48","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"378e2297a2757a5b687a3298e2d889c106dc167eca45a16a1d7c03b9a3f3cf48","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.BoolIndicator.Variant378e2297a2757a5b687a3298e2d889c106dc167eca45a16a1d7c03b9a3f3cf48","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"378e2297a2757a5b687a3298e2d889c106dc167eca45a16a1d7c03b9a3f3cf48","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Set/BoolIndicator.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson, Leonardo de Moura
-/
import Mathlib.Data.Set.Basic

/-!
# Indicator function valued in bool

See also `Set.indicator` and `Set.piecewise`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BoolIndicator.Variant378e2297a2757a5b687a3298e2d889c106dc167eca45a16a1d7c03b9a3f3cf48

assert_not_exists RelIso

open Bool

namespace Set

variable {α : Type*} (s : Set α)

/-- `boolIndicator` maps `x` to `true` if `x ∈ s`, else to `false` -/
noncomputable def boolIndicator (x : α) :=
  @ite _ (x ∈ s) (Classical.propDecidable _) true false

theorem mem_iff_boolIndicator (x : α) : x ∈ s ↔ s.boolIndicator x = true := by
  unfold boolIndicator
  split_ifs with h <;> simp [h]

theorem notMem_iff_boolIndicator (x : α) : x ∉ s ↔ s.boolIndicator x = false := by
  unfold boolIndicator
  split_ifs with h <;> simp [h]

@[deprecated (since := "2025-05-23")] alias not_mem_iff_boolIndicator := notMem_iff_boolIndicator

theorem preimage_boolIndicator_true : s.boolIndicator ⁻¹' {true} = s :=
  ext fun x ↦ (s.mem_iff_boolIndicator x).symm

theorem preimage_boolIndicator_false : s.boolIndicator ⁻¹' {false} = sᶜ :=
  ext fun x ↦ (s.notMem_iff_boolIndicator x).symm

open scoped Classical in
theorem preimage_boolIndicator_eq_union (t : Set Bool) :
    s.boolIndicator ⁻¹' t = (if true ∈ t then s else ∅) ∪ if false ∈ t then sᶜ else ∅ := by
  ext x
  simp only [boolIndicator, mem_preimage]
  split_ifs <;> simp [*]

theorem preimage_boolIndicator (t : Set Bool) :
    s.boolIndicator ⁻¹' t = univ ∨
      s.boolIndicator ⁻¹' t = s ∨ s.boolIndicator ⁻¹' t = sᶜ ∨ s.boolIndicator ⁻¹' t = ∅ := by
  simp only [preimage_boolIndicator_eq_union]
  split_ifs <;> simp [s.union_compl_self]

end Set
