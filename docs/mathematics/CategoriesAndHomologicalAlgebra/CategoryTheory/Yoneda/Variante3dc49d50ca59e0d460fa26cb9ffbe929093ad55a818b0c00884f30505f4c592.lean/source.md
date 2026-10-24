# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Yoneda.Variante3dc49d50ca59e0d460fa26cb9ffbe929093ad55a818b0c00884f30505f4c592

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `76ecbd4379e0bacf9d2317be6e17e444beb7e081` · SHA-256 `cecea5f444c94cfb82b4729308b989b596ad09a73f79c049d38f50e81b63c9ac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LinearYoneda.Variant6c047eb2cee4e52f1b3fd13da16062e45dbfa28ddebc8432b0c7995d5f203c9b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6c047eb2cee4e52f1b3fd13da16062e45dbfa28ddebc8432b0c7995d5f203c9b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.LinearYoneda.Variant6c047eb2cee4e52f1b3fd13da16062e45dbfa28ddebc8432b0c7995d5f203c9b","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"6c047eb2cee4e52f1b3fd13da16062e45dbfa28ddebc8432b0c7995d5f203c9b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Linear/Yoneda.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Algebra.Category.ModuleCat.Basic
import Mathlib.CategoryTheory.Linear.Basic
import Mathlib.CategoryTheory.Preadditive.Yoneda.Basic

/-!
# The Yoneda embedding for `R`-linear categories

The Yoneda embedding for `R`-linear categories `C`,
sends an object `X : C` to the `ModuleCat R`-valued presheaf on `C`,
with value on `Y : Cᵒᵖ` given by `ModuleCat.of R (unop Y ⟶ X)`.

TODO: `linearYoneda R C` is `R`-linear.
TODO: In fact, `linearYoneda` itself is additive and `R`-linear.
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LinearYoneda.Variant6c047eb2cee4e52f1b3fd13da16062e45dbfa28ddebc8432b0c7995d5f203c9b

universe w v u

open Opposite

namespace CategoryTheory

variable (R : Type w) [Ring R] {C : Type u} [Category.{v} C] [Preadditive C] [Linear R C]
variable (C)

/-- The Yoneda embedding for `R`-linear categories `C`,
sending an object `X : C` to the `ModuleCat R`-valued presheaf on `C`,
with value on `Y : Cᵒᵖ` given by `ModuleCat.of R (unop Y ⟶ X)`. -/
@[simps]
def linearYoneda : C ⥤ Cᵒᵖ ⥤ ModuleCat R where
  obj X :=
    { obj := fun Y => ModuleCat.of R (unop Y ⟶ X)
      map := fun f => ModuleCat.ofHom (Linear.leftComp R _ f.unop) }
  map {X₁ X₂} f :=
    { app := fun Y => @ModuleCat.ofHom R _ (Y.unop ⟶ X₁) (Y.unop ⟶ X₂) _ _ _ _
        (Linear.rightComp R _ f) }

/-- The Yoneda embedding for `R`-linear categories `C`,
sending an object `Y : Cᵒᵖ` to the `ModuleCat R`-valued copresheaf on `C`,
with value on `X : C` given by `ModuleCat.of R (unop Y ⟶ X)`. -/
@[simps]
def linearCoyoneda : Cᵒᵖ ⥤ C ⥤ ModuleCat R where
  obj Y :=
    { obj := fun X => ModuleCat.of R (unop Y ⟶ X)
      map := fun f => ModuleCat.ofHom (Linear.rightComp R _ f) }
  map {Y₁ Y₂} f :=
    { app := fun X => @ModuleCat.ofHom R _ (unop Y₁ ⟶ X) (unop Y₂ ⟶ X) _ _ _ _
        (Linear.leftComp _ _ f.unop) }

instance linearYoneda_obj_additive (X : C) : ((linearYoneda R C).obj X).Additive where

instance linearCoyoneda_obj_additive (Y : Cᵒᵖ) : ((linearCoyoneda R C).obj Y).Additive where

@[simp]
theorem whiskering_linearYoneda :
    linearYoneda R C ⋙ (whiskeringRight _ _ _).obj (forget (ModuleCat.{v} R)) = yoneda :=
  rfl

@[simp]
theorem whiskering_linearYoneda₂ :
    linearYoneda R C ⋙ (whiskeringRight _ _ _).obj (forget₂ (ModuleCat.{v} R) AddCommGrp.{v}) =
      preadditiveYoneda :=
  rfl

@[simp]
theorem whiskering_linearCoyoneda :
    linearCoyoneda R C ⋙ (whiskeringRight _ _ _).obj (forget (ModuleCat.{v} R)) = coyoneda :=
  rfl

@[simp]
theorem whiskering_linearCoyoneda₂ :
    linearCoyoneda R C ⋙
        (whiskeringRight _ _ _).obj (forget₂ (ModuleCat.{v} R) AddCommGrp.{v}) =
      preadditiveCoyoneda :=
  rfl

instance full_linearYoneda : (linearYoneda R C).Full :=
  let _ :  Functor.Full (linearYoneda R C ⋙ (whiskeringRight _ _ _).obj
    (forget (ModuleCat.{v} R))) := Yoneda.yoneda_full
  Functor.Full.of_comp_faithful (linearYoneda R C)
    ((whiskeringRight _ _ _).obj (forget (ModuleCat.{v} R)))

instance full_linearCoyoneda : (linearCoyoneda R C).Full :=
  let _ : Functor.Full (linearCoyoneda R C ⋙ (whiskeringRight _ _ _).obj
    (forget (ModuleCat.{v} R))) := Coyoneda.coyoneda_full
  Functor.Full.of_comp_faithful (linearCoyoneda R C)
    ((whiskeringRight _ _ _).obj (forget (ModuleCat.{v} R)))

instance faithful_linearYoneda : (linearYoneda R C).Faithful :=
  Functor.Faithful.of_comp_eq (whiskering_linearYoneda R C)

instance faithful_linearCoyoneda : (linearCoyoneda R C).Faithful :=
  Functor.Faithful.of_comp_eq (whiskering_linearCoyoneda R C)

end CategoryTheory
```
