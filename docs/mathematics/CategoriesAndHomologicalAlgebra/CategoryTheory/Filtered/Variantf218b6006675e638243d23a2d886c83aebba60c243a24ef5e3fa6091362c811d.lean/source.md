# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Filtered.Variantf218b6006675e638243d23a2d886c83aebba60c243a24ef5e3fa6091362c811d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `26fa8d03e5f044c964c3d58e434ecba4afcf7a80` · SHA-256 `f218b6006675e638243d23a2d886c83aebba60c243a24ef5e3fa6091362c811d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
/-
Copyright (c) 2019 Reid Barton. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Reid Barton, Scott Morrison
-/
import Mathlib.CategoryTheory.FinCategory
import Mathlib.CategoryTheory.Limits.Cones
import Mathlib.CategoryTheory.Adjunction.Basic
import Mathlib.CategoryTheory.Category.Preorder
import Mathlib.CategoryTheory.Category.ULift

#align_import category_theory.filtered from "leanprover-community/mathlib"@"14e80e85cbca5872a329fbfd3d1f3fd64e306934"

/-!
# Filtered categories

A category is filtered if every finite diagram admits a cocone.
We give a simple characterisation of this condition as
1. for every pair of objects there exists another object "to the right",
2. for every pair of parallel morphisms there exists a morphism to the right so the compositions
   are equal, and
3. there exists some object.

Filtered colimits are often better behaved than arbitrary colimits.
See `CategoryTheory/Limits/Types` for some details.

Filtered categories are nice because colimits indexed by filtered categories tend to be
easier to describe than general colimits (and more often preserved by functors).

In this file we show that any functor from a finite category to a filtered category admits a cocone:
* `cocone_nonempty [FinCategory J] [IsFiltered C] (F : J ⥤ C) : Nonempty (Cocone F)`
More generally,
for any finite collection of objects and morphisms between them in a filtered category
(even if not closed under composition) there exists some object `Z` receiving maps from all of them,
so that all the triangles (one edge from the finite set, two from morphisms to `Z`) commute.
This formulation is often more useful in practice and is available via `sup_exists`,
which takes a finset of objects, and an indexed family (indexed by source and target)
of finsets of morphisms.

Furthermore, we give special support for two diagram categories: The `bowtie` and the `tulip`.
This is because these shapes show up in the proofs that forgetful functors of algebraic categories
(e.g. `MonCat`, `CommRingCat`, ...) preserve filtered colimits.

All of the above API, except for the `bowtie` and the `tulip`, is also provided for cofiltered
categories.

## See also
In `CategoryTheory.Limits.FilteredColimitCommutesFiniteLimit` we show that filtered colimits
commute with finite limits.

-/


open Function

-- declare the `v`'s first; see `CategoryTheory.Category` for an explanation
universe w v v₁ u u₁ u₂

namespace CategoryTheory

variable (C : Type u) [Category.{v} C]

/-- A category `IsFilteredOrEmpty` if
1. for every pair of objects there exists another object "to the right", and
2. for every pair of parallel morphisms there exists a morphism to the right so the compositions
   are equal.
-/
class IsFilteredOrEmpty : Prop where
  /-- for every pair of objects there exists another object "to the right" -/
  cocone_objs : ∀ X Y : C, ∃ (Z : _) (_ : X ⟶ Z) (_ : Y ⟶ Z), True
  /-- for every pair of parallel morphisms there exists a morphism to the right
    so the compositions are equal -/
  cocone_maps : ∀ ⦃X Y : C⦄ (f g : X ⟶ Y), ∃ (Z : _) (h : Y ⟶ Z), f ≫ h = g ≫ h
#align category_theory.is_filtered_or_empty CategoryTheory.IsFilteredOrEmpty

/-- A category `IsFiltered` if
1. for every pair of objects there exists another object "to the right",
2. for every pair of parallel morphisms there exists a morphism to the right so the compositions
   are equal, and
3. there exists some object.

See <https://stacks.math.columbia.edu/tag/002V>. (They also define a diagram being filtered.)
-/
class IsFiltered extends IsFilteredOrEmpty C : Prop where
  /-- a filtered category must be non empty -/
  [Nonempty : Nonempty C]
#align category_theory.is_filtered CategoryTheory.IsFiltered

instance (priority := 100) isFilteredOrEmpty_of_semilatticeSup (α : Type u) [SemilatticeSup α] :
    IsFilteredOrEmpty α
    where
  cocone_objs X Y := ⟨X ⊔ Y, homOfLE le_sup_left, homOfLE le_sup_right, trivial⟩
  cocone_maps X Y f g := ⟨Y, 𝟙 _, by
    apply ULift.ext
    apply Subsingleton.elim⟩
#align category_theory.is_filtered_or_empty_of_semilattice_sup CategoryTheory.isFilteredOrEmpty_of_semilatticeSup

instance (priority := 100) isFiltered_of_semilatticeSup_nonempty (α : Type u) [SemilatticeSup α]
    [Nonempty α] : IsFiltered α where
#align category_theory.is_filtered_of_semilattice_sup_nonempty CategoryTheory.isFiltered_of_semilatticeSup_nonempty

instance (priority := 100) isFilteredOrEmpty_of_directed_le (α : Type u) [Preorder α]
    [IsDirected α (· ≤ ·)] : IsFilteredOrEmpty α where
  cocone_objs X Y :=
    let ⟨Z, h1, h2⟩ := exists_ge_ge X Y
    ⟨Z, homOfLE h1, homOfLE h2, trivial⟩
  cocone_maps X Y f g := ⟨Y, 𝟙 _, by
    apply ULift.ext
    apply Subsingleton.elim⟩
#align category_theory.is_filtered_or_empty_of_directed_le CategoryTheory.isFilteredOrEmpty_of_directed_le

instance (priority := 100) isFiltered_of_directed_le_nonempty (α : Type u) [Preorder α]
    [IsDirected α (· ≤ ·)] [Nonempty α] : IsFiltered α where
#align category_theory.is_filtered_of_directed_le_nonempty CategoryTheory.isFiltered_of_directed_le_nonempty

-- Sanity checks
example (α : Type u) [SemilatticeSup α] [OrderBot α] : IsFiltered α := by infer_instance

example (α : Type u) [SemilatticeSup α] [OrderTop α] : IsFiltered α := by infer_instance

instance : IsFiltered (Discrete PUnit) where
  cocone_objs X Y := ⟨⟨PUnit.unit⟩, ⟨⟨by trivial⟩⟩, ⟨⟨Subsingleton.elim _ _⟩⟩, trivial⟩
  cocone_maps X Y f g := ⟨⟨PUnit.unit⟩, ⟨⟨by trivial⟩⟩, by
    apply ULift.ext
    apply Subsingleton.elim⟩
  Nonempty := ⟨⟨PUnit.unit⟩⟩

namespace IsFiltered

section AllowEmpty

variable {C}
variable [IsFilteredOrEmpty C]

-- porting note: the following definitions were removed because the names are invalid,
-- direct references to `IsFilteredOrEmpty` have been added instead
--
-- theorem cocone_objs : ∀ X Y : C, ∃ (Z : _) (f : X ⟶ Z) (g : Y ⟶ Z), True :=
--  IsFilteredOrEmpty.cocone_objs
-- #align category_theory.is_filtered.cocone_objs CategoryTheory.IsFiltered.cocone_objs
--
--theorem cocone_maps : ∀ ⦃X Y : C⦄ (f g : X ⟶ Y), ∃ (Z : _) (h : Y ⟶ Z), f ≫ h = g ≫ h :=
--  IsFilteredOrEmpty.cocone_maps
--#align category_theory.is_filtered.cocone_maps CategoryTheory.IsFiltered.cocone_maps

/-- `max j j'` is an arbitrary choice of object to the right of both `j` and `j'`,
whose existence is ensured by `IsFiltered`.
-/
noncomputable def max (j j' : C) : C :=
  (IsFilteredOrEmpty.cocone_objs j j').choose
#align category_theory.is_filtered.max CategoryTheory.IsFiltered.max

/-- `leftToMax j j'` is an arbitrary choice of morphism from `j` to `max j j'`,
whose existence is ensured by `IsFiltered`.
-/
noncomputable def leftToMax (j j' : C) : j ⟶ max j j' :=
  (IsFilteredOrEmpty.cocone_objs j j').choose_spec.choose
#align category_theory.is_filtered.left_to_max CategoryTheory.IsFiltered.leftToMax

/-- `rightToMax j j'` is an arbitrary choice of morphism from `j'` to `max j j'`,
whose existence is ensured by `IsFiltered`.
-/
noncomputable def rightToMax (j j' : C) : j' ⟶ max j j' :=
  (IsFilteredOrEmpty.cocone_objs j j').choose_spec.choose_spec.choose
#align category_theory.is_filtered.right_to_max CategoryTheory.IsFiltered.rightToMax

/-- `coeq f f'`, for morphisms `f f' : j ⟶ j'`, is an arbitrary choice of object
which admits a morphism `coeqHom f f' : j' ⟶ coeq f f'` such that
`coeq_condition : f ≫ coeqHom f f' = f' ≫ coeqHom f f'`.
Its existence is ensured by `IsFiltered`.
-/
noncomputable def coeq {j j' : C} (f f' : j ⟶ j') : C :=
  (IsFilteredOrEmpty.cocone_maps f f').choose
#align category_theory.is_filtered.coeq CategoryTheory.IsFiltered.coeq

/-- `coeqHom f f'`, for morphisms `f f' : j ⟶ j'`, is an arbitrary choice of morphism
`coeqHom f f' : j' ⟶ coeq f f'` such that
`coeq_condition : f ≫ coeqHom f f' = f' ≫ coeqHom f f'`.
Its existence is ensured by `IsFiltered`.
-/
noncomputable def coeqHom {j j' : C} (f f' : j ⟶ j') : j' ⟶ coeq f f' :=
  (IsFilteredOrEmpty.cocone_maps f f').choose_spec.choose
#align category_theory.is_filtered.coeq_hom CategoryTheory.IsFiltered.coeqHom

-- porting note: the simp tag has been removed as the linter complained
/-- `coeq_condition f f'`, for morphisms `f f' : j ⟶ j'`, is the proof that
`f ≫ coeqHom f f' = f' ≫ coeqHom f f'`.
-/
@[reassoc]
theorem coeq_condition {j j' : C} (f f' : j ⟶ j') : f ≫ coeqHom f f' = f' ≫ coeqHom f f' :=
  (IsFilteredOrEmpty.cocone_maps f f').choose_spec.choose_spec
#align category_theory.is_filtered.coeq_condition CategoryTheory.IsFiltered.coeq_condition

end AllowEmpty

end IsFiltered

namespace IsFilteredOrEmpty
open IsFiltered

variable {C}
variable [IsFilteredOrEmpty C]
variable {D : Type u₁} [Category.{v₁} D]

/-- If `C` is filtered or emtpy, and we have a functor `R : C ⥤ D` with a left adjoint, then `D` is
filtered or empty.
-/
theorem of_right_adjoint {L : D ⥤ C} {R : C ⥤ D} (h : L ⊣ R) : IsFilteredOrEmpty D :=
  { cocone_objs := fun X Y =>
      ⟨_, h.homEquiv _ _ (leftToMax _ _), h.homEquiv _ _ (rightToMax _ _), ⟨⟩⟩
    cocone_maps := fun X Y f g =>
      ⟨_, h.homEquiv _ _ (coeqHom _ _), by
        rw [← h.homEquiv_naturality_left, ← h.homEquiv_naturality_left, coeq_condition]⟩ }

/-- If `C` is filtered or empty, and we have a right adjoint functor `R : C ⥤ D`, then `D` is
filtered or empty. -/
theorem of_isRightAdjoint (R : C ⥤ D) [IsRightAdjoint R] : IsFilteredOrEmpty D :=
  of_right_adjoint (Adjunction.ofRightAdjoint R)

/-- Being filtered or empty is preserved by equivalence of categories. -/
theorem of_equivalence (h : C ≌ D) : IsFilteredOrEmpty D :=
  of_right_adjoint h.symm.toAdjunction

end IsFilteredOrEmpty

namespace IsFiltered

section Nonempty

open CategoryTheory.Limits

variable {C}
variable [IsFiltered C]

/-- Any finite collection of objects in a filtered category has an object "to the right".
-/
theorem sup_objs_exists (O : Finset C) : ∃ S : C, ∀ {X}, X ∈ O → _root_.Nonempty (X ⟶ S) := by
  classical
  induction' O using Finset.induction with X O' nm h
  · exact ⟨Classical.choice IsFiltered.Nonempty, by intro; simp⟩
  · obtain ⟨S', w'⟩ := h
    use max X S'
    rintro Y mY
    obtain rfl | h := eq_or_ne Y X
    · exact ⟨leftToMax _ _⟩
    · exact ⟨(w' (Finset.mem_of_mem_insert_of_ne mY h)).some ≫ rightToMax _ _⟩
#align category_theory.is_filtered.sup_objs_exists CategoryTheory.IsFiltered.sup_objs_exists

variable (O : Finset C) (H : Finset (Σ' (X Y : C) (_ : X ∈ O) (_ : Y ∈ O), X ⟶ Y))

/-- Given any `Finset` of objects `{X, ...}` and
indexed collection of `Finset`s of morphisms `{f, ...}` in `C`,
there exists an object `S`, with a morphism `T X : X ⟶ S` from each `X`,
such that the triangles commute: `f ≫ T Y = T X`, for `f : X ⟶ Y` in the `Finset`.
-/
theorem sup_exists :
    ∃ (S : C) (T : ∀ {X : C}, X ∈ O → (X ⟶ S)),
      ∀ {X Y : C} (mX : X ∈ O) (mY : Y ∈ O) {f : X ⟶ Y},
        (⟨X, Y, mX, mY, f⟩ : Σ' (X Y : C) (_ : X ∈ O) (_ : Y ∈ O), X ⟶ Y) ∈ H →
          f ≫ T mY = T mX := by
  classical
  induction' H using Finset.induction with h' H' nmf h''
  · obtain ⟨S, f⟩ := sup_objs_exists O
    refine' ⟨S, fun mX => (f mX).some, by rintro - - - - - ⟨⟩⟩
  · obtain ⟨X, Y, mX, mY, f⟩ := h'
    obtain ⟨S', T', w'⟩ := h''
    refine' ⟨coeq (f ≫ T' mY) (T' mX), fun mZ => T' mZ ≫ coeqHom (f ≫ T' mY) (T' mX), _⟩
    intro X' Y' mX' mY' f' mf'
    rw [← Category.assoc]
    by_cases h : X = X' ∧ Y = Y'
    · rcases h with ⟨rfl, rfl⟩
      by_cases hf : f = f'
      · subst hf
        apply coeq_condition
      · rw [@w' _ _ mX mY f']
        simp only [Finset.mem_insert, PSigma.mk.injEq, heq_eq_eq, true_and] at mf'
        rcases mf' with mf' | mf'
        · exfalso
          exact hf mf'.symm
        · exact mf'
    · rw [@w' _ _ mX' mY' f' _]
      apply Finset.mem_of_mem_insert_of_ne mf'
      contrapose! h
      obtain ⟨rfl, h⟩ := h
      trivial
#align category_theory.is_filtered.sup_exists CategoryTheory.IsFiltered.sup_exists

/-- An arbitrary choice of object "to the right"
of a finite collection of objects `O` and morphisms `H`,
making all the triangles commute.
-/
noncomputable def sup : C :=
  (sup_exists O H).choose
#align category_theory.is_filtered.sup CategoryTheory.IsFiltered.sup

/-- The morphisms to `sup O H`.
-/
noncomputable def toSup {X : C} (m : X ∈ O) : X ⟶ sup O H :=
  (sup_exists O H).choose_spec.choose m
#align category_theory.is_filtered.to_sup CategoryTheory.IsFiltered.toSup

/-- The triangles of consisting of a morphism in `H` and the maps to `sup O H` commute.
-/
theorem toSup_commutes {X Y : C} (mX : X ∈ O) (mY : Y ∈ O) {f : X ⟶ Y}
    (mf : (⟨X, Y, mX, mY, f⟩ : Σ' (X Y : C) (_ : X ∈ O) (_ : Y ∈ O), X ⟶ Y) ∈ H) :
    f ≫ toSup O H mY = toSup O H mX :=
  (sup_exists O H).choose_spec.choose_spec mX mY mf
#align category_theory.is_filtered.to_sup_commutes CategoryTheory.IsFiltered.toSup_commutes

variable {J : Type v} [SmallCategory J] [FinCategory J]

/-- If we have `IsFiltered C`, then for any functor `F : J ⥤ C` with `FinCategory J`,
there exists a cocone over `F`.
-/
theorem cocone_nonempty (F : J ⥤ C) : _root_.Nonempty (Cocone F) := by
  classical
  let O := Finset.univ.image F.obj
  let H : Finset (Σ' (X Y : C) (_ : X ∈ O) (_ : Y ∈ O), X ⟶ Y) :=
    Finset.univ.biUnion   fun X : J =>
      Finset.univ.biUnion fun Y : J =>
        Finset.univ.image fun f : X ⟶ Y => ⟨F.obj X, F.obj Y, by simp, by simp, F.map f⟩
  obtain ⟨Z, f, w⟩ := sup_exists O H
  refine' ⟨⟨Z, ⟨fun X => f (by simp), _⟩⟩⟩
  intro j j' g
  dsimp
  simp only [Category.comp_id]
  apply w
  simp only [Finset.mem_biUnion, Finset.mem_univ, Finset.mem_image, PSigma.mk.injEq,
    true_and, exists_and_left]
  exact ⟨j, rfl, j', g, by simp⟩
#align category_theory.is_filtered.cocone_nonempty CategoryTheory.IsFiltered.cocone_nonempty

/-- An arbitrary choice of cocone over `F : J ⥤ C`, for `FinCategory J` and `IsFiltered C`.
-/
noncomputable def cocone (F : J ⥤ C) : Cocone F :=
  (cocone_nonempty F).some
#align category_theory.is_filtered.cocone CategoryTheory.IsFiltered.cocone

variable {D : Type u₁} [Category.{v₁} D]

/-- If `C` is filtered, and we have a functor `R : C ⥤ D` with a left adjoint, then `D` is filtered.
-/
theorem of_right_adjoint {L : D ⥤ C} {R : C ⥤ D} (h : L ⊣ R) : IsFiltered D :=
  { IsFilteredOrEmpty.of_right_adjoint h with
    Nonempty := IsFiltered.Nonempty.map R.obj }
#align category_theory.is_filtered.of_right_adjoint CategoryTheory.IsFiltered.of_right_adjoint

/-- If `C` is filtered, and we have a right adjoint functor `R : C ⥤ D`, then `D` is filtered. -/
theorem of_isRightAdjoint (R : C ⥤ D) [IsRightAdjoint R] : IsFiltered D :=
  of_right_adjoint (Adjunction.ofRightAdjoint R)
#align category_theory.is_filtered.of_is_right_adjoint CategoryTheory.IsFiltered.of_isRightAdjoint

/-- Being filtered is preserved by equivalence of categories. -/
theorem of_equivalence (h : C ≌ D) : IsFiltered D :=
  of_right_adjoint h.symm.toAdjunction
#align category_theory.is_filtered.of_equivalence CategoryTheory.IsFiltered.of_equivalence

end Nonempty

section SpecialShapes

variable {C}
variable [IsFilteredOrEmpty C]

/-- `max₃ j₁ j₂ j₃` is an arbitrary choice of object to the right of `j₁`, `j₂` and `j₃`,
whose existence is ensured by `IsFiltered`.
-/
noncomputable def max₃ (j₁ j₂ j₃ : C) : C :=
  max (max j₁ j₂) j₃
#align category_theory.is_filtered.max₃ CategoryTheory.IsFiltered.max₃

/-- `firstToMax₃ j₁ j₂ j₃` is an arbitrary choice of morphism from `j₁` to `max₃ j₁ j₂ j₃`,
whose existence is ensured by `IsFiltered`.
-/
noncomputable def firstToMax₃ (j₁ j₂ j₃ : C) : j₁ ⟶ max₃ j₁ j₂ j₃ :=
  leftToMax j₁ j₂ ≫ leftToMax (max j₁ j₂) j₃
#align category_theory.is_filtered.first_to_max₃ CategoryTheory.IsFiltered.firstToMax₃

/-- `secondToMax₃ j₁ j₂ j₃` is an arbitrary choice of morphism from `j₂` to `max₃ j₁ j₂ j₃`,
whose existence is ensured by `IsFiltered`.
-/
noncomputable def secondToMax₃ (j₁ j₂ j₃ : C) : j₂ ⟶ max₃ j₁ j₂ j₃ :=
  rightToMax j₁ j₂ ≫ leftToMax (max j₁ j₂) j₃
#align category_theory.is_filtered.second_to_max₃ CategoryTheory.IsFiltered.secondToMax₃

/-- `thirdToMax₃ j₁ j₂ j₃` is an arbitrary choice of morphism from `j₃` to `max₃ j₁ j₂ j₃`,
whose existence is ensured by `IsFiltered`.
-/
noncomputable def thirdToMax₃ (j₁ j₂ j₃ : C) : j₃ ⟶ max₃ j₁ j₂ j₃ :=
  rightToMax (max j₁ j₂) j₃
#align category_theory.is_filtered.third_to_max₃ CategoryTheory.IsFiltered.thirdToMax₃

/-- `coeq₃ f g h`, for morphisms `f g h : j₁ ⟶ j₂`, is an arbitrary choice of object
which admits a morphism `coeq₃Hom f g h : j₂ ⟶ coeq₃ f g h` such that
`coeq₃_condition₁`, `coeq₃_condition₂` and `coeq₃_condition₃` are satisfied.
Its existence is ensured by `IsFiltered`.
-/
noncomputable def coeq₃ {j₁ j₂ : C} (f g h : j₁ ⟶ j₂) : C :=
  coeq (coeqHom f g ≫ leftToMax (coeq f g) (coeq g h))
    (coeqHom g h ≫ rightToMax (coeq f g) (coeq g h))
#align category_theory.is_filtered.coeq₃ CategoryTheory.IsFiltered.coeq₃

/-- `coeq₃Hom f g h`, for morphisms `f g h : j₁ ⟶ j₂`, is an arbitrary choice of morphism
`j₂ ⟶ coeq₃ f g h` such that `coeq₃_condition₁`, `coeq₃_condition₂` and `coeq₃_condition₃`
are satisfied. Its existence is ensured by `IsFiltered`.
-/
noncomputable def coeq₃Hom {j₁ j₂ : C} (f g h : j₁ ⟶ j₂) : j₂ ⟶ coeq₃ f g h :=
  coeqHom f g ≫
    leftToMax (coeq f g) (coeq g h) ≫
      coeqHom (coeqHom f g ≫ leftToMax (coeq f g) (coeq g h))
        (coeqHom g h ≫ rightToMax (coeq f g) (coeq g h))
#align category_theory.is_filtered.coeq₃_hom CategoryTheory.IsFiltered.coeq₃Hom

theorem coeq₃_condition₁ {j₁ j₂ : C} (f g h : j₁ ⟶ j₂) : f ≫ coeq₃Hom f g h = g ≫ coeq₃Hom f g h :=
  by simp only [coeq₃Hom, ← Category.assoc, coeq_condition f g]
#align category_theory.is_filtered.coeq₃_condition₁ CategoryTheory.IsFiltered.coeq₃_condition₁

theorem coeq₃_condition₂ {j₁ j₂ : C} (f g h : j₁ ⟶ j₂) :
    g ≫ coeq₃Hom f g h = h ≫ coeq₃Hom f g h := by
  dsimp [coeq₃Hom]
  slice_lhs 2 4 => rw [← Category.assoc, coeq_condition _ _]
  slice_rhs 2 4 => rw [← Category.assoc, coeq_condition _ _]
  slice_lhs 1 3 => rw [← Category.assoc, coeq_condition _ _]
  simp only [Category.assoc]
#align category_theory.is_filtered.coeq₃_condition₂ CategoryTheory.IsFiltered.coeq₃_condition₂

theorem coeq₃_condition₃ {j₁ j₂ : C} (f g h : j₁ ⟶ j₂) : f ≫ coeq₃Hom f g h = h ≫ coeq₃Hom f g h :=
  Eq.trans (coeq₃_condition₁ f g h) (coeq₃_condition₂ f g h)
#align category_theory.is_filtered.coeq₃_condition₃ CategoryTheory.IsFiltered.coeq₃_condition₃

/-- For every span `j ⟵ i ⟶ j'`, there
   exists a cocone `j ⟶ k ⟵ j'` such that the square commutes. -/
theorem span {i j j' : C} (f : i ⟶ j) (f' : i ⟶ j') :
    ∃ (k : C) (g : j ⟶ k) (g' : j' ⟶ k), f ≫ g = f' ≫ g' :=
  let ⟨K, G, G', _⟩ := IsFilteredOrEmpty.cocone_objs j j'
  let ⟨k, e, he⟩ := IsFilteredOrEmpty.cocone_maps (f ≫ G) (f' ≫ G')
  ⟨k, G ≫ e, G' ≫ e, by simpa only [← Category.assoc] ⟩
#align category_theory.is_filtered.span CategoryTheory.IsFiltered.span

/-- Given a "bowtie" of morphisms
```
 j₁   j₂
 |\  /|
 | \/ |
 | /\ |
 |/  \∣
 vv  vv
 k₁  k₂
```
in a filtered category, we can construct an object `s` and two morphisms from `k₁` and `k₂` to `s`,
making the resulting squares commute.
-/
theorem bowtie {j₁ j₂ k₁ k₂ : C} (f₁ : j₁ ⟶ k₁) (g₁ : j₁ ⟶ k₂) (f₂ : j₂ ⟶ k₁) (g₂ : j₂ ⟶ k₂) :
    ∃ (s : C) (α : k₁ ⟶ s) (β : k₂ ⟶ s), f₁ ≫ α = g₁ ≫ β ∧ f₂ ≫ α = g₂ ≫ β := by
  obtain ⟨t, k₁t, k₂t, ht⟩ := span f₁ g₁
  obtain ⟨s, ts, hs⟩ := IsFilteredOrEmpty.cocone_maps (f₂ ≫ k₁t) (g₂ ≫ k₂t)
  simp_rw [Category.assoc] at hs
  exact ⟨s, k₁t ≫ ts, k₂t ≫ ts, by simp only [←Category.assoc, ht], hs⟩
#align category_theory.is_filtered.bowtie CategoryTheory.IsFiltered.bowtie

/-- Given a "tulip" of morphisms
```
 j₁    j₂    j₃
 |\   / \   / |
 | \ /   \ /  |
 |  vv    vv  |
 \  k₁    k₂ /
  \         /
   \       /
    \     /
     \   /
      v v
       l
```
in a filtered category, we can construct an object `s` and three morphisms from `k₁`, `k₂` and `l`
to `s`, making the resulting squares commute.
-/
theorem tulip {j₁ j₂ j₃ k₁ k₂ l : C} (f₁ : j₁ ⟶ k₁) (f₂ : j₂ ⟶ k₁) (f₃ : j₂ ⟶ k₂) (f₄ : j₃ ⟶ k₂)
    (g₁ : j₁ ⟶ l) (g₂ : j₃ ⟶ l) :
    ∃ (s : C) (α : k₁ ⟶ s) (β : l ⟶ s) (γ : k₂ ⟶ s),
      f₁ ≫ α = g₁ ≫ β ∧ f₂ ≫ α = f₃ ≫ γ ∧ f₄ ≫ γ = g₂ ≫ β := by
  obtain ⟨l', k₁l, k₂l, hl⟩ := span f₂ f₃
  obtain ⟨s, ls, l's, hs₁, hs₂⟩ := bowtie g₁ (f₁ ≫ k₁l) g₂ (f₄ ≫ k₂l)
  refine' ⟨s, k₁l ≫ l's, ls, k₂l ≫ l's, _, by simp only [←Category.assoc, hl], _⟩ <;>
    simp only [hs₁, hs₂, Category.assoc]
#align category_theory.is_filtered.tulip CategoryTheory.IsFiltered.tulip

end SpecialShapes

end IsFiltered

/-- A category `IsCofilteredOrEmpty` if
1. for every pair of objects there exists another object "to the left", and
2. for every pair of parallel morphisms there exists a morphism to the left so the compositions
   are equal.
-/
class IsCofilteredOrEmpty : Prop where
  /-- for every pair of objects there exists another object "to the left" -/
  cone_objs : ∀ X Y : C, ∃ (W : _) (_ : W ⟶ X) (_ : W ⟶ Y), True
  /-- for every pair of parallel morphisms there exists a morphism to the left
    so the compositions are equal -/
  cone_maps : ∀ ⦃X Y : C⦄ (f g : X ⟶ Y), ∃ (W : _) (h : W ⟶ X), h ≫ f = h ≫ g
#align category_theory.is_cofiltered_or_empty CategoryTheory.IsCofilteredOrEmpty

/-- A category `IsCofiltered` if
1. for every pair of objects there exists another object "to the left",
2. for every pair of parallel morphisms there exists a morphism to the left so the compositions
   are equal, and
3. there exists some object.

See <https://stacks.math.columbia.edu/tag/04AZ>.
-/
class IsCofiltered extends IsCofilteredOrEmpty C : Prop where
  /-- a cofiltered category must be non empty -/
  [Nonempty : Nonempty C]
#align category_theory.is_cofiltered CategoryTheory.IsCofiltered

instance (priority := 100) isCofilteredOrEmpty_of_semilatticeInf (α : Type u) [SemilatticeInf α] :
    IsCofilteredOrEmpty α where
  cone_objs X Y := ⟨X ⊓ Y, homOfLE inf_le_left, homOfLE inf_le_right, trivial⟩
  cone_maps X Y f g := ⟨X, 𝟙 _, by
    apply ULift.ext
    apply Subsingleton.elim⟩
#align category_theory.is_cofiltered_or_empty_of_semilattice_inf CategoryTheory.isCofilteredOrEmpty_of_semilatticeInf

instance (priority := 100) isCofiltered_of_semilatticeInf_nonempty (α : Type u) [SemilatticeInf α]
    [Nonempty α] : IsCofiltered α where
#align category_theory.is_cofiltered_of_semilattice_inf_nonempty CategoryTheory.isCofiltered_of_semilatticeInf_nonempty

instance (priority := 100) isCofilteredOrEmpty_of_directed_ge (α : Type u) [Preorder α]
    [IsDirected α (· ≥ ·)] : IsCofilteredOrEmpty α where
  cone_objs X Y :=
    let ⟨Z, hX, hY⟩ := exists_le_le X Y
    ⟨Z, homOfLE hX, homOfLE hY, trivial⟩
  cone_maps X Y f g := ⟨X, 𝟙 _, by
    apply ULift.ext
    apply Subsingleton.elim⟩
#align category_theory.is_cofiltered_or_empty_of_directed_ge CategoryTheory.isCofilteredOrEmpty_of_directed_ge

instance (priority := 100) isCofiltered_of_directed_ge_nonempty (α : Type u) [Preorder α]
    [IsDirected α (· ≥ ·)] [Nonempty α] : IsCofiltered α where
#align category_theory.is_cofiltered_of_directed_ge_nonempty CategoryTheory.isCofiltered_of_directed_ge_nonempty

-- Sanity checks
example (α : Type u) [SemilatticeInf α] [OrderBot α] : IsCofiltered α := by infer_instance

example (α : Type u) [SemilatticeInf α] [OrderTop α] : IsCofiltered α := by infer_instance

instance : IsCofiltered (Discrete PUnit) where
  cone_objs X Y := ⟨⟨PUnit.unit⟩, ⟨⟨by trivial⟩⟩, ⟨⟨Subsingleton.elim _ _⟩⟩, trivial⟩
  cone_maps X Y f g := ⟨⟨PUnit.unit⟩, ⟨⟨by trivial⟩⟩, by
    apply ULift.ext
    apply Subsingleton.elim⟩
  Nonempty := ⟨⟨PUnit.unit⟩⟩

namespace IsCofiltered

section AllowEmpty

variable {C}
variable [IsCofilteredOrEmpty C]

-- porting note: the following definitions were removed because the names are invalid,
-- direct references to `IsCofilteredOrEmpty` have been added instead
--
--theorem cone_objs : ∀ X Y : C, ∃ (W : _) (f : W ⟶ X) (g : W ⟶ Y), True :=
--  IsCofilteredOrEmpty.cone_objs
--#align category_theory.is_cofiltered.cone_objs CategoryTheory.IsCofiltered.cone_objs
--
--theorem cone_maps : ∀ ⦃X Y : C⦄ (f g : X ⟶ Y), ∃ (W : _) (h : W ⟶ X), h ≫ f = h ≫ g :=
--  IsCofilteredOrEmpty.cone_maps
--#align category_theory.is_cofiltered.cone_maps CategoryTheory.IsCofiltered.cone_maps

/-- `min j j'` is an arbitrary choice of object to the left of both `j` and `j'`,
whose existence is ensured by `IsCofiltered`.
-/
noncomputable def min (j j' : C) : C :=
  (IsCofilteredOrEmpty.cone_objs j j').choose
#align category_theory.is_cofiltered.min CategoryTheory.IsCofiltered.min

/-- `minToLeft j j'` is an arbitrary choice of morphism from `min j j'` to `j`,
whose existence is ensured by `IsCofiltered`.
-/
noncomputable def minToLeft (j j' : C) : min j j' ⟶ j :=
  (IsCofilteredOrEmpty.cone_objs j j').choose_spec.choose
#align category_theory.is_cofiltered.min_to_left CategoryTheory.IsCofiltered.minToLeft

/-- `minToRight j j'` is an arbitrary choice of morphism from `min j j'` to `j'`,
whose existence is ensured by `IsCofiltered`.
-/
noncomputable def minToRight (j j' : C) : min j j' ⟶ j' :=
  (IsCofilteredOrEmpty.cone_objs j j').choose_spec.choose_spec.choose
#align category_theory.is_cofiltered.min_to_right CategoryTheory.IsCofiltered.minToRight

/-- `eq f f'`, for morphisms `f f' : j ⟶ j'`, is an arbitrary choice of object
which admits a morphism `eqHom f f' : eq f f' ⟶ j` such that
`eq_condition : eqHom f f' ≫ f = eqHom f f' ≫ f'`.
Its existence is ensured by `IsCofiltered`.
-/
noncomputable def eq {j j' : C} (f f' : j ⟶ j') : C :=
  (IsCofilteredOrEmpty.cone_maps f f').choose
#align category_theory.is_cofiltered.eq CategoryTheory.IsCofiltered.eq

/-- `eqHom f f'`, for morphisms `f f' : j ⟶ j'`, is an arbitrary choice of morphism
`eqHom f f' : eq f f' ⟶ j` such that
`eq_condition : eqHom f f' ≫ f = eqHom f f' ≫ f'`.
Its existence is ensured by `IsCofiltered`.
-/
noncomputable def eqHom {j j' : C} (f f' : j ⟶ j') : eq f f' ⟶ j :=
  (IsCofilteredOrEmpty.cone_maps f f').choose_spec.choose
#align category_theory.is_cofiltered.eq_hom CategoryTheory.IsCofiltered.eqHom

-- porting note: the simp tag has been removed as the linter complained
/-- `eq_condition f f'`, for morphisms `f f' : j ⟶ j'`, is the proof that
`eqHom f f' ≫ f = eqHom f f' ≫ f'`.
-/
@[reassoc]
theorem eq_condition {j j' : C} (f f' : j ⟶ j') : eqHom f f' ≫ f = eqHom f f' ≫ f' :=
  (IsCofilteredOrEmpty.cone_maps f f').choose_spec.choose_spec
#align category_theory.is_cofiltered.eq_condition CategoryTheory.IsCofiltered.eq_condition

/-- For every cospan `j ⟶ i ⟵ j'`,
 there exists a cone `j ⟵ k ⟶ j'` such that the square commutes. -/
theorem cospan {i j j' : C} (f : j ⟶ i) (f' : j' ⟶ i) :
    ∃ (k : C) (g : k ⟶ j) (g' : k ⟶ j'), g ≫ f = g' ≫ f' :=
  let ⟨K, G, G', _⟩ := IsCofilteredOrEmpty.cone_objs j j'
  let ⟨k, e, he⟩ := IsCofilteredOrEmpty.cone_maps (G ≫ f) (G' ≫ f')
  ⟨k, e ≫ G, e ≫ G', by simpa only [Category.assoc] using he⟩
#align category_theory.is_cofiltered.cospan CategoryTheory.IsCofiltered.cospan

theorem _root_.CategoryTheory.Functor.ranges_directed (F : C ⥤ Type*) (j : C) :
    Directed (· ⊇ ·) fun f : Σ'i, i ⟶ j => Set.range (F.map f.2) := fun ⟨i, ij⟩ ⟨k, kj⟩ => by
  let ⟨l, li, lk, e⟩ := cospan ij kj
  refine' ⟨⟨l, lk ≫ kj⟩, e ▸ _, _⟩ <;> simp_rw [F.map_comp] <;> apply Set.range_comp_subset_range
#align category_theory.functor.ranges_directed CategoryTheory.Functor.ranges_directed

end AllowEmpty

end IsCofiltered

namespace IsCofilteredOrEmpty
open IsCofiltered

variable {C}
variable [IsCofilteredOrEmpty C]
variable {D : Type u₁} [Category.{v₁} D]

/-- If `C` is cofiltered or empty, and we have a functor `L : C ⥤ D` with a right adjoint,
then `D` is cofiltered or empty.
-/
theorem of_left_adjoint {L : C ⥤ D} {R : D ⥤ C} (h : L ⊣ R) : IsCofilteredOrEmpty D :=
  { cone_objs := fun X Y =>
      ⟨L.obj (min (R.obj X) (R.obj Y)), (h.homEquiv _ X).symm (minToLeft _ _),
        (h.homEquiv _ Y).symm (minToRight _ _), ⟨⟩⟩
    cone_maps := fun X Y f g =>
      ⟨L.obj (eq (R.map f) (R.map g)), (h.homEquiv _ _).symm (eqHom _ _), by
        rw [← h.homEquiv_naturality_right_symm, ← h.homEquiv_naturality_right_symm, eq_condition]⟩ }

/-- If `C` is cofiltered or empty, and we have a left adjoint functor `L : C ⥤ D`, then `D` is
cofiltered or empty. -/
theorem of_isLeftAdjoint (L : C ⥤ D) [IsLeftAdjoint L] : IsCofilteredOrEmpty D :=
  of_left_adjoint (Adjunction.ofLeftAdjoint L)

/-- Being cofiltered or empty is preserved by equivalence of categories. -/
theorem of_equivalence (h : C ≌ D) : IsCofilteredOrEmpty D :=
  of_left_adjoint h.toAdjunction

end IsCofilteredOrEmpty

namespace IsCofiltered

section Nonempty

open CategoryTheory.Limits

variable {C}
variable [IsCofiltered C]

/-- Any finite collection of objects in a cofiltered category has an object "to the left".
-/
theorem inf_objs_exists (O : Finset C) : ∃ S : C, ∀ {X}, X ∈ O → _root_.Nonempty (S ⟶ X) := by
  classical
  induction' O using Finset.induction with X O' nm h
  · exact ⟨Classical.choice IsCofiltered.Nonempty, by intro; simp⟩
  · obtain ⟨S', w'⟩ := h
    use min X S'
    rintro Y mY
    obtain rfl | h := eq_or_ne Y X
    · exact ⟨minToLeft _ _⟩
    · exact ⟨minToRight _ _ ≫ (w' (Finset.mem_of_mem_insert_of_ne mY h)).some⟩
#align category_theory.is_cofiltered.inf_objs_exists CategoryTheory.IsCofiltered.inf_objs_exists

variable (O : Finset C) (H : Finset (Σ' (X Y : C) (_ : X ∈ O) (_ : Y ∈ O), X ⟶ Y))

/-- Given any `Finset` of objects `{X, ...}` and
indexed collection of `Finset`s of morphisms `{f, ...}` in `C`,
there exists an object `S`, with a morphism `T X : S ⟶ X` from each `X`,
such that the triangles commute: `T X ≫ f = T Y`, for `f : X ⟶ Y` in the `Finset`.
-/
theorem inf_exists :
    ∃ (S : C) (T : ∀ {X : C}, X ∈ O → (S ⟶ X)),
      ∀ {X Y : C} (mX : X ∈ O) (mY : Y ∈ O) {f : X ⟶ Y},
        (⟨X, Y, mX, mY, f⟩ : Σ' (X Y : C) (_ : X ∈ O) (_ : Y ∈ O), X ⟶ Y) ∈ H →
          T mX ≫ f = T mY := by
  classical
  induction' H using Finset.induction with h' H' nmf h''
  · obtain ⟨S, f⟩ := inf_objs_exists O
    refine' ⟨S, fun mX => (f mX).some, by rintro - - - - - ⟨⟩⟩
  · obtain ⟨X, Y, mX, mY, f⟩ := h'
    obtain ⟨S', T', w'⟩ := h''
    refine' ⟨eq (T' mX ≫ f) (T' mY), fun mZ => eqHom (T' mX ≫ f) (T' mY) ≫ T' mZ, _⟩
    intro X' Y' mX' mY' f' mf'
    rw [Category.assoc]
    by_cases h : X = X' ∧ Y = Y'
    · rcases h with ⟨rfl, rfl⟩
      by_cases hf : f = f'
      · subst hf
        apply eq_condition
      · rw [@w' _ _ mX mY f']
        simp only [Finset.mem_insert, PSigma.mk.injEq, heq_eq_eq, true_and] at mf'
        rcases mf' with mf' | mf'
        · exfalso
          exact hf mf'.symm
        · exact mf'
    · rw [@w' _ _ mX' mY' f' _]
      apply Finset.mem_of_mem_insert_of_ne mf'
      contrapose! h
      obtain ⟨rfl, h⟩ := h
      trivial
#align category_theory.is_cofiltered.inf_exists CategoryTheory.IsCofiltered.inf_exists

/-- An arbitrary choice of object "to the left"
of a finite collection of objects `O` and morphisms `H`,
making all the triangles commute.
-/
noncomputable def inf : C :=
  (inf_exists O H).choose
#align category_theory.is_cofiltered.inf CategoryTheory.IsCofiltered.inf

/-- The morphisms from `inf O H`.
-/
noncomputable def infTo {X : C} (m : X ∈ O) : inf O H ⟶ X :=
  (inf_exists O H).choose_spec.choose m
#align category_theory.is_cofiltered.inf_to CategoryTheory.IsCofiltered.infTo

/-- The triangles consisting of a morphism in `H` and the maps from `inf O H` commute.
-/
theorem infTo_commutes {X Y : C} (mX : X ∈ O) (mY : Y ∈ O) {f : X ⟶ Y}
    (mf : (⟨X, Y, mX, mY, f⟩ : Σ' (X Y : C) (_ : X ∈ O) (_ : Y ∈ O), X ⟶ Y) ∈ H) :
    infTo O H mX ≫ f = infTo O H mY :=
  (inf_exists O H).choose_spec.choose_spec mX mY mf
#align category_theory.is_cofiltered.inf_to_commutes CategoryTheory.IsCofiltered.infTo_commutes

variable {J : Type w} [SmallCategory J] [FinCategory J]

/-- If we have `IsCofiltered C`, then for any functor `F : J ⥤ C` with `FinCategory J`,
there exists a cone over `F`.
-/
theorem cone_nonempty (F : J ⥤ C) : _root_.Nonempty (Cone F) := by
  classical
  let O := Finset.univ.image F.obj
  let H : Finset (Σ' (X Y : C) (_ : X ∈ O) (_ : Y ∈ O), X ⟶ Y) :=
    Finset.univ.biUnion fun X : J =>
      Finset.univ.biUnion fun Y : J =>
        Finset.univ.image fun f : X ⟶ Y => ⟨F.obj X, F.obj Y, by simp, by simp, F.map f⟩
  obtain ⟨Z, f, w⟩ := inf_exists O H
  refine' ⟨⟨Z, ⟨fun X => f (by simp), _⟩⟩⟩
  intro j j' g
  dsimp
  simp only [Category.id_comp]
  symm
  apply w
  simp only [Finset.mem_biUnion, Finset.mem_univ, Finset.mem_image,
    PSigma.mk.injEq, true_and, exists_and_left]
  exact ⟨j, rfl, j', g, by simp⟩
#align category_theory.is_cofiltered.cone_nonempty CategoryTheory.IsCofiltered.cone_nonempty

/-- An arbitrary choice of cone over `F : J ⥤ C`, for `FinCategory J` and `IsCofiltered C`.
-/
noncomputable def cone (F : J ⥤ C) : Cone F :=
  (cone_nonempty F).some
#align category_theory.is_cofiltered.cone CategoryTheory.IsCofiltered.cone

variable {D : Type u₁} [Category.{v₁} D]

/-- If `C` is cofiltered, and we have a functor `L : C ⥤ D` with a right adjoint,
then `D` is cofiltered.
-/
theorem of_left_adjoint {L : C ⥤ D} {R : D ⥤ C} (h : L ⊣ R) : IsCofiltered D :=
  { IsCofilteredOrEmpty.of_left_adjoint h with
    Nonempty := IsCofiltered.Nonempty.map L.obj }
#align category_theory.is_cofiltered.of_left_adjoint CategoryTheory.IsCofiltered.of_left_adjoint

/-- If `C` is cofiltered, and we have a left adjoint functor `L : C ⥤ D`, then `D` is cofiltered. -/
theorem of_isLeftAdjoint (L : C ⥤ D) [IsLeftAdjoint L] : IsCofiltered D :=
  of_left_adjoint (Adjunction.ofLeftAdjoint L)
#align category_theory.is_cofiltered.of_is_left_adjoint CategoryTheory.IsCofiltered.of_isLeftAdjoint

/-- Being cofiltered is preserved by equivalence of categories. -/
theorem of_equivalence (h : C ≌ D) : IsCofiltered D :=
  of_left_adjoint h.toAdjunction
#align category_theory.is_cofiltered.of_equivalence CategoryTheory.IsCofiltered.of_equivalence

end Nonempty

end IsCofiltered

section Opposite

open Opposite

instance isCofilteredOrEmpty_op_of_isFilteredOrEmpty [IsFilteredOrEmpty C] :
    IsCofilteredOrEmpty Cᵒᵖ where
  cone_objs X Y :=
    ⟨op (IsFiltered.max X.unop Y.unop), (IsFiltered.leftToMax _ _).op,
      (IsFiltered.rightToMax _ _).op, trivial⟩
  cone_maps X Y f g :=
    ⟨op (IsFiltered.coeq f.unop g.unop), (IsFiltered.coeqHom _ _).op, by
      rw [show f = f.unop.op by simp, show g = g.unop.op by simp, ← op_comp, ← op_comp]
      congr 1
      exact IsFiltered.coeq_condition f.unop g.unop⟩

instance isCofiltered_op_of_isFiltered [IsFiltered C] : IsCofiltered Cᵒᵖ where
  Nonempty := ⟨op IsFiltered.Nonempty.some⟩
#align category_theory.is_cofiltered_op_of_is_filtered CategoryTheory.isCofiltered_op_of_isFiltered

instance isFilteredOrEmpty_op_of_isCofilteredOrEmpty [IsCofilteredOrEmpty C] :
    IsFilteredOrEmpty Cᵒᵖ where
  cocone_objs X Y :=
    ⟨op (IsCofiltered.min X.unop Y.unop), (IsCofiltered.minToLeft X.unop Y.unop).op,
      (IsCofiltered.minToRight X.unop Y.unop).op, trivial⟩
  cocone_maps X Y f g :=
    ⟨op (IsCofiltered.eq f.unop g.unop), (IsCofiltered.eqHom f.unop g.unop).op, by
      rw [show f = f.unop.op by simp, show g = g.unop.op by simp, ← op_comp, ← op_comp]
      congr 1
      exact IsCofiltered.eq_condition f.unop g.unop⟩

instance isFiltered_op_of_isCofiltered [IsCofiltered C] : IsFiltered Cᵒᵖ where
  Nonempty := ⟨op IsCofiltered.Nonempty.some⟩
#align category_theory.is_filtered_op_of_is_cofiltered CategoryTheory.isFiltered_op_of_isCofiltered

/-- If Cᵒᵖ is filtered or empty, then C is cofiltered or empty. -/
lemma isCofilteredOrEmpty_of_isFilteredOrEmpty_op [IsFilteredOrEmpty Cᵒᵖ] : IsCofilteredOrEmpty C :=
  IsCofilteredOrEmpty.of_equivalence (opOpEquivalence _)

/-- If Cᵒᵖ is cofiltered or empty, then C is filtered or empty. -/
lemma isFilteredOrEmpty_of_isCofilteredOrEmpty_op [IsCofilteredOrEmpty Cᵒᵖ] : IsFilteredOrEmpty C :=
  IsFilteredOrEmpty.of_equivalence (opOpEquivalence _)

/-- If Cᵒᵖ is filtered, then C is cofiltered. -/
lemma isCofiltered_of_isFiltered_op [IsFiltered Cᵒᵖ] : IsCofiltered C :=
  IsCofiltered.of_equivalence (opOpEquivalence _)

/-- If Cᵒᵖ is cofiltered, then C is filtered. -/
lemma isFiltered_of_isCofiltered_op [IsCofiltered Cᵒᵖ] : IsFiltered C :=
  IsFiltered.of_equivalence (opOpEquivalence _)

end Opposite

section ULift

instance [IsFiltered C] : IsFiltered (ULift.{u₂} C) :=
  IsFiltered.of_equivalence ULift.equivalence

instance [IsCofiltered C] : IsCofiltered (ULift.{u₂} C) :=
  IsCofiltered.of_equivalence ULift.equivalence

instance [IsFiltered C] : IsFiltered (ULiftHom C) :=
  IsFiltered.of_equivalence ULiftHom.equiv

instance [IsCofiltered C] : IsCofiltered (ULiftHom C) :=
  IsCofiltered.of_equivalence ULiftHom.equiv

instance [IsFiltered C] : IsFiltered (AsSmall C) :=
  IsFiltered.of_equivalence AsSmall.equiv

instance [IsCofiltered C] : IsCofiltered (AsSmall C) :=
  IsCofiltered.of_equivalence AsSmall.equiv

end ULift

end CategoryTheory
````
