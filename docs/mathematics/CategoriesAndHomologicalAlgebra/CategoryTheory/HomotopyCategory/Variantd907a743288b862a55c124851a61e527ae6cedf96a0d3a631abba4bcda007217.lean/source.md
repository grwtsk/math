# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HomotopyCategory.Variantd907a743288b862a55c124851a61e527ae6cedf96a0d3a631abba4bcda007217

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `996ccaff2ffce753ca916b6b1321119705eb6ee8` · SHA-256 `d907a743288b862a55c124851a61e527ae6cedf96a0d3a631abba4bcda007217`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Mathlib.Algebra.Homology.Homotopy
import Mathlib.CategoryTheory.Quotient

#align_import algebra.homology.homotopy_category from "leanprover-community/mathlib"@"13ff898b0eee75d3cc75d1c06a491720eaaf911d"

/-!
# The homotopy category

`HomotopyCategory V c` gives the category of chain complexes of shape `c` in `V`,
with chain maps identified when they are homotopic.
-/

set_option autoImplicit true


universe v u

open Classical

noncomputable section

open CategoryTheory CategoryTheory.Limits HomologicalComplex

variable {ι : Type*}

variable (V : Type u) [Category.{v} V] [Preadditive V]

variable (c : ComplexShape ι)

/-- The congruence on `HomologicalComplex V c` given by the existence of a homotopy.
-/
def homotopic : HomRel (HomologicalComplex V c) := fun _ _ f g => Nonempty (Homotopy f g)
#align homotopic homotopic

instance homotopy_congruence : Congruence (homotopic V c) where
  isEquiv :=
    { refl := fun C => ⟨Homotopy.refl C⟩
      symm := fun _ _ ⟨w⟩ => ⟨w.symm⟩
      trans := fun _ _ _ ⟨w₁⟩ ⟨w₂⟩ => ⟨w₁.trans w₂⟩ }
  compLeft := fun _ _ _ ⟨i⟩ => ⟨i.compLeft _⟩
  compRight := fun _ ⟨i⟩ => ⟨i.compRight _⟩
#align homotopy_congruence homotopy_congruence

/-- `HomotopyCategory V c` is the category of chain complexes of shape `c` in `V`,
with chain maps identified when they are homotopic. -/
def HomotopyCategory :=
  CategoryTheory.Quotient (homotopic V c)
#align homotopy_category HomotopyCategory

instance : Category (HomotopyCategory V v) := by
  dsimp only [HomotopyCategory]
  infer_instance

-- TODO the homotopy_category is preadditive
namespace HomotopyCategory

/-- The quotient functor from complexes to the homotopy category. -/
def quotient : HomologicalComplex V c ⥤ HomotopyCategory V c :=
  CategoryTheory.Quotient.functor _
#align homotopy_category.quotient HomotopyCategory.quotient

open ZeroObject

-- TODO upgrade this to `HasZeroObject`, presumably for any `quotient`.
instance [HasZeroObject V] : Inhabited (HomotopyCategory V c) :=
  ⟨(quotient V c).obj 0⟩

variable {V c}

-- porting note: removed @[simp] attribute because it hinders the automatic application of the
-- more useful `quotient_map_out`
theorem quotient_obj_as (C : HomologicalComplex V c) : ((quotient V c).obj C).as = C :=
  rfl
#align homotopy_category.quotient_obj_as HomotopyCategory.quotient_obj_as

@[simp]
theorem quotient_map_out {C D : HomotopyCategory V c} (f : C ⟶ D) : (quotient V c).map f.out = f :=
  Quot.out_eq _
#align homotopy_category.quotient_map_out HomotopyCategory.quotient_map_out

-- porting note: added to ease the port
theorem quot_mk_eq_quotient_map {C D : HomologicalComplex V c} (f : C ⟶ D) :
  Quot.mk _ f = (quotient V c).map f := rfl

theorem eq_of_homotopy {C D : HomologicalComplex V c} (f g : C ⟶ D) (h : Homotopy f g) :
    (quotient V c).map f = (quotient V c).map g :=
  CategoryTheory.Quotient.sound _ ⟨h⟩
#align homotopy_category.eq_of_homotopy HomotopyCategory.eq_of_homotopy

/-- If two chain maps become equal in the homotopy category, then they are homotopic. -/
def homotopyOfEq {C D : HomologicalComplex V c} (f g : C ⟶ D)
    (w : (quotient V c).map f = (quotient V c).map g) : Homotopy f g :=
  ((Quotient.functor_map_eq_iff _ _ _).mp w).some
#align homotopy_category.homotopy_of_eq HomotopyCategory.homotopyOfEq

/-- An arbitrarily chosen representation of the image of a chain map in the homotopy category
is homotopic to the original chain map.
-/
def homotopyOutMap {C D : HomologicalComplex V c} (f : C ⟶ D) :
    Homotopy ((quotient V c).map f).out f := by
  apply homotopyOfEq
  simp
#align homotopy_category.homotopy_out_map HomotopyCategory.homotopyOutMap

@[simp 1100]
theorem quotient_map_out_comp_out {C D E : HomotopyCategory V c} (f : C ⟶ D) (g : D ⟶ E) :
    (quotient V c).map (Quot.out f ≫ Quot.out g) = f ≫ g := by simp
#align homotopy_category.quotient_map_out_comp_out HomotopyCategory.quotient_map_out_comp_out

/-- Homotopy equivalent complexes become isomorphic in the homotopy category. -/
@[simps]
def isoOfHomotopyEquiv {C D : HomologicalComplex V c} (f : HomotopyEquiv C D) :
    (quotient V c).obj C ≅ (quotient V c).obj D where
  hom := (quotient V c).map f.hom
  inv := (quotient V c).map f.inv
  hom_inv_id := by
    rw [← (quotient V c).map_comp, ← (quotient V c).map_id]
    exact eq_of_homotopy _ _ f.homotopyHomInvId
  inv_hom_id := by
    rw [← (quotient V c).map_comp, ← (quotient V c).map_id]
    exact eq_of_homotopy _ _ f.homotopyInvHomId
#align homotopy_category.iso_of_homotopy_equiv HomotopyCategory.isoOfHomotopyEquiv

/-- If two complexes become isomorphic in the homotopy category,
  then they were homotopy equivalent. -/
def homotopyEquivOfIso {C D : HomologicalComplex V c}
    (i : (quotient V c).obj C ≅ (quotient V c).obj D) : HomotopyEquiv C D where
  hom := Quot.out i.hom
  inv := Quot.out i.inv
  homotopyHomInvId :=
    homotopyOfEq _ _
      (by rw [quotient_map_out_comp_out, i.hom_inv_id, (quotient V c).map_id])
  homotopyInvHomId :=
    homotopyOfEq _ _
      (by rw [quotient_map_out_comp_out, i.inv_hom_id, (quotient V c).map_id])
#align homotopy_category.homotopy_equiv_of_iso HomotopyCategory.homotopyEquivOfIso

variable (V c)
variable [HasEqualizers V] [HasImages V] [HasImageMaps V] [HasCokernels V]

/-- The `i`-th homology, as a functor from the homotopy category. -/
def homologyFunctor (i : ι) : HomotopyCategory V c ⥤ V :=
  CategoryTheory.Quotient.lift _ (_root_.homologyFunctor V c i) fun _ _ _ _ ⟨h⟩ =>
    homology_map_eq_of_homotopy h i
#align homotopy_category.homology_functor HomotopyCategory.homologyFunctor

/-- The homology functor on the homotopy category is just the usual homology functor. -/
def homologyFactors (i : ι) :
    quotient V c ⋙ homologyFunctor V c i ≅ _root_.homologyFunctor V c i :=
  CategoryTheory.Quotient.lift.isLift _ _ _
#align homotopy_category.homology_factors HomotopyCategory.homologyFactors

@[simp]
theorem homologyFactors_hom_app (i : ι) (C : HomologicalComplex V c) :
    (homologyFactors V c i).hom.app C = 𝟙 _ :=
  rfl
#align homotopy_category.homology_factors_hom_app HomotopyCategory.homologyFactors_hom_app

@[simp]
theorem homologyFactors_inv_app (i : ι) (C : HomologicalComplex V c) :
    (homologyFactors V c i).inv.app C = 𝟙 _ :=
  rfl
#align homotopy_category.homology_factors_inv_app HomotopyCategory.homologyFactors_inv_app

theorem homologyFunctor_map_factors (i : ι) {C D : HomologicalComplex V c} (f : C ⟶ D) :
    (_root_.homologyFunctor V c i).map f =
      ((homologyFunctor V c i).map ((quotient V c).map f) : _) :=
  (CategoryTheory.Quotient.lift_map_functor_map _ (_root_.homologyFunctor V c i) _ f).symm
#align homotopy_category.homology_functor_map_factors HomotopyCategory.homologyFunctor_map_factors

end HomotopyCategory

namespace CategoryTheory

variable {V} {W : Type*} [Category W] [Preadditive W]

-- porting note: given a simpler definition of this functor
/-- An additive functor induces a functor between homotopy categories. -/
@[simps! obj]
def Functor.mapHomotopyCategory (F : V ⥤ W) [F.Additive] (c : ComplexShape ι) :
    HomotopyCategory V c ⥤ HomotopyCategory W c :=
  CategoryTheory.Quotient.lift _ (F.mapHomologicalComplex c ⋙ HomotopyCategory.quotient W c)
    (fun _ _ _ _ ⟨h⟩ => HomotopyCategory.eq_of_homotopy _ _ (F.mapHomotopy h))
#align category_theory.functor.map_homotopy_category CategoryTheory.Functor.mapHomotopyCategory

-- porting note: added this lemma because of the new definition of `Functor.mapHomotopyCategory`
@[simp]
lemma Functor.mapHomotopyCategory_map (F : V ⥤ W) [F.Additive] {c : ComplexShape ι}
    {K L : HomologicalComplex V c} (f : K ⟶ L) :
    (F.mapHomotopyCategory c).map ((HomotopyCategory.quotient V c).map f) =
      (HomotopyCategory.quotient W c).map ((F.mapHomologicalComplex c).map f) :=
  rfl

-- TODO `F.mapHomotopyCategory c` is additive (and linear when `F` is linear).
-- TODO develop lifting of natural transformations for general quotient categories so that
-- `NatTrans.mapHomotopyCategory` become a particular case of it
/-- A natural transformation induces a natural transformation between
  the induced functors on the homotopy category. -/
@[simps]
def NatTrans.mapHomotopyCategory {F G : V ⥤ W} [F.Additive] [G.Additive] (α : F ⟶ G)
    (c : ComplexShape ι) : F.mapHomotopyCategory c ⟶ G.mapHomotopyCategory c where
  app C := (HomotopyCategory.quotient W c).map ((NatTrans.mapHomologicalComplex α c).app C.as)
  naturality := by
    rintro ⟨C⟩ ⟨D⟩ ⟨f : C ⟶ D⟩
    simp only [HomotopyCategory.quot_mk_eq_quotient_map, Functor.mapHomotopyCategory_map,
      ← Functor.map_comp, NatTrans.naturality]
#align category_theory.nat_trans.map_homotopy_category CategoryTheory.NatTrans.mapHomotopyCategory

@[simp]
theorem NatTrans.mapHomotopyCategory_id (c : ComplexShape ι) (F : V ⥤ W) [F.Additive] :
    NatTrans.mapHomotopyCategory (𝟙 F) c = 𝟙 (F.mapHomotopyCategory c) := by aesop_cat
#align category_theory.nat_trans.map_homotopy_category_id CategoryTheory.NatTrans.mapHomotopyCategory_id

@[simp]
theorem NatTrans.mapHomotopyCategory_comp (c : ComplexShape ι) {F G H : V ⥤ W} [F.Additive]
    [G.Additive] [H.Additive] (α : F ⟶ G) (β : G ⟶ H) :
    NatTrans.mapHomotopyCategory (α ≫ β) c =
      NatTrans.mapHomotopyCategory α c ≫ NatTrans.mapHomotopyCategory β c := by aesop_cat
#align category_theory.nat_trans.map_homotopy_category_comp CategoryTheory.NatTrans.mapHomotopyCategory_comp

end CategoryTheory
```
