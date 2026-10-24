# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.QuivCat.Variantdaad23e96285fcc047ff4712386e123c29c86da5313ff87850239f58ac7684b2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f1452f7f1c49cb09b19cbef0fa0a576d6ec0f2d4` · SHA-256 `254bba865a9af1c56f997aa5ae933499776126f6f83ae8831deb986cf01c8201`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.QuivCat.Variantb641568c226a5993f22f116eea19b12e73a0a6044931a9154a71bbc1c9bc102c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b641568c226a5993f22f116eea19b12e73a0a6044931a9154a71bbc1c9bc102c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.QuivCat.Variantb641568c226a5993f22f116eea19b12e73a0a6044931a9154a71bbc1c9bc102c","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"b641568c226a5993f22f116eea19b12e73a0a6044931a9154a71bbc1c9bc102c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/CategoryTheory/Category/QuivCat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Mathlib.CategoryTheory.Adjunction.Basic
import Mathlib.CategoryTheory.Category.Cat
import Mathlib.CategoryTheory.PathCategory


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.QuivCat.Variantb641568c226a5993f22f116eea19b12e73a0a6044931a9154a71bbc1c9bc102c

#align_import category_theory.category.Quiv from "leanprover-community/mathlib"@"350a381705199e9a070f84e98e803c3c25a97a4c"

/-!
# The category of quivers

The category of (bundled) quivers, and the free/forgetful adjunction between `Cat` and `QuivCat`.

-/


universe v u

namespace CategoryTheory

-- intended to be used with explicit universe parameters
/-- Category of quivers. -/
@[nolint checkUnivs]
def QuivCat :=
  Bundled Quiver.{v + 1, u}
set_option linter.uppercaseLean3 false in
#align category_theory.Quiv CategoryTheory.QuivCat

namespace QuivCat

instance : CoeSort QuivCat (Type u) where coe := Bundled.α

instance str' (C : QuivCat.{v, u}) : Quiver.{v + 1, u} C :=
  C.str
set_option linter.uppercaseLean3 false in
#align category_theory.Quiv.str CategoryTheory.QuivCat.str'

/-- Construct a bundled `QuivCat` from the underlying type and the typeclass. -/
def of (C : Type u) [Quiver.{v + 1} C] : QuivCat.{v, u} :=
  Bundled.of C
set_option linter.uppercaseLean3 false in
#align category_theory.Quiv.of CategoryTheory.QuivCat.of

instance : Inhabited QuivCat :=
  ⟨QuivCat.of (Quiver.Empty PEmpty)⟩

/-- Category structure on `QuivCat` -/
instance category : LargeCategory.{max v u} QuivCat.{v, u}
    where
  Hom C D := Prefunctor C D
  id C := Prefunctor.id C
  comp F G := Prefunctor.comp F G
set_option linter.uppercaseLean3 false in
#align category_theory.Quiv.category CategoryTheory.QuivCat.category

/-- The forgetful functor from categories to quivers. -/
@[simps]
def forget : Cat.{v, u} ⥤ QuivCat.{v, u}
    where
  obj C := QuivCat.of C
  map F := F.toPrefunctor
set_option linter.uppercaseLean3 false in
#align category_theory.Quiv.forget CategoryTheory.QuivCat.forget

end QuivCat

namespace Cat

/-- The functor sending each quiver to its path category. -/
@[simps]
def free : QuivCat.{v, u} ⥤ Cat.{max u v, u} where
  obj V := Cat.of (Paths V)
  map F :=
    { obj := fun X => F.obj X
      map := fun f => F.mapPath f
      map_comp := fun f g => F.mapPath_comp f g }
  map_id V := by
    change (show Paths V ⥤ _ from _) = _
    ext; swap
    apply eq_conj_eqToHom
    rfl
  map_comp {U _ _} F G := by
    change (show Paths U ⥤ _ from _) = _
    ext; swap
    apply eq_conj_eqToHom
    rfl
set_option linter.uppercaseLean3 false in
#align category_theory.Cat.free CategoryTheory.Cat.free

end Cat

namespace QuivCat

/-- Any prefunctor into a category lifts to a functor from the path category. -/
@[simps]
def lift {V : Type u} [Quiver.{v + 1} V] {C : Type*} [Category C] (F : Prefunctor V C) :
    Paths V ⥤ C where
  obj X := F.obj X
  map f := composePath (F.mapPath f)
set_option linter.uppercaseLean3 false in
#align category_theory.Quiv.lift CategoryTheory.QuivCat.lift

-- We might construct `of_lift_iso_self : Paths.of ⋙ lift F ≅ F`
-- (and then show that `lift F` is initial amongst such functors)
-- but it would require lifting quite a bit of machinery to quivers!
/--
The adjunction between forming the free category on a quiver, and forgetting a category to a quiver.
-/
def adj : Cat.free ⊣ QuivCat.forget :=
  Adjunction.mkOfHomEquiv
    { homEquiv := fun V C =>
        { toFun := fun F => Paths.of.comp F.toPrefunctor
          invFun := fun F => @lift V _ C _ F
          left_inv := fun F => Paths.ext_functor rfl (by simp)
          right_inv := by
            rintro ⟨obj, map⟩
            dsimp only [Prefunctor.comp]
            congr
            funext X Y f
            exact Category.id_comp _ }
      homEquiv_naturality_left_symm := fun {V _ _} f g => by
        change (show Paths V ⥤ _ from _) = _
        ext; swap
        apply eq_conj_eqToHom
        rfl }
set_option linter.uppercaseLean3 false in
#align category_theory.Quiv.adj CategoryTheory.QuivCat.adj

end QuivCat

end CategoryTheory
```
