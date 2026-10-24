# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variantdf109e2158c8971539573e48252b6a22b275d923d79b9ba9fe00bf7e3cd1e3cb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `be40033c8a984488535b040b2d7d09b7246d9d08` · SHA-256 `4e8d2dbd20ff4acb5f718fef1cd1455bd1d98463146d3570cef5d025289ed222`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PreadditiveYonedaObj.Variantcaa23fee0dfe4830bec735d908c4c99d5628771541b5bf11c7db2e1de1ae689d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"caa23fee0dfe4830bec735d908c4c99d5628771541b5bf11c7db2e1de1ae689d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.PreadditiveYonedaObj.Variantcaa23fee0dfe4830bec735d908c4c99d5628771541b5bf11c7db2e1de1ae689d","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"caa23fee0dfe4830bec735d908c4c99d5628771541b5bf11c7db2e1de1ae689d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/CategoryTheory/Preadditive/Yoneda/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Limits.Yoneda
import Mathlib.CategoryTheory.Preadditive.Opposite
import Mathlib.Algebra.Category.ModuleCat.Basic
import Mathlib.Algebra.Category.GroupCat.Preadditive


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PreadditiveYonedaObj.Variantcaa23fee0dfe4830bec735d908c4c99d5628771541b5bf11c7db2e1de1ae689d

#align_import category_theory.preadditive.yoneda.basic from "leanprover-community/mathlib"@"09f981f72d43749f1fa072deade828d9c1e185bb"

/-!
# The Yoneda embedding for preadditive categories

The Yoneda embedding for preadditive categories sends an object `Y` to the presheaf sending an
object `X` to the group of morphisms `X ⟶ Y`. At each point, we get an additional `End Y`-module
structure.

We also show that this presheaf is additive and that it is compatible with the normal Yoneda
embedding in the expected way and deduce that the preadditive Yoneda embedding is fully faithful.

## TODO
* The Yoneda embedding is additive itself

-/


universe v u

open CategoryTheory.Preadditive Opposite CategoryTheory.Limits

noncomputable section

namespace CategoryTheory

variable {C : Type u} [Category.{v} C] [Preadditive C]

/-- The Yoneda embedding for preadditive categories sends an object `Y` to the presheaf sending an
object `X` to the `End Y`-module of morphisms `X ⟶ Y`.
-/
@[simps]
def preadditiveYonedaObj (Y : C) : Cᵒᵖ ⥤ ModuleCat.{v} (End Y) where
  obj X := ModuleCat.of _ (X.unop ⟶ Y)
  map f := ModuleCat.ofHom
    { toFun := fun g => f.unop ≫ g
      map_add' := fun g g' => comp_add _ _ _ _ _ _
      map_smul' := fun r g => Eq.symm <| Category.assoc _ _ _ }
#align category_theory.preadditive_yoneda_obj CategoryTheory.preadditiveYonedaObj

/-- The Yoneda embedding for preadditive categories sends an object `Y` to the presheaf sending an
object `X` to the group of morphisms `X ⟶ Y`. At each point, we get an additional `End Y`-module
structure, see `preadditiveYonedaObj`.
-/
@[simps]
def preadditiveYoneda : C ⥤ Cᵒᵖ ⥤ AddCommGroupCat.{v} where
  obj Y := preadditiveYonedaObj Y ⋙ forget₂ _ _
  map f :=
    { app := fun X =>
        { toFun := fun g => g ≫ f
          map_zero' := Limits.zero_comp
          map_add' := fun g g' => add_comp _ _ _ _ _ _ }
      naturality := fun X X' g => AddCommGroupCat.ext fun x => Category.assoc _ _ _ }
  map_id _ := by ext; dsimp; simp
  map_comp f g := by ext; dsimp; simp
#align category_theory.preadditive_yoneda CategoryTheory.preadditiveYoneda

/-- The Yoneda embedding for preadditive categories sends an object `X` to the copresheaf sending an
object `Y` to the `End X`-module of morphisms `X ⟶ Y`.
-/
@[simps]
def preadditiveCoyonedaObj (X : Cᵒᵖ) : C ⥤ ModuleCat.{v} (End X) where
  obj Y := ModuleCat.of _ (unop X ⟶ Y)
  map f := ModuleCat.ofHom
    { toFun := fun g => g ≫ f
      map_add' := fun g g' => add_comp _ _ _ _ _ _
      map_smul' := fun r g => Category.assoc _ _ _ }
#align category_theory.preadditive_coyoneda_obj CategoryTheory.preadditiveCoyonedaObj

/-- The Yoneda embedding for preadditive categories sends an object `X` to the copresheaf sending an
object `Y` to the group of morphisms `X ⟶ Y`. At each point, we get an additional `End X`-module
structure, see `preadditiveCoyonedaObj`.
-/
@[simps]
def preadditiveCoyoneda : Cᵒᵖ ⥤ C ⥤ AddCommGroupCat.{v} where
  obj X := preadditiveCoyonedaObj X ⋙ forget₂ _ _
  map f :=
    { app := fun Y =>
        { toFun := fun g => f.unop ≫ g
          map_zero' := Limits.comp_zero
          map_add' := fun g g' => comp_add _ _ _ _ _ _ }
      naturality := fun Y Y' g =>
        AddCommGroupCat.ext fun x => Eq.symm <| Category.assoc _ _ _ }
  map_id _ := by ext; dsimp; simp
  map_comp f g := by ext; dsimp; simp
#align category_theory.preadditive_coyoneda CategoryTheory.preadditiveCoyoneda

instance additive_yonedaObj (X : C) : Functor.Additive (preadditiveYonedaObj X) where
#align category_theory.additive_yoneda_obj CategoryTheory.additive_yonedaObj

instance additive_yonedaObj' (X : C) : Functor.Additive (preadditiveYoneda.obj X) where
#align category_theory.additive_yoneda_obj' CategoryTheory.additive_yonedaObj'

instance additive_coyonedaObj (X : Cᵒᵖ) : Functor.Additive (preadditiveCoyonedaObj X) where
#align category_theory.additive_coyoneda_obj CategoryTheory.additive_coyonedaObj

instance additive_coyonedaObj' (X : Cᵒᵖ) : Functor.Additive (preadditiveCoyoneda.obj X) where
#align category_theory.additive_coyoneda_obj' CategoryTheory.additive_coyonedaObj'

/-- Composing the preadditive yoneda embedding with the forgetful functor yields the regular
Yoneda embedding.
-/
@[simp]
theorem whiskering_preadditiveYoneda :
    preadditiveYoneda ⋙
        (whiskeringRight Cᵒᵖ AddCommGroupCat (Type v)).obj (forget AddCommGroupCat) =
      yoneda :=
  rfl
#align category_theory.whiskering_preadditive_yoneda CategoryTheory.whiskering_preadditiveYoneda

/-- Composing the preadditive yoneda embedding with the forgetful functor yields the regular
Yoneda embedding.
-/
@[simp]
theorem whiskering_preadditiveCoyoneda :
    preadditiveCoyoneda ⋙
        (whiskeringRight C AddCommGroupCat (Type v)).obj (forget AddCommGroupCat) =
      coyoneda :=
  rfl
#align category_theory.whiskering_preadditive_coyoneda CategoryTheory.whiskering_preadditiveCoyoneda

instance full_preadditiveYoneda : Full (preadditiveYoneda : C ⥤ Cᵒᵖ ⥤ AddCommGroupCat) :=
  let _ : Full (preadditiveYoneda ⋙
      (whiskeringRight Cᵒᵖ AddCommGroupCat (Type v)).obj (forget AddCommGroupCat)) :=
    Yoneda.yonedaFull
  Full.ofCompFaithful preadditiveYoneda
    ((whiskeringRight Cᵒᵖ AddCommGroupCat (Type v)).obj (forget AddCommGroupCat))
#align category_theory.preadditive_yoneda_full CategoryTheory.full_preadditiveYoneda

instance full_preadditiveCoyoneda : Full (preadditiveCoyoneda : Cᵒᵖ ⥤ C ⥤ AddCommGroupCat) :=
  let _ : Full (preadditiveCoyoneda ⋙
      (whiskeringRight C AddCommGroupCat (Type v)).obj (forget AddCommGroupCat)) :=
    Coyoneda.coyonedaFull
  Full.ofCompFaithful preadditiveCoyoneda
    ((whiskeringRight C AddCommGroupCat (Type v)).obj (forget AddCommGroupCat))
#align category_theory.preadditive_coyoneda_full CategoryTheory.full_preadditiveCoyoneda

instance faithful_preadditiveYoneda : Faithful (preadditiveYoneda : C ⥤ Cᵒᵖ ⥤ AddCommGroupCat) :=
  Faithful.of_comp_eq whiskering_preadditiveYoneda
#align category_theory.preadditive_yoneda_faithful CategoryTheory.faithful_preadditiveYoneda

instance faithful_preadditiveCoyoneda :
    Faithful (preadditiveCoyoneda : Cᵒᵖ ⥤ C ⥤ AddCommGroupCat) :=
  Faithful.of_comp_eq whiskering_preadditiveCoyoneda
#align category_theory.preadditive_coyoneda_faithful CategoryTheory.faithful_preadditiveCoyoneda

end CategoryTheory
```
