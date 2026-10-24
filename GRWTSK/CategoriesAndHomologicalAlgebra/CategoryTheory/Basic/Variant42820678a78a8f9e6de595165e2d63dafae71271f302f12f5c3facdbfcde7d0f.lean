-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LightCondensed.Variant33a32903f8a45016c912714acd812653745f62ebca5624b1a050540dd30b7030","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"33a32903f8a45016c912714acd812653745f62ebca5624b1a050540dd30b7030","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.LightCondensed.Variant33a32903f8a45016c912714acd812653745f62ebca5624b1a050540dd30b7030","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"33a32903f8a45016c912714acd812653745f62ebca5624b1a050540dd30b7030","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Condensed/Light/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
module

public import Mathlib.Topology.Category.LightProfinite.EffectiveEpi
/-!

# Light condensed objects

This file defines the category of light condensed objects in a category `C`, following the work
of Clausen-Scholze (see https://www.youtube.com/playlist?list=PLx5f8IelFRgGmu6gmL-Kf_Rl_6Mm7juZO).

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LightCondensed.Variant33a32903f8a45016c912714acd812653745f62ebca5624b1a050540dd30b7030

public section

universe u v w

open CategoryTheory

/--
`LightCondensed.{u} C` is the category of light condensed objects in a category `C`, which are
defined as sheaves on `LightProfinite.{u}` with respect to the coherent Grothendieck topology.
-/
abbrev LightCondensed (C : Type w) [Category.{v} C] :=
  Sheaf (coherentTopology LightProfinite.{u}) C

/--
Light condensed sets. Because `LightProfinite` is an essentially small category, we don't need the
same universe bump as in `CondensedSet`.
-/
abbrev LightCondSet := LightCondensed.{u} <| Type u

namespace LightCondensed

variable {C : Type w} [Category.{v} C]

@[deprecated ObjectProperty.FullSubcategory.id_hom (since := "2026-04-08")]
lemma id_hom (X : LightCondensed.{u} C) : (𝟙 X : X ⟶ X).hom = 𝟙 _ := rfl

@[deprecated ObjectProperty.FullSubcategory.comp_hom (since := "2026-04-08")]
lemma comp_hom {X Y Z : LightCondensed.{u} C} (f : X ⟶ Y) (g : Y ⟶ Z) :
    (f ≫ g).hom = f.hom ≫ g.hom :=
  rfl

@[deprecated (since := "2026-03-05")] alias id_val := id_hom
@[deprecated (since := "2026-03-05")] alias comp_val := comp_hom

@[ext]
lemma hom_ext {X Y : LightCondensed.{u} C} (f g : X ⟶ Y) (h : ∀ S, f.hom.app S = g.hom.app S) :
    f = g := by
  apply Sheaf.hom_ext
  ext
  exact h _

end LightCondensed

namespace LightCondSet

@[deprecated NatTrans.naturality_apply (since := "2026-03-19")]
lemma hom_naturality_apply {X Y : LightCondSet.{u}} (f : X ⟶ Y) {S T : LightProfiniteᵒᵖ}
    (g : S ⟶ T) (x : X.obj.obj S) : f.hom.app T (X.obj.map g x) = Y.obj.map g (f.hom.app S x) := by
  simp

end LightCondSet
