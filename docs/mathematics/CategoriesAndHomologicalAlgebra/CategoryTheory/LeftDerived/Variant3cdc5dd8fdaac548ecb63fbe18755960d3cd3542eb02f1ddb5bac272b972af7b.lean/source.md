# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.LeftDerived.Variant3cdc5dd8fdaac548ecb63fbe18755960d3cd3542eb02f1ddb5bac272b972af7b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `877e846cb5ac1176ebda6524062353b1ad8e0813` · SHA-256 `3cdc5dd8fdaac548ecb63fbe18755960d3cd3542eb02f1ddb5bac272b972af7b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2021 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Mathlib.CategoryTheory.Preadditive.ProjectiveResolution

#align_import category_theory.functor.left_derived from "leanprover-community/mathlib"@"13ff898b0eee75d3cc75d1c06a491720eaaf911d"

/-!
# Left-derived functors

We define the left-derived functors `F.leftDerived n : C ⥤ D` for any additive functor `F`
out of a category with projective resolutions.

The definition is
```
projectiveResolutions C ⋙ F.mapHomotopyCategory _ ⋙ HomotopyCategory.homologyFunctor D _ n
```
that is, we pick a projective resolution (thought of as an object of the homotopy category),
we apply `F` objectwise, and compute `n`-th homology.

We show that these left-derived functors can be calculated
on objects using any choice of projective resolution,
and on morphisms by any choice of lift to a chain map between chosen projective resolutions.

Similarly we define natural transformations between left-derived functors coming from
natural transformations between the original additive functors,
and show how to compute the components.

## Implementation

We don't assume the categories involved are abelian
(just preadditive, and have equalizers, cokernels, and image maps),
or that the functors are right exact.
None of these assumptions are needed yet.

It is often convenient, of course, to work with `[Abelian C] [EnoughProjectives C] [Abelian D]`
which (assuming the results from `CategoryTheory.Abelian.Projective`) are enough to
provide all the typeclass hypotheses assumed here.
-/


noncomputable section

open CategoryTheory CategoryTheory.Limits

universe v u

namespace CategoryTheory

variable {C : Type u} [Category.{v} C] {D : Type*} [Category D]

-- Importing `CategoryTheory.Abelian.Projective` and assuming
-- `[Abelian C] [EnoughProjectives C] [Abelian D]` suffices to acquire all the following:
variable [Preadditive C] [HasZeroObject C] [HasEqualizers C] [HasImages C]
  [HasProjectiveResolutions C]

variable [Preadditive D] [HasEqualizers D] [HasCokernels D] [HasImages D] [HasImageMaps D]

/-- The left derived functors of an additive functor. -/
def Functor.leftDerived (F : C ⥤ D) [F.Additive] (n : ℕ) : C ⥤ D :=
  projectiveResolutions C ⋙ F.mapHomotopyCategory _ ⋙ HomotopyCategory.homologyFunctor D _ n
#align category_theory.functor.left_derived CategoryTheory.Functor.leftDerived

-- TODO the left derived functors are additive (and linear when `F` is linear)
/-- We can compute a left derived functor using a chosen projective resolution. -/
@[simps!]
def Functor.leftDerivedObjIso (F : C ⥤ D) [F.Additive] (n : ℕ) {X : C}
    (P : ProjectiveResolution X) :
    (F.leftDerived n).obj X ≅
      (homologyFunctor D _ n).obj ((F.mapHomologicalComplex _).obj P.complex) :=
  (HomotopyCategory.homologyFunctor D _ n).mapIso
      (HomotopyCategory.isoOfHomotopyEquiv
        (F.mapHomotopyEquiv (ProjectiveResolution.homotopyEquiv _ P))) ≪≫
    (HomotopyCategory.homologyFactors D _ n).app _
#align category_theory.functor.left_derived_obj_iso CategoryTheory.Functor.leftDerivedObjIso

section

variable [HasZeroObject D]

/-- The 0-th derived functor of `F` on a projective object `X` is just `F.obj X`. -/
@[simps!]
def Functor.leftDerivedObjProjectiveZero (F : C ⥤ D) [F.Additive] (X : C) [Projective X] :
    (F.leftDerived 0).obj X ≅ F.obj X :=
  F.leftDerivedObjIso 0 (ProjectiveResolution.self X) ≪≫
    (homologyFunctor _ _ _).mapIso ((ChainComplex.single₀MapHomologicalComplex F).app X) ≪≫
      (ChainComplex.homologyFunctor0Single₀ D).app (F.obj X)
#align category_theory.functor.left_derived_obj_projective_zero CategoryTheory.Functor.leftDerivedObjProjectiveZero

open ZeroObject

/-- The higher derived functors vanish on projective objects. -/
@[simps! inv]
def Functor.leftDerivedObjProjectiveSucc (F : C ⥤ D) [F.Additive] (n : ℕ) (X : C) [Projective X] :
    (F.leftDerived (n + 1)).obj X ≅ 0 :=
  F.leftDerivedObjIso (n + 1) (ProjectiveResolution.self X) ≪≫
    (homologyFunctor _ _ _).mapIso ((ChainComplex.single₀MapHomologicalComplex F).app X) ≪≫
      (ChainComplex.homologyFunctorSuccSingle₀ D n).app (F.obj X) ≪≫ (Functor.zero_obj _).isoZero
#align category_theory.functor.left_derived_obj_projective_succ CategoryTheory.Functor.leftDerivedObjProjectiveSucc

end

/-- We can compute a left derived functor on a morphism using a lift of that morphism
to a chain map between chosen projective resolutions.
-/
theorem Functor.leftDerived_map_eq (F : C ⥤ D) [F.Additive] (n : ℕ) {X Y : C} (f : X ⟶ Y)
    {P : ProjectiveResolution X} {Q : ProjectiveResolution Y} (g : P.complex ⟶ Q.complex)
    (w : g ≫ Q.π = P.π ≫ (ChainComplex.single₀ C).map f) :
    (F.leftDerived n).map f =
      (F.leftDerivedObjIso n P).hom ≫
        (homologyFunctor D _ n).map ((F.mapHomologicalComplex _).map g) ≫
          (F.leftDerivedObjIso n Q).inv := by
  dsimp only [Functor.leftDerived, Functor.leftDerivedObjIso]
  dsimp; simp only [Category.comp_id, Category.id_comp]
  rw [← homologyFunctor_map, HomotopyCategory.homologyFunctor_map_factors]
  simp only [← Functor.map_comp]
  congr 1
  apply HomotopyCategory.eq_of_homotopy
  apply Functor.mapHomotopy
  apply ProjectiveResolution.liftHomotopy f
  · simp
  · simp [w]
#align category_theory.functor.left_derived_map_eq CategoryTheory.Functor.leftDerived_map_eq

/-- The natural transformation between left-derived functors induced by a natural transformation. -/
@[simps!]
def NatTrans.leftDerived {F G : C ⥤ D} [F.Additive] [G.Additive] (α : F ⟶ G) (n : ℕ) :
    F.leftDerived n ⟶ G.leftDerived n :=
  whiskerLeft (projectiveResolutions C)
    (whiskerRight (NatTrans.mapHomotopyCategory α _) (HomotopyCategory.homologyFunctor D _ n))
#align category_theory.nat_trans.left_derived CategoryTheory.NatTrans.leftDerived

@[simp]
theorem NatTrans.leftDerived_id (F : C ⥤ D) [F.Additive] (n : ℕ) :
    NatTrans.leftDerived (𝟙 F) n = 𝟙 (F.leftDerived n) := by
  simp [NatTrans.leftDerived]
  rfl
#align category_theory.nat_trans.left_derived_id CategoryTheory.NatTrans.leftDerived_id

-- porting note: removed "The `simp_nf` linter times out here, so we disable it."
@[simp]
theorem NatTrans.leftDerived_comp {F G H : C ⥤ D} [F.Additive] [G.Additive] [H.Additive] (α : F ⟶ G)
    (β : G ⟶ H) (n : ℕ) :
    NatTrans.leftDerived (α ≫ β) n = NatTrans.leftDerived α n ≫ NatTrans.leftDerived β n := by
  simp [NatTrans.leftDerived]
#align category_theory.nat_trans.left_derived_comp CategoryTheory.NatTrans.leftDerived_comp

/-- A component of the natural transformation between left-derived functors can be computed
using a chosen projective resolution.
-/
theorem NatTrans.leftDerived_eq {F G : C ⥤ D} [F.Additive] [G.Additive] (α : F ⟶ G) (n : ℕ) {X : C}
    (P : ProjectiveResolution X) :
    (NatTrans.leftDerived α n).app X =
      (F.leftDerivedObjIso n P).hom ≫
        (homologyFunctor D _ n).map ((NatTrans.mapHomologicalComplex α _).app P.complex) ≫
          (G.leftDerivedObjIso n P).inv := by
  symm
  dsimp [NatTrans.leftDerived, Functor.leftDerivedObjIso]
  simp only [Category.comp_id, Category.id_comp]
  rw [← homologyFunctor_map, HomotopyCategory.homologyFunctor_map_factors]
  simp only [← Functor.map_comp]
  congr 1
  apply HomotopyCategory.eq_of_homotopy
  simp only [NatTrans.mapHomologicalComplex_naturality_assoc, ← Functor.map_comp]
  apply Homotopy.compLeftId
  refine' (Functor.mapHomotopy _ (HomotopyEquiv.homotopyHomInvId _) ).trans _
  apply Homotopy.ofEq
  simp only [Functor.map_id]
#align category_theory.nat_trans.left_derived_eq CategoryTheory.NatTrans.leftDerived_eq

-- TODO:
-- lemma nat_trans.left_derived_projective_zero {F G : C ⥤ D} [F.additive] [G.additive] (α : F ⟶ G)
--   (X : C) [projective X] :
--   (nat_trans.left_derived α 0).app X =
--     (F.left_derived_obj_projective_zero X).hom ≫
--       α.app X ≫
--         (G.left_derived_obj_projective_zero X).inv := sorry
-- TODO:
-- lemma nat_trans.left_derived_projective_succ {F G : C ⥤ D} [F.additive] [G.additive] (α : F ⟶ G)
--   (n : ℕ) (X : C) [projective X] :
--   (nat_trans.left_derived α (n+1)).app X = 0 := sorry
-- TODO left-derived functors of the identity functor are the identity
-- (requires we assume `abelian`?)
-- PROJECT left-derived functors of a composition (Grothendieck sequence)
end CategoryTheory
````
