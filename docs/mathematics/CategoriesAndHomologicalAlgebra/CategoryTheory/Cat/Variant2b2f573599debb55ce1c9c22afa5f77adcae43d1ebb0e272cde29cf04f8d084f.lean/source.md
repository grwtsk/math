# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Cat.Variant2b2f573599debb55ce1c9c22afa5f77adcae43d1ebb0e272cde29cf04f8d084f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8b12cf09a7d4ad18cc3d97487708130652120b78` · SHA-256 `22934cf8cfbd914cace57a829adef1653e9b7c558a8752e894ffe2b7f6792fc9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ToCat.Variante39eb07def1d792e19ab51908932b462ca90e015e06116e925302e9c5fbc09df","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e39eb07def1d792e19ab51908932b462ca90e015e06116e925302e9c5fbc09df","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ToCat.Variante39eb07def1d792e19ab51908932b462ca90e015e06116e925302e9c5fbc09df","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"e39eb07def1d792e19ab51908932b462ca90e015e06116e925302e9c5fbc09df","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Bicategory/Adjunction/Cat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.Adjunction.Mates
public import Mathlib.CategoryTheory.Bicategory.Adjunction.Adj

/-!
# Adjunctions in `Cat`

We show that adjunctions in the bicategory `Cat` correspond to
adjunctions between functors in the usual categorical sense.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ToCat.Variante39eb07def1d792e19ab51908932b462ca90e015e06116e925302e9c5fbc09df

@[expose] public section

universe v u

namespace CategoryTheory

section

variable {C D E : Type u} [Category.{v} C] [Category.{v} D] [Category.{v} E]
  {F : C ⥤ D} {G : D ⥤ C} (adj : F ⊣ G)
  {F' : D ⥤ E} {G' : E ⥤ D} (adj' : F' ⊣ G')

namespace Adjunction

attribute [local simp] bicategoricalComp

set_option backward.defeqAttrib.useBackward true in
/-- The adjunction in the bicategorical sense attached to an adjunction between functors. -/
@[simps]
def toCat : Bicategory.Adjunction F.toCatHom G.toCatHom where
  unit := .ofNatTrans adj.unit
  counit := .ofNatTrans adj.counit

set_option backward.defeqAttrib.useBackward true in
/-- The adjunction of functors corresponding to an adjunction in the bicategory `Cat`. -/
@[simps]
def ofCat {C D : Cat} {F : C ⟶ D} {G : D ⟶ C}
    (adj : Bicategory.Adjunction F G) :
    F.toFunctor ⊣ G.toFunctor where
  unit := adj.unit.toNatTrans
  counit := adj.counit.toNatTrans
  left_triangle_components X := by
    simpa using congr($(adj.left_triangle).toNatTrans.app X)
  right_triangle_components X := by
    simpa using congr($(adj.right_triangle).toNatTrans.app X)

@[simp]
lemma toCat_ofCat
    {C D : Cat} {F : C ⟶ D} {G : D ⟶ C} (adj : Bicategory.Adjunction F G) :
    (Adjunction.ofCat adj).toCat = adj := rfl

@[simp]
lemma ofCat_toCat :
    Adjunction.ofCat adj.toCat = adj := rfl

set_option backward.defeqAttrib.useBackward true in
lemma toCat_comp_toCat : adj.toCat.comp adj'.toCat = (adj.comp adj').toCat := by
  cat_disch

end Adjunction

end

namespace Bicategory

@[simp]
lemma Adjunction.ofCat_id (C : Cat.{v, u}) :
    Adjunction.ofCat (Adjunction.id C) = CategoryTheory.Adjunction.id :=
  rfl

set_option backward.defeqAttrib.useBackward true in
lemma Adjunction.ofCat_comp {C D E : Cat.{v, u}}
    {F : C ⟶ D} {G : D ⟶ C} (adj : F ⊣ G)
    {F' : D ⟶ E} {G' : E ⟶ D} (adj' : F' ⊣ G') :
    Adjunction.ofCat (adj.comp adj') = (Adjunction.ofCat adj).comp (Adjunction.ofCat adj') := by
  ext
  simp [bicategoricalComp]

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
lemma toNatTrans_mateEquiv {C D E F : Cat}
    {G : C ⟶ E} {H : D ⟶ F} {L₁ : C ⟶ D} {R₁ : D ⟶ C} {L₂ : E ⟶ F} {R₂ : F ⟶ E}
    (adj₁ : Bicategory.Adjunction L₁ R₁) (adj₂ : Bicategory.Adjunction L₂ R₂)
    (f : G ≫ L₂ ⟶ L₁ ≫ H) :
    (Bicategory.mateEquiv adj₁ adj₂ f).toNatTrans =
      CategoryTheory.mateEquiv (Adjunction.ofCat adj₁) (Adjunction.ofCat adj₂) f.toNatTrans := by
  ext X
  simp [mateEquiv, Adjunction.homEquiv₁, Adjunction.homEquiv₂]

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
lemma toNatTrans_conjugateEquiv {C D : Cat}
    {L₁ L₂ : C ⟶ D} {R₁ R₂ : D ⟶ C}
    (adj₁ : Bicategory.Adjunction L₁ R₁) (adj₂ : Bicategory.Adjunction L₂ R₂) (f : L₂ ⟶ L₁) :
    (Bicategory.conjugateEquiv adj₁ adj₂ f).toNatTrans =
      CategoryTheory.conjugateEquiv
        (Adjunction.ofCat adj₁) (Adjunction.ofCat adj₂) f.toNatTrans := by
  dsimp [Bicategory.conjugateEquiv]
  rw [toNatTrans_mateEquiv]
  ext X
  simp [CategoryTheory.conjugateEquiv]

namespace Adj

variable {C₁ C₂ : Adj Cat.{v, u}} (α : C₁ ⟶ C₂)

@[reassoc (attr := simp)]
lemma left_triangle_components (X : C₁.obj) :
    α.l.toFunctor.map (α.adj.unit.toNatTrans.app X) ≫
      α.adj.counit.toNatTrans.app (α.l.toFunctor.obj X) =
    𝟙 (α.l.toFunctor.obj X) :=
  (Adjunction.ofCat α.adj).left_triangle_components _

@[reassoc (attr := simp)]
lemma right_triangle_components (X : C₂.obj) :
    α.adj.unit.toNatTrans.app (α.r.toFunctor.obj X) ≫
       α.r.toFunctor.map (α.adj.counit.toNatTrans.app X) =
    𝟙 (α.r.toFunctor.obj X) :=
  (Adjunction.ofCat α.adj).right_triangle_components _

#adaptation_note
/-- `respectTransparency.types true` changes the auto-generated lemmas' signature -/
set_option backward.isDefEq.respectTransparency.types false in
@[reassoc (attr := simp)]
lemma unit_naturality {X Y : C₁.obj} (f : X ⟶ Y) :
    α.adj.unit.toNatTrans.app X ≫ α.r.toFunctor.map (α.l.toFunctor.map f) =
    f ≫ α.adj.unit.toNatTrans.app Y :=
  (Adjunction.ofCat α.adj).unit_naturality f

#adaptation_note
/-- `respectTransparency.types true` changes the auto-generated lemmas' signature -/
set_option backward.isDefEq.respectTransparency.types false in
@[reassoc (attr := simp)]
lemma counit_naturality {X Y : C₂.obj} (f : X ⟶ Y) :
    α.l.toFunctor.map (α.r.toFunctor.map f) ≫ α.adj.counit.toNatTrans.app Y =
      α.adj.counit.toNatTrans.app X ≫ f :=
  (Adjunction.ofCat α.adj).counit_naturality f

end Adj

end Bicategory

end CategoryTheory
```
