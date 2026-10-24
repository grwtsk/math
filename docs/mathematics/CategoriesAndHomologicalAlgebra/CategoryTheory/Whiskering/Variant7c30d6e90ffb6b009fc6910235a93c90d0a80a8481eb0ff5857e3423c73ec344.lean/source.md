# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Whiskering.Variant7c30d6e90ffb6b009fc6910235a93c90d0a80a8481eb0ff5857e3423c73ec344

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `29e7a42bf66cea7a22eacba16f12500e020aea8d` · SHA-256 `67089574c2e795f2e7a0f1927a51b7d69c065e4a45eb859769e048d76db285c4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.WhiskerRight.Variant14ad40f2ad9705612726c86e30a2e74e7b57154a08b84f8815a82ffcccfb2aab","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"14ad40f2ad9705612726c86e30a2e74e7b57154a08b84f8815a82ffcccfb2aab","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.WhiskerRight.Variant14ad40f2ad9705612726c86e30a2e74e7b57154a08b84f8815a82ffcccfb2aab","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"14ad40f2ad9705612726c86e30a2e74e7b57154a08b84f8815a82ffcccfb2aab","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Adjunction/Whiskering.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Adam Topaz. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Adam Topaz
-/
module

public import Mathlib.CategoryTheory.Whiskering
public import Mathlib.CategoryTheory.Adjunction.Basic

/-!
# Whiskering of adjunctions

Given categories `C D E`, functors `F : D ⥤ E` and `G : E ⥤ D` with an adjunction
`F ⊣ G`, we provide the induced adjunction between the functor categories `C ⥤ D` and `C ⥤ E`,
and the functor categories `E ⥤ C` and `D ⥤ C`.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.WhiskerRight.Variant14ad40f2ad9705612726c86e30a2e74e7b57154a08b84f8815a82ffcccfb2aab

@[expose] public section


namespace CategoryTheory.Adjunction

open CategoryTheory CategoryTheory.Functor

variable (C : Type*) {D E : Type*} [Category* C] [Category* D] [Category* E] {F : D ⥤ E} {G : E ⥤ D}

set_option backward.defeqAttrib.useBackward true in
/-- Given an adjunction `F ⊣ G`, this provides the natural adjunction
  `(whiskeringRight C _ _).obj F ⊣ (whiskeringRight C _ _).obj G`. -/
@[simps! unit_app_app counit_app_app]
protected def whiskerRight (adj : F ⊣ G) :
    (whiskeringRight C D E).obj F ⊣ (whiskeringRight C E D).obj G where
  unit :=
    { app := fun X =>
        (rightUnitor _).inv ≫ whiskerLeft X adj.unit ≫ (associator _ _ _).inv
      naturality := by intros; ext; simp }
  counit :=
    { app := fun X =>
        (associator _ _ _).hom ≫ whiskerLeft X adj.counit ≫ (rightUnitor _).hom
      naturality := by intros; ext; simp }

set_option backward.defeqAttrib.useBackward true in
/-- Given an adjunction `F ⊣ G`, this provides the natural adjunction
  `(whiskeringLeft _ _ C).obj G ⊣ (whiskeringLeft _ _ C).obj F`. -/
@[simps! unit_app_app counit_app_app]
protected def whiskerLeft (adj : F ⊣ G) :
    (whiskeringLeft E D C).obj G ⊣ (whiskeringLeft D E C).obj F where
  unit :=
    { app := fun X =>
        (leftUnitor _).inv ≫ whiskerRight adj.unit X ≫ (associator _ _ _).hom }
  counit :=
    { app := fun X =>
        (associator _ _ _).inv ≫ whiskerRight adj.counit X ≫ (leftUnitor _).hom }
  left_triangle_components X := by ext; simp [← X.map_comp]
  right_triangle_components X := by ext; simp [← X.map_comp]

end CategoryTheory.Adjunction
```
