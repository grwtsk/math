# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Multiequalizer.Variant3727120ae0a39d5f68c5e06a2f7ad5c9668cd9f5c071f3add7bb1d11890e5410

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `51b865a3857eb101b9f2e061725c09d39ac4d45f` · SHA-256 `3727120ae0a39d5f68c5e06a2f7ad5c9668cd9f5c071f3add7bb1d11890e5410`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Adam Topaz. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Adam Topaz
-/
import Mathlib.CategoryTheory.Limits.Shapes.Products
import Mathlib.CategoryTheory.Limits.Shapes.Equalizers
import Mathlib.CategoryTheory.Limits.ConeCategory

#align_import category_theory.limits.shapes.multiequalizer from "leanprover-community/mathlib"@"70fd9563a21e7b963887c9360bd29b2393e6225a"

/-!

# Multi-(co)equalizers

A *multiequalizer* is an equalizer of two morphisms between two products.
Since both products and equalizers are limits, such an object is again a limit.
This file provides the diagram whose limit is indeed such an object.
In fact, it is well-known that any limit can be obtained as a multiequalizer.
The dual construction (multicoequalizers) is also provided.

## Projects

Prove that a multiequalizer can be identified with
an equalizer between products (and analogously for multicoequalizers).

Prove that the limit of any diagram is a multiequalizer (and similarly for colimits).

-/


namespace CategoryTheory.Limits

open CategoryTheory

universe w v u

/-- The type underlying the multiequalizer diagram. -/
--@[nolint unused_arguments]
inductive WalkingMulticospan {L R : Type w} (fst snd : R → L) : Type w
  | left : L → WalkingMulticospan fst snd
  | right : R → WalkingMulticospan fst snd
#align category_theory.limits.walking_multicospan CategoryTheory.Limits.WalkingMulticospan

/-- The type underlying the multiecoqualizer diagram. -/
--@[nolint unused_arguments]
inductive WalkingMultispan {L R : Type w} (fst snd : L → R) : Type w
  | left : L → WalkingMultispan fst snd
  | right : R → WalkingMultispan fst snd
#align category_theory.limits.walking_multispan CategoryTheory.Limits.WalkingMultispan

namespace WalkingMulticospan

variable {L R : Type w} {fst snd : R → L}

instance [Inhabited L] : Inhabited (WalkingMulticospan fst snd) :=
  ⟨left default⟩

/-- Morphisms for `WalkingMulticospan`. -/
inductive Hom : ∀ _ _ : WalkingMulticospan fst snd, Type w
  | id (A) : Hom A A
  | fst (b) : Hom (left (fst b)) (right b)
  | snd (b) : Hom (left (snd b)) (right b)
#align category_theory.limits.walking_multicospan.hom CategoryTheory.Limits.WalkingMulticospan.Hom

/- Porting note: simpNF says the LHS of this internal identifier simplifies
(which it does, using Hom.id_eq_id) -/
attribute [-simp, nolint simpNF] WalkingMulticospan.Hom.id.sizeOf_spec

instance {a : WalkingMulticospan fst snd} : Inhabited (Hom a a) :=
  ⟨Hom.id _⟩

/-- Composition of morphisms for `WalkingMulticospan`. -/
def Hom.comp : ∀ {A B C : WalkingMulticospan fst snd} (_ : Hom A B) (_ : Hom B C), Hom A C
  | _, _, _, Hom.id X, f => f
  | _, _, _, Hom.fst b, Hom.id _ => Hom.fst b
  | _, _, _, Hom.snd b, Hom.id _ => Hom.snd b
#align category_theory.limits.walking_multicospan.hom.comp CategoryTheory.Limits.WalkingMulticospan.Hom.comp

instance : SmallCategory (WalkingMulticospan fst snd) where
  Hom := Hom
  id := Hom.id
  comp := Hom.comp
  id_comp := by
    rintro (_ | _) (_ | _) (_ | _ | _) <;> rfl
  comp_id := by
    rintro (_ | _) (_ | _) (_ | _ | _) <;> rfl
  assoc := by
    rintro (_ | _) (_ | _) (_ | _) (_ | _) (_ | _ | _) (_ | _ | _) (_ | _ | _) <;> rfl

@[simp] -- Porting note: added simp lemma
lemma Hom.id_eq_id (X : WalkingMulticospan fst snd) :
  Hom.id X = 𝟙 X := rfl

@[simp] -- Porting note: added simp lemma
lemma Hom.comp_eq_comp {X Y Z : WalkingMulticospan fst snd}
  (f : X ⟶ Y) (g : Y ⟶ Z) : Hom.comp f g = f ≫ g := rfl

end WalkingMulticospan

namespace WalkingMultispan

variable {L R : Type v} {fst snd : L → R}

instance [Inhabited L] : Inhabited (WalkingMultispan fst snd) :=
  ⟨left default⟩

/-- Morphisms for `WalkingMultispan`. -/
inductive Hom : ∀ _ _ : WalkingMultispan fst snd, Type v
  | id (A) : Hom A A
  | fst (a) : Hom (left a) (right (fst a))
  | snd (a) : Hom (left a) (right (snd a))
#align category_theory.limits.walking_multispan.hom CategoryTheory.Limits.WalkingMultispan.Hom

/- Porting note: simpNF says the LHS of this internal identifier simplifies
(which it does, using Hom.id_eq_id) -/
attribute [-simp, nolint simpNF] WalkingMultispan.Hom.id.sizeOf_spec

instance {a : WalkingMultispan fst snd} : Inhabited (Hom a a) :=
  ⟨Hom.id _⟩

/-- Composition of morphisms for `WalkingMultispan`. -/
def Hom.comp : ∀ {A B C : WalkingMultispan fst snd} (_ : Hom A B) (_ : Hom B C), Hom A C
  | _, _, _, Hom.id X, f => f
  | _, _, _, Hom.fst a, Hom.id _ => Hom.fst a
  | _, _, _, Hom.snd a, Hom.id _ => Hom.snd a
#align category_theory.limits.walking_multispan.hom.comp CategoryTheory.Limits.WalkingMultispan.Hom.comp

instance : SmallCategory (WalkingMultispan fst snd) where
  Hom := Hom
  id := Hom.id
  comp := Hom.comp
  id_comp := by
    rintro (_ | _) (_ | _) (_ | _ | _) <;> rfl
  comp_id := by
    rintro (_ | _) (_ | _) (_ | _ | _) <;> rfl
  assoc := by
    rintro (_ | _) (_ | _) (_ | _) (_ | _) (_ | _ | _) (_ | _ | _) (_ | _ | _) <;> rfl

@[simp] -- Porting note: added simp lemma
lemma Hom.id_eq_id (X : WalkingMultispan fst snd) :
  Hom.id X = 𝟙 X := rfl

@[simp] -- Porting note: added simp lemma
lemma Hom.comp_eq_comp {X Y Z : WalkingMultispan fst snd}
  (f : X ⟶ Y) (g : Y ⟶ Z) : Hom.comp f g = f ≫ g := rfl

end WalkingMultispan

/-- This is a structure encapsulating the data necessary to define a `Multicospan`. -/
--@[nolint has_nonempty_instance]
structure MulticospanIndex (C : Type u) [Category.{v} C] where
  (L R : Type w)
  (fstTo sndTo : R → L)
  left : L → C
  right : R → C
  fst : ∀ b, left (fstTo b) ⟶ right b
  snd : ∀ b, left (sndTo b) ⟶ right b
#align category_theory.limits.multicospan_index CategoryTheory.Limits.MulticospanIndex

/-- This is a structure encapsulating the data necessary to define a `Multispan`. -/
--@[nolint has_nonempty_instance]
structure MultispanIndex (C : Type u) [Category.{v} C] where
  (L R : Type w)
  (fstFrom sndFrom : L → R)
  left : L → C
  right : R → C
  fst : ∀ a, left a ⟶ right (fstFrom a)
  snd : ∀ a, left a ⟶ right (sndFrom a)
#align category_theory.limits.multispan_index CategoryTheory.Limits.MultispanIndex

namespace MulticospanIndex

variable {C : Type u} [Category.{v} C] (I : MulticospanIndex.{w} C)

/-- The multicospan associated to `I : MulticospanIndex`. -/
def multicospan : WalkingMulticospan I.fstTo I.sndTo ⥤ C where
  obj x :=
    match x with
    | WalkingMulticospan.left a => I.left a
    | WalkingMulticospan.right b => I.right b
  map {x y} f :=
    match x, y, f with
    | _, _, WalkingMulticospan.Hom.id x => 𝟙 _
    | _, _, WalkingMulticospan.Hom.fst b => I.fst _
    | _, _, WalkingMulticospan.Hom.snd b => I.snd _
  map_id := by
    rintro (_ | _) <;> rfl
  map_comp := by
    rintro (_ | _) (_ | _) (_ | _) (_ | _ | _) (_ | _ | _) <;> aesop_cat
#align category_theory.limits.multicospan_index.multicospan CategoryTheory.Limits.MulticospanIndex.multicospan

@[simp]
theorem multicospan_obj_left (a) : I.multicospan.obj (WalkingMulticospan.left a) = I.left a :=
  rfl
#align category_theory.limits.multicospan_index.multicospan_obj_left CategoryTheory.Limits.MulticospanIndex.multicospan_obj_left

@[simp]
theorem multicospan_obj_right (b) : I.multicospan.obj (WalkingMulticospan.right b) = I.right b :=
  rfl
#align category_theory.limits.multicospan_index.multicospan_obj_right CategoryTheory.Limits.MulticospanIndex.multicospan_obj_right

@[simp]
theorem multicospan_map_fst (b) : I.multicospan.map (WalkingMulticospan.Hom.fst b) = I.fst b :=
  rfl
#align category_theory.limits.multicospan_index.multicospan_map_fst CategoryTheory.Limits.MulticospanIndex.multicospan_map_fst

@[simp]
theorem multicospan_map_snd (b) : I.multicospan.map (WalkingMulticospan.Hom.snd b) = I.snd b :=
  rfl
#align category_theory.limits.multicospan_index.multicospan_map_snd CategoryTheory.Limits.MulticospanIndex.multicospan_map_snd

variable [HasProduct I.left] [HasProduct I.right]

/-- The induced map `∏ I.left ⟶ ∏ I.right` via `I.fst`. -/
noncomputable def fstPiMap : ∏ I.left ⟶ ∏ I.right :=
  Pi.lift fun b => Pi.π I.left (I.fstTo b) ≫ I.fst b
#align category_theory.limits.multicospan_index.fst_pi_map CategoryTheory.Limits.MulticospanIndex.fstPiMap

/-- The induced map `∏ I.left ⟶ ∏ I.right` via `I.snd`. -/
noncomputable def sndPiMap : ∏ I.left ⟶ ∏ I.right :=
  Pi.lift fun b => Pi.π I.left (I.sndTo b) ≫ I.snd b
#align category_theory.limits.multicospan_index.snd_pi_map CategoryTheory.Limits.MulticospanIndex.sndPiMap

@[reassoc (attr := simp)]
theorem fstPiMap_π (b) : I.fstPiMap ≫ Pi.π I.right b = Pi.π I.left _ ≫ I.fst b := by
  simp [fstPiMap]
#align category_theory.limits.multicospan_index.fst_pi_map_π CategoryTheory.Limits.MulticospanIndex.fstPiMap_π

@[reassoc (attr := simp)]
theorem sndPiMap_π (b) : I.sndPiMap ≫ Pi.π I.right b = Pi.π I.left _ ≫ I.snd b := by
  simp [sndPiMap]
#align category_theory.limits.multicospan_index.snd_pi_map_π CategoryTheory.Limits.MulticospanIndex.sndPiMap_π

/-- Taking the multiequalizer over the multicospan index is equivalent to taking the equalizer over
the two morphsims `∏ I.left ⇉ ∏ I.right`. This is the diagram of the latter.
-/
@[simps!]
protected noncomputable def parallelPairDiagram :=
  parallelPair I.fstPiMap I.sndPiMap
#align category_theory.limits.multicospan_index.parallel_pair_diagram CategoryTheory.Limits.MulticospanIndex.parallelPairDiagram

end MulticospanIndex

namespace MultispanIndex

variable {C : Type u} [Category.{v} C] (I : MultispanIndex.{w} C)

/-- The multispan associated to `I : MultispanIndex`. -/
def multispan : WalkingMultispan I.fstFrom I.sndFrom ⥤ C where
  obj x :=
    match x with
    | WalkingMultispan.left a => I.left a
    | WalkingMultispan.right b => I.right b
  map {x y} f :=
    match x, y, f with
    | _, _, WalkingMultispan.Hom.id x => 𝟙 _
    | _, _, WalkingMultispan.Hom.fst b => I.fst _
    | _, _, WalkingMultispan.Hom.snd b => I.snd _
  map_id := by
    rintro (_ | _) <;> rfl
  map_comp := by
    rintro (_ | _) (_ | _) (_ | _) (_ | _ | _) (_ | _ | _) <;> aesop_cat
#align category_theory.limits.multispan_index.multispan CategoryTheory.Limits.MultispanIndex.multispan

@[simp]
theorem multispan_obj_left (a) : I.multispan.obj (WalkingMultispan.left a) = I.left a :=
  rfl
#align category_theory.limits.multispan_index.multispan_obj_left CategoryTheory.Limits.MultispanIndex.multispan_obj_left

@[simp]
theorem multispan_obj_right (b) : I.multispan.obj (WalkingMultispan.right b) = I.right b :=
  rfl
#align category_theory.limits.multispan_index.multispan_obj_right CategoryTheory.Limits.MultispanIndex.multispan_obj_right

@[simp]
theorem multispan_map_fst (a) : I.multispan.map (WalkingMultispan.Hom.fst a) = I.fst a :=
  rfl
#align category_theory.limits.multispan_index.multispan_map_fst CategoryTheory.Limits.MultispanIndex.multispan_map_fst

@[simp]
theorem multispan_map_snd (a) : I.multispan.map (WalkingMultispan.Hom.snd a) = I.snd a :=
  rfl
#align category_theory.limits.multispan_index.multispan_map_snd CategoryTheory.Limits.MultispanIndex.multispan_map_snd

variable [HasCoproduct I.left] [HasCoproduct I.right]

/-- The induced map `∐ I.left ⟶ ∐ I.right` via `I.fst`. -/
noncomputable def fstSigmaMap : ∐ I.left ⟶ ∐ I.right :=
  Sigma.desc fun b => I.fst b ≫ Sigma.ι _ (I.fstFrom b)
#align category_theory.limits.multispan_index.fst_sigma_map CategoryTheory.Limits.MultispanIndex.fstSigmaMap

/-- The induced map `∐ I.left ⟶ ∐ I.right` via `I.snd`. -/
noncomputable def sndSigmaMap : ∐ I.left ⟶ ∐ I.right :=
  Sigma.desc fun b => I.snd b ≫ Sigma.ι _ (I.sndFrom b)
#align category_theory.limits.multispan_index.snd_sigma_map CategoryTheory.Limits.MultispanIndex.sndSigmaMap

@[reassoc (attr := simp)]
theorem ι_fstSigmaMap (b) : Sigma.ι I.left b ≫ I.fstSigmaMap = I.fst b ≫ Sigma.ι I.right _ := by
  simp [fstSigmaMap]
#align category_theory.limits.multispan_index.ι_fst_sigma_map CategoryTheory.Limits.MultispanIndex.ι_fstSigmaMap

@[reassoc (attr := simp)]
theorem ι_sndSigmaMap (b) : Sigma.ι I.left b ≫ I.sndSigmaMap = I.snd b ≫ Sigma.ι I.right _ := by
  simp [sndSigmaMap]
#align category_theory.limits.multispan_index.ι_snd_sigma_map CategoryTheory.Limits.MultispanIndex.ι_sndSigmaMap

/--
Taking the multicoequalizer over the multispan index is equivalent to taking the coequalizer over
the two morphsims `∐ I.left ⇉ ∐ I.right`. This is the diagram of the latter.
-/
protected noncomputable abbrev parallelPairDiagram :=
  parallelPair I.fstSigmaMap I.sndSigmaMap
#align category_theory.limits.multispan_index.parallel_pair_diagram CategoryTheory.Limits.MultispanIndex.parallelPairDiagram

end MultispanIndex

variable {C : Type u} [Category.{v} C]

/-- A multifork is a cone over a multicospan. -/
--@[nolint has_nonempty_instance]
abbrev Multifork (I : MulticospanIndex.{w} C) :=
  Cone I.multicospan
#align category_theory.limits.multifork CategoryTheory.Limits.Multifork

/-- A multicofork is a cocone over a multispan. -/
--@[nolint has_nonempty_instance]
abbrev Multicofork (I : MultispanIndex.{w} C) :=
  Cocone I.multispan
#align category_theory.limits.multicofork CategoryTheory.Limits.Multicofork

namespace Multifork

variable {I : MulticospanIndex.{w} C} (K : Multifork I)

/-- The maps from the cone point of a multifork to the objects on the left. -/
def ι (a : I.L) : K.pt ⟶ I.left a :=
  K.π.app (WalkingMulticospan.left _)
#align category_theory.limits.multifork.ι CategoryTheory.Limits.Multifork.ι

@[simp]
theorem app_left_eq_ι (a) : K.π.app (WalkingMulticospan.left a) = K.ι a :=
  rfl
#align category_theory.limits.multifork.app_left_eq_ι CategoryTheory.Limits.Multifork.app_left_eq_ι

@[simp]
theorem app_right_eq_ι_comp_fst (b) :
    K.π.app (WalkingMulticospan.right b) = K.ι (I.fstTo b) ≫ I.fst b := by
  rw [← K.w (WalkingMulticospan.Hom.fst b)]
  rfl
#align category_theory.limits.multifork.app_right_eq_ι_comp_fst CategoryTheory.Limits.Multifork.app_right_eq_ι_comp_fst

@[reassoc]
theorem app_right_eq_ι_comp_snd (b) :
    K.π.app (WalkingMulticospan.right b) = K.ι (I.sndTo b) ≫ I.snd b := by
  rw [← K.w (WalkingMulticospan.Hom.snd b)]
  rfl
#align category_theory.limits.multifork.app_right_eq_ι_comp_snd CategoryTheory.Limits.Multifork.app_right_eq_ι_comp_snd

@[reassoc (attr := simp)]
theorem hom_comp_ι (K₁ K₂ : Multifork I) (f : K₁ ⟶ K₂) (j : I.L) : f.Hom ≫ K₂.ι j = K₁.ι j :=
  f.w _
#align category_theory.limits.multifork.hom_comp_ι CategoryTheory.Limits.Multifork.hom_comp_ι

/-- Construct a multifork using a collection `ι` of morphisms. -/
@[simps]
def ofι (I : MulticospanIndex.{w} C) (P : C) (ι : ∀ a, P ⟶ I.left a)
    (w : ∀ b, ι (I.fstTo b) ≫ I.fst b = ι (I.sndTo b) ≫ I.snd b) : Multifork I where
  pt := P
  π :=
    { app := fun x =>
        match x with
        | WalkingMulticospan.left a => ι _
        | WalkingMulticospan.right b => ι (I.fstTo b) ≫ I.fst b
      naturality := by
        rintro (_ | _) (_ | _) (_ | _ | _) <;>
          dsimp <;>
          simp only [Category.id_comp, Category.comp_id, Functor.map_id,
            MulticospanIndex.multicospan_obj_left, MulticospanIndex.multicospan_obj_right]
        apply w }
#align category_theory.limits.multifork.of_ι CategoryTheory.Limits.Multifork.ofι

@[reassoc (attr := simp)]
theorem condition (b) : K.ι (I.fstTo b) ≫ I.fst b = K.ι (I.sndTo b) ≫ I.snd b := by
  rw [← app_right_eq_ι_comp_fst, ← app_right_eq_ι_comp_snd]
#align category_theory.limits.multifork.condition CategoryTheory.Limits.Multifork.condition

/-- This definition provides a convenient way to show that a multifork is a limit. -/
@[simps]
def IsLimit.mk (lift : ∀ E : Multifork I, E.pt ⟶ K.pt)
    (fac : ∀ (E : Multifork I) (i : I.L), lift E ≫ K.ι i = E.ι i)
    (uniq : ∀ (E : Multifork I) (m : E.pt ⟶ K.pt), (∀ i : I.L, m ≫ K.ι i = E.ι i) → m = lift E) :
    IsLimit K :=
  { lift
    fac := by
      rintro E (a | b)
      · apply fac
      · rw [← E.w (WalkingMulticospan.Hom.fst b), ← K.w (WalkingMulticospan.Hom.fst b), ←
          Category.assoc]
        congr 1
        apply fac
    uniq := by
      rintro E m hm
      apply uniq
      intro i
      apply hm }
#align category_theory.limits.multifork.is_limit.mk CategoryTheory.Limits.Multifork.IsLimit.mk

variable [HasProduct I.left] [HasProduct I.right]

@[reassoc (attr := simp)]
theorem pi_condition : Pi.lift K.ι ≫ I.fstPiMap = Pi.lift K.ι ≫ I.sndPiMap := by
  ext
  simp
#align category_theory.limits.multifork.pi_condition CategoryTheory.Limits.Multifork.pi_condition

/-- Given a multifork, we may obtain a fork over `∏ I.left ⇉ ∏ I.right`. -/
@[simps pt]
noncomputable def toPiFork (K : Multifork I) : Fork I.fstPiMap I.sndPiMap where
  pt := K.pt
  π :=
    { app := fun x =>
        match x with
        | WalkingParallelPair.zero => Pi.lift K.ι
        | WalkingParallelPair.one => Pi.lift K.ι ≫ I.fstPiMap
      naturality := by
        rintro (_ | _) (_ | _) (_ | _ | _) <;>
          dsimp <;>
          simp only [Category.id_comp, Functor.map_id, parallelPair_obj_zero, Category.comp_id,
            pi_condition, parallelPair_obj_one] }
#align category_theory.limits.multifork.to_pi_fork CategoryTheory.Limits.Multifork.toPiFork

@[simp]
theorem toPiFork_π_app_zero : K.toPiFork.ι = Pi.lift K.ι :=
  rfl
#align category_theory.limits.multifork.to_pi_fork_π_app_zero CategoryTheory.Limits.Multifork.toPiFork_π_app_zero

@[simp, nolint simpNF] -- Porting note: dsimp cannot prove this
theorem toPiFork_π_app_one : K.toPiFork.π.app WalkingParallelPair.one = Pi.lift K.ι ≫ I.fstPiMap :=
  rfl
#align category_theory.limits.multifork.to_pi_fork_π_app_one CategoryTheory.Limits.Multifork.toPiFork_π_app_one

variable (I)

/-- Given a fork over `∏ I.left ⇉ ∏ I.right`, we may obtain a multifork. -/
@[simps pt]
noncomputable def ofPiFork (c : Fork I.fstPiMap I.sndPiMap) : Multifork I where
  pt := c.pt
  π :=
    { app := fun x =>
        match x with
        | WalkingMulticospan.left a => c.ι ≫ Pi.π _ _
        | WalkingMulticospan.right b => c.ι ≫ I.fstPiMap ≫ Pi.π _ _
      naturality := by
        rintro (_ | _) (_ | _) (_ | _ | _)
        · simp
        · simp
        · dsimp; rw [c.condition_assoc]; simp
        · simp }
#align category_theory.limits.multifork.of_pi_fork CategoryTheory.Limits.Multifork.ofPiFork

@[simp]
theorem ofPiFork_π_app_left (c : Fork I.fstPiMap I.sndPiMap) (a) :
    (ofPiFork I c).ι a = c.ι ≫ Pi.π _ _ :=
  rfl
#align category_theory.limits.multifork.of_pi_fork_π_app_left CategoryTheory.Limits.Multifork.ofPiFork_π_app_left

@[simp, nolint simpNF] -- Porting note: dsimp cannot prove this
theorem ofPiFork_π_app_right (c : Fork I.fstPiMap I.sndPiMap) (a) :
    (ofPiFork I c).π.app (WalkingMulticospan.right a) = c.ι ≫ I.fstPiMap ≫ Pi.π _ _ :=
  rfl
#align category_theory.limits.multifork.of_pi_fork_π_app_right CategoryTheory.Limits.Multifork.ofPiFork_π_app_right

end Multifork

namespace MulticospanIndex

variable (I : MulticospanIndex.{w} C) [HasProduct I.left] [HasProduct I.right]

--attribute [local tidy] tactic.case_bash

/-- `Multifork.toPiFork` as a functor. -/
@[simps]
noncomputable def toPiForkFunctor : Multifork I ⥤ Fork I.fstPiMap I.sndPiMap where
  obj := Multifork.toPiFork
  map {K₁ K₂} f :=
    { Hom := f.Hom
      w := by
        rintro (_ | _)
        · apply limit.hom_ext
          simp
        · apply limit.hom_ext
          intros j
          simp only [Multifork.toPiFork_π_app_one, Multifork.pi_condition, Category.assoc]
          dsimp [sndPiMap]
          simp }
#align category_theory.limits.multicospan_index.to_pi_fork_functor CategoryTheory.Limits.MulticospanIndex.toPiForkFunctor

/-- `Multifork.ofPiFork` as a functor. -/
@[simps]
noncomputable def ofPiForkFunctor : Fork I.fstPiMap I.sndPiMap ⥤ Multifork I where
  obj := Multifork.ofPiFork I
  map {K₁ K₂} f :=
    { Hom := f.Hom
      w := by rintro (_ | _) <;> simp }
#align category_theory.limits.multicospan_index.of_pi_fork_functor CategoryTheory.Limits.MulticospanIndex.ofPiForkFunctor

/-- The category of multiforks is equivalent to the category of forks over `∏ I.left ⇉ ∏ I.right`.
It then follows from `CategoryTheory.IsLimit.ofPreservesConeTerminal` (or `reflects`) that it
preserves and reflects limit cones.
-/
@[simps]
noncomputable def multiforkEquivPiFork : Multifork I ≌ Fork I.fstPiMap I.sndPiMap where
  functor := toPiForkFunctor I
  inverse := ofPiForkFunctor I
  unitIso :=
    NatIso.ofComponents fun K =>
      Cones.ext (Iso.refl _) (by
        rintro (_ | _) <;> dsimp <;>
          simp [← Fork.app_one_eq_ι_comp_left, -Fork.app_one_eq_ι_comp_left])
  counitIso :=
    NatIso.ofComponents fun K => Fork.ext (Iso.refl _)
#align category_theory.limits.multicospan_index.multifork_equiv_pi_fork CategoryTheory.Limits.MulticospanIndex.multiforkEquivPiFork

end MulticospanIndex

namespace Multicofork

variable {I : MultispanIndex.{w} C} (K : Multicofork I)

/-- The maps to the cocone point of a multicofork from the objects on the right. -/
def π (b : I.R) : I.right b ⟶ K.pt :=
  K.ι.app (WalkingMultispan.right _)
#align category_theory.limits.multicofork.π CategoryTheory.Limits.Multicofork.π

@[simp]
theorem π_eq_app_right (b) : K.ι.app (WalkingMultispan.right _) = K.π b :=
  rfl
#align category_theory.limits.multicofork.π_eq_app_right CategoryTheory.Limits.Multicofork.π_eq_app_right

@[simp]
theorem fst_app_right (a) : K.ι.app (WalkingMultispan.left a) = I.fst a ≫ K.π _ := by
  rw [← K.w (WalkingMultispan.Hom.fst a)]
  rfl
#align category_theory.limits.multicofork.fst_app_right CategoryTheory.Limits.Multicofork.fst_app_right

@[reassoc]
theorem snd_app_right (a) : K.ι.app (WalkingMultispan.left a) = I.snd a ≫ K.π _ := by
  rw [← K.w (WalkingMultispan.Hom.snd a)]
  rfl
#align category_theory.limits.multicofork.snd_app_right CategoryTheory.Limits.Multicofork.snd_app_right

@[reassoc (attr := simp)] -- Porting note: added simp lemma
lemma π_comp_hom (K₁ K₂ : Multicofork I) (f : K₁ ⟶ K₂) (b : I.R) : K₁.π b ≫ f.Hom = K₂.π b :=
  f.w _

/-- Construct a multicofork using a collection `π` of morphisms. -/
@[simps]
def ofπ (I : MultispanIndex.{w} C) (P : C) (π : ∀ b, I.right b ⟶ P)
    (w : ∀ a, I.fst a ≫ π (I.fstFrom a) = I.snd a ≫ π (I.sndFrom a)) : Multicofork I where
  pt := P
  ι :=
    { app := fun x =>
        match x with
        | WalkingMultispan.left a => I.fst a ≫ π _
        | WalkingMultispan.right b => π _
      naturality := by
        rintro (_ | _) (_ | _) (_ | _ | _) <;> dsimp <;>
          simp only [Functor.map_id, MultispanIndex.multispan_obj_left,
            Category.id_comp, Category.comp_id, MultispanIndex.multispan_obj_right]
        symm
        apply w }
#align category_theory.limits.multicofork.of_π CategoryTheory.Limits.Multicofork.ofπ

@[reassoc (attr := simp)]
theorem condition (a) : I.fst a ≫ K.π (I.fstFrom a) = I.snd a ≫ K.π (I.sndFrom a) := by
  rw [← K.snd_app_right, ← K.fst_app_right]
#align category_theory.limits.multicofork.condition CategoryTheory.Limits.Multicofork.condition

/-- This definition provides a convenient way to show that a multicofork is a colimit. -/
@[simps]
def IsColimit.mk (desc : ∀ E : Multicofork I, K.pt ⟶ E.pt)
    (fac : ∀ (E : Multicofork I) (i : I.R), K.π i ≫ desc E = E.π i)
    (uniq : ∀ (E : Multicofork I) (m : K.pt ⟶ E.pt), (∀ i : I.R, K.π i ≫ m = E.π i) → m = desc E) :
    IsColimit K :=
  { desc
    fac := by
      rintro S (a | b)
      · rw [← K.w (WalkingMultispan.Hom.fst a), ← S.w (WalkingMultispan.Hom.fst a),
          Category.assoc]
        congr 1
        apply fac
      · apply fac
    uniq := by
      intro S m hm
      apply uniq
      intro i
      apply hm }
#align category_theory.limits.multicofork.is_colimit.mk CategoryTheory.Limits.Multicofork.IsColimit.mk

variable [HasCoproduct I.left] [HasCoproduct I.right]

@[reassoc (attr := simp)]
theorem sigma_condition : I.fstSigmaMap ≫ Sigma.desc K.π = I.sndSigmaMap ≫ Sigma.desc K.π := by
  ext
  simp
#align category_theory.limits.multicofork.sigma_condition CategoryTheory.Limits.Multicofork.sigma_condition

/-- Given a multicofork, we may obtain a cofork over `∐ I.left ⇉ ∐ I.right`. -/
@[simps pt]
noncomputable def toSigmaCofork (K : Multicofork I) : Cofork I.fstSigmaMap I.sndSigmaMap where
  pt := K.pt
  ι :=
    { app := fun x =>
        match x with
        | WalkingParallelPair.zero => I.fstSigmaMap ≫ Sigma.desc K.π
        | WalkingParallelPair.one => Sigma.desc K.π
      naturality := by
        rintro (_ | _) (_ | _) (_ | _ | _) <;> dsimp <;>
          simp only [Functor.map_id, parallelPair_obj_zero,
            parallelPair_obj_one, sigma_condition, Category.id_comp, Category.comp_id] }
#align category_theory.limits.multicofork.to_sigma_cofork CategoryTheory.Limits.Multicofork.toSigmaCofork

@[simp]
theorem toSigmaCofork_π : K.toSigmaCofork.π = Sigma.desc K.π :=
  rfl
#align category_theory.limits.multicofork.to_sigma_cofork_π CategoryTheory.Limits.Multicofork.toSigmaCofork_π

variable (I)

/-- Given a cofork over `∐ I.left ⇉ ∐ I.right`, we may obtain a multicofork. -/
@[simps pt]
noncomputable def ofSigmaCofork (c : Cofork I.fstSigmaMap I.sndSigmaMap) : Multicofork I where
  pt := c.pt
  ι :=
    { app := fun x =>
        match x with
        | WalkingMultispan.left a => (Sigma.ι I.left a : _) ≫ I.fstSigmaMap ≫ c.π
        | WalkingMultispan.right b => (Sigma.ι I.right b : _) ≫ c.π
      naturality := by
        rintro (_ | _) (_ | _) (_ | _ | _)
        · simp
        · simp
        · simp [c.condition]
        · simp }
#align category_theory.limits.multicofork.of_sigma_cofork CategoryTheory.Limits.Multicofork.ofSigmaCofork

-- Porting note: dsimp cannot prove this... once ofSigmaCofork_ι_app_right' is defined
@[simp, nolint simpNF]
theorem ofSigmaCofork_ι_app_left (c : Cofork I.fstSigmaMap I.sndSigmaMap) (a) :
    (ofSigmaCofork I c).ι.app (WalkingMultispan.left a) =
      (Sigma.ι I.left a : _) ≫ I.fstSigmaMap ≫ c.π :=
  rfl
#align category_theory.limits.multicofork.of_sigma_cofork_ι_app_left CategoryTheory.Limits.Multicofork.ofSigmaCofork_ι_app_left

-- @[simp] -- Porting note: LHS simplifies to obtain the normal form below
theorem ofSigmaCofork_ι_app_right (c : Cofork I.fstSigmaMap I.sndSigmaMap) (b) :
    (ofSigmaCofork I c).ι.app (WalkingMultispan.right b) = (Sigma.ι I.right b : _) ≫ c.π :=
  rfl
#align category_theory.limits.multicofork.of_sigma_cofork_ι_app_right CategoryTheory.Limits.Multicofork.ofSigmaCofork_ι_app_right

@[simp]
theorem ofSigmaCofork_ι_app_right' (c : Cofork I.fstSigmaMap I.sndSigmaMap) (b) :
    π (ofSigmaCofork I c) b = (Sigma.ι I.right b : _) ≫ c.π :=
  rfl

end Multicofork

namespace MultispanIndex

variable (I : MultispanIndex.{w} C) [HasCoproduct I.left] [HasCoproduct I.right]

--attribute [local tidy] tactic.case_bash

/-- `Multicofork.toSigmaCofork` as a functor. -/
@[simps]
noncomputable def toSigmaCoforkFunctor : Multicofork I ⥤ Cofork I.fstSigmaMap I.sndSigmaMap where
  obj := Multicofork.toSigmaCofork
  map {K₁ K₂} f :=
  { Hom := f.Hom
    w := by
      rintro (_|_)
      all_goals {
        apply colimit.hom_ext
        rintro ⟨j⟩
        simp } }
#align category_theory.limits.multispan_index.to_sigma_cofork_functor CategoryTheory.Limits.MultispanIndex.toSigmaCoforkFunctor

/-- `Multicofork.ofSigmaCofork` as a functor. -/
@[simps]
noncomputable def ofSigmaCoforkFunctor : Cofork I.fstSigmaMap I.sndSigmaMap ⥤ Multicofork I where
  obj := Multicofork.ofSigmaCofork I
  map {K₁ K₂} f :=
    { Hom := f.Hom
      w := by --sorry --by rintro (_ | _) <;> simp
        rintro (_ | _)
        -- porting note; in mathlib3, `simp` worked. What seems to be happening is that
        -- the `simp` set is not confluent, and mathlib3 found
        -- `Multicofork.ofSigmaCofork_ι_app_left` before `Multicofork.fst_app_right`,
        -- but mathlib4 finds `Multicofork.fst_app_right` first.
        { simp [-Multicofork.fst_app_right] }
        -- porting note: similarly here, the `simp` set seems to be non-confluent
        { simp [-Multicofork.ofSigmaCofork_pt] } }

/--
The category of multicoforks is equivalent to the category of coforks over `∐ I.left ⇉ ∐ I.right`.
It then follows from `CategoryTheory.IsColimit.ofPreservesCoconeInitial` (or `reflects`) that
it preserves and reflects colimit cocones.
-/
@[simps]
noncomputable def multicoforkEquivSigmaCofork :
    Multicofork I ≌ Cofork I.fstSigmaMap I.sndSigmaMap where
  functor := toSigmaCoforkFunctor I
  inverse := ofSigmaCoforkFunctor I
  unitIso := NatIso.ofComponents fun K => Cocones.ext (Iso.refl _) (by
      rintro (_ | _) <;> simp)
  counitIso := NatIso.ofComponents fun K =>
    Cofork.ext (Iso.refl _)
      (by
        -- porting note: in mathlib3 this was just `ext` and I don't know why it's not here
        apply Limits.colimit.hom_ext
        rintro ⟨j⟩
        dsimp
        simp only [Category.comp_id, colimit.ι_desc, Cofan.mk_ι_app]
        rfl)
#align category_theory.limits.multispan_index.multicofork_equiv_sigma_cofork CategoryTheory.Limits.MultispanIndex.multicoforkEquivSigmaCofork

end MultispanIndex

/-- For `I : MulticospanIndex C`, we say that it has a multiequalizer if the associated
  multicospan has a limit. -/
abbrev HasMultiequalizer (I : MulticospanIndex.{w} C) :=
  HasLimit I.multicospan
#align category_theory.limits.has_multiequalizer CategoryTheory.Limits.HasMultiequalizer

noncomputable section

/-- The multiequalizer of `I : MulticospanIndex C`. -/
abbrev multiequalizer (I : MulticospanIndex.{w} C) [HasMultiequalizer I] : C :=
  limit I.multicospan
#align category_theory.limits.multiequalizer CategoryTheory.Limits.multiequalizer

/-- For `I : MultispanIndex C`, we say that it has a multicoequalizer if
  the associated multicospan has a limit. -/
abbrev HasMulticoequalizer (I : MultispanIndex.{w} C) :=
  HasColimit I.multispan
#align category_theory.limits.has_multicoequalizer CategoryTheory.Limits.HasMulticoequalizer

/-- The multiecoqualizer of `I : MultispanIndex C`. -/
abbrev multicoequalizer (I : MultispanIndex.{w} C) [HasMulticoequalizer I] : C :=
  colimit I.multispan
#align category_theory.limits.multicoequalizer CategoryTheory.Limits.multicoequalizer

namespace Multiequalizer

variable (I : MulticospanIndex.{w} C) [HasMultiequalizer I]

/-- The canonical map from the multiequalizer to the objects on the left. -/
abbrev ι (a : I.L) : multiequalizer I ⟶ I.left a :=
  limit.π _ (WalkingMulticospan.left a)
#align category_theory.limits.multiequalizer.ι CategoryTheory.Limits.Multiequalizer.ι

/-- The multifork associated to the multiequalizer. -/
abbrev multifork : Multifork I :=
  limit.cone _
#align category_theory.limits.multiequalizer.multifork CategoryTheory.Limits.Multiequalizer.multifork

@[simp]
theorem multifork_ι (a) : (Multiequalizer.multifork I).ι a = Multiequalizer.ι I a :=
  rfl
#align category_theory.limits.multiequalizer.multifork_ι CategoryTheory.Limits.Multiequalizer.multifork_ι

@[simp]
theorem multifork_π_app_left (a) :
    (Multiequalizer.multifork I).π.app (WalkingMulticospan.left a) = Multiequalizer.ι I a :=
  rfl
#align category_theory.limits.multiequalizer.multifork_π_app_left CategoryTheory.Limits.Multiequalizer.multifork_π_app_left

@[reassoc]
theorem condition (b) :
    Multiequalizer.ι I (I.fstTo b) ≫ I.fst b = Multiequalizer.ι I (I.sndTo b) ≫ I.snd b :=
  Multifork.condition _ _
#align category_theory.limits.multiequalizer.condition CategoryTheory.Limits.Multiequalizer.condition

/-- Construct a morphism to the multiequalizer from its universal property. -/
abbrev lift (W : C) (k : ∀ a, W ⟶ I.left a)
    (h : ∀ b, k (I.fstTo b) ≫ I.fst b = k (I.sndTo b) ≫ I.snd b) : W ⟶ multiequalizer I :=
  limit.lift _ (Multifork.ofι I _ k h)
#align category_theory.limits.multiequalizer.lift CategoryTheory.Limits.Multiequalizer.lift

@[reassoc] -- Porting note: simp can prove this, removed attribute
theorem lift_ι (W : C) (k : ∀ a, W ⟶ I.left a)
    (h : ∀ b, k (I.fstTo b) ≫ I.fst b = k (I.sndTo b) ≫ I.snd b) (a) :
    Multiequalizer.lift I _ k h ≫ Multiequalizer.ι I a = k _ :=
  limit.lift_π _ _
#align category_theory.limits.multiequalizer.lift_ι CategoryTheory.Limits.Multiequalizer.lift_ι

@[ext]
theorem hom_ext {W : C} (i j : W ⟶ multiequalizer I)
    (h : ∀ a, i ≫ Multiequalizer.ι I a = j ≫ Multiequalizer.ι I a) : i = j :=
  limit.hom_ext
    (by
      rintro (a | b)
      · apply h
      simp_rw [← limit.w I.multicospan (WalkingMulticospan.Hom.fst b), ← Category.assoc, h])
#align category_theory.limits.multiequalizer.hom_ext CategoryTheory.Limits.Multiequalizer.hom_ext

variable [HasProduct I.left] [HasProduct I.right]

instance : HasEqualizer I.fstPiMap I.sndPiMap :=
  ⟨⟨⟨_, IsLimit.ofPreservesConeTerminal I.multiforkEquivPiFork.functor (limit.isLimit _)⟩⟩⟩

/-- The multiequalizer is isomorphic to the equalizer of `∏ I.left ⇉ ∏ I.right`. -/
def isoEqualizer : multiequalizer I ≅ equalizer I.fstPiMap I.sndPiMap :=
  limit.isoLimitCone
    ⟨_, IsLimit.ofPreservesConeTerminal I.multiforkEquivPiFork.inverse (limit.isLimit _)⟩
#align category_theory.limits.multiequalizer.iso_equalizer CategoryTheory.Limits.Multiequalizer.isoEqualizer

/-- The canonical injection `multiequalizer I ⟶ ∏ I.left`. -/
def ιPi : multiequalizer I ⟶ ∏ I.left :=
  (isoEqualizer I).hom ≫ equalizer.ι I.fstPiMap I.sndPiMap
#align category_theory.limits.multiequalizer.ι_pi CategoryTheory.Limits.Multiequalizer.ιPi

@[reassoc (attr := simp)]
theorem ιPi_π (a) : ιPi I ≫ Pi.π I.left a = ι I a := by
  rw [ιPi, Category.assoc, ← Iso.eq_inv_comp, isoEqualizer]
  simp
#align category_theory.limits.multiequalizer.ι_pi_π CategoryTheory.Limits.Multiequalizer.ιPi_π

instance : Mono (ιPi I) := mono_comp _ _

end Multiequalizer

namespace Multicoequalizer

variable (I : MultispanIndex.{w} C) [HasMulticoequalizer I]

/-- The canonical map from the multiequalizer to the objects on the left. -/
abbrev π (b : I.R) : I.right b ⟶ multicoequalizer I :=
  colimit.ι I.multispan (WalkingMultispan.right _)
#align category_theory.limits.multicoequalizer.π CategoryTheory.Limits.Multicoequalizer.π

/-- The multicofork associated to the multicoequalizer. -/
abbrev multicofork : Multicofork I :=
  colimit.cocone _
#align category_theory.limits.multicoequalizer.multicofork CategoryTheory.Limits.Multicoequalizer.multicofork

@[simp]
theorem multicofork_π (b) : (Multicoequalizer.multicofork I).π b = Multicoequalizer.π I b :=
  rfl
#align category_theory.limits.multicoequalizer.multicofork_π CategoryTheory.Limits.Multicoequalizer.multicofork_π

-- @[simp] -- Porting note: LHS simplifies to obtain the normal form below
theorem multicofork_ι_app_right (b) :
    (Multicoequalizer.multicofork I).ι.app (WalkingMultispan.right b) = Multicoequalizer.π I b :=
  rfl
#align category_theory.limits.multicoequalizer.multicofork_ι_app_right CategoryTheory.Limits.Multicoequalizer.multicofork_ι_app_right

@[simp]
theorem multicofork_ι_app_right' (b) :
    colimit.ι (MultispanIndex.multispan I) (WalkingMultispan.right b) = π I b :=
  rfl

@[reassoc]
theorem condition (a) :
    I.fst a ≫ Multicoequalizer.π I (I.fstFrom a) = I.snd a ≫ Multicoequalizer.π I (I.sndFrom a) :=
  Multicofork.condition _ _
#align category_theory.limits.multicoequalizer.condition CategoryTheory.Limits.Multicoequalizer.condition

/-- Construct a morphism from the multicoequalizer from its universal property. -/
abbrev desc (W : C) (k : ∀ b, I.right b ⟶ W)
    (h : ∀ a, I.fst a ≫ k (I.fstFrom a) = I.snd a ≫ k (I.sndFrom a)) : multicoequalizer I ⟶ W :=
  colimit.desc _ (Multicofork.ofπ I _ k h)
#align category_theory.limits.multicoequalizer.desc CategoryTheory.Limits.Multicoequalizer.desc

@[reassoc] -- Porting note: simp can prove this, removed attribute
theorem π_desc (W : C) (k : ∀ b, I.right b ⟶ W)
    (h : ∀ a, I.fst a ≫ k (I.fstFrom a) = I.snd a ≫ k (I.sndFrom a)) (b) :
    Multicoequalizer.π I b ≫ Multicoequalizer.desc I _ k h = k _ :=
  colimit.ι_desc _ _
#align category_theory.limits.multicoequalizer.π_desc CategoryTheory.Limits.Multicoequalizer.π_desc

@[ext]
theorem hom_ext {W : C} (i j : multicoequalizer I ⟶ W)
    (h : ∀ b, Multicoequalizer.π I b ≫ i = Multicoequalizer.π I b ≫ j) : i = j :=
  colimit.hom_ext
    (by
      rintro (a | b)
      · simp_rw [← colimit.w I.multispan (WalkingMultispan.Hom.fst a), Category.assoc, h]
      · apply h)
#align category_theory.limits.multicoequalizer.hom_ext CategoryTheory.Limits.Multicoequalizer.hom_ext

variable [HasCoproduct I.left] [HasCoproduct I.right]

instance : HasCoequalizer I.fstSigmaMap I.sndSigmaMap :=
  ⟨⟨⟨_,
      IsColimit.ofPreservesCoconeInitial
        I.multicoforkEquivSigmaCofork.functor (colimit.isColimit _)⟩⟩⟩

/-- The multicoequalizer is isomorphic to the coequalizer of `∐ I.left ⇉ ∐ I.right`. -/
def isoCoequalizer : multicoequalizer I ≅ coequalizer I.fstSigmaMap I.sndSigmaMap :=
  colimit.isoColimitCocone
    ⟨_,
      IsColimit.ofPreservesCoconeInitial I.multicoforkEquivSigmaCofork.inverse
        (colimit.isColimit _)⟩
#align category_theory.limits.multicoequalizer.iso_coequalizer CategoryTheory.Limits.Multicoequalizer.isoCoequalizer

/-- The canonical projection `∐ I.right ⟶ multicoequalizer I`. -/
def sigmaπ : ∐ I.right ⟶ multicoequalizer I :=
  coequalizer.π I.fstSigmaMap I.sndSigmaMap ≫ (isoCoequalizer I).inv
#align category_theory.limits.multicoequalizer.sigma_π CategoryTheory.Limits.Multicoequalizer.sigmaπ

@[reassoc (attr := simp)]
theorem ι_sigmaπ (b) : Sigma.ι I.right b ≫ sigmaπ I = π I b := by
  rw [sigmaπ, ← Category.assoc, Iso.comp_inv_eq, isoCoequalizer]
  simp only [MultispanIndex.multicoforkEquivSigmaCofork_inverse,
    MultispanIndex.ofSigmaCoforkFunctor_obj, colimit.isoColimitCocone_ι_hom,
    Multicofork.ofSigmaCofork_pt, colimit.cocone_x, Multicofork.π_eq_app_right]
  rfl
#align category_theory.limits.multicoequalizer.ι_sigma_π CategoryTheory.Limits.Multicoequalizer.ι_sigmaπ

instance : Epi (sigmaπ I) := epi_comp _ _

end Multicoequalizer

end

end CategoryTheory.Limits
```
