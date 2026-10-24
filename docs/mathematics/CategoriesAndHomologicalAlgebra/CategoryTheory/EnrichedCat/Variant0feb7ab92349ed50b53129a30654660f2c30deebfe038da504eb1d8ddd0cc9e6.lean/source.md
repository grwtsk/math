# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EnrichedCat.Variant0feb7ab92349ed50b53129a30654660f2c30deebfe038da504eb1d8ddd0cc9e6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `34fc2ae3e96525b0b93f385fce9f3736989837bd` · SHA-256 `8b2a58beca3ca4bb0f909b39240cca6dc21e1555156a2ae50aea8047b540db9e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EnrichedCat.Variant270297beaf823f20a5ff64838162c79d7032783387a38bdfdc94d95841233a97","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"270297beaf823f20a5ff64838162c79d7032783387a38bdfdc94d95841233a97","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.EnrichedCat.Variant270297beaf823f20a5ff64838162c79d7032783387a38bdfdc94d95841233a97","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"270297beaf823f20a5ff64838162c79d7032783387a38bdfdc94d95841233a97","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Enriched/EnrichedCat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Jakob von Raumer. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jakob von Raumer
-/
module

public import Mathlib.CategoryTheory.Enriched.Basic
public import Mathlib.CategoryTheory.Bicategory.Basic

/-!
# The bicategory of `V`-enriched categories

We define the bicategory `EnrichedCat V` of (bundled) `V`-enriched categories for a fixed monoidal
category `V`.

## Future work

* Define change of base and `ForgetEnrichment` as 2-functors.
* Define the bicategory of enriched ordinary categories.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EnrichedCat.Variant270297beaf823f20a5ff64838162c79d7032783387a38bdfdc94d95841233a97

set_option backward.defeqAttrib.useBackward true

@[expose] public section


universe w v u u₁ u₂ u₃

namespace CategoryTheory

variable (V : Type v) [Category.{w} V] [MonoidalCategory V]

/-- Category of `V`-enriched categories for a monoidal category `V`. -/
def EnrichedCat := Bundled (EnrichedCategory.{w, v, u} V)

namespace EnrichedCat

instance : CoeSort (EnrichedCat V) (Type u) :=
  ⟨Bundled.α⟩

instance str (C : EnrichedCat.{w, v, u} V) : EnrichedCategory.{w, v, u} V C :=
  Bundled.str C

/-- Construct a bundled `EnrichedCat` from the underlying type and the typeclass. -/
def of (C : Type u) [EnrichedCategory.{w} V C] : EnrichedCat.{w, v, u} V :=
  Bundled.of C

variable {V} {C : Type u} [EnrichedCategory V C] {D : Type u₁} [EnrichedCategory V D]
  {E : Type u₂} [EnrichedCategory V E] {E' : Type u₃} [EnrichedCategory V E']

/-- Whisker a `V`-enriched natural transformation on the left. -/
@[simps!]
def whiskerLeft
    (F : EnrichedFunctor V C D) {G H : EnrichedFunctor V D E} (α : G ⟶ H) :
    F.comp V G ⟶ F.comp V H :=
  ⟨(F.forgetComp G).hom ≫ F.forget.whiskerLeft α.out ≫ (F.forgetComp H).inv⟩

/-- Whisker a `V`-enriched natural transformation on the right. -/
@[simps!]
def whiskerRight
    {F G : EnrichedFunctor V C D} (α : F ⟶ G) (H : EnrichedFunctor V D E) :
    F.comp V H ⟶ G.comp V H :=
  ⟨(F.forgetComp H).hom ≫ Functor.whiskerRight α.out H.forget ≫ (G.forgetComp H).inv⟩

/-- Composing the `V`-enriched identity functor with any functor is isomorphic to that functor. -/
@[simps!]
def leftUnitor (F : EnrichedFunctor V C D) : (EnrichedFunctor.id V _).comp V F ≅ F :=
  EnrichedFunctor.isoMk <| (EnrichedFunctor.id V C).forgetComp F ≪≫
    Functor.isoWhiskerRight (EnrichedFunctor.forgetId V C) _ ≪≫ Functor.leftUnitor F.forget

/-- Composing any `V`-enriched functor with the identity functor is isomorphic to the former
functor. -/
@[simps!]
def rightUnitor (F : EnrichedFunctor V C D) :
    EnrichedFunctor.comp V F (EnrichedFunctor.id V _) ≅ F :=
  EnrichedFunctor.isoMk <| F.forgetComp _ ≪≫
    Functor.isoWhiskerLeft _ (EnrichedFunctor.forgetId V D) ≪≫ Functor.rightUnitor F.forget

/-- Composition of `V`-enriched functors is associative up to isomorphism. -/
@[simps!]
def associator (F : EnrichedFunctor V C D) (G : EnrichedFunctor V D E)
    (H : EnrichedFunctor V E E') :
    EnrichedFunctor.comp V (EnrichedFunctor.comp V F G) H ≅
    EnrichedFunctor.comp V F (EnrichedFunctor.comp V G H) :=
  EnrichedFunctor.isoMk <| (F.comp V G).forgetComp H ≪≫
    Functor.isoWhiskerRight (F.forgetComp G) _ ≪≫
    Functor.associator _ _ _ ≪≫
    Functor.isoWhiskerLeft _ (G.forgetComp H).symm ≪≫
    (F.forgetComp _).symm

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
lemma comp_whiskerRight {F G H : EnrichedFunctor V C D} (α : F ⟶ G)
    (β : G ⟶ H) (I : EnrichedFunctor V D E) :
    whiskerRight ⟨α.out ≫ β.out⟩ I = whiskerRight α I ≫ whiskerRight β I := by
  ext X
  simp only [whiskerRight_out_app, NatTrans.comp_app, EnrichedFunctor.category_comp_out,
    EnrichedFunctor.forget, EnrichedFunctor.comp_obj, EnrichedFunctor.comp_map]
  simp [← ForgetEnrichment.homOf_comp]

set_option backward.isDefEq.respectTransparency.types false in
lemma whisker_exchange {F G : EnrichedFunctor V C D} {H I : EnrichedFunctor V D E}
    (α : F ⟶ G) (β : H ⟶ I) :
    whiskerLeft F β ≫ whiskerRight α I = whiskerRight α H ≫ whiskerLeft G β := by
  ext X
  simp only [EnrichedFunctor.forget_obj, EnrichedFunctor.comp_obj,
    EnrichedFunctor.category_comp_out, NatTrans.comp_app, whiskerLeft_out_app,
    whiskerRight_out_app]
  exact (β.out.naturality (α.out.app (ForgetEnrichment.of V X))).symm

set_option backward.isDefEq.respectTransparency.types false in
/-- The bicategory structure on `EnrichedCat V` for a monoidal category `V`. -/
instance bicategory : Bicategory (EnrichedCat.{w, v, u} V) where
  Hom C D := EnrichedFunctor V C D
  id C := EnrichedFunctor.id V C
  comp F G := EnrichedFunctor.comp V F G
  whiskerLeft F G H := whiskerLeft F
  whiskerRight := whiskerRight
  associator := associator
  leftUnitor := leftUnitor
  rightUnitor := rightUnitor
  comp_whiskerRight := comp_whiskerRight
  whisker_exchange := whisker_exchange

end EnrichedCat

end CategoryTheory
```
