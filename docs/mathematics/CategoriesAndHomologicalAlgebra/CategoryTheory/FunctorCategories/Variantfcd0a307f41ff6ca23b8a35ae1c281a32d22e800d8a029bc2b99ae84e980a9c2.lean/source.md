# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorCategories.Variantfcd0a307f41ff6ca23b8a35ae1c281a32d22e800d8a029bc2b99ae84e980a9c2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f98d555003d064430fc6d76904a6182d41f0149` · SHA-256 `fcd0a307f41ff6ca23b8a35ae1c281a32d22e800d8a029bc2b99ae84e980a9c2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Idempotents.Karoubi

#align_import category_theory.idempotents.functor_categories from "leanprover-community/mathlib"@"31019c2504b17f85af7e0577585fad996935a317"

/-!
# Idempotent completeness and functor categories

In this file we define an instance `functor_category_isIdempotentComplete` expressing
that a functor category `J ⥤ C` is idempotent complete when the target category `C` is.

We also provide a fully faithful functor
`karoubiFunctorCategoryEmbedding : Karoubi (J ⥤ C)) : J ⥤ Karoubi C` for all categories
`J` and `C`.

-/


open CategoryTheory

open CategoryTheory.Category

open CategoryTheory.Idempotents.Karoubi

open CategoryTheory.Limits

namespace CategoryTheory

namespace Idempotents

variable {J C : Type*} [Category J] [Category C] (P Q : Karoubi (J ⥤ C)) (f : P ⟶ Q) (X : J)

@[reassoc (attr := simp)]
theorem app_idem : P.p.app X ≫ P.p.app X = P.p.app X :=
  congr_app P.idem X
#align category_theory.idempotents.app_idem CategoryTheory.Idempotents.app_idem

variable {P Q}

@[reassoc (attr := simp)]
theorem app_p_comp : P.p.app X ≫ f.f.app X = f.f.app X :=
  congr_app (p_comp f) X
#align category_theory.idempotents.app_p_comp CategoryTheory.Idempotents.app_p_comp

@[reassoc (attr := simp)]
theorem app_comp_p : f.f.app X ≫ Q.p.app X = f.f.app X :=
  congr_app (comp_p f) X
#align category_theory.idempotents.app_comp_p CategoryTheory.Idempotents.app_comp_p

@[reassoc]
theorem app_p_comm : P.p.app X ≫ f.f.app X = f.f.app X ≫ Q.p.app X :=
  congr_app (p_comm f) X
#align category_theory.idempotents.app_p_comm CategoryTheory.Idempotents.app_p_comm

variable (J C)

instance functor_category_isIdempotentComplete [IsIdempotentComplete C] :
    IsIdempotentComplete (J ⥤ C) := by
  refine' ⟨fun F p hp => _⟩
  have hC := (isIdempotentComplete_iff_hasEqualizer_of_id_and_idempotent C).mp inferInstance
  haveI : ∀ j : J, HasEqualizer (𝟙 _) (p.app j) := fun j => hC _ _ (congr_app hp j)
  /- We construct the direct factor `Y` associated to `p : F ⟶ F` by computing
      the equalizer of the identity and `p.app j` on each object `(j : J)`.  -/
  let Y : J ⥤ C :=
    { obj := fun j => Limits.equalizer (𝟙 _) (p.app j)
      map := fun {j j'} φ =>
        equalizer.lift (Limits.equalizer.ι (𝟙 _) (p.app j) ≫ F.map φ)
          (by rw [comp_id, assoc, p.naturality φ, ← assoc, ← Limits.equalizer.condition, comp_id]) }
  let i : Y ⟶ F :=
    { app := fun j => equalizer.ι _ _
      naturality := fun _ _ _ => by rw [equalizer.lift_ι] }
  let e : F ⟶ Y :=
    { app := fun j =>
        equalizer.lift (p.app j) (by simpa only [comp_id] using (congr_app hp j).symm)
      naturality := fun j j' φ => equalizer.hom_ext (by simp) }
  use Y, i, e
  constructor
  · ext j
    apply equalizer.hom_ext
    dsimp
    rw [assoc, equalizer.lift_ι, ← equalizer.condition, id_comp, comp_id]
  · ext j
    simp
namespace KaroubiFunctorCategoryEmbedding

variable {J C}

/-- On objects, the functor which sends a formal direct factor `P` of a
functor `F : J ⥤ C` to the functor `J ⥤ Karoubi C` which sends `(j : J)` to
the corresponding direct factor of `F.obj j`. -/
@[simps]
def obj (P : Karoubi (J ⥤ C)) : J ⥤ Karoubi C where
  obj j := ⟨P.X.obj j, P.p.app j, congr_app P.idem j⟩
  map {j j'} φ :=
    { f := P.p.app j ≫ P.X.map φ
      comm := by
        simp only [NatTrans.naturality, assoc]
        have h := congr_app P.idem j
        rw [NatTrans.comp_app] at h
        erw [reassoc_of% h, reassoc_of% h] }
#align category_theory.idempotents.karoubi_functor_category_embedding.obj CategoryTheory.Idempotents.KaroubiFunctorCategoryEmbedding.obj

/-- Tautological action on maps of the functor `Karoubi (J ⥤ C) ⥤ (J ⥤ Karoubi C)`. -/
@[simps]
def map {P Q : Karoubi (J ⥤ C)} (f : P ⟶ Q) : obj P ⟶ obj Q
    where app j := ⟨f.f.app j, congr_app f.comm j⟩
#align category_theory.idempotents.karoubi_functor_category_embedding.map CategoryTheory.Idempotents.KaroubiFunctorCategoryEmbedding.map

end KaroubiFunctorCategoryEmbedding

/-- The tautological fully faithful functor `Karoubi (J ⥤ C) ⥤ (J ⥤ Karoubi C)`. -/
@[simps]
def karoubiFunctorCategoryEmbedding : Karoubi (J ⥤ C) ⥤ J ⥤ Karoubi C where
  obj := KaroubiFunctorCategoryEmbedding.obj
  map := KaroubiFunctorCategoryEmbedding.map
#align category_theory.idempotents.karoubi_functor_category_embedding CategoryTheory.Idempotents.karoubiFunctorCategoryEmbedding

instance : Full (karoubiFunctorCategoryEmbedding J C) where
  preimage {P Q} f :=
    { f :=
        { app := fun j => (f.app j).f
          naturality := fun j j' φ => by
            rw [← Karoubi.comp_p_assoc]
            have h := hom_ext_iff.mp (f.naturality φ)
            simp only [comp_f] at h
            dsimp [karoubiFunctorCategoryEmbedding] at h
            erw [← h, assoc, ← P.p.naturality_assoc φ, p_comp (f.app j')] }
      comm := by
        ext j
        exact (f.app j).comm }
  witness f := rfl

instance : Faithful (karoubiFunctorCategoryEmbedding J C) where
  map_injective h := by
    ext j
    exact hom_ext_iff.mp (congr_app h j)

/-- The composition of `(J ⥤ C) ⥤ Karoubi (J ⥤ C)` and `Karoubi (J ⥤ C) ⥤ (J ⥤ Karoubi C)`
equals the functor `(J ⥤ C) ⥤ (J ⥤ Karoubi C)` given by the composition with
`toKaroubi C : C ⥤ Karoubi C`. -/
theorem toKaroubi_comp_karoubiFunctorCategoryEmbedding :
    toKaroubi _ ⋙ karoubiFunctorCategoryEmbedding J C =
      (whiskeringRight J _ _).obj (toKaroubi C) := by
  apply Functor.ext
  · intro X Y f
    ext j
    dsimp [toKaroubi]
    simp only [eqToHom_app, eqToHom_refl]
    erw [comp_id, id_comp]
  · intro X
    apply Functor.ext
    · intro j j' φ
      ext
      dsimp
      simp
    · intro j
      rfl
#align category_theory.idempotents.to_karoubi_comp_karoubi_functor_category_embedding CategoryTheory.Idempotents.toKaroubi_comp_karoubiFunctorCategoryEmbedding

end Idempotents

end CategoryTheory
```
