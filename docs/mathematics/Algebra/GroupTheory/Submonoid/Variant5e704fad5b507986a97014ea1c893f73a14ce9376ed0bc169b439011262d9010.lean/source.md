# Complete source: GRWTSK.Algebra.GroupTheory.Submonoid.Variant5e704fad5b507986a97014ea1c893f73a14ce9376ed0bc169b439011262d9010

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `32d82a497b8be3413fdc4e69b8ca608ba834d60a` · SHA-256 `ac058f7aa4a0014d0621c17fe85a69413fb63d0fe90b7d3d3145637e16e7454e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.DfinsuppProdMem.Variant7661c2a4644d768dbb4fe64ffed933d1d4f59ad1f49f94a091f55dcd92df077f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7661c2a4644d768dbb4fe64ffed933d1d4f59ad1f49f94a091f55dcd92df077f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.DfinsuppProdMem.Variant7661c2a4644d768dbb4fe64ffed933d1d4f59ad1f49f94a091f55dcd92df077f","mathematical_subject":"Algebra.Groups","original_sha256":"7661c2a4644d768dbb4fe64ffed933d1d4f59ad1f49f94a091f55dcd92df077f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/DFinsupp/Submonoid.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Kenny Lau
-/
import Mathlib.Algebra.Group.Submonoid.BigOperators
import Mathlib.Algebra.Group.Submonoid.Membership
import Mathlib.Data.DFinsupp.BigOperators
import Mathlib.Order.ConditionallyCompleteLattice.Basic

/-!
# `DFinsupp` and submonoids

This file mainly concerns the interaction between submonoids and products/sums of `DFinsupp`s.

## Main results

* `AddSubmonoid.mem_iSup_iff_exists_dfinsupp`: elements of the supremum of additive commutative
  monoids can be given by taking finite sums of elements of each monoid.
* `AddSubmonoid.mem_bsupr_iff_exists_dfinsupp`: elements of the supremum of additive commutative
  monoids can be given by taking finite sums of elements of each monoid.
-/



namespace GRWTSK.Algebra.GroupTheory.DfinsuppProdMem.Variant7661c2a4644d768dbb4fe64ffed933d1d4f59ad1f49f94a091f55dcd92df077f

universe u u₁ u₂ v v₁ v₂ v₃ w x y l

variable {ι : Type u} {γ : Type w} {β : ι → Type v} {β₁ : ι → Type v₁} {β₂ : ι → Type v₂}

open DFinsupp

variable [DecidableEq ι]

@[to_additive]
theorem dfinsuppProd_mem [∀ i, Zero (β i)] [∀ (i) (x : β i), Decidable (x ≠ 0)]
    [CommMonoid γ] {S : Type*} [SetLike S γ] [SubmonoidClass S γ]
    (s : S) (f : Π₀ i, β i) (g : ∀ i, β i → γ)
    (h : ∀ c, f c ≠ 0 → g c (f c) ∈ s) : f.prod g ∈ s :=
  prod_mem fun _ hi => h _ <| mem_support_iff.1 hi

@[deprecated (since := "2025-04-06")] alias dfinsupp_prod_mem := dfinsuppProd_mem

theorem dfinsuppSumAddHom_mem [∀ i, AddZeroClass (β i)] [AddCommMonoid γ] {S : Type*}
    [SetLike S γ] [AddSubmonoidClass S γ] (s : S) (f : Π₀ i, β i) (g : ∀ i, β i →+ γ)
    (h : ∀ c, f c ≠ 0 → g c (f c) ∈ s) : DFinsupp.sumAddHom g f ∈ s := by
  classical
    rw [DFinsupp.sumAddHom_apply]
    exact dfinsuppSum_mem s f (g ·) h

@[deprecated (since := "2025-04-06")] alias dfinsupp_sumAddHom_mem := dfinsuppSumAddHom_mem

/-- The supremum of a family of commutative additive submonoids is equal to the range of
`DFinsupp.sumAddHom`; that is, every element in the `iSup` can be produced from taking a finite
number of non-zero elements of `S i`, coercing them to `γ`, and summing them. -/
theorem AddSubmonoid.iSup_eq_mrange_dfinsuppSumAddHom
    [AddCommMonoid γ] (S : ι → AddSubmonoid γ) :
    iSup S = AddMonoidHom.mrange (DFinsupp.sumAddHom fun i => (S i).subtype) := by
  apply le_antisymm
  · apply iSup_le _
    intro i y hy
    exact ⟨DFinsupp.single i ⟨y, hy⟩, DFinsupp.sumAddHom_single _ _ _⟩
  · rintro x ⟨v, rfl⟩
    exact dfinsuppSumAddHom_mem _ v _ fun i _ => (le_iSup S i : S i ≤ _) (v i).prop

/-- The bounded supremum of a family of commutative additive submonoids is equal to the range of
`DFinsupp.sumAddHom` composed with `DFinsupp.filterAddMonoidHom`; that is, every element in the
bounded `iSup` can be produced from taking a finite number of non-zero elements from the `S i` that
satisfy `p i`, coercing them to `γ`, and summing them. -/
theorem AddSubmonoid.bsupr_eq_mrange_dfinsuppSumAddHom (p : ι → Prop) [DecidablePred p]
    [AddCommMonoid γ] (S : ι → AddSubmonoid γ) :
    ⨆ (i) (_ : p i), S i =
      AddMonoidHom.mrange ((sumAddHom fun i => (S i).subtype).comp (filterAddMonoidHom _ p)) := by
  apply le_antisymm
  · refine iSup₂_le fun i hi y hy => ⟨DFinsupp.single i ⟨y, hy⟩, ?_⟩
    rw [AddMonoidHom.comp_apply, filterAddMonoidHom_apply, filter_single_pos _ _ hi]
    exact sumAddHom_single _ _ _
  · rintro x ⟨v, rfl⟩
    refine dfinsuppSumAddHom_mem _ _ _ fun i _ => ?_
    refine AddSubmonoid.mem_iSup_of_mem i ?_
    by_cases hp : p i
    · simp [hp]
    · simp [hp]

@[deprecated (since := "2025-04-06")]
alias AddSubmonoid.bsupr_eq_mrange_dfinsupp_sumAddHom :=
  AddSubmonoid.bsupr_eq_mrange_dfinsuppSumAddHom

theorem AddSubmonoid.mem_iSup_iff_exists_dfinsupp [AddCommMonoid γ] (S : ι → AddSubmonoid γ)
    (x : γ) : x ∈ iSup S ↔ ∃ f : Π₀ i, S i, DFinsupp.sumAddHom (fun i => (S i).subtype) f = x :=
  SetLike.ext_iff.mp (AddSubmonoid.iSup_eq_mrange_dfinsuppSumAddHom S) x

/-- A variant of `AddSubmonoid.mem_iSup_iff_exists_dfinsupp` with the RHS fully unfolded. -/
theorem AddSubmonoid.mem_iSup_iff_exists_dfinsupp' [AddCommMonoid γ] (S : ι → AddSubmonoid γ)
    [∀ (i) (x : S i), Decidable (x ≠ 0)] (x : γ) :
    x ∈ iSup S ↔ ∃ f : Π₀ i, S i, (f.sum fun _ xi => ↑xi) = x := by
  rw [AddSubmonoid.mem_iSup_iff_exists_dfinsupp]
  simp_rw [sumAddHom_apply]
  rfl

theorem AddSubmonoid.mem_bsupr_iff_exists_dfinsupp (p : ι → Prop) [DecidablePred p]
    [AddCommMonoid γ] (S : ι → AddSubmonoid γ) (x : γ) :
    (x ∈ ⨆ (i) (_ : p i), S i) ↔
      ∃ f : Π₀ i, S i, DFinsupp.sumAddHom (fun i => (S i).subtype) (f.filter p) = x :=
  SetLike.ext_iff.mp (AddSubmonoid.bsupr_eq_mrange_dfinsuppSumAddHom p S) x
```
