# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EffectiveEpimorphic.Variantd6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `82d299e2123de55049075ce472bd145a0a8e7334` · SHA-256 `d6db28aba2fbbb8add15acc0ec23a36f65cd729b56f81ffda48a87ec318346e2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Adam Topaz. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Adam Topaz
-/

import Mathlib.CategoryTheory.Sites.Sieves
import Mathlib.CategoryTheory.Limits.Shapes.KernelPair

/-!

# Effective epimorphisms

We define the notion of effective epimorphic (pre)sieves, morphisms and family of morphisms
and provide some API for relating the three notions.

More precisely, if `f` is a morphism, then `f` is an effective epi if and only if the sieve
it generates is effective epimorphic; see `CategoryTheory.Sieve.effectiveEpimorphic_singleton`.
The analogous statement for a family of morphisms is in the theorem
`CategoryTheory.Sieve.effectiveEpimorphic_family`.

We have defined the notion of effective epi for morphisms and families of morphisms in such a
way that avoids requiring the existence of pullbacks. However, if the relevant pullbacks exist
then these definitions should be equivalent (project: formalize this!).
See [nlab: *Effective Epimorphism*](https://ncatlab.org/nlab/show/effective+epimorphism) and
[Stacks 00WP](https://stacks.math.columbia.edu/tag/00WP) for the standard definitions.

## References
- [Elephant]: *Sketches of an Elephant*, P. T. Johnstone: C2.1, Example 2.1.12.
- [nlab: *Effective Epimorphism*](https://ncatlab.org/nlab/show/effective+epimorphism) and
- [Stacks 00WP](https://stacks.math.columbia.edu/tag/00WP) for the standard definitions.

-/

set_option autoImplicit true

namespace CategoryTheory

open Limits

variable {C : Type*} [Category C]

/-- A sieve is effective epimorphic if the associated cocone is a colimit cocone. -/
def Sieve.EffectiveEpimorphic {X : C} (S : Sieve X) : Prop :=
  Nonempty (IsColimit (S : Presieve X).cocone)

/-- A presieve is effective epimorphic if the cocone associated to the sieve it generates
is a colimit cocone. -/
abbrev Presieve.EffectiveEpimorphic {X : C} (S : Presieve X) : Prop :=
  (Sieve.generate S).EffectiveEpimorphic

/--
The sieve of morphisms which factor through a given morphism `f`.
This is equal to `Sieve.generate (Presieve.singleton f)`, but has
more convenient definitional properties.
-/
def Sieve.generateSingleton {X Y : C} (f : Y ⟶ X) : Sieve X where
  arrows Z := { g | ∃ (e : Z ⟶ Y), e ≫ f = g }
  downward_closed := by
    rintro W Z g ⟨e,rfl⟩ q
    refine ⟨q ≫ e, by simp⟩

lemma Sieve.generateSingleton_eq {X Y : C} (f : Y ⟶ X) :
    Sieve.generate (Presieve.singleton f) = Sieve.generateSingleton f := by
  ext Z g
  constructor
  · rintro ⟨W,i,p,⟨⟩,rfl⟩
    exact ⟨i,rfl⟩
  · rintro ⟨g,h⟩
    exact ⟨Y,g,f,⟨⟩,h⟩

/--
This structure encodes the data required for a morphism to be an effective epimorphism.
-/
structure EffectiveEpiStruct {X Y : C} (f : Y ⟶ X) where
  desc : ∀ {W : C} (e : Y ⟶ W),
    (∀ {Z : C} (g₁ g₂ : Z ⟶ Y), g₁ ≫ f = g₂ ≫ f → g₁ ≫ e = g₂ ≫ e) → (X ⟶ W)
  fac : ∀ {W : C} (e : Y ⟶ W)
    (h : ∀ {Z : C} (g₁ g₂ : Z ⟶ Y), g₁ ≫ f = g₂ ≫ f → g₁ ≫ e = g₂ ≫ e),
    f ≫ desc e h = e
  uniq : ∀ {W : C} (e : Y ⟶ W)
    (h : ∀ {Z : C} (g₁ g₂ : Z ⟶ Y), g₁ ≫ f = g₂ ≫ f → g₁ ≫ e = g₂ ≫ e)
    (m : X ⟶ W), f ≫ m = e → m = desc e h

attribute [nolint docBlame]
  EffectiveEpiStruct.desc
  EffectiveEpiStruct.fac
  EffectiveEpiStruct.uniq

/--
A morphism `f : Y ⟶ X` is an effective epimorphism provided that `f` exhibits `X` as a colimit
of the diagram of all "relations" `R ⇉ Y`.
If `f` has a kernel pair, then this is equivalent to showing that the corresponding cofork is
a colimit.
-/
class EffectiveEpi {X Y : C} (f : Y ⟶ X) : Prop where
  effectiveEpi : Nonempty (EffectiveEpiStruct f)

attribute [nolint docBlame] EffectiveEpi.effectiveEpi

/-- Some chosen `EffectiveEpiStruct` associated to an effective epi. -/
noncomputable
def EffectiveEpi.getStruct {X Y : C} (f : Y ⟶ X) [EffectiveEpi f] :
  EffectiveEpiStruct f := EffectiveEpi.effectiveEpi.some

/-- Descend along an effective epi. -/
noncomputable
def EffectiveEpi.desc {X Y W : C} (f : Y ⟶ X) [EffectiveEpi f]
  (e : Y ⟶ W) (h : ∀ {Z : C} (g₁ g₂ : Z ⟶ Y), g₁ ≫ f = g₂ ≫ f → g₁ ≫ e = g₂ ≫ e) :
  X ⟶ W := (EffectiveEpi.getStruct f).desc e h

@[reassoc (attr := simp)]
lemma EffectiveEpi.fac {X Y W : C} (f : Y ⟶ X) [EffectiveEpi f]
    (e : Y ⟶ W) (h : ∀ {Z : C} (g₁ g₂ : Z ⟶ Y), g₁ ≫ f = g₂ ≫ f → g₁ ≫ e = g₂ ≫ e) :
    f ≫ EffectiveEpi.desc f e h = e :=
  (EffectiveEpi.getStruct f).fac e h

lemma EffectiveEpi.uniq {X Y W : C} (f : Y ⟶ X) [EffectiveEpi f]
    (e : Y ⟶ W) (h : ∀ {Z : C} (g₁ g₂ : Z ⟶ Y), g₁ ≫ f = g₂ ≫ f → g₁ ≫ e = g₂ ≫ e)
    (m : X ⟶ W) (hm : f ≫ m = e) :
    m = EffectiveEpi.desc f e h :=
  (EffectiveEpi.getStruct f).uniq e h _ hm

instance epiOfEffectiveEpi {X Y : C} (f : Y ⟶ X) [EffectiveEpi f] : Epi f := by
  constructor
  intro W m₁ m₂ h
  have : m₂ = EffectiveEpi.desc f (f ≫ m₂)
    (fun {Z} g₁ g₂ h => by simp only [← Category.assoc, h]) := EffectiveEpi.uniq _ _ _ _ rfl
  rw [this]
  exact EffectiveEpi.uniq _ _ _ _ h

/--
Implementation: This is a construction which will be used in the proof that
the sieve generated by a single arrow is effective epimorphic if and only if
the arrow is an effective epi.
-/
def isColimitOfEffectiveEpiStruct {X Y : C} (f : Y ⟶ X) (Hf : EffectiveEpiStruct f) :
    IsColimit (Sieve.generateSingleton f : Presieve X).cocone :=
  letI D := FullSubcategory fun T : Over X => Sieve.generateSingleton f T.hom
  letI F : D ⥤ _ := (Sieve.generateSingleton f).arrows.diagram
  { desc := fun S => Hf.desc (S.ι.app ⟨Over.mk f, ⟨𝟙 _, by simp⟩⟩) <| by
      intro Z g₁ g₂ h
      let Y' : D := ⟨Over.mk f, 𝟙 _, by simp⟩
      let Z' : D := ⟨Over.mk (g₁ ≫ f), g₁, rfl⟩
      let g₁' : Z' ⟶ Y' := Over.homMk g₁
      let g₂' : Z' ⟶ Y' := Over.homMk g₂ (by simp [h])
      change F.map g₁' ≫ _ = F.map g₂' ≫ _
      simp only [S.w]
    fac := by
      rintro S ⟨T,g,hT⟩
      dsimp
      nth_rewrite 1 [← hT, Category.assoc, Hf.fac]
      let y : D := ⟨Over.mk f, 𝟙 _, by simp⟩
      let x : D := ⟨Over.mk T.hom, g, hT⟩
      let g' : x ⟶ y := Over.homMk g
      change F.map g' ≫ _ = _
      rw [S.w]
      rfl
    uniq := by
      intro S m hm
      dsimp
      generalize_proofs h1 h2
      apply Hf.uniq _ h2
      exact hm ⟨Over.mk f, 𝟙 _, by simp⟩ }

/--
Implementation: This is a construction which will be used in the proof that
the sieve generated by a single arrow is effective epimorphic if and only if
the arrow is an effective epi.
-/
noncomputable
def effectiveEpiStructOfIsColimit {X Y : C} (f : Y ⟶ X)
    (Hf : IsColimit (Sieve.generateSingleton f : Presieve X).cocone) :
    EffectiveEpiStruct f :=
  let aux {W : C} (e : Y ⟶ W)
    (h : ∀ {Z : C} (g₁ g₂ : Z ⟶ Y), g₁ ≫ f = g₂ ≫ f → g₁ ≫ e = g₂ ≫ e) :
    Cocone (Sieve.generateSingleton f).arrows.diagram :=
    { pt := W
      ι := {
        app := fun ⟨T,hT⟩ => hT.choose ≫ e
        naturality := by
          rintro ⟨A,hA⟩ ⟨B,hB⟩ (q : A ⟶ B)
          dsimp; simp only [← Category.assoc, Category.comp_id]
          apply h
          rw [Category.assoc, hB.choose_spec, hA.choose_spec, Over.w] } }
  { desc := fun {W} e h => Hf.desc (aux e h)
    fac := by
      intro W e h
      dsimp
      have := Hf.fac (aux e h) ⟨Over.mk f, 𝟙 _, by simp⟩
      dsimp at this; rw [this]; clear this
      nth_rewrite 2 [← Category.id_comp e]
      apply h
      generalize_proofs hh
      rw [hh.choose_spec, Category.id_comp]
    uniq := by
      intro W e h m hm
      dsimp
      apply Hf.uniq (aux e h)
      rintro ⟨A,g,hA⟩
      dsimp
      nth_rewrite 1 [← hA, Category.assoc, hm]
      apply h
      generalize_proofs hh
      rwa [hh.choose_spec] }

theorem Sieve.effectiveEpimorphic_singleton {X Y : C} (f : Y ⟶ X) :
    (Presieve.singleton f).EffectiveEpimorphic ↔ (EffectiveEpi f) := by
  constructor
  · intro (h : Nonempty _)
    rw [Sieve.generateSingleton_eq] at h
    constructor
    apply Nonempty.map (effectiveEpiStructOfIsColimit _) h
  · rintro ⟨h⟩
    show Nonempty _
    rw [Sieve.generateSingleton_eq]
    apply Nonempty.map (isColimitOfEffectiveEpiStruct _) h

/--
The sieve of morphisms which factor through a morphism in a given family.
This is equal to `Sieve.generate (Presieve.ofArrows X π)`, but has
more convenient definitional properties.
-/
def Sieve.generateFamily {B : C} {α : Type*} (X : α → C) (π : (a : α) → (X a ⟶ B)) :
    Sieve B where
  arrows Y := { f | ∃ (a : α) (g : Y ⟶ X a), g ≫ π a = f }
  downward_closed := by
    rintro Y₁ Y₂ g₁ ⟨a,q,rfl⟩ e
    refine ⟨a, e ≫ q, by simp⟩

lemma Sieve.generateFamily_eq {B : C} {α : Type*} (X : α → C) (π : (a : α) → (X a ⟶ B)) :
    Sieve.generate (Presieve.ofArrows X π) = Sieve.generateFamily X π := by
  ext Y g
  constructor
  · rintro ⟨W, g, f, ⟨a⟩, rfl⟩
    exact ⟨a, g, rfl⟩
  · rintro ⟨a, g, rfl⟩
    refine ⟨_, g, π a, ⟨a⟩, rfl⟩

/--
This structure encodes the data required for a family of morphisms to be effective epimorphic.
-/
structure EffectiveEpiFamilyStruct {B : C} {α : Type*}
    (X : α → C) (π : (a : α) → (X a ⟶ B)) where
  desc : ∀ {W} (e : (a : α) → (X a ⟶ W)),
          (∀ {Z : C} (a₁ a₂ : α) (g₁ : Z ⟶ X a₁) (g₂ : Z ⟶ X a₂),
      g₁ ≫ π _ = g₂ ≫ π _ → g₁ ≫ e _ = g₂ ≫ e _) → (B ⟶ W)
  fac : ∀ {W} (e : (a : α) → (X a ⟶ W))
          (h : ∀ {Z : C} (a₁ a₂ : α) (g₁ : Z ⟶ X a₁) (g₂ : Z ⟶ X a₂),
            g₁ ≫ π _ = g₂ ≫ π _ → g₁ ≫ e _ = g₂ ≫ e _)
          (a : α), π a ≫ desc e h = e a
  uniq : ∀ {W} (e : (a : α) → (X a ⟶ W))
          (h : ∀ {Z : C} (a₁ a₂ : α) (g₁ : Z ⟶ X a₁) (g₂ : Z ⟶ X a₂),
            g₁ ≫ π _ = g₂ ≫ π _ → g₁ ≫ e _ = g₂ ≫ e _)
          (m : B ⟶ W), (∀ (a : α), π a ≫ m = e a) → m = desc e h

attribute [nolint docBlame]
  EffectiveEpiFamilyStruct.desc
  EffectiveEpiFamilyStruct.fac
  EffectiveEpiFamilyStruct.uniq

/--
A family of morphisms `f a : X a ⟶ B` indexed by `α` is effective epimorphic
provided that the `f a` exhibit `B` as a colimit of the diagram of all "relations"
`R → X a₁`, `R ⟶ X a₂` for all `a₁ a₂ : α`.
-/
class EffectiveEpiFamily {B : C} {α : Type*} (X : α → C) (π : (a : α) → (X a ⟶ B)) : Prop where
  effectiveEpiFamily : Nonempty (EffectiveEpiFamilyStruct X π)

attribute [nolint docBlame] EffectiveEpiFamily.effectiveEpiFamily

/-- Some chosen `EffectiveEpiFamilyStruct` associated to an effective epi family. -/
noncomputable
def EffectiveEpiFamily.getStruct {B : C} {α : Type*} (X : α → C) (π : (a : α) → (X a ⟶ B))
    [EffectiveEpiFamily X π] : EffectiveEpiFamilyStruct X π :=
  EffectiveEpiFamily.effectiveEpiFamily.some

/-- Descend along an effective epi family. -/
noncomputable
def EffectiveEpiFamily.desc {B W : C} {α : Type*} (X : α → C) (π : (a : α) → (X a ⟶ B))
    [EffectiveEpiFamily X π] (e : (a : α) → (X a ⟶ W))
    (h : ∀ {Z : C} (a₁ a₂ : α) (g₁ : Z ⟶ X a₁) (g₂ : Z ⟶ X a₂),
      g₁ ≫ π _ = g₂ ≫ π _ → g₁ ≫ e _ = g₂ ≫ e _) : B ⟶ W :=
  (EffectiveEpiFamily.getStruct X π).desc e h

@[reassoc (attr := simp)]
lemma EffectiveEpiFamily.fac {B W : C} {α : Type*} (X : α → C) (π : (a : α) → (X a ⟶ B))
    [EffectiveEpiFamily X π] (e : (a : α) → (X a ⟶ W))
    (h : ∀ {Z : C} (a₁ a₂ : α) (g₁ : Z ⟶ X a₁) (g₂ : Z ⟶ X a₂),
      g₁ ≫ π _ = g₂ ≫ π _ → g₁ ≫ e _ = g₂ ≫ e _) (a : α) :
    π a ≫ EffectiveEpiFamily.desc X π e h = e a :=
  (EffectiveEpiFamily.getStruct X π).fac e h a

/-
NOTE: The `simpNF` linter complains for some reason. See the two examples below.
Zulip discussion:
https://leanprover.zulipchat.com/#narrow/stream/287929-mathlib4/topic/simpNF.20bug.3F
-/
attribute [nolint simpNF]
  EffectiveEpiFamily.fac
  EffectiveEpiFamily.fac_assoc

/-- The effective epi family structure on the identity -/
def effectiveEpiFamilyStructId : EffectiveEpiFamilyStruct (α : Unit → C) (fun _ => 𝟙 (α ())) where
  desc := fun e _ => e ()
  fac := by aesop_cat
  uniq := by aesop_cat

instance : EffectiveEpiFamily (fun _ => X : Unit → C) (fun _ => 𝟙 X) :=
  ⟨⟨effectiveEpiFamilyStructId⟩⟩

example {B W : C} {α : Type*} (X : α → C) (π : (a : α) → (X a ⟶ B))
    [EffectiveEpiFamily X π] (e : (a : α) → (X a ⟶ W))
    (h : ∀ {Z : C} (a₁ a₂ : α) (g₁ : Z ⟶ X a₁) (g₂ : Z ⟶ X a₂),
      g₁ ≫ π _ = g₂ ≫ π _ → g₁ ≫ e _ = g₂ ≫ e _) (a : α) :
    π a ≫ EffectiveEpiFamily.desc X π e h = e a :=
  by simp

example {B W Q : C} {α : Type*} (X : α → C) (π : (a : α) → (X a ⟶ B))
    [EffectiveEpiFamily X π] (e : (a : α) → (X a ⟶ W))
    (h : ∀ {Z : C} (a₁ a₂ : α) (g₁ : Z ⟶ X a₁) (g₂ : Z ⟶ X a₂),
      g₁ ≫ π _ = g₂ ≫ π _ → g₁ ≫ e _ = g₂ ≫ e _) (a : α)
    (q : W ⟶ Q) :
    π a ≫ EffectiveEpiFamily.desc X π e h ≫ q = e a ≫ q :=
  by simp

lemma EffectiveEpiFamily.uniq {B W : C} {α : Type*} (X : α → C) (π : (a : α) → (X a ⟶ B))
    [EffectiveEpiFamily X π] (e : (a : α) → (X a ⟶ W))
    (h : ∀ {Z : C} (a₁ a₂ : α) (g₁ : Z ⟶ X a₁) (g₂ : Z ⟶ X a₂),
      g₁ ≫ π _ = g₂ ≫ π _ → g₁ ≫ e _ = g₂ ≫ e _)
    (m : B ⟶ W) (hm : ∀ a, π a ≫ m = e a) :
    m = EffectiveEpiFamily.desc X π e h :=
  (EffectiveEpiFamily.getStruct X π).uniq e h m hm

-- TODO: Once we have "jointly epimorphic families", we could rephrase this as such a property.
lemma EffectiveEpiFamily.hom_ext {B W : C} {α : Type*} (X : α → C) (π : (a : α) → (X a ⟶ B))
    [EffectiveEpiFamily X π] (m₁ m₂ : B ⟶ W) (h : ∀ a, π a ≫ m₁ = π a ≫ m₂) :
    m₁ = m₂ := by
  have : m₂ = EffectiveEpiFamily.desc X π (fun a => π a ≫ m₂)
      (fun a₁ a₂ g₁ g₂ h => by simp only [← Category.assoc, h]) := by
    apply EffectiveEpiFamily.uniq; intro; rfl
  rw [this]
  exact EffectiveEpiFamily.uniq _ _ _ _ _ h

instance epiCoproductDescOfEffectiveEpiFamily {B : C} {α : Type*}
    (X : α → C) (π : (a : α) → (X a ⟶ B)) [EffectiveEpiFamily X π] [HasCoproduct X] :
    Epi (Sigma.desc π) := by
  constructor
  intro Z g h H
  apply EffectiveEpiFamily.hom_ext X π
  intro a
  suffices (Sigma.ι _ a ≫ Sigma.desc π) ≫ g = (Sigma.ι _ a ≫ Sigma.desc π) ≫ h by
    simpa only [colimit.ι_desc] using this
  simp only [Category.assoc, H]

/--
Implementation: This is a construction which will be used in the proof that
the sieve generated by a family of arrows is effective epimorphic if and only if
the family is an effective epi.
-/
def isColimitOfEffectiveEpiFamilyStruct {B : C} {α : Type*}
    (X : α → C) (π : (a : α) → (X a ⟶ B)) (H : EffectiveEpiFamilyStruct X π) :
    IsColimit (Sieve.generateFamily X π : Presieve B).cocone :=
  letI D := FullSubcategory fun T : Over B => Sieve.generateFamily X π T.hom
  letI F : D ⥤ _ := (Sieve.generateFamily X π).arrows.diagram
  { desc := fun S => H.desc (fun a => S.ι.app ⟨Over.mk (π a), ⟨a,𝟙 _, by simp⟩⟩) <| by
      intro Z a₁ a₂ g₁ g₂ h
      dsimp
      let A₁ : D := ⟨Over.mk (π a₁), a₁, 𝟙 _, by simp⟩
      let A₂ : D := ⟨Over.mk (π a₂), a₂, 𝟙 _, by simp⟩
      let Z' : D := ⟨Over.mk (g₁ ≫ π a₁), a₁, g₁, rfl⟩
      let i₁ : Z' ⟶ A₁ := Over.homMk g₁
      let i₂ : Z' ⟶ A₂ := Over.homMk g₂
      change F.map i₁ ≫ _ = F.map i₂ ≫ _
      simp only [S.w]
    fac := by
      intro S ⟨T, a, (g : T.left ⟶ X a), hT⟩
      dsimp
      nth_rewrite 1 [← hT, Category.assoc, H.fac]
      let A : D := ⟨Over.mk (π a), a, 𝟙 _, by simp⟩
      let B : D := ⟨Over.mk T.hom, a, g, hT⟩
      let i : B ⟶ A := Over.homMk g
      change F.map i ≫ _ = _
      rw [S.w]
      rfl
    uniq := by
      intro S m hm; dsimp
      apply H.uniq
      intro a
      exact hm ⟨Over.mk (π a), a, 𝟙 _, by simp⟩ }

/--
Implementation: This is a construction which will be used in the proof that
the sieve generated by a family of arrows is effective epimorphic if and only if
the family is an effective epi.
-/
noncomputable
def effectiveEpiFamilyStructOfIsColimit {B : C} {α : Type*}
    (X : α → C) (π : (a : α) → (X a ⟶ B))
    (H : IsColimit (Sieve.generateFamily X π : Presieve B).cocone) :
    EffectiveEpiFamilyStruct X π :=
  let aux {W : C} (e : (a : α) → (X a ⟶ W))
    (h : ∀ {Z : C} (a₁ a₂ : α) (g₁ : Z ⟶ X a₁) (g₂ : Z ⟶ X a₂),
      g₁ ≫ π _ = g₂ ≫ π _ → g₁ ≫ e _ = g₂ ≫ e _) :
    Cocone (Sieve.generateFamily X π).arrows.diagram := {
      pt := W
      ι := {
        app := fun ⟨T,hT⟩ => hT.choose_spec.choose ≫ e hT.choose
        naturality := by
          intro ⟨A,a,(g₁ : A.left ⟶ _),ha⟩ ⟨B,b,(g₂ : B.left ⟶ _),hb⟩ (q : A ⟶ B)
          dsimp; rw [Category.comp_id, ← Category.assoc]
          apply h; rw [Category.assoc]
          generalize_proofs h1 h2 h3 h4
          rw [h2.choose_spec, h4.choose_spec, Over.w] } }
  { desc := fun {W} e h => H.desc (aux e h)
    fac := by
      intro W e h a
      dsimp
      have := H.fac (aux e h) ⟨Over.mk (π a), a, 𝟙 _, by simp⟩
      dsimp at this; rw [this]; clear this
      conv_rhs => rw [← Category.id_comp (e a)]
      apply h
      generalize_proofs h1 h2
      rw [h2.choose_spec, Category.id_comp]
    uniq := by
      intro W e h m hm
      apply H.uniq (aux e h)
      rintro ⟨T, a, (g : T.left ⟶ _), ha⟩
      dsimp
      nth_rewrite 1 [← ha, Category.assoc, hm]
      apply h
      generalize_proofs h1 h2
      rwa [h2.choose_spec] }

theorem Sieve.effectiveEpimorphic_family {B : C} {α : Type*}
    (X : α → C) (π : (a : α) → (X a ⟶ B)) :
    (Presieve.ofArrows X π).EffectiveEpimorphic ↔ EffectiveEpiFamily X π := by
  constructor
  · intro (h : Nonempty _)
    rw [Sieve.generateFamily_eq] at h
    constructor
    apply Nonempty.map (effectiveEpiFamilyStructOfIsColimit _ _) h
  · rintro ⟨h⟩
    show Nonempty _
    rw [Sieve.generateFamily_eq]
    apply Nonempty.map (isColimitOfEffectiveEpiFamilyStruct _ _) h


section instances

/--
Given an `EffectiveEpiFamily X π` such that the coproduct of `X` exists, `Sigma.desc π` is an
`EffectiveEpi`.
-/
noncomputable
def EffectiveEpiFamily_descStruct {B : C} {α : Type*} (X : α → C) (π : (a : α) → (X a ⟶ B))
    [HasCoproduct X] [EffectiveEpiFamily X π] : EffectiveEpiStruct (Sigma.desc π) where
  desc e h := EffectiveEpiFamily.desc X π (fun a ↦ Sigma.ι X a ≫ e) (fun a₁ a₂ g₁ g₂ hg ↦ by
    simp only [← Category.assoc]
    apply h (g₁ ≫ Sigma.ι X a₁) (g₂ ≫ Sigma.ι X a₂)
    simpa only [Category.assoc, colimit.ι_desc, Cofan.mk_pt, Cofan.mk_ι_app])
  fac e h := by
    ext a
    simp only [colimit.ι_desc_assoc, Discrete.functor_obj, Cofan.mk_pt, Cofan.mk_ι_app,
      EffectiveEpiFamily.fac]
  uniq e _ m hm := by
    have := EffectiveEpiFamily.uniq X π (fun a ↦ Sigma.ι X a ≫ e) ?_ m
    · apply this
      intro a
      rw [← hm]
      simp only [colimit.ι_desc_assoc, Discrete.functor_obj, Cofan.mk_pt, Cofan.mk_ι_app]
    · intro Z a₁ a₂ g₁ g₂ hg
      rw [← hm]
      simp only [colimit.ι_desc_assoc, Discrete.functor_obj, Cofan.mk_pt, Cofan.mk_ι_app]
      rw [← Category.assoc, hg, Category.assoc]

instance {B : C} {α : Type*} (X : α → C) (π : (a : α) → (X a ⟶ B)) [HasCoproduct X]
    [EffectiveEpiFamily X π] : EffectiveEpi (Sigma.desc π) :=
  ⟨⟨EffectiveEpiFamily_descStruct X π⟩⟩

/--
An `EffectiveEpiFamily` consisting of a single `EffectiveEpi`
-/
noncomputable
def EffectiveEpi_familyStruct {B X : C} (f : X ⟶ B) [EffectiveEpi f] :
    EffectiveEpiFamilyStruct (fun () ↦ X) (fun () ↦ f) where
  desc e h := EffectiveEpi.desc f (e ()) (fun g₁ g₂ hg ↦ h () () g₁ g₂ hg)
  fac e h := fun _ ↦ EffectiveEpi.fac f (e ()) (fun g₁ g₂ hg ↦ h () () g₁ g₂ hg)
  uniq e h m hm := by apply EffectiveEpi.uniq f (e ()) (h () ()); exact hm ()

instance {B X : C} (f : X ⟶ B) [EffectiveEpi f] : EffectiveEpiFamily (fun () ↦ X) (fun () ↦ f) :=
  ⟨⟨EffectiveEpi_familyStruct f⟩⟩

/--
A family of morphisms with the same target inducing an isomorphism from the coproduct to the target
is an `EffectiveEpiFamily`.
-/
noncomputable
def EffectiveEpiFamilyStruct_of_isIso_desc {B : C} {α : Type*} (X : α → C)
    (π : (a : α) → (X a ⟶ B)) [HasCoproduct X] [IsIso (Sigma.desc π)] :
    EffectiveEpiFamilyStruct X π where
  desc e _ := (asIso (Sigma.desc π)).inv ≫ (Sigma.desc e)
  fac e h := by
    intro a
    have : π a = Sigma.ι X a ≫ (asIso (Sigma.desc π)).hom := by simp only [asIso_hom,
      colimit.ι_desc, Cofan.mk_pt, Cofan.mk_ι_app]
    rw [this, Category.assoc]
    simp only [asIso_hom, asIso_inv, IsIso.hom_inv_id_assoc, colimit.ι_desc, Cofan.mk_pt,
      Cofan.mk_ι_app]
  uniq e h m hm := by
    simp only [asIso_inv, IsIso.eq_inv_comp]
    ext a
    simp only [colimit.ι_desc_assoc, Discrete.functor_obj, Cofan.mk_pt, Cofan.mk_ι_app,
      colimit.ι_desc]
    exact hm a

instance {B : C} {α : Type*} (X : α → C) (π : (a : α) → (X a ⟶ B)) [HasCoproduct X]
    [IsIso (Sigma.desc π)] : EffectiveEpiFamily X π :=
  ⟨⟨EffectiveEpiFamilyStruct_of_isIso_desc X π⟩⟩

end instances

end CategoryTheory
```
