-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.CiSupMulLeCiSupMulCiSup.Variant585786e36135bbad159560fb1859c1ec0cde9cde5e48d136ff2667e951be961b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"585786e36135bbad159560fb1859c1ec0cde9cde5e48d136ff2667e951be961b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.CiSupMulLeCiSupMulCiSup.Variant585786e36135bbad159560fb1859c1ec0cde9cde5e48d136ff2667e951be961b","mathematical_subject":"Algebra.OrderTheory","original_sha256":"585786e36135bbad159560fb1859c1ec0cde9cde5e48d136ff2667e951be961b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/ConditionallyCompleteLattice/Group.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Sébastien Gouëzel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sébastien Gouëzel
-/
import Mathlib.Order.ConditionallyCompleteLattice.Indexed
import Mathlib.Algebra.Order.Group.Unbundled.Basic
import Mathlib.Algebra.Order.Monoid.Unbundled.OrderDual

/-!
# Conditionally complete lattices and groups.

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.CiSupMulLeCiSupMulCiSup.Variant585786e36135bbad159560fb1859c1ec0cde9cde5e48d136ff2667e951be961b

open Set

section Mul

variable {α : Type*} {ι : Sort*} [Nonempty ι] [ConditionallyCompleteLattice α] [Mul α]

@[to_additive]
lemma ciSup_mul_le_ciSup_mul_ciSup [MulLeftMono α] [MulRightMono α]
    {f g : ι → α} (hf : BddAbove (range f)) (hg : BddAbove (range g)) :
    ⨆ i, f i * g i ≤ (⨆ i, f i) * ⨆ i, g i :=
  ciSup_le fun i ↦ mul_le_mul' (le_ciSup hf i) (le_ciSup hg i)

@[to_additive]
lemma ciInf_mul_ciInf_le_ciInf_mul [MulLeftMono α] [MulRightMono α]
    {f g : ι → α} (hf : BddBelow (range f)) (hg : BddBelow (range g)) :
    (⨅ i, f i) * ⨅ i, g i ≤ ⨅ i, f i * g i :=
  le_ciInf fun i ↦ mul_le_mul' (ciInf_le hf i) (ciInf_le hg i)

end Mul

section Group

variable {α : Type*} {ι : Sort*} {ι' : Sort*} [Nonempty ι] [Nonempty ι']
  [ConditionallyCompleteLattice α] [Group α]

@[to_additive]
theorem le_mul_ciInf [MulLeftMono α] {a : α} {g : α} {h : ι → α}
    (H : ∀ j, a ≤ g * h j) : a ≤ g * iInf h :=
  inv_mul_le_iff_le_mul.mp <| le_ciInf fun _ => inv_mul_le_iff_le_mul.mpr <| H _

@[to_additive]
theorem mul_ciSup_le [MulLeftMono α] {a : α} {g : α} {h : ι → α}
    (H : ∀ j, g * h j ≤ a) : g * iSup h ≤ a :=
  le_mul_ciInf (α := αᵒᵈ) H

@[to_additive]
theorem le_ciInf_mul [MulRightMono α] {a : α} {g : ι → α}
    {h : α} (H : ∀ i, a ≤ g i * h) : a ≤ iInf g * h :=
  mul_inv_le_iff_le_mul.mp <| le_ciInf fun _ => mul_inv_le_iff_le_mul.mpr <| H _

@[to_additive]
theorem ciSup_mul_le [MulRightMono α] {a : α} {g : ι → α}
    {h : α} (H : ∀ i, g i * h ≤ a) : iSup g * h ≤ a :=
  le_ciInf_mul (α := αᵒᵈ) H

@[to_additive]
theorem le_ciInf_mul_ciInf [MulLeftMono α] [MulRightMono α] {a : α} {g : ι → α} {h : ι' → α}
    (H : ∀ i j, a ≤ g i * h j) : a ≤ iInf g * iInf h :=
  le_ciInf_mul fun _ => le_mul_ciInf <| H _

@[to_additive]
theorem ciSup_mul_ciSup_le [MulLeftMono α] [MulRightMono α] {a : α} {g : ι → α} {h : ι' → α}
    (H : ∀ i j, g i * h j ≤ a) : iSup g * iSup h ≤ a :=
  ciSup_mul_le fun _ => mul_ciSup_le <| H _

end Group
