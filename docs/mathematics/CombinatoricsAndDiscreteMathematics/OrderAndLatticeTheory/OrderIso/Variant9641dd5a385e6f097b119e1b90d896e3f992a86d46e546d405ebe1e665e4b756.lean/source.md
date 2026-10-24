# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OrderIso.Variant9641dd5a385e6f097b119e1b90d896e3f992a86d46e546d405ebe1e665e4b756

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `912af3ca7011e912183b3ee3f7f8b7625fdf20e1` · SHA-256 `426fba78665acb3a68ccbfc78f0ba8a97d0dc72793242f38c39424d5b833e7b4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.PreimageIic.Variant0c4a779986d99ce3c2195ade0e871b35611609a910a44113af867c8c89b74b07","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0c4a779986d99ce3c2195ade0e871b35611609a910a44113af867c8c89b74b07","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.PreimageIic.Variant0c4a779986d99ce3c2195ade0e871b35611609a910a44113af867c8c89b74b07","mathematical_subject":"Algebra.OrderTheory","original_sha256":"0c4a779986d99ce3c2195ade0e871b35611609a910a44113af867c8c89b74b07","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/Interval/Set/OrderIso.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro, Patrick Massot, Yury Kudryashov, Rémy Degenne
-/
import Mathlib.Order.Interval.Set.Basic
import Mathlib.Order.Hom.Set

/-!
# Lemmas about images of intervals under order isomorphisms.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.PreimageIic.Variant0c4a779986d99ce3c2195ade0e871b35611609a910a44113af867c8c89b74b07

open Set

namespace OrderIso

section Preorder

variable {α β : Type*} [Preorder α] [Preorder β]

@[simp]
theorem preimage_Iic (e : α ≃o β) (b : β) : e ⁻¹' Iic b = Iic (e.symm b) := by
  ext x
  simp [← e.le_iff_le]

@[simp]
theorem preimage_Ici (e : α ≃o β) (b : β) : e ⁻¹' Ici b = Ici (e.symm b) := by
  ext x
  simp [← e.le_iff_le]

@[simp]
theorem preimage_Iio (e : α ≃o β) (b : β) : e ⁻¹' Iio b = Iio (e.symm b) := by
  ext x
  simp [← e.lt_iff_lt]

@[simp]
theorem preimage_Ioi (e : α ≃o β) (b : β) : e ⁻¹' Ioi b = Ioi (e.symm b) := by
  ext x
  simp [← e.lt_iff_lt]

@[simp]
theorem preimage_Icc (e : α ≃o β) (a b : β) : e ⁻¹' Icc a b = Icc (e.symm a) (e.symm b) := by
  simp [← Ici_inter_Iic]

@[simp]
theorem preimage_Ico (e : α ≃o β) (a b : β) : e ⁻¹' Ico a b = Ico (e.symm a) (e.symm b) := by
  simp [← Ici_inter_Iio]

@[simp]
theorem preimage_Ioc (e : α ≃o β) (a b : β) : e ⁻¹' Ioc a b = Ioc (e.symm a) (e.symm b) := by
  simp [← Ioi_inter_Iic]

@[simp]
theorem preimage_Ioo (e : α ≃o β) (a b : β) : e ⁻¹' Ioo a b = Ioo (e.symm a) (e.symm b) := by
  simp [← Ioi_inter_Iio]

@[simp]
theorem image_Iic (e : α ≃o β) (a : α) : e '' Iic a = Iic (e a) := by
  rw [e.image_eq_preimage, e.symm.preimage_Iic, e.symm_symm]

@[simp]
theorem image_Ici (e : α ≃o β) (a : α) : e '' Ici a = Ici (e a) :=
  e.dual.image_Iic a

@[simp]
theorem image_Iio (e : α ≃o β) (a : α) : e '' Iio a = Iio (e a) := by
  rw [e.image_eq_preimage, e.symm.preimage_Iio, e.symm_symm]

@[simp]
theorem image_Ioi (e : α ≃o β) (a : α) : e '' Ioi a = Ioi (e a) :=
  e.dual.image_Iio a

@[simp]
theorem image_Ioo (e : α ≃o β) (a b : α) : e '' Ioo a b = Ioo (e a) (e b) := by
  rw [e.image_eq_preimage, e.symm.preimage_Ioo, e.symm_symm]

@[simp]
theorem image_Ioc (e : α ≃o β) (a b : α) : e '' Ioc a b = Ioc (e a) (e b) := by
  rw [e.image_eq_preimage, e.symm.preimage_Ioc, e.symm_symm]

@[simp]
theorem image_Ico (e : α ≃o β) (a b : α) : e '' Ico a b = Ico (e a) (e b) := by
  rw [e.image_eq_preimage, e.symm.preimage_Ico, e.symm_symm]

@[simp]
theorem image_Icc (e : α ≃o β) (a b : α) : e '' Icc a b = Icc (e a) (e b) := by
  rw [e.image_eq_preimage, e.symm.preimage_Icc, e.symm_symm]

end Preorder

/-- Order isomorphism between `Iic (⊤ : α)` and `α` when `α` has a top element -/
def IicTop {α : Type*} [Preorder α] [OrderTop α] : Iic (⊤ : α) ≃o α :=
  { @Equiv.subtypeUnivEquiv α (Iic (⊤ : α)) fun _ => le_top with
    map_rel_iff' := @fun x y => by rfl }

/-- Order isomorphism between `Ici (⊥ : α)` and `α` when `α` has a bottom element -/
def IciBot {α : Type*} [Preorder α] [OrderBot α] : Ici (⊥ : α) ≃o α :=
  { @Equiv.subtypeUnivEquiv α (Ici (⊥ : α)) fun _ => bot_le with
    map_rel_iff' := @fun x y => by rfl }

end OrderIso
```
