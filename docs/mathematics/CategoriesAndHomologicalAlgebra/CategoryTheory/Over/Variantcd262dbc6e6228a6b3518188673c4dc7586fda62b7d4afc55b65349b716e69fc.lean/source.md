# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Over.Variantcd262dbc6e6228a6b3518188673c4dc7586fda62b7d4afc55b65349b716e69fc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9a0f31cc78816cbc4b07cecafa78e818e0da7d50` · SHA-256 `cd262dbc6e6228a6b3518188673c4dc7586fda62b7d4afc55b65349b716e69fc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin, Reid Barton, Bhavik Mehta
-/
import Mathlib.CategoryTheory.Over
import Mathlib.CategoryTheory.Adjunction.Opposites
import Mathlib.CategoryTheory.Limits.Preserves.Basic
import Mathlib.CategoryTheory.Limits.Shapes.Pullbacks
import Mathlib.CategoryTheory.Limits.Creates
import Mathlib.CategoryTheory.Limits.Comma

#align_import category_theory.limits.over from "leanprover-community/mathlib"@"3e0dd193514c9380edc69f1da92e80c02713c41d"

/-!
# Limits and colimits in the over and under categories

Show that the forgetful functor `forget X : Over X ⥤ C` creates colimits, and hence `Over X` has
any colimits that `C` has (as well as the dual that `forget X : Under X ⟶ C` creates limits).

Note that the folder `CategoryTheory.Limits.Shapes.Constructions.Over` further shows that
`forget X : Over X ⥤ C` creates connected limits (so `Over X` has connected limits), and that
`Over X` has `J`-indexed products if `C` has `J`-indexed wide pullbacks.

TODO: If `C` has binary products, then `forget X : Over X ⥤ C` has a right adjoint.
-/


noncomputable section

-- morphism levels before object levels. See note [category_theory universes].
universe w' w v u

open CategoryTheory CategoryTheory.Limits

variable {J : Type w} [Category.{w'} J]

variable {C : Type u} [Category.{v} C]

variable {X : C}

namespace CategoryTheory.Over

instance hasColimit_of_hasColimit_comp_forget (F : J ⥤ Over X) [i : HasColimit (F ⋙ forget X)] :
    HasColimit F :=
  @CostructuredArrow.hasColimit _ _ _ _ _ _ _ _ _ i _
#align category_theory.over.has_colimit_of_has_colimit_comp_forget CategoryTheory.Over.hasColimit_of_hasColimit_comp_forget

instance [HasColimitsOfShape J C] : HasColimitsOfShape J (Over X) where

instance [HasColimits C] : HasColimits (Over X) :=
  ⟨inferInstance⟩

instance createsColimitsOfSize : CreatesColimitsOfSize.{w, w'} (forget X) :=
  CostructuredArrow.createsColimitsOfSize
#align category_theory.over.creates_colimits CategoryTheory.Over.createsColimitsOfSize

-- We can automatically infer that the forgetful functor preserves and reflects colimits.
example [HasColimits C] : PreservesColimits (forget X) :=
  inferInstance

example : ReflectsColimits (forget X) :=
  inferInstance

theorem epi_left_of_epi [HasPushouts C] {f g : Over X} (h : f ⟶ g) [Epi h] : Epi h.left :=
  CostructuredArrow.epi_left_of_epi _
#align category_theory.over.epi_left_of_epi CategoryTheory.Over.epi_left_of_epi

theorem epi_iff_epi_left [HasPushouts C] {f g : Over X} (h : f ⟶ g) : Epi h ↔ Epi h.left :=
  CostructuredArrow.epi_iff_epi_left _
#align category_theory.over.epi_iff_epi_left CategoryTheory.Over.epi_iff_epi_left

section

variable [HasPullbacks C]

open Tactic

/-- When `C` has pullbacks, a morphism `f : X ⟶ Y` induces a functor `Over Y ⥤ Over X`,
by pulling back a morphism along `f`. -/
@[simps]
def pullback {X Y : C} (f : X ⟶ Y) : Over Y ⥤ Over X where
  obj g := Over.mk (pullback.snd : CategoryTheory.Limits.pullback g.hom f ⟶ X)
  map := fun g {h} {k} =>
    Over.homMk (pullback.lift (pullback.fst ≫ k.left) pullback.snd (by simp [pullback.condition]))
#align category_theory.over.pullback CategoryTheory.Over.pullback

/-- `Over.map f` is left adjoint to `Over.pullback f`. -/
def mapPullbackAdj {A B : C} (f : A ⟶ B) : Over.map f ⊣ pullback f :=
  Adjunction.mkOfHomEquiv
    { homEquiv := fun g h =>
        { toFun := fun X =>
            Over.homMk (pullback.lift X.left g.hom (Over.w X)) (pullback.lift_snd _ _ _)
          invFun := fun Y => by
            refine' Over.homMk _ _
            refine' Y.left ≫ pullback.fst
            dsimp
            rw [← Over.w Y, Category.assoc, pullback.condition, Category.assoc]; rfl
          left_inv := fun X => by
            ext
            dsimp
            simp
          right_inv := fun Y => by
            -- TODO: It would be nice to replace the next two lines with just `ext`.
            apply OverMorphism.ext
            apply pullback.hom_ext
            · dsimp
              simp only [limit.lift_π, PullbackCone.mk_pt, PullbackCone.mk_π_app]
            · dsimp
              simp only [limit.lift_π, PullbackCone.mk_pt, PullbackCone.mk_π_app, ← Over.w Y ]
              rfl } }
#align category_theory.over.map_pullback_adj CategoryTheory.Over.mapPullbackAdj

/-- pullback (𝟙 A) : over A ⥤ over A is the identity functor. -/
def pullbackId {A : C} : pullback (𝟙 A) ≅ 𝟭 _ :=
  Adjunction.rightAdjointUniq (mapPullbackAdj _) (Adjunction.id.ofNatIsoLeft Over.mapId.symm)
#align category_theory.over.pullback_id CategoryTheory.Over.pullbackId

/-- pullback commutes with composition (up to natural isomorphism). -/
def pullbackComp {X Y Z : C} (f : X ⟶ Y) (g : Y ⟶ Z) : pullback (f ≫ g) ≅ pullback g ⋙ pullback f :=
  Adjunction.rightAdjointUniq (mapPullbackAdj _)
    (((mapPullbackAdj _).comp (mapPullbackAdj _)).ofNatIsoLeft (Over.mapComp _ _).symm)
#align category_theory.over.pullback_comp CategoryTheory.Over.pullbackComp

instance pullbackIsRightAdjoint {A B : C} (f : A ⟶ B) : IsRightAdjoint (pullback f) :=
  ⟨_, mapPullbackAdj f⟩
#align category_theory.over.pullback_is_right_adjoint CategoryTheory.Over.pullbackIsRightAdjoint

end

end CategoryTheory.Over

namespace CategoryTheory.Under

instance hasLimit_of_hasLimit_comp_forget (F : J ⥤ Under X) [i : HasLimit (F ⋙ forget X)] :
    HasLimit F :=
  @StructuredArrow.hasLimit _ _ _ _ _ _ _ _ _ i _
#align category_theory.under.has_limit_of_has_limit_comp_forget CategoryTheory.Under.hasLimit_of_hasLimit_comp_forget

instance [HasLimitsOfShape J C] : HasLimitsOfShape J (Under X) where

instance [HasLimits C] : HasLimits (Under X) :=
  ⟨inferInstance⟩

theorem mono_right_of_mono [HasPullbacks C] {f g : Under X} (h : f ⟶ g) [Mono h] : Mono h.right :=
  StructuredArrow.mono_right_of_mono _
#align category_theory.under.mono_right_of_mono CategoryTheory.Under.mono_right_of_mono

theorem mono_iff_mono_right [HasPullbacks C] {f g : Under X} (h : f ⟶ g) : Mono h ↔ Mono h.right :=
  StructuredArrow.mono_iff_mono_right _
#align category_theory.under.mono_iff_mono_right CategoryTheory.Under.mono_iff_mono_right

instance createsLimitsOfSize : CreatesLimitsOfSize.{w, w'} (forget X) :=
  StructuredArrow.createsLimitsOfSize
#align category_theory.under.creates_limits CategoryTheory.Under.createsLimitsOfSize

-- We can automatically infer that the forgetful functor preserves and reflects limits.
example [HasLimits C] : PreservesLimits (forget X) :=
  inferInstance

example : ReflectsLimits (forget X) :=
  inferInstance

section

variable [HasPushouts C]

/-- When `C` has pushouts, a morphism `f : X ⟶ Y` induces a functor `Under X ⥤ Under Y`,
by pushing a morphism forward along `f`. -/
@[simps]
def pushout {X Y : C} (f : X ⟶ Y) : Under X ⥤ Under Y where
  obj g := Under.mk (pushout.inr : Y ⟶ CategoryTheory.Limits.pushout g.hom f)
  map := fun g {h} {k} =>
    Under.homMk (pushout.desc (k.right ≫ pushout.inl) pushout.inr (by simp [← pushout.condition]))
#align category_theory.under.pushout CategoryTheory.Under.pushout

end

end CategoryTheory.Under
```
