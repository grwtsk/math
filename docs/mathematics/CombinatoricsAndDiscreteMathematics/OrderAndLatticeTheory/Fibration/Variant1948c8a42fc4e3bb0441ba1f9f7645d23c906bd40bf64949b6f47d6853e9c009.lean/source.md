# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Fibration.Variant1948c8a42fc4e3bb0441ba1f9f7645d23c906bd40bf64949b6f47d6853e9c009

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `79a1e7c541cfe4ea4e2ee78486c3adfaa85dc1c3` · SHA-256 `24cb24e3faf33ac575832591beecbb5ca6093555213d9d79a168a6bc17856f9a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.FibrationIsLowerSetImage.Variant396e45c1ae2e78a1f40b24b4df59d3f7370f57ec563baa548330640f9e1134d9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"396e45c1ae2e78a1f40b24b4df59d3f7370f57ec563baa548330640f9e1134d9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.FibrationIsLowerSetImage.Variant396e45c1ae2e78a1f40b24b4df59d3f7370f57ec563baa548330640f9e1134d9","mathematical_subject":"Algebra.OrderTheory","original_sha256":"396e45c1ae2e78a1f40b24b4df59d3f7370f57ec563baa548330640f9e1134d9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Order/UpperLower/Fibration.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies, Sara Rousta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies, Sara Rousta
-/
import Mathlib.Order.UpperLower.Basic

/-!
# Upper/lower sets and fibrations
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.FibrationIsLowerSetImage.Variant396e45c1ae2e78a1f40b24b4df59d3f7370f57ec563baa548330640f9e1134d9

open Set

namespace Relation

variable {α β : Type*} {f : α → β}

lemma Fibration.isLowerSet_image [LE α] [LE β] (hf : Fibration (· ≤ ·) (· ≤ ·) f)
    {s : Set α} (hs : IsLowerSet s) : IsLowerSet (f '' s) := by
  rintro _ y' e ⟨x, hx, rfl⟩; obtain ⟨y, e', rfl⟩ := hf e; exact ⟨_, hs e' hx, rfl⟩

alias _root_.IsLowerSet.image_fibration := Fibration.isLowerSet_image

lemma fibration_iff_isLowerSet_image_Iic [Preorder α] [LE β] :
    Fibration (· ≤ ·) (· ≤ ·) f ↔ ∀ x, IsLowerSet (f '' Iic x) :=
  ⟨fun h x ↦ (isLowerSet_Iic x).image_fibration h, fun H x _ e ↦ H x e ⟨x, le_rfl, rfl⟩⟩

lemma fibration_iff_isLowerSet_image [Preorder α] [LE β] :
    Fibration (· ≤ ·) (· ≤ ·) f ↔ ∀ s, IsLowerSet s → IsLowerSet (f '' s) :=
  ⟨Fibration.isLowerSet_image,
    fun H ↦ fibration_iff_isLowerSet_image_Iic.mpr (H _ <| isLowerSet_Iic ·)⟩

lemma fibration_iff_image_Iic [Preorder α] [Preorder β] (hf : Monotone f) :
    Fibration (· ≤ ·) (· ≤ ·) f ↔ ∀ x, f '' Iic x = Iic (f x) :=
  ⟨fun H x ↦ le_antisymm (fun _ ⟨_, hy, e⟩ ↦ e ▸ hf hy)
    ((H.isLowerSet_image (isLowerSet_Iic x)).Iic_subset ⟨x, le_rfl, rfl⟩),
    fun H ↦ fibration_iff_isLowerSet_image_Iic.mpr (fun x ↦ (H x).symm ▸ isLowerSet_Iic (f x))⟩

lemma Fibration.isUpperSet_image [LE α] [LE β] (hf : Fibration (· ≥ ·) (· ≥ ·) f)
    {s : Set α} (hs : IsUpperSet s) : IsUpperSet (f '' s) :=
  @Fibration.isLowerSet_image αᵒᵈ βᵒᵈ _ _ _ hf s hs

alias _root_.IsUpperSet.image_fibration := Fibration.isUpperSet_image

lemma fibration_iff_isUpperSet_image_Ici [Preorder α] [LE β] :
    Fibration (· ≥ ·) (· ≥ ·) f ↔ ∀ x, IsUpperSet (f '' Ici x) :=
  @fibration_iff_isLowerSet_image_Iic αᵒᵈ βᵒᵈ _ _ _

lemma fibration_iff_isUpperSet_image [Preorder α] [LE β] :
    Fibration (· ≥ ·) (· ≥ ·) f ↔ ∀ s, IsUpperSet s → IsUpperSet (f '' s) :=
  @fibration_iff_isLowerSet_image αᵒᵈ βᵒᵈ _ _ _

lemma fibration_iff_image_Ici [Preorder α] [Preorder β] (hf : Monotone f) :
    Fibration (· ≥ ·) (· ≥ ·) f ↔ ∀ x, f '' Ici x = Ici (f x) :=
  fibration_iff_image_Iic hf.dual

end Relation
```
