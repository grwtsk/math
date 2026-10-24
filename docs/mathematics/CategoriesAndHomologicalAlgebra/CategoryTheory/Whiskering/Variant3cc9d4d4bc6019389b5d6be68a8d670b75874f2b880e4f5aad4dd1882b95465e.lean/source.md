# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Whiskering.Variant3cc9d4d4bc6019389b5d6be68a8d670b75874f2b880e4f5aad4dd1882b95465e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bdf2c959b9fe4c4051ab7da4e32b9c72573ffd83` · SHA-256 `f633da671e3b2be8898e7ce7d0867c1f9dc213ee8d70e5b01124c3f87c5e26b5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.WhiskerRight.Variant93e334056c6e86b0ac1760545223d675cea233187c07a49855fdb4435465821f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"93e334056c6e86b0ac1760545223d675cea233187c07a49855fdb4435465821f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.WhiskerRight.Variant93e334056c6e86b0ac1760545223d675cea233187c07a49855fdb4435465821f","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"93e334056c6e86b0ac1760545223d675cea233187c07a49855fdb4435465821f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Adjunction/Whiskering.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Adam Topaz. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Adam Topaz
-/
import Mathlib.CategoryTheory.Whiskering
import Mathlib.CategoryTheory.Adjunction.Basic

/-!

Given categories `C D E`, functors `F : D ⥤ E` and `G : E ⥤ D` with an adjunction
`F ⊣ G`, we provide the induced adjunction between the functor categories `C ⥤ D` and `C ⥤ E`,
and the functor categories `E ⥤ C` and `D ⥤ C`.

-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.WhiskerRight.Variant93e334056c6e86b0ac1760545223d675cea233187c07a49855fdb4435465821f

namespace CategoryTheory.Adjunction

open CategoryTheory

variable (C : Type*) {D E : Type*} [Category C] [Category D] [Category E] {F : D ⥤ E} {G : E ⥤ D}

/-- Given an adjunction `F ⊣ G`, this provides the natural adjunction
  `(whiskeringRight C _ _).obj F ⊣ (whiskeringRight C _ _).obj G`. -/
@[simps! unit_app_app counit_app_app]
protected def whiskerRight (adj : F ⊣ G) :
    (whiskeringRight C D E).obj F ⊣ (whiskeringRight C E D).obj G where
  unit :=
    { app := fun X =>
        (Functor.rightUnitor _).inv ≫ whiskerLeft X adj.unit ≫ (Functor.associator _ _ _).inv
      naturality := by intros; ext; dsimp; simp }
  counit :=
    { app := fun X =>
        (Functor.associator _ _ _).hom ≫ whiskerLeft X adj.counit ≫ (Functor.rightUnitor _).hom
      naturality := by intros; ext; dsimp; simp }

/-- Given an adjunction `F ⊣ G`, this provides the natural adjunction
  `(whiskeringLeft _ _ C).obj G ⊣ (whiskeringLeft _ _ C).obj F`. -/
@[simps! unit_app_app counit_app_app]
protected def whiskerLeft (adj : F ⊣ G) :
    (whiskeringLeft E D C).obj G ⊣ (whiskeringLeft D E C).obj F where
  unit :=
    { app := fun X =>
        (Functor.leftUnitor _).inv ≫ whiskerRight adj.unit X ≫ (Functor.associator _ _ _).hom }
  counit :=
    { app := fun X =>
        (Functor.associator _ _ _).inv ≫ whiskerRight adj.counit X ≫ (Functor.leftUnitor _).hom }
  left_triangle_components X := by ext; simp [← X.map_comp]
  right_triangle_components X := by ext; simp [← X.map_comp]

end CategoryTheory.Adjunction
```
