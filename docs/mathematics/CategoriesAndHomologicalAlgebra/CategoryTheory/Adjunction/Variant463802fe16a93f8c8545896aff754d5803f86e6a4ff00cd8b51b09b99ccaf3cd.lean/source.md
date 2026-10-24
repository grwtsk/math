# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Adjunction.Variant463802fe16a93f8c8545896aff754d5803f86e6a4ff00cd8b51b09b99ccaf3cd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7aa937c64696b59c50464dbcc097a5a70cea7fbb` · SHA-256 `348e96d72ab60171ad71fbe39b48df845eebfbbe3adcd5aac13e4e4cc4e6a5ab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SheafForget.Variant5e1a8b0e76e1eaf7144442b07dddc7731ac0d22ac29e2c7d314b89a75ae2b757","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5e1a8b0e76e1eaf7144442b07dddc7731ac0d22ac29e2c7d314b89a75ae2b757","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.SheafForget.Variant5e1a8b0e76e1eaf7144442b07dddc7731ac0d22ac29e2c7d314b89a75ae2b757","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"5e1a8b0e76e1eaf7144442b07dddc7731ac0d22ac29e2c7d314b89a75ae2b757","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/CategoryTheory/Sites/Adjunction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Adam Topaz. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Adam Topaz
-/
import Mathlib.CategoryTheory.Adjunction.Whiskering
import Mathlib.CategoryTheory.Sites.Sheafification
import Mathlib.CategoryTheory.Sites.Whiskering


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SheafForget.Variant5e1a8b0e76e1eaf7144442b07dddc7731ac0d22ac29e2c7d314b89a75ae2b757

#align_import category_theory.sites.adjunction from "leanprover-community/mathlib"@"70fd9563a21e7b963887c9360bd29b2393e6225a"

/-!

In this file, we show that an adjunction `F ⊣ G` induces an adjunction between
categories of sheaves, under certain hypotheses on `F` and `G`.

-/


namespace CategoryTheory

open GrothendieckTopology CategoryTheory Limits Opposite

universe w₁ w₂ v u

variable {C : Type u} [Category.{v} C] (J : GrothendieckTopology C)

variable {D : Type w₁} [Category.{max v u} D]

variable {E : Type w₂} [Category.{max v u} E]

variable {F : D ⥤ E} {G : E ⥤ D}

variable [∀ (X : C) (S : J.Cover X) (P : Cᵒᵖ ⥤ D), PreservesLimit (S.index P).multicospan F]

variable [ConcreteCategory.{max v u} D] [PreservesLimits (forget D)]

/-- The forgetful functor from `Sheaf J D` to sheaves of types, for a concrete category `D`
whose forgetful functor preserves the correct limits. -/
abbrev sheafForget : Sheaf J D ⥤ SheafOfTypes J :=
  sheafCompose J (forget D) ⋙ (sheafEquivSheafOfTypes J).functor
set_option linter.uppercaseLean3 false in
#align category_theory.Sheaf_forget CategoryTheory.sheafForget

-- We need to sheafify...
variable [∀ (P : Cᵒᵖ ⥤ D) (X : C) (S : J.Cover X), HasMultiequalizer (S.index P)]
  [∀ X : C, HasColimitsOfShape (J.Cover X)ᵒᵖ D]
  [∀ X : C, PreservesColimitsOfShape (J.Cover X)ᵒᵖ (forget D)] [ReflectsIsomorphisms (forget D)]

namespace Sheaf

noncomputable section

/-- This is the functor sending a sheaf `X : Sheaf J E` to the sheafification
of `X ⋙ G`. -/
abbrev composeAndSheafify (G : E ⥤ D) : Sheaf J E ⥤ Sheaf J D :=
  sheafToPresheaf J E ⋙ (whiskeringRight _ _ _).obj G ⋙ presheafToSheaf J D
set_option linter.uppercaseLean3 false in
#align category_theory.Sheaf.compose_and_sheafify CategoryTheory.Sheaf.composeAndSheafify

/-- An auxiliary definition to be used in defining `CategoryTheory.Sheaf.adjunction` below. -/
@[simps]
def composeEquiv (adj : G ⊣ F) (X : Sheaf J E) (Y : Sheaf J D) :
    ((composeAndSheafify J G).obj X ⟶ Y) ≃ (X ⟶ (sheafCompose J F).obj Y) :=
  let A := adj.whiskerRight Cᵒᵖ
  { toFun := fun η => ⟨A.homEquiv _ _ (J.toSheafify _ ≫ η.val)⟩
    invFun := fun γ => ⟨J.sheafifyLift ((A.homEquiv _ _).symm ((sheafToPresheaf _ _).map γ)) Y.2⟩
    left_inv := by
      intro η
      ext1
      dsimp
      symm
      apply J.sheafifyLift_unique
      rw [Equiv.symm_apply_apply]
    right_inv := by
      intro γ
      ext1
      dsimp
      rw [J.toSheafify_sheafifyLift, Equiv.apply_symm_apply] }
set_option linter.uppercaseLean3 false in
#align category_theory.Sheaf.compose_equiv CategoryTheory.Sheaf.composeEquiv

/-- An adjunction `adj : G ⊣ F` with `F : D ⥤ E` and `G : E ⥤ D` induces an adjunction
between `Sheaf J D` and `Sheaf J E`, in contexts where one can sheafify `D`-valued presheaves,
and `F` preserves the correct limits. -/
@[simps! unit_app_val counit_app_val]
def adjunction (adj : G ⊣ F) : composeAndSheafify J G ⊣ sheafCompose J F :=
  Adjunction.mkOfHomEquiv
    { homEquiv := composeEquiv J adj
      homEquiv_naturality_left_symm := fun f g => by
        ext1
        dsimp [composeEquiv]
        rw [sheafifyMap_sheafifyLift]
        erw [Adjunction.homEquiv_naturality_left_symm]
        rw [whiskeringRight_obj_map]
        rfl
      homEquiv_naturality_right := fun f g => by
        ext
        dsimp [composeEquiv]
        erw [Adjunction.homEquiv_unit, Adjunction.homEquiv_unit]
        dsimp
        simp }
set_option linter.uppercaseLean3 false in
#align category_theory.Sheaf.adjunction CategoryTheory.Sheaf.adjunction

instance [IsRightAdjoint F] : IsRightAdjoint (sheafCompose J F) :=
  ⟨_, adjunction J (Adjunction.ofRightAdjoint F)⟩

section ForgetToType

/-- This is the functor sending a sheaf of types `X` to the sheafification of `X ⋙ G`. -/
abbrev composeAndSheafifyFromTypes (G : Type max v u ⥤ D) : SheafOfTypes J ⥤ Sheaf J D :=
  (sheafEquivSheafOfTypes J).inverse ⋙ composeAndSheafify _ G
set_option linter.uppercaseLean3 false in
#align category_theory.Sheaf.compose_and_sheafify_from_types CategoryTheory.Sheaf.composeAndSheafifyFromTypes

/-- A variant of the adjunction between sheaf categories, in the case where the right adjoint
is the forgetful functor to sheaves of types. -/
def adjunctionToTypes {G : Type max v u ⥤ D} (adj : G ⊣ forget D) :
    composeAndSheafifyFromTypes J G ⊣ sheafForget J :=
  (sheafEquivSheafOfTypes J).symm.toAdjunction.comp (adjunction J adj)
set_option linter.uppercaseLean3 false in
#align category_theory.Sheaf.adjunction_to_types CategoryTheory.Sheaf.adjunctionToTypes

@[simp]
theorem adjunctionToTypes_unit_app_val {G : Type max v u ⥤ D} (adj : G ⊣ forget D)
    (Y : SheafOfTypes J) :
    ((adjunctionToTypes J adj).unit.app Y).val =
      (adj.whiskerRight _).unit.app ((sheafOfTypesToPresheaf J).obj Y) ≫
        whiskerRight (J.toSheafify _) (forget D) := by
  dsimp [adjunctionToTypes, Adjunction.comp]
  simp
  rfl
set_option linter.uppercaseLean3 false in
#align category_theory.Sheaf.adjunction_to_types_unit_app_val CategoryTheory.Sheaf.adjunctionToTypes_unit_app_val

@[simp]
theorem adjunctionToTypes_counit_app_val {G : Type max v u ⥤ D} (adj : G ⊣ forget D)
    (X : Sheaf J D) :
    ((adjunctionToTypes J adj).counit.app X).val =
      J.sheafifyLift ((Functor.associator _ _ _).hom ≫ (adj.whiskerRight _).counit.app _) X.2 := by
  apply J.sheafifyLift_unique
  dsimp only [adjunctionToTypes, Adjunction.comp, NatTrans.comp_app,
    instCategorySheaf_comp_val, instCategorySheaf_id_val]
  rw [adjunction_counit_app_val]
  erw [Category.id_comp, J.sheafifyMap_sheafifyLift, J.toSheafify_sheafifyLift]
  ext
  dsimp [sheafEquivSheafOfTypes, Equivalence.symm, Equivalence.toAdjunction,
    NatIso.ofComponents, Adjunction.whiskerRight, Adjunction.mkOfUnitCounit]
  simp

set_option linter.uppercaseLean3 false in
#align category_theory.Sheaf.adjunction_to_types_counit_app_val CategoryTheory.Sheaf.adjunctionToTypes_counit_app_val

instance [IsRightAdjoint (forget D)] : IsRightAdjoint (sheafForget J : Sheaf J D ⥤ _) :=
  ⟨_, adjunctionToTypes J (Adjunction.ofRightAdjoint (forget D))⟩

end ForgetToType

end

end Sheaf

end CategoryTheory
```
