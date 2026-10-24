# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Shrink.Variantf20844fb5922752ac0640023ffdf936b6d362d1c8f498bcd47e35ac785cd1e37

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ef9afa7492f8ce2e0d51b7675858639fb4ee9465` · SHA-256 `a15f87c3f13ea5be038b6b07d7faf569ad8df2224801918d869d6384b49be4b1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MonCatShrinkFunctor.Variante02fcfdc004cf8ad276c17d83569c0b6fc9a94c614400a13d9d44cc013c76ede","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e02fcfdc004cf8ad276c17d83569c0b6fc9a94c614400a13d9d44cc013c76ede","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.MonCatShrinkFunctor.Variante02fcfdc004cf8ad276c17d83569c0b6fc9a94c614400a13d9d44cc013c76ede","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"e02fcfdc004cf8ad276c17d83569c0b6fc9a94c614400a13d9d44cc013c76ede","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Category/MonCat/Shrink.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Christian Merten. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christian Merten
-/
module

public import Mathlib.Algebra.Category.MonCat.Basic
public import Mathlib.CategoryTheory.ShrinkYoneda
public import Mathlib.Algebra.Group.Shrink

/-!
# Shrinking a functor to `MonCat`

For a functor `C ⥤ MonCat.{w'}` with `w`-small image, we shrink to a functor `C ⥤ MonCat.{w}`.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.MonCatShrinkFunctor.Variante02fcfdc004cf8ad276c17d83569c0b6fc9a94c614400a13d9d44cc013c76ede

@[expose] public section

universe w w' v u

open CategoryTheory

variable {C : Type u} [Category.{v} C]

instance (F : C ⥤ MonCat.{w'}) [∀ X, Small.{w} (F.obj X)] :
    FunctorToTypes.Small.{w} (F ⋙ forget _) :=
  fun X ↦ inferInstanceAs <| Small.{w} (F.obj X)

/-- A functor `F : C ⥤ MonCat.{w'}` factors through `MonCat.{w}` if all the
monoids are `w`-small. -/
@[simps, pp_with_univ]
noncomputable def MonCat.shrinkFunctor (F : C ⥤ MonCat.{w'}) [∀ X, Small.{w} (F.obj X)] :
    C ⥤ MonCat.{w} where
  obj X := ↧(Shrink.{w} (F.obj X))
  map {X Y} f := MonCat.ofHom <|
    (Shrink.mulEquiv.symm.toMonoidHom.comp (F.map f).hom).comp Shrink.mulEquiv.toMonoidHom

/-- The natural transformation `MonCat.shrinkFunctor.{w} F ⟶ MonCat.shrinkFunctor.{w} G`
induces by a natural transformation `τ : F ⟶ G` between `w`-small functors to monoids. -/
@[simps]
noncomputable def MonCat.shrinkFunctorMap {F G : C ⥤ MonCat.{w'}} (τ : F ⟶ G)
    [∀ X, Small.{w} (F.obj X)] [∀ X, Small.{w} (G.obj X)] :
    MonCat.shrinkFunctor.{w} F ⟶ MonCat.shrinkFunctor.{w} G where
  app X := MonCat.ofHom <|
    (Shrink.mulEquiv.symm.toMonoidHom.comp (τ.app X).hom).comp Shrink.mulEquiv.toMonoidHom
  naturality X Y f := by
    ext x
    exact
      congr($((FunctorToTypes.shrinkMap.{w} (Functor.whiskerRight τ (forget _))).naturality f) x)
```
