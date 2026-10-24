# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TypeValuedFlat.Variant41801dfde0ddd5d2c3ce5f6f2c4a85bd977785e03ba6d6e85d2883e064d4ced3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8f42614e0f2cd86e9843a511ecb72e614ff29bda` · SHA-256 `66a37ee42b933fd53d0aafdbf2e207b1c245acff303172a888eb613152fedde1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorIsCofilteredElements.Variant6726b194506f7bd9fe6360248f7c3d7435a031446489406a8cfecab3fc9541bf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6726b194506f7bd9fe6360248f7c3d7435a031446489406a8cfecab3fc9541bf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.FunctorIsCofilteredElements.Variant6726b194506f7bd9fe6360248f7c3d7435a031446489406a8cfecab3fc9541bf","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"6726b194506f7bd9fe6360248f7c3d7435a031446489406a8cfecab3fc9541bf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/Functor/TypeValuedFlat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.Filtered.Final
public import Mathlib.CategoryTheory.Limits.Preserves.Shapes.Equalizers
public import Mathlib.CategoryTheory.Limits.Types.Equalizers
public import Mathlib.CategoryTheory.Subfunctor.Basic

/-!
# Type-valued flat functors

A functor `F : C ⥤ Type w` is a flat Type-valued functor if the category
`F.Elements` is cofiltered. (This is not equivalent to saying that `F`
is representably flat in the sense of the typeclass `RepresentablyFlat`
defined in the file `Mathlib/CategoryTheory/Functor/Flat.lean`, see also
https://golem.ph.utexas.edu/category/2011/06/flat_functors_and_morphisms_of.html
for a clarification about the differences between these notions.)

In this file, we show that if finite limits exist in `C` and are preserved by `F`,
then `F.Elements` is cofiltered.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorIsCofilteredElements.Variant6726b194506f7bd9fe6360248f7c3d7435a031446489406a8cfecab3fc9541bf

public section

universe w v u

namespace CategoryTheory

open Limits

variable {C : Type u} [Category.{v} C]

lemma Functor.isCofiltered_elements
    (F : C ⥤ Type w) [HasFiniteLimits C] [PreservesFiniteLimits F] :
    IsCofiltered F.Elements where
  nonempty := ⟨F.elementsMk (⊤_ C) ((terminalIsTerminal.isTerminalObj F).from PUnit .unit)⟩
  cone_objs x y := by
    let h := mapIsLimitOfPreservesOfIsLimit F _ _ (prodIsProd x.obj y.obj)
    let h' := Types.binaryProductLimit (F.obj x.obj) (F.obj y.obj)
    refine ⟨.mk ((h'.conePointUniqueUpToIso h).hom ⟨x.val, y.val⟩),
      Elements.homMk prod.fst
        (ConcreteCategory.congr_hom (h'.conePointUniqueUpToIso_hom_comp h (.mk .left)) _),
      Elements.homMk prod.snd
        (ConcreteCategory.congr_hom (h'.conePointUniqueUpToIso_hom_comp h (.mk .right)) _),
      by tauto⟩
  cone_maps x y f g := by
    let h := isLimitForkMapOfIsLimit F _ (equalizerIsEqualizer f.hom g.hom)
    let h' := (Types.equalizerLimit (g := F.map f.hom) (h := F.map g.hom)).isLimit
    refine ⟨.mk ((h'.conePointUniqueUpToIso h).hom ⟨x.val, by simp⟩),
      Elements.homMk (equalizer.ι f.hom g.hom)
        (ConcreteCategory.congr_hom
        (h'.conePointUniqueUpToIso_hom_comp h .zero) ⟨x.val, by simp⟩),
      by ext; exact equalizer.condition f.hom g.hom⟩

namespace FunctorToTypes

variable (F : C ⥤ Type w) {X : C} (x : F.obj X)

/-- Given a functor `F : C ⥤ Type w`, an object `X : C` and `x : F.obj X`,
this is the subfunctor of the functor `Over.forget X ⋙ F : Over X ⥤ Type w`
which sends an object of `Over X` corresponding to a morphism `f : Y ⟶ X`
to the subset of `F.obj Y` consisting of those elements `y : F.obj Y`
such that `F.map f y = x`. -/
@[implicit_reducible]
def fromOverSubfunctor : Subfunctor (Over.forget X ⋙ F) where
  obj U := F.map U.hom ⁻¹' {x}
  map _ _ _ := by simpa [← comp_apply, ← Functor.map_comp]

@[simp]
lemma mem_fromOverSubfunctor_iff {U : Over X} (u : F.obj U.left) :
    u ∈ (fromOverSubfunctor F x).obj U ↔ F.map U.hom u = x := Iff.rfl

/-- Given a functor `F : C ⥤ Type w`, an object `X : C` and `x : F.obj X`,
this is the functor `Over X ⥤ Type w` which sends an object of `Over X`
corresponding to a morphism `f : Y ⟶ X` to the subtype of `F.obj Y`
consisting of those elements `y : F.obj Y` such that `F.map f y = x`. -/
abbrev fromOverFunctor : Over X ⥤ Type w := (fromOverSubfunctor F x).toFunctor

open Functor.Elements in
/-- Given a functor `F : C ⥤ Type w`, an object `X : C` and `x : F.obj X`,
this is the equivalence between the category of elements of `fromOverFunctor F x`
with the `Over` category of `x` considered as an object of `F.Elements`. -/
def fromOverFunctorElementsEquivalence :
    (fromOverFunctor F x).Elements ≌ Over (F.elementsMk X x) where
  functor.obj u :=
    Over.mk (homMk (x := F.elementsMk u.obj.left u.val.1) u.obj.hom u.val.2)
  functor.map f :=
    Over.homMk (homMk f.hom.left (Subtype.ext_iff.1 f.map_val))
  inverse.obj u :=
    Functor.elementsMk _ (Over.mk u.hom.1) ⟨u.left.val, u.hom.2⟩
  inverse.map f := homMk (Over.homMk f.left.hom (congr_arg Hom.hom (Over.w f)))
  unitIso := Iso.refl _
  counitIso := Iso.refl _
  -- `cat_disch` can fill in this proof, but is unfortunately quite slow.
  functor_unitIso_comp X := by simp_all; rfl

instance [IsCofiltered F.Elements] : IsCofiltered (fromOverFunctor F x).Elements :=
  .of_equivalence (fromOverFunctorElementsEquivalence F x).symm

end FunctorToTypes

end CategoryTheory
```
