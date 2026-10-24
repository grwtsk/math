# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PiProd.Variant589ca8e3a6e119b91ae107d662b753afc06c29bb147096cec4fcc5170e49c7ac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7dbd9ebe35983d09229a619ff083352c20f73828` · SHA-256 `43c0df99ed6fdbc9942bb3ca1ea544a7e6b0fc38406c377cb98e20717c61638e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PiBinaryFanOfProp.Variant4fe9c7f343334278c7ec8463c5eca8f023319c5b8faded7c034914f6c11846b2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4fe9c7f343334278c7ec8463c5eca8f023319c5b8faded7c034914f6c11846b2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.PiBinaryFanOfProp.Variant4fe9c7f343334278c7ec8463c5eca8f023319c5b8faded7c034914f6c11846b2","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"4fe9c7f343334278c7ec8463c5eca8f023319c5b8faded7c034914f6c11846b2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Limits/Shapes/PiProd.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts
import Mathlib.CategoryTheory.Limits.Shapes.Products
/-!

# A product as a binary product

We write a product indexed by `I` as a binary product of the products indexed by a subset of `I`
and its complement.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PiBinaryFanOfProp.Variant4fe9c7f343334278c7ec8463c5eca8f023319c5b8faded7c034914f6c11846b2

namespace CategoryTheory.Limits

variable {C I : Type*} [Category C] {X Y : I → C}
  (f : (i : I) → X i ⟶ Y i) (P : I → Prop)
  [HasProduct X] [HasProduct Y]
  [HasProduct (fun (i : {x : I // P x}) ↦ X i.val)]
  [HasProduct (fun (i : {x : I // ¬ P x}) ↦ X i.val)]
  [HasProduct (fun (i : {x : I // P x}) ↦ Y i.val)]
  [HasProduct (fun (i : {x : I // ¬ P x}) ↦ Y i.val)]

variable (X) in
/--
The projection maps of a product to the products indexed by a subset and its complement, as a
binary fan.
-/
noncomputable def Pi.binaryFanOfProp : BinaryFan (∏ᶜ (fun (i : {x : I // P x}) ↦ X i.val))
    (∏ᶜ (fun (i : {x : I // ¬ P x}) ↦ X i.val)) :=
  BinaryFan.mk (P := ∏ᶜ X) (Pi.map' Subtype.val fun _ ↦ 𝟙 _)
    (Pi.map' Subtype.val fun _ ↦ 𝟙 _)

variable (X) in
/--
A product indexed by `I` is a binary product of the products indexed by a subset of `I` and its
complement.
-/
noncomputable def Pi.binaryFanOfPropIsLimit [∀ i, Decidable (P i)] :
    IsLimit (Pi.binaryFanOfProp X P) :=
  BinaryFan.isLimitMk
    (fun s ↦ Pi.lift fun b ↦ if h : P b then
      s.π.app ⟨WalkingPair.left⟩ ≫ Pi.π (fun (i : {x : I // P x}) ↦ X i.val) ⟨b, h⟩ else
      s.π.app ⟨WalkingPair.right⟩ ≫ Pi.π (fun (i : {x : I // ¬ P x}) ↦ X i.val) ⟨b, h⟩)
    (by aesop) (by aesop)
    (fun _ _ h₁ h₂ ↦ Pi.hom_ext _ _ fun b ↦ by
      by_cases h : P b
      · simp [← h₁, dif_pos h]
      · simp [← h₂, dif_neg h])

lemma hasBinaryProduct_of_products : HasBinaryProduct (∏ᶜ (fun (i : {x : I // P x}) ↦ X i.val))
    (∏ᶜ (fun (i : {x : I // ¬ P x}) ↦ X i.val)) := by
  classical exact ⟨Pi.binaryFanOfProp X P, Pi.binaryFanOfPropIsLimit X P⟩

attribute [local instance] hasBinaryProduct_of_products

lemma Pi.map_eq_prod_map [∀ i, Decidable (P i)] : Pi.map f =
    ((Pi.binaryFanOfPropIsLimit X P).conePointUniqueUpToIso (prodIsProd _ _)).hom ≫
      prod.map (Pi.map (fun (i : {x : I // P x}) ↦ f i.val))
      (Pi.map (fun (i : {x : I // ¬ P x}) ↦ f i.val)) ≫
        ((Pi.binaryFanOfPropIsLimit Y P).conePointUniqueUpToIso (prodIsProd _ _)).inv := by
  rw [← Category.assoc, Iso.eq_comp_inv]
  dsimp only [IsLimit.conePointUniqueUpToIso, binaryFanOfProp, prodIsProd]
  apply prod.hom_ext
  all_goals aesop_cat

end CategoryTheory.Limits
```
