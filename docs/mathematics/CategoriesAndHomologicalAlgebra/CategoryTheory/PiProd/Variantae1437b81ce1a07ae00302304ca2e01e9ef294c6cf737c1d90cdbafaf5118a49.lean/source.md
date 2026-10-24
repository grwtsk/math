# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PiProd.Variantae1437b81ce1a07ae00302304ca2e01e9ef294c6cf737c1d90cdbafaf5118a49

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d86be086bc56eaaebfed7333c85d40949ec4439e` · SHA-256 `6e25e2f3c984c99745dfa90b24b3fee8adad2c62441313b6bd476040f1f48bb6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PiBinaryFanOfProp.Variant485e74509927c114819be6eb27c0a047f132c5287d0ecbb7b25c6992f5d3eab8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"485e74509927c114819be6eb27c0a047f132c5287d0ecbb7b25c6992f5d3eab8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.PiBinaryFanOfProp.Variant485e74509927c114819be6eb27c0a047f132c5287d0ecbb7b25c6992f5d3eab8","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"485e74509927c114819be6eb27c0a047f132c5287d0ecbb7b25c6992f5d3eab8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Limits/Shapes/PiProd.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
module

public import Mathlib.CategoryTheory.Limits.Shapes.BinaryProducts.BinaryProducts
public import Mathlib.CategoryTheory.Limits.Shapes.Products
/-!

# A product as a binary product

We write a product indexed by `I` as a binary product of the products indexed by a subset of `I`
and its complement.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PiBinaryFanOfProp.Variant485e74509927c114819be6eb27c0a047f132c5287d0ecbb7b25c6992f5d3eab8

@[expose] public section

namespace CategoryTheory.Limits

variable {C I : Type*} [Category* C] {X Y : I → C}
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
      · simp [← h₁, dite_eq_left h]
      · simp [← h₂, dite_eq_right h])

lemma hasBinaryProduct_of_products : HasBinaryProduct (∏ᶜ (fun (i : {x : I // P x}) ↦ X i.val))
    (∏ᶜ (fun (i : {x : I // ¬ P x}) ↦ X i.val)) := by
  classical exact ⟨Pi.binaryFanOfProp X P, Pi.binaryFanOfPropIsLimit X P⟩

attribute [local instance] hasBinaryProduct_of_products

set_option backward.isDefEq.respectTransparency false in
lemma Pi.map_eq_prod_map [∀ i, Decidable (P i)] : Pi.map f =
    ((Pi.binaryFanOfPropIsLimit X P).conePointUniqueUpToIso (prodIsProd _ _)).hom ≫
      prod.map (Pi.map (fun (i : {x : I // P x}) ↦ f i.val))
      (Pi.map (fun (i : {x : I // ¬ P x}) ↦ f i.val)) ≫
        ((Pi.binaryFanOfPropIsLimit Y P).conePointUniqueUpToIso (prodIsProd _ _)).inv := by
  rw [← Category.assoc, Iso.eq_comp_inv]
  dsimp only [IsLimit.conePointUniqueUpToIso, binaryFanOfProp, prodIsProd]
  cat_disch

end CategoryTheory.Limits
```
