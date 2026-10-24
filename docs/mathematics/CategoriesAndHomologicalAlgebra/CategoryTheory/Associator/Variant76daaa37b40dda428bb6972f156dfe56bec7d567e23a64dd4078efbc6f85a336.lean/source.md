# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Associator.Variant76daaa37b40dda428bb6972f156dfe56bec7d567e23a64dd4078efbc6f85a336

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `df9580c08e44cf50d7eb762d3f4f45c31c03a2c2` · SHA-256 `aa4f093513b55312396a04ebd7402b41dcc582d6116e1fdbde34d0ecaf7f55fd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Associator.Variant08edf137c464f47771076641e920399176dd834e0c11e8ac2f0c77eafbb9b4c0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"08edf137c464f47771076641e920399176dd834e0c11e8ac2f0c77eafbb9b4c0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Associator.Variant08edf137c464f47771076641e920399176dd834e0c11e8ac2f0c77eafbb9b4c0","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"08edf137c464f47771076641e920399176dd834e0c11e8ac2f0c77eafbb9b4c0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Products/Associator.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Stephen Morgan, Kim Morrison
-/
module

public import Mathlib.CategoryTheory.Products.Basic

/-!
# The associator equivalence for products of categories

The associator functor `((C × D) × E) ⥤ (C × (D × E))` and its inverse form an equivalence.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Associator.Variant08edf137c464f47771076641e920399176dd834e0c11e8ac2f0c77eafbb9b4c0

@[expose] public section

universe v₁ v₂ v₃ v₄ u₁ u₂ u₃ u₄

open CategoryTheory

namespace CategoryTheory.prod

open scoped CategoryTheory.Prod

variable (C : Type u₁) [Category.{v₁} C] (D : Type u₂) [Category.{v₂} D] (E : Type u₃)
  [Category.{v₃} E]

/-- The associator functor `(C × D) × E ⥤ C × (D × E)`.
-/
@[simps]
def associator : (C × D) × E ⥤ C × D × E where
  obj X := (X.1.1, (X.1.2, X.2))
  map := @fun _ _ f => f.1.1 ×ₘ (f.1.2 ×ₘ f.2)

/-- The inverse associator functor `C × (D × E) ⥤ (C × D) × E `.
-/
@[simps]
def inverseAssociator : C × D × E ⥤ (C × D) × E where
  obj X := ((X.1, X.2.1), X.2.2)
  map := @fun _ _ f => (f.1 ×ₘ f.2.1) ×ₘ f.2.2

set_option backward.defeqAttrib.useBackward true in
/-- The equivalence of categories expressing associativity of products of categories.
-/
@[simps]
def associativity : (C × D) × E ≌ C × D × E where
  functor := associator C D E
  inverse := inverseAssociator C D E
  unitIso := Iso.refl _
  counitIso := Iso.refl _

instance associatorIsEquivalence : (associator C D E).IsEquivalence :=
  (by infer_instance : (associativity C D E).functor.IsEquivalence)

instance inverseAssociatorIsEquivalence : (inverseAssociator C D E).IsEquivalence :=
  (by infer_instance : (associativity C D E).inverse.IsEquivalence)

-- TODO pentagon natural transformation? ...satisfying?

variable (A : Type u₄) [Category.{v₄} A]

/-- The associator isomorphism is compatible with `prodFunctorToFunctorProd`. -/
@[simps!]
def prodFunctorToFunctorProdAssociator :
    (associativity _ _ _).functor ⋙ ((𝟭 _).prod (prodFunctorToFunctorProd A D E) ⋙
      (prodFunctorToFunctorProd A C (D × E))) ≅
        (prodFunctorToFunctorProd A C D).prod (𝟭 _) ⋙ (prodFunctorToFunctorProd A (C × D) E) ⋙
          (associativity C D E).congrRight.functor :=
  Iso.refl _

/-- The associator isomorphism is compatible with `functorProdToProdFunctor`. -/
@[simps!]
def functorProdToProdFunctorAssociator :
    (associativity _ _ _).congrRight.functor ⋙ functorProdToProdFunctor A C (D × E) ⋙
      (𝟭 _).prod (functorProdToProdFunctor A D E) ≅
        functorProdToProdFunctor A (C × D) E ⋙ (functorProdToProdFunctor A C D).prod (𝟭 _) ⋙
          (associativity _ _ _).functor :=
  Iso.refl _

#adaptation_note
/-- `respectTransparency.types true` changes the auto-generated lemmas' signature -/
set_option backward.isDefEq.respectTransparency.types false in
/-- The equivalence swapping the second and third categories in `(A × C) × (D × E)`. This follows
the definition of `MonoidalCategory.tensorμ`. -/
@[simps!]
def prodμ : (A × C) × (D × E) ≌ (A × D) × (C × E) :=
  (associativity ..).trans <|
    (Equivalence.refl.prod (associativity ..).symm).trans <|
      (Equivalence.refl.prod <| (Prod.braiding C D).prod (Equivalence.refl)).trans <|
        (Equivalence.refl.prod (associativity ..)).trans <| (associativity ..).symm

end CategoryTheory.prod
```
