# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FiniteProducts.Variantbab99466d0b044c1326e764eb0579d319fbd2a6ad349fe73512a4dc52cfd1221

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2cd0682e14edfd28c189a0227d70783c5ef43a67` · SHA-256 `970cf443cc63ab5e3eeb081309d14d8cdaa0d63905d553c578cb8c9315aa0550`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Inverts.Variantdc3784a369664dc20e36fe036c987506c0daa76917a9f6fc12a97af5a473dd49","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dc3784a369664dc20e36fe036c987506c0daa76917a9f6fc12a97af5a473dd49","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Inverts.Variantdc3784a369664dc20e36fe036c987506c0daa76917a9f6fc12a97af5a473dd49","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"dc3784a369664dc20e36fe036c987506c0daa76917a9f6fc12a97af5a473dd49","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Localization/FiniteProducts.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.Limits.ConeCategory
public import Mathlib.CategoryTheory.Limits.Preserves.Finite
public import Mathlib.CategoryTheory.Localization.Adjunction
public import Mathlib.CategoryTheory.Localization.HasLocalization
public import Mathlib.CategoryTheory.Localization.Pi
public import Mathlib.CategoryTheory.MorphismProperty.Limits

/-! # The localized category has finite products

In this file, it is shown that if `L : C ⥤ D` is
a localization functor for `W : MorphismProperty C` and that
`W` is stable under finite products, then `D` has finite
products, and `L` preserves finite products.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Inverts.Variantdc3784a369664dc20e36fe036c987506c0daa76917a9f6fc12a97af5a473dd49

@[expose] public section

universe v₁ v₂ u₁ u₂

namespace CategoryTheory

open Limits CategoryTheory.Functor

namespace Localization

variable {C : Type u₁} {D : Type u₂} [Category.{v₁} C] [Category.{v₂} D] (L : C ⥤ D)
  (W : MorphismProperty C) [L.IsLocalization W]

namespace HasProductsOfShapeAux

variable (J : Type) [HasProductsOfShape J C] [W.IsStableUnderProductsOfShape J]

lemma inverts :
    (W.functorCategory (Discrete J)).IsInvertedBy (lim ⋙ L) :=
  fun _ _ f hf => Localization.inverts L W _ (MorphismProperty.limMap f hf)

variable [W.ContainsIdentities] [Finite J]

/-- The (candidate) limit functor for the localized category.
It is induced by `lim ⋙ L : (Discrete J ⥤ C) ⥤ D`. -/
noncomputable abbrev limitFunctor :
    (Discrete J ⥤ D) ⥤ D :=
  Localization.lift _ (inverts L W J)
    ((whiskeringRight (Discrete J) C D).obj L)

/-- The functor `limitFunctor L W J` is induced by `lim ⋙ L`. -/
noncomputable def compLimitFunctorIso :
    ((whiskeringRight (Discrete J) C D).obj L) ⋙ limitFunctor L W J ≅
      lim ⋙ L := by
  apply Localization.fac

instance :
    CatCommSq (Functor.const (Discrete J)) L
      ((whiskeringRight (Discrete J) C D).obj L) (Functor.const (Discrete J)) where
  iso := (Functor.compConstIso _ _).symm

noncomputable instance :
    CatCommSq lim ((whiskeringRight (Discrete J) C D).obj L) L (limitFunctor L W J) where
  iso := (compLimitFunctorIso L W J).symm

/-- The adjunction between the constant functor `D ⥤ (Discrete J ⥤ D)`
and `limitFunctor L W J`. -/
noncomputable def adj :
    Functor.const _ ⊣ limitFunctor L W J :=
  constLimAdj.localization L W ((whiskeringRight (Discrete J) C D).obj L)
    (W.functorCategory (Discrete J)) (Functor.const _) (limitFunctor L W J)

lemma adj_counit_app (F : Discrete J ⥤ C) :
    (adj L W J).counit.app (F ⋙ L) =
      (Functor.const (Discrete J)).map ((compLimitFunctorIso L W J).hom.app F) ≫
        (Functor.compConstIso (Discrete J) L).hom.app (lim.obj F) ≫
        whiskerRight (constLimAdj.counit.app F) L := by
  apply constLimAdj.localization_counit_app

set_option backward.defeqAttrib.useBackward true in
/-- Auxiliary definition for `Localization.preservesProductsOfShape`. -/
noncomputable def isLimitMapCone (F : Discrete J ⥤ C) :
    IsLimit (L.mapCone (limit.cone F)) :=
  IsLimit.ofIsoLimit (isLimitConeOfAdj (adj L W J) (F ⋙ L))
    (Cone.ext ((compLimitFunctorIso L W J).app F) (by simp [adj_counit_app, constLimAdj]))

end HasProductsOfShapeAux

variable [W.ContainsIdentities]

include L
lemma hasProductsOfShape (J : Type) [Finite J] [HasProductsOfShape J C]
    [W.IsStableUnderProductsOfShape J] :
    HasProductsOfShape J D :=
  hasLimitsOfShape_iff_isLeftAdjoint_const.2
    (HasProductsOfShapeAux.adj L W J).isLeftAdjoint

/-- When `C` has finite products indexed by `J`, `W : MorphismProperty C` contains
identities and is stable under products indexed by `J`,
then any localization functor for `W` preserves finite products indexed by `J`. -/
lemma preservesProductsOfShape (J : Type) [Finite J]
    [HasProductsOfShape J C] [W.IsStableUnderProductsOfShape J] :
    PreservesLimitsOfShape (Discrete J) L where
  preservesLimit {F} := preservesLimit_of_preserves_limit_cone (limit.isLimit F)
    (HasProductsOfShapeAux.isLimitMapCone L W J F)

variable [HasFiniteProducts C] [W.IsStableUnderFiniteProducts]

include W in
lemma hasFiniteProducts : HasFiniteProducts D :=
  ⟨fun _ => hasProductsOfShape L W _⟩

include W in
/-- When `C` has finite products and `W : MorphismProperty C` contains
identities and is stable under finite products,
then any localization functor for `W` preserves finite products. -/
lemma preservesFiniteProducts :
    PreservesFiniteProducts L where
  preserves _ := preservesProductsOfShape L W _

instance : HasFiniteProducts (W.Localization) := hasFiniteProducts W.Q W

noncomputable instance : PreservesFiniteProducts W.Q := preservesFiniteProducts W.Q W

instance [W.HasLocalization] :
    HasFiniteProducts (W.Localization') :=
  hasFiniteProducts W.Q' W

noncomputable instance [W.HasLocalization] :
    PreservesFiniteProducts W.Q' :=
  preservesFiniteProducts W.Q' W

end Localization

end CategoryTheory
```
