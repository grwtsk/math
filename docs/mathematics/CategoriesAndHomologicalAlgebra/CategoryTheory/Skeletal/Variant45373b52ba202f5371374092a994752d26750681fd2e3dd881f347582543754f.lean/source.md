# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Skeletal.Variant45373b52ba202f5371374092a994752d26750681fd2e3dd881f347582543754f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8d2c1e24392aa1f1bd81d5fd6d4ceead2786e341` · SHA-256 `c0be2d126372129f1fa93499620d46d7679507d8eac6ce4bf0b5c9c68169c2ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsSkeletonOf.Variant7d46d3ac1938b514b5e9b029658be5ad5cf8ccd6d353778249ea9c139d74bff9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7d46d3ac1938b514b5e9b029658be5ad5cf8ccd6d353778249ea9c139d74bff9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.IsSkeletonOf.Variant7d46d3ac1938b514b5e9b029658be5ad5cf8ccd6d353778249ea9c139d74bff9","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"7d46d3ac1938b514b5e9b029658be5ad5cf8ccd6d353778249ea9c139d74bff9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Skeletal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Bhavik Mehta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bhavik Mehta
-/
import Mathlib.CategoryTheory.Adjunction.Basic
import Mathlib.CategoryTheory.Category.Preorder
import Mathlib.CategoryTheory.IsomorphismClasses
import Mathlib.CategoryTheory.Thin

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



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsSkeletonOf.Variant7d46d3ac1938b514b5e9b029658be5ad5cf8ccd6d353778249ea9c139d74bff9

universe v₁ v₂ v₃ u₁ u₂ u₃

namespace CategoryTheory

open Category

variable (C : Type u₁) [Category.{v₁} C]
variable (D : Type u₂) [Category.{v₂} D]
variable {E : Type u₃} [Category.{v₃} E]

/-- A category is skeletal if isomorphic objects are equal. -/
def Skeletal : Prop :=
  ∀ ⦃X Y : C⦄, IsIsomorphic X Y → X = Y

/-- `IsSkeletonOf C D F` says that `F : D ⥤ C` exhibits `D` as a skeletal full subcategory of `C`,
in particular `F` is a (strong) equivalence and `D` is skeletal.
-/
structure IsSkeletonOf (F : D ⥤ C) : Prop where
  /-- The category `D` has isomorphic objects equal -/
  skel : Skeletal D
  /-- The functor `F` is an equivalence -/
  eqv : F.IsEquivalence := by infer_instance

attribute [local instance] isIsomorphicSetoid

variable {C D}

/-- If `C` is thin and skeletal, then any naturally isomorphic functors to `C` are equal. -/
theorem Functor.eq_of_iso {F₁ F₂ : D ⥤ C} [Quiver.IsThin C] (hC : Skeletal C) (hF : F₁ ≅ F₂) :
    F₁ = F₂ :=
  Functor.ext (fun X => hC ⟨hF.app X⟩) fun _ _ _ => Subsingleton.elim _ _

/-- If `C` is thin and skeletal, `D ⥤ C` is skeletal.
`CategoryTheory.functor_thin` shows it is thin also.
-/
theorem functor_skeletal [Quiver.IsThin C] (hC : Skeletal C) : Skeletal (D ⥤ C) := fun _ _ h =>
  h.elim (Functor.eq_of_iso hC)

variable (C D)

/-- Construct the skeleton category as the induced category on the isomorphism classes, and derive
its category structure.
-/
def Skeleton : Type u₁ := InducedCategory (C := Quotient (isIsomorphicSetoid C)) C Quotient.out
-- The `Category` instance should be constructed by a deriving handler.
-- https://github.com/leanprover-community/mathlib4/issues/380

instance [Inhabited C] : Inhabited (Skeleton C) :=
  ⟨⟦default⟧⟩

noncomputable instance : Category (Skeleton C) := by
  apply InducedCategory.category

noncomputable instance {α} [CoeSort C α] : CoeSort (Skeleton C) α :=
  inferInstanceAs (CoeSort (InducedCategory _ _) _)

/-- The functor from the skeleton of `C` to `C`. -/
@[simps!]
noncomputable def fromSkeleton : Skeleton C ⥤ C :=
  inducedFunctor _
-- The `Full, Faithful` instances should be constructed by a deriving handler.
-- https://github.com/leanprover-community/mathlib4/issues/380

noncomputable instance : (fromSkeleton C).Full := by
  apply InducedCategory.full
noncomputable instance : (fromSkeleton C).Faithful := by
  apply InducedCategory.faithful

instance : (fromSkeleton C).EssSurj where mem_essImage X := ⟨Quotient.mk' X, Quotient.mk_out X⟩

noncomputable instance fromSkeleton.isEquivalence : (fromSkeleton C).IsEquivalence where

variable {C}

/-- The class of an object in the skeleton. -/
abbrev toSkeleton (X : C) : Skeleton C := ⟦X⟧

/-- The isomorphism between `⟦X⟧.out` and `X`. -/
noncomputable def preCounitIso (X : C) : (fromSkeleton C).obj (toSkeleton X) ≅ X :=
  Nonempty.some (Quotient.mk_out X)

variable (C)

/-- An inverse to `fromSkeleton C` that forms an equivalence with it. -/
@[simps] noncomputable def toSkeletonFunctor : C ⥤ Skeleton C where
  obj := toSkeleton
  map {X Y} f := by apply (preCounitIso X).hom ≫ f ≫ (preCounitIso Y).inv
  map_id _ := by aesop
  map_comp _ _ := by change _ = CategoryStruct.comp (obj := C) _ _; simp

/-- The equivalence between the skeleton and the category itself. -/
@[simps] noncomputable def skeletonEquivalence : Skeleton C ≌ C where
  functor := fromSkeleton C
  inverse := toSkeletonFunctor C
  unitIso := NatIso.ofComponents
    (fun X ↦ InducedCategory.isoMk (Nonempty.some <| Quotient.mk_out X.out).symm)
    fun _ ↦ .symm <| Iso.inv_hom_id_assoc _ _
  counitIso := NatIso.ofComponents preCounitIso
  functor_unitIso_comp _ := Iso.inv_hom_id _

theorem skeleton_skeletal : Skeletal (Skeleton C) := by
  rintro X Y ⟨h⟩
  have : X.out ≈ Y.out := ⟨(fromSkeleton C).mapIso h⟩
  simpa using Quotient.sound this

/-- The `skeleton` of `C` given by choice is a skeleton of `C`. -/
lemma skeleton_isSkeleton : IsSkeletonOf C (Skeleton C) (fromSkeleton C) where
  skel := skeleton_skeletal C
  eqv := fromSkeleton.isEquivalence C

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

end

/-- Construct the skeleton category by taking the quotient of objects. This construction gives a
preorder with nice definitional properties, but is only really appropriate for thin categories.
If your original category is not thin, you probably want to be using `skeleton` instead of this.
-/
def ThinSkeleton : Type u₁ :=
  Quotient (isIsomorphicSetoid C)

instance inhabitedThinSkeleton [Inhabited C] : Inhabited (ThinSkeleton C) :=
  ⟨@Quotient.mk' C (isIsomorphicSetoid C) default⟩

instance ThinSkeleton.preorder : Preorder (ThinSkeleton C) where
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
    refine Quotient.ind fun a => ?_
    exact ⟨𝟙 _⟩
  le_trans a b c := Quotient.inductionOn₃ a b c fun _ _ _ => Nonempty.map2 (· ≫ ·)

/-- The functor from a category to its thin skeleton. -/
@[simps]
def toThinSkeleton : C ⥤ ThinSkeleton C where
  obj := @Quotient.mk' C _
  map f := homOfLE (Nonempty.intro f)

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

variable {C} {D}

/-- A functor `C ⥤ D` computably lowers to a functor `ThinSkeleton C ⥤ ThinSkeleton D`. -/
@[simps]
def map (F : C ⥤ D) : ThinSkeleton C ⥤ ThinSkeleton D where
  obj := Quotient.map F.obj fun _ _ ⟨hX⟩ => ⟨F.mapIso hX⟩
  map {X} {Y} := Quotient.recOnSubsingleton₂ X Y fun _ _ k => homOfLE (k.le.elim fun t => ⟨F.map t⟩)

theorem comp_toThinSkeleton (F : C ⥤ D) : F ⋙ toThinSkeleton D = toThinSkeleton C ⋙ map F :=
  rfl

/-- Given a natural transformation `F₁ ⟶ F₂`, induce a natural transformation `map F₁ ⟶ map F₂`. -/
def mapNatTrans {F₁ F₂ : C ⥤ D} (k : F₁ ⟶ F₂) : map F₁ ⟶ map F₂ where
  app X := Quotient.recOnSubsingleton X fun x => ⟨⟨⟨k.app x⟩⟩⟩

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
          => Quotient.recOnSubsingleton₂ y₁ y₂ fun _ _ hY =>
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

variable (C)

section

variable [Quiver.IsThin C]

instance toThinSkeleton_faithful : (toThinSkeleton C).Faithful where

/-- Use `Quotient.out` to create a functor out of the thin skeleton. -/
@[simps]
noncomputable def fromThinSkeleton : ThinSkeleton C ⥤ C where
  obj := Quotient.out
  map {x} {y} :=
    Quotient.recOnSubsingleton₂ x y fun X Y f =>
      (Nonempty.some (Quotient.mk_out X)).hom ≫ f.le.some ≫ (Nonempty.some (Quotient.mk_out Y)).inv

/-- The equivalence between the thin skeleton and the category itself. -/
noncomputable def equivalence : ThinSkeleton C ≌ C where
  functor := fromThinSkeleton C
  inverse := toThinSkeleton C
  counitIso := NatIso.ofComponents fun X => Nonempty.some (Quotient.mk_out X)
  unitIso := NatIso.ofComponents fun x => Quotient.recOnSubsingleton x fun X =>
    eqToIso (Quotient.sound ⟨(Nonempty.some (Quotient.mk_out X)).symm⟩)

noncomputable instance fromThinSkeleton_isEquivalence : (fromThinSkeleton C).IsEquivalence :=
  (equivalence C).isEquivalence_functor

variable {C}

theorem equiv_of_both_ways {X Y : C} (f : X ⟶ Y) (g : Y ⟶ X) : X ≈ Y :=
  ⟨iso_of_both_ways f g⟩

instance thinSkeletonPartialOrder : PartialOrder (ThinSkeleton C) :=
  { CategoryTheory.ThinSkeleton.preorder C with
    le_antisymm :=
      Quotient.ind₂
        (by
          rintro _ _ ⟨f⟩ ⟨g⟩
          apply Quotient.sound (equiv_of_both_ways f g)) }

theorem skeletal : Skeletal (ThinSkeleton C) := fun X Y =>
  Quotient.inductionOn₂ X Y fun _ _ h => h.elim fun i => i.1.le.antisymm i.2.le

theorem map_comp_eq (F : E ⥤ D) (G : D ⥤ C) : map (F ⋙ G) = map F ⋙ map G :=
  Functor.eq_of_iso skeletal <|
    NatIso.ofComponents fun X => Quotient.recOnSubsingleton X fun _ => Iso.refl _

theorem map_id_eq : map (𝟭 C) = 𝟭 (ThinSkeleton C) :=
  Functor.eq_of_iso skeletal <|
    NatIso.ofComponents fun X => Quotient.recOnSubsingleton X fun _ => Iso.refl _

theorem map_iso_eq {F₁ F₂ : D ⥤ C} (h : F₁ ≅ F₂) : map F₁ = map F₂ :=
  Functor.eq_of_iso skeletal
    { hom := mapNatTrans h.hom
      inv := mapNatTrans h.inv }

/-- `fromThinSkeleton C` exhibits the thin skeleton as a skeleton. -/
lemma thinSkeleton_isSkeleton : IsSkeletonOf C (ThinSkeleton C) (fromThinSkeleton C) where
  skel := skeletal

instance isSkeletonOfInhabited :
    Inhabited (IsSkeletonOf C (ThinSkeleton C) (fromThinSkeleton C)) :=
  ⟨thinSkeleton_isSkeleton⟩

end

variable {C}

/-- An adjunction between thin categories gives an adjunction between their thin skeletons. -/
def lowerAdjunction (R : D ⥤ C) (L : C ⥤ D) (h : L ⊣ R) :
    ThinSkeleton.map L ⊣ ThinSkeleton.map R where
  unit :=
    { app := fun X => by
        letI := isIsomorphicSetoid C
        exact Quotient.recOnSubsingleton X fun x => homOfLE ⟨h.unit.app x⟩ }
      -- TODO: make quotient.rec_on_subsingleton' so the letI isn't needed
  counit :=
    { app := fun X => by
        letI := isIsomorphicSetoid D
        exact Quotient.recOnSubsingleton X fun x => homOfLE ⟨h.counit.app x⟩ }

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

end

end CategoryTheory
```
