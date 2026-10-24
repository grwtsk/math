# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Skeletal.Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `78c86a3a75e9afc92a80a4767580403f3daf2827` · SHA-256 `d9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Bhavik Mehta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bhavik Mehta
-/
import Mathlib.CategoryTheory.Adjunction.Basic
import Mathlib.CategoryTheory.Category.Preorder
import Mathlib.CategoryTheory.IsomorphismClasses
import Mathlib.CategoryTheory.Thin

#align_import category_theory.skeletal from "leanprover-community/mathlib"@"28aa996fc6fb4317f0083c4e6daf79878d81be33"

/-!
# Skeleton of a category

Define skeletal categories as categories in which any two isomorphic objects are equal.

Construct the skeleton of an arbitrary category by taking isomorphism classes, and show it is a
skeleton of the original category.

In addition, construct the skeleton of a thin category as a partial ordering, and (noncomputably)
show it is a skeleton of the original category. The advantage of this special case being handled
separately is that lemmas and definitions about orderings can be used directly, for example for the
subobject lattice. In addition, some of the commutative diagrams about the functors commute
definitionally on the nose which is convenient in practice.
-/


universe v₁ v₂ v₃ u₁ u₂ u₃

namespace CategoryTheory

open Category

variable (C : Type u₁) [Category.{v₁} C]

variable (D : Type u₂) [Category.{v₂} D]

variable {E : Type u₃} [Category.{v₃} E]

/-- A category is skeletal if isomorphic objects are equal. -/
def Skeletal : Prop :=
  ∀ ⦃X Y : C⦄, IsIsomorphic X Y → X = Y
#align category_theory.skeletal CategoryTheory.Skeletal

/-- `IsSkeletonOf C D F` says that `F : D ⥤ C` exhibits `D` as a skeletal full subcategory of `C`,
in particular `F` is a (strong) equivalence and `D` is skeletal.
-/
structure IsSkeletonOf (F : D ⥤ C) where
  /-- The category `D` has isomorphic objects equal -/
  skel : Skeletal D
  /-- The functor `F` is an equivalence -/
  eqv : IsEquivalence F
#align category_theory.is_skeleton_of CategoryTheory.IsSkeletonOf

attribute [local instance] isIsomorphicSetoid

variable {C D}

/-- If `C` is thin and skeletal, then any naturally isomorphic functors to `C` are equal. -/
theorem Functor.eq_of_iso {F₁ F₂ : D ⥤ C} [Quiver.IsThin C] (hC : Skeletal C) (hF : F₁ ≅ F₂) :
    F₁ = F₂ :=
  Functor.ext (fun X => hC ⟨hF.app X⟩) fun _ _ _ => Subsingleton.elim _ _
#align category_theory.functor.eq_of_iso CategoryTheory.Functor.eq_of_iso

/-- If `C` is thin and skeletal, `D ⥤ C` is skeletal.
`CategoryTheory.functor_thin` shows it is thin also.
-/
theorem functor_skeletal [Quiver.IsThin C] (hC : Skeletal C) : Skeletal (D ⥤ C) := fun _ _ h =>
  h.elim (Functor.eq_of_iso hC)
#align category_theory.functor_skeletal CategoryTheory.functor_skeletal

variable (C D)

/-- Construct the skeleton category as the induced category on the isomorphism classes, and derive
its category structure.
-/
def Skeleton : Type u₁ := InducedCategory C Quotient.out
#align category_theory.skeleton CategoryTheory.Skeleton

instance [Inhabited C] : Inhabited (Skeleton C) :=
  ⟨⟦default⟧⟩

-- Porting note: previously `Skeleton` used `deriving Category`
noncomputable instance : Category (Skeleton C) := by
  apply InducedCategory.category

/-- The functor from the skeleton of `C` to `C`. -/
@[simps!]
noncomputable def fromSkeleton : Skeleton C ⥤ C :=
  inducedFunctor _
#align category_theory.from_skeleton CategoryTheory.fromSkeleton

-- Porting note: previously `fromSkeleton` used `deriving Faithful, Full`
noncomputable instance : Full <| fromSkeleton C := by
  apply InducedCategory.full
noncomputable instance : Faithful <| fromSkeleton C := by
  apply InducedCategory.faithful

instance : EssSurj (fromSkeleton C) where mem_essImage X := ⟨Quotient.mk' X, Quotient.mk_out X⟩

-- Porting note: named this instance
noncomputable instance fromSkeleton.isEquivalence : IsEquivalence (fromSkeleton C) :=
  Equivalence.ofFullyFaithfullyEssSurj (fromSkeleton C)

/-- The equivalence between the skeleton and the category itself. -/
noncomputable def skeletonEquivalence : Skeleton C ≌ C :=
  (fromSkeleton C).asEquivalence
#align category_theory.skeleton_equivalence CategoryTheory.skeletonEquivalence

theorem skeleton_skeletal : Skeletal (Skeleton C) := by
  rintro X Y ⟨h⟩
  have : X.out ≈ Y.out := ⟨(fromSkeleton C).mapIso h⟩
  simpa using Quotient.sound this
#align category_theory.skeleton_skeletal CategoryTheory.skeleton_skeletal

/-- The `skeleton` of `C` given by choice is a skeleton of `C`. -/
noncomputable def skeletonIsSkeleton : IsSkeletonOf C (Skeleton C) (fromSkeleton C) where
  skel := skeleton_skeletal C
  eqv := fromSkeleton.isEquivalence C
#align category_theory.skeleton_is_skeleton CategoryTheory.skeletonIsSkeleton

section

variable {C D}

/-- Two categories which are categorically equivalent have skeletons with equivalent objects.
-/
noncomputable def Equivalence.skeletonEquiv (e : C ≌ D) : Skeleton C ≃ Skeleton D :=
  let f := ((skeletonEquivalence C).trans e).trans (skeletonEquivalence D).symm
  { toFun := f.functor.obj
    invFun := f.inverse.obj
    left_inv := fun X => skeleton_skeletal C ⟨(f.unitIso.app X).symm⟩
    right_inv := fun Y => skeleton_skeletal D ⟨f.counitIso.app Y⟩ }
#align category_theory.equivalence.skeleton_equiv CategoryTheory.Equivalence.skeletonEquiv

end

/-- Construct the skeleton category by taking the quotient of objects. This construction gives a
preorder with nice definitional properties, but is only really appropriate for thin categories.
If your original category is not thin, you probably want to be using `skeleton` instead of this.
-/
def ThinSkeleton : Type u₁ :=
  Quotient (isIsomorphicSetoid C)
#align category_theory.thin_skeleton CategoryTheory.ThinSkeleton

instance inhabitedThinSkeleton [Inhabited C] : Inhabited (ThinSkeleton C) :=
  ⟨@Quotient.mk' C (isIsomorphicSetoid C) default⟩
#align category_theory.inhabited_thin_skeleton CategoryTheory.inhabitedThinSkeleton

instance ThinSkeleton.preorder : Preorder (ThinSkeleton C)
    where
  le :=
    @Quotient.lift₂ C C _ (isIsomorphicSetoid C) (isIsomorphicSetoid C)
      (fun X Y => Nonempty (X ⟶ Y))
        (by
          rintro _ _ _ _ ⟨i₁⟩ ⟨i₂⟩
          exact
            propext
              ⟨Nonempty.map fun f => i₁.inv ≫ f ≫ i₂.hom,
                Nonempty.map fun f => i₁.hom ≫ f ≫ i₂.inv⟩)
  le_refl := by
    refine' Quotient.ind fun a => _
    exact ⟨𝟙 _⟩
  le_trans a b c := Quotient.inductionOn₃ a b c fun A B C => Nonempty.map2 (· ≫ ·)
#align category_theory.thin_skeleton.preorder CategoryTheory.ThinSkeleton.preorder

/-- The functor from a category to its thin skeleton. -/
@[simps]
def toThinSkeleton : C ⥤ ThinSkeleton C where
  obj := @Quotient.mk' C _
  map f := homOfLE (Nonempty.intro f)
#align category_theory.to_thin_skeleton CategoryTheory.toThinSkeleton

/-!
The constructions here are intended to be used when the category `C` is thin, even though
some of the statements can be shown without this assumption.
-/


namespace ThinSkeleton

/-- The thin skeleton is thin. -/
instance thin : Quiver.IsThin (ThinSkeleton C) := fun _ _ =>
  ⟨by
    rintro ⟨⟨f₁⟩⟩ ⟨⟨_⟩⟩
    rfl⟩
#align category_theory.thin_skeleton.thin CategoryTheory.ThinSkeleton.thin

variable {C} {D}

/-- A functor `C ⥤ D` computably lowers to a functor `ThinSkeleton C ⥤ ThinSkeleton D`. -/
@[simps]
def map (F : C ⥤ D) : ThinSkeleton C ⥤ ThinSkeleton D where
  obj := Quotient.map F.obj fun X₁ X₂ ⟨hX⟩ => ⟨F.mapIso hX⟩
  map {X} {Y} := Quotient.recOnSubsingleton₂ X Y fun x y k => homOfLE (k.le.elim fun t => ⟨F.map t⟩)
#align category_theory.thin_skeleton.map CategoryTheory.ThinSkeleton.map

theorem comp_toThinSkeleton (F : C ⥤ D) : F ⋙ toThinSkeleton D = toThinSkeleton C ⋙ map F :=
  rfl
#align category_theory.thin_skeleton.comp_to_thin_skeleton CategoryTheory.ThinSkeleton.comp_toThinSkeleton

/-- Given a natural transformation `F₁ ⟶ F₂`, induce a natural transformation `map F₁ ⟶ map F₂`.-/
def mapNatTrans {F₁ F₂ : C ⥤ D} (k : F₁ ⟶ F₂) : map F₁ ⟶ map F₂
    where app X := Quotient.recOnSubsingleton X fun x => ⟨⟨⟨k.app x⟩⟩⟩
#align category_theory.thin_skeleton.map_nat_trans CategoryTheory.ThinSkeleton.mapNatTrans

/- Porting note: `map₂ObjMap`, `map₂Functor`, and `map₂NatTrans` were all extracted
from the original `map₂` proof. Lean needed an extensive amount explicit type
annotations to figure things out. This also translated into repeated deterministic
timeouts. The extracted defs allow for explicit motives for the multiple
descents to the quotients.

It would be better to prove that
`ThinSkeleton (C × D) ≌ ThinSkeleton C × ThinSkeleton D`
which is more immediate from comparing the preorders. Then one could get
`map₂` by currying.
-/
/-- Given a bifunctor, we descend to a function on objects of `ThinSkeleton` -/
def map₂ObjMap (F : C ⥤ D ⥤ E) : ThinSkeleton C → ThinSkeleton D → ThinSkeleton E :=
  fun x y =>
    @Quotient.map₂ C D (isIsomorphicSetoid C) (isIsomorphicSetoid D) E (isIsomorphicSetoid E)
      (fun X Y => (F.obj X).obj Y)
          (fun X₁ _ ⟨hX⟩ _ Y₂ ⟨hY⟩ => ⟨(F.obj X₁).mapIso hY ≪≫ (F.mapIso hX).app Y₂⟩) x y

/-- For each `x : ThinSkeleton C`, we promote `map₂ObjMap F x` to a functor -/
def map₂Functor (F : C ⥤ D ⥤ E) : ThinSkeleton C → ThinSkeleton D ⥤ ThinSkeleton E :=
  fun x =>
    { obj := fun y => map₂ObjMap F x y
      map := fun {y₁} {y₂} => @Quotient.recOnSubsingleton C (isIsomorphicSetoid C)
        (fun x => (y₁ ⟶ y₂) → (map₂ObjMap F x y₁ ⟶ map₂ObjMap F x y₂)) _ x fun X
          => Quotient.recOnSubsingleton₂ y₁ y₂ fun Y₁ Y₂ hY =>
            homOfLE (hY.le.elim fun g => ⟨(F.obj X).map g⟩) }

/-- This provides natural transformations `map₂Functor F x₁ ⟶ map₂Functor F x₂` given
`x₁ ⟶ x₂` -/
def map₂NatTrans (F : C ⥤ D ⥤ E) : {x₁ x₂ : ThinSkeleton C} → (x₁ ⟶ x₂) →
    (map₂Functor F x₁ ⟶ map₂Functor F x₂) := fun {x₁} {x₂} =>
  @Quotient.recOnSubsingleton₂ C C (isIsomorphicSetoid C) (isIsomorphicSetoid C)
    (fun x x' : ThinSkeleton C => (x ⟶ x') → (map₂Functor F x ⟶ map₂Functor F x')) _ x₁ x₂
    (fun X₁ X₂ f => { app := fun y =>
      Quotient.recOnSubsingleton y fun Y => homOfLE (f.le.elim fun f' => ⟨(F.map f').app Y⟩) })

-- TODO: state the lemmas about what happens when you compose with `toThinSkeleton`
/-- A functor `C ⥤ D ⥤ E` computably lowers to a functor
`ThinSkeleton C ⥤ ThinSkeleton D ⥤ ThinSkeleton E` -/
@[simps]
def map₂ (F : C ⥤ D ⥤ E) : ThinSkeleton C ⥤ ThinSkeleton D ⥤ ThinSkeleton E where
  obj := map₂Functor F
  map := map₂NatTrans F
#align category_theory.thin_skeleton.map₂ CategoryTheory.ThinSkeleton.map₂

variable (C)

section

variable [Quiver.IsThin C]

instance toThinSkeleton_faithful : Faithful (toThinSkeleton C) where
#align category_theory.thin_skeleton.to_thin_skeleton_faithful CategoryTheory.ThinSkeleton.toThinSkeleton_faithful

/-- Use `Quotient.out` to create a functor out of the thin skeleton. -/
@[simps]
noncomputable def fromThinSkeleton : ThinSkeleton C ⥤ C where
  obj := Quotient.out
  map {x} {y} :=
    Quotient.recOnSubsingleton₂ x y fun X Y f =>
      (Nonempty.some (Quotient.mk_out X)).hom ≫ f.le.some ≫ (Nonempty.some (Quotient.mk_out Y)).inv
#align category_theory.thin_skeleton.from_thin_skeleton CategoryTheory.ThinSkeleton.fromThinSkeleton

noncomputable instance fromThinSkeletonEquivalence : IsEquivalence (fromThinSkeleton C) where
  inverse := toThinSkeleton C
  counitIso := NatIso.ofComponents fun X => Nonempty.some (Quotient.mk_out X)
  unitIso := NatIso.ofComponents fun x => Quotient.recOnSubsingleton x fun X =>
    eqToIso (Quotient.sound ⟨(Nonempty.some (Quotient.mk_out X)).symm⟩)
#align category_theory.thin_skeleton.from_thin_skeleton_equivalence CategoryTheory.ThinSkeleton.fromThinSkeletonEquivalence

/-- The equivalence between the thin skeleton and the category itself. -/
noncomputable def equivalence : ThinSkeleton C ≌ C :=
  (fromThinSkeleton C).asEquivalence
#align category_theory.thin_skeleton.equivalence CategoryTheory.ThinSkeleton.equivalence

variable {C}

theorem equiv_of_both_ways {X Y : C} (f : X ⟶ Y) (g : Y ⟶ X) : X ≈ Y :=
  ⟨iso_of_both_ways f g⟩
#align category_theory.thin_skeleton.equiv_of_both_ways CategoryTheory.ThinSkeleton.equiv_of_both_ways

instance thinSkeletonPartialOrder : PartialOrder (ThinSkeleton C) :=
  { CategoryTheory.ThinSkeleton.preorder C with
    le_antisymm :=
      Quotient.ind₂
        (by
          rintro _ _ ⟨f⟩ ⟨g⟩
          apply Quotient.sound (equiv_of_both_ways f g)) }
#align category_theory.thin_skeleton.thin_skeleton_partial_order CategoryTheory.ThinSkeleton.thinSkeletonPartialOrder

theorem skeletal : Skeletal (ThinSkeleton C) := fun X Y =>
  Quotient.inductionOn₂ X Y fun _ _ h => h.elim fun i => i.1.le.antisymm i.2.le
#align category_theory.thin_skeleton.skeletal CategoryTheory.ThinSkeleton.skeletal

theorem map_comp_eq (F : E ⥤ D) (G : D ⥤ C) : map (F ⋙ G) = map F ⋙ map G :=
  Functor.eq_of_iso skeletal <|
    NatIso.ofComponents fun X => Quotient.recOnSubsingleton X fun x => Iso.refl _
#align category_theory.thin_skeleton.map_comp_eq CategoryTheory.ThinSkeleton.map_comp_eq

theorem map_id_eq : map (𝟭 C) = 𝟭 (ThinSkeleton C) :=
  Functor.eq_of_iso skeletal <|
    NatIso.ofComponents fun X => Quotient.recOnSubsingleton X fun x => Iso.refl _
#align category_theory.thin_skeleton.map_id_eq CategoryTheory.ThinSkeleton.map_id_eq

theorem map_iso_eq {F₁ F₂ : D ⥤ C} (h : F₁ ≅ F₂) : map F₁ = map F₂ :=
  Functor.eq_of_iso skeletal
    { hom := mapNatTrans h.hom
      inv := mapNatTrans h.inv }
#align category_theory.thin_skeleton.map_iso_eq CategoryTheory.ThinSkeleton.map_iso_eq

/-- `fromThinSkeleton C` exhibits the thin skeleton as a skeleton. -/
noncomputable def thinSkeletonIsSkeleton : IsSkeletonOf C (ThinSkeleton C) (fromThinSkeleton C)
    where
  skel := skeletal
  eqv := ThinSkeleton.fromThinSkeletonEquivalence C
#align category_theory.thin_skeleton.thin_skeleton_is_skeleton CategoryTheory.ThinSkeleton.thinSkeletonIsSkeleton

noncomputable instance isSkeletonOfInhabited :
    Inhabited (IsSkeletonOf C (ThinSkeleton C) (fromThinSkeleton C)) :=
  ⟨thinSkeletonIsSkeleton⟩
#align category_theory.thin_skeleton.is_skeleton_of_inhabited CategoryTheory.ThinSkeleton.isSkeletonOfInhabited

end

variable {C}

/-- An adjunction between thin categories gives an adjunction between their thin skeletons. -/
def lowerAdjunction (R : D ⥤ C) (L : C ⥤ D) (h : L ⊣ R) : ThinSkeleton.map L ⊣ ThinSkeleton.map R :=
  Adjunction.mkOfUnitCounit
    { unit :=
        {
          app := fun X => by
            letI := isIsomorphicSetoid C
            refine' Quotient.recOnSubsingleton X fun x => homOfLE ⟨h.unit.app x⟩ }
      -- TODO: make quotient.rec_on_subsingleton' so the letI isn't needed
      counit :=
        {
          app := fun X => by
            letI := isIsomorphicSetoid D
            refine' Quotient.recOnSubsingleton X fun x => homOfLE ⟨h.counit.app x⟩ } }
#align category_theory.thin_skeleton.lower_adjunction CategoryTheory.ThinSkeleton.lowerAdjunction

end ThinSkeleton

open ThinSkeleton

section

variable {C} {α : Type*} [PartialOrder α]

/--
When `e : C ≌ α` is a categorical equivalence from a thin category `C` to some partial order `α`,
the `ThinSkeleton C` is order isomorphic to `α`.
-/
noncomputable def Equivalence.thinSkeletonOrderIso [Quiver.IsThin C] (e : C ≌ α) :
    ThinSkeleton C ≃o α :=
  ((ThinSkeleton.equivalence C).trans e).toOrderIso
#align category_theory.equivalence.thin_skeleton_order_iso CategoryTheory.Equivalence.thinSkeletonOrderIso

end

end CategoryTheory
```
