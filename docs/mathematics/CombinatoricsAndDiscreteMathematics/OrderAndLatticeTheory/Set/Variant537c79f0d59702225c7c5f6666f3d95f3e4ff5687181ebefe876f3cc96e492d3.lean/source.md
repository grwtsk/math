# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Set.Variant537c79f0d59702225c7c5f6666f3d95f3e4ff5687181ebefe876f3cc96e492d3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a1656ffb603fb9080656ce09466dffa719ac41ac` · SHA-256 `0cc71c9d84e472eb357fdce6611ff5c21bd444a80f4583752540fbbeb82eb05e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.RangeEq.Variant356b261ea8dc730a830177e3c44bb55547d33715890d3f7970e81def17930ad8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"356b261ea8dc730a830177e3c44bb55547d33715890d3f7970e81def17930ad8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.RangeEq.Variant356b261ea8dc730a830177e3c44bb55547d33715890d3f7970e81def17930ad8","mathematical_subject":"Algebra.OrderTheory","original_sha256":"356b261ea8dc730a830177e3c44bb55547d33715890d3f7970e81def17930ad8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Order/Hom/Set.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
import Mathlib.Order.Hom.Basic
import Mathlib.Logic.Equiv.Set
import Mathlib.Data.Set.Image


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.RangeEq.Variant356b261ea8dc730a830177e3c44bb55547d33715890d3f7970e81def17930ad8

#align_import order.hom.set from "leanprover-community/mathlib"@"198161d833f2c01498c39c266b0b3dbe2c7a8c07"

/-!
# Order homomorphisms and sets
-/


open OrderDual

variable {F α β γ δ : Type*}

namespace OrderIso

section LE

variable [LE α] [LE β] [LE γ]

theorem range_eq (e : α ≃o β) : Set.range e = Set.univ :=
  e.surjective.range_eq
#align order_iso.range_eq OrderIso.range_eq

@[simp]
theorem symm_image_image (e : α ≃o β) (s : Set α) : e.symm '' (e '' s) = s :=
  e.toEquiv.symm_image_image s
#align order_iso.symm_image_image OrderIso.symm_image_image

@[simp]
theorem image_symm_image (e : α ≃o β) (s : Set β) : e '' (e.symm '' s) = s :=
  e.toEquiv.image_symm_image s
#align order_iso.image_symm_image OrderIso.image_symm_image

theorem image_eq_preimage (e : α ≃o β) (s : Set α) : e '' s = e.symm ⁻¹' s :=
  e.toEquiv.image_eq_preimage s
#align order_iso.image_eq_preimage OrderIso.image_eq_preimage

@[simp]
theorem preimage_symm_preimage (e : α ≃o β) (s : Set α) : e ⁻¹' (e.symm ⁻¹' s) = s :=
  e.toEquiv.preimage_symm_preimage s
#align order_iso.preimage_symm_preimage OrderIso.preimage_symm_preimage

@[simp]
theorem symm_preimage_preimage (e : α ≃o β) (s : Set β) : e.symm ⁻¹' (e ⁻¹' s) = s :=
  e.toEquiv.symm_preimage_preimage s
#align order_iso.symm_preimage_preimage OrderIso.symm_preimage_preimage

@[simp]
theorem image_preimage (e : α ≃o β) (s : Set β) : e '' (e ⁻¹' s) = s :=
  e.toEquiv.image_preimage s
#align order_iso.image_preimage OrderIso.image_preimage

@[simp]
theorem preimage_image (e : α ≃o β) (s : Set α) : e ⁻¹' (e '' s) = s :=
  e.toEquiv.preimage_image s
#align order_iso.preimage_image OrderIso.preimage_image

end LE

open Set

variable [Preorder α] [Preorder β] [Preorder γ]

/-- Order isomorphism between two equal sets. -/
def setCongr (s t : Set α) (h : s = t) :
    s ≃o t where
  toEquiv := Equiv.setCongr h
  map_rel_iff' := Iff.rfl
#align order_iso.set_congr OrderIso.setCongr

/-- Order isomorphism between `univ : Set α` and `α`. -/
def Set.univ : (Set.univ : Set α) ≃o
      α where
  toEquiv := Equiv.Set.univ α
  map_rel_iff' := Iff.rfl
#align order_iso.set.univ OrderIso.Set.univ

end OrderIso

/-- If a function `f` is strictly monotone on a set `s`, then it defines an order isomorphism
between `s` and its image. -/
protected noncomputable def StrictMonoOn.orderIso {α β} [LinearOrder α] [Preorder β] (f : α → β)
    (s : Set α) (hf : StrictMonoOn f s) :
    s ≃o f '' s where
  toEquiv := hf.injOn.bijOn_image.equiv _
  map_rel_iff' := hf.le_iff_le (Subtype.property _) (Subtype.property _)
#align strict_mono_on.order_iso StrictMonoOn.orderIso

namespace StrictMono

variable [LinearOrder α] [Preorder β]

variable (f : α → β) (h_mono : StrictMono f) (h_surj : Function.Surjective f)

/-- A strictly monotone function from a linear order is an order isomorphism between its domain and
its range. -/
@[simps! apply]
protected noncomputable def orderIso :
    α ≃o Set.range f where
  toEquiv := Equiv.ofInjective f h_mono.injective
  map_rel_iff' := h_mono.le_iff_le
#align strict_mono.order_iso StrictMono.orderIso
#align strict_mono.order_iso_apply StrictMono.orderIso_apply

/-- A strictly monotone surjective function from a linear order is an order isomorphism. -/
noncomputable def orderIsoOfSurjective : α ≃o β :=
  (h_mono.orderIso f).trans <|
    (OrderIso.setCongr _ _ h_surj.range_eq).trans OrderIso.Set.univ
#align strict_mono.order_iso_of_surjective StrictMono.orderIsoOfSurjective

@[simp]
theorem coe_orderIsoOfSurjective : (orderIsoOfSurjective f h_mono h_surj : α → β) = f :=
  rfl
#align strict_mono.coe_order_iso_of_surjective StrictMono.coe_orderIsoOfSurjective

@[simp]
theorem orderIsoOfSurjective_symm_apply_self (a : α) :
    (orderIsoOfSurjective f h_mono h_surj).symm (f a) = a :=
  (orderIsoOfSurjective f h_mono h_surj).symm_apply_apply _
#align strict_mono.order_iso_of_surjective_symm_apply_self StrictMono.orderIsoOfSurjective_symm_apply_self

theorem orderIsoOfSurjective_self_symm_apply (b : β) :
    f ((orderIsoOfSurjective f h_mono h_surj).symm b) = b :=
  (orderIsoOfSurjective f h_mono h_surj).apply_symm_apply _
#align strict_mono.order_iso_of_surjective_self_symm_apply StrictMono.orderIsoOfSurjective_self_symm_apply

end StrictMono

section BooleanAlgebra

variable (α) [BooleanAlgebra α]

/-- Taking complements as an order isomorphism to the order dual. -/
@[simps]
def OrderIso.compl : α ≃o αᵒᵈ where
  toFun := OrderDual.toDual ∘ HasCompl.compl
  invFun := HasCompl.compl ∘ OrderDual.ofDual
  left_inv := compl_compl
  right_inv := compl_compl (α := αᵒᵈ)
  map_rel_iff' := compl_le_compl_iff_le
#align order_iso.compl OrderIso.compl
#align order_iso.compl_symm_apply OrderIso.compl_symm_apply
#align order_iso.compl_apply OrderIso.compl_apply

theorem compl_strictAnti : StrictAnti (compl : α → α) :=
  (OrderIso.compl α).strictMono
#align compl_strict_anti compl_strictAnti

theorem compl_antitone : Antitone (compl : α → α) :=
  (OrderIso.compl α).monotone
#align compl_antitone compl_antitone

end BooleanAlgebra
```
