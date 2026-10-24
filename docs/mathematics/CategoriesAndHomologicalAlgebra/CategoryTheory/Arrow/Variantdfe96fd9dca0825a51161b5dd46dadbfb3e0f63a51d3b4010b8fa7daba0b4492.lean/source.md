# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Arrow.Variantdfe96fd9dca0825a51161b5dd46dadbfb3e0f63a51d3b4010b8fa7daba0b4492

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `25adda394af29fc0be5a8d77684f8a4e8c4aaf3a` · SHA-256 `dfe96fd9dca0825a51161b5dd46dadbfb3e0f63a51d3b4010b8fa7daba0b4492`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Markus Himmel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Markus Himmel
-/
import Mathlib.CategoryTheory.Comma

#align_import category_theory.arrow from "leanprover-community/mathlib"@"32253a1a1071173b33dc7d6a218cf722c6feb514"

/-!
# The category of arrows

The category of arrows, with morphisms commutative squares.
We set this up as a specialization of the comma category `Comma L R`,
where `L` and `R` are both the identity functor.

## Tags

comma, arrow
-/


namespace CategoryTheory

universe v u

-- morphism levels before object levels. See note [CategoryTheory universes].
variable {T : Type u} [Category.{v} T]

section

variable (T)

/-- The arrow category of `T` has as objects all morphisms in `T` and as morphisms commutative
     squares in `T`. -/
def Arrow :=
  Comma.{v, v, v} (𝟭 T) (𝟭 T)
#align category_theory.arrow CategoryTheory.Arrow

/- Porting note: could not derive `Category` above so this instance works in its place-/
instance : Category (Arrow T) := commaCategory

-- Satisfying the inhabited linter
instance Arrow.inhabited [Inhabited T] : Inhabited (Arrow T)
    where default := show Comma (𝟭 T) (𝟭 T) from default
#align category_theory.arrow.inhabited CategoryTheory.Arrow.inhabited

end

namespace Arrow

@[ext]
lemma hom_ext {X Y : Arrow T} (f g : X ⟶ Y) (h₁ : f.left = g.left) (h₂ : f.right = g.right) :
    f = g :=
  CommaMorphism.ext _ _ h₁ h₂

@[simp]
theorem id_left (f : Arrow T) : CommaMorphism.left (𝟙 f) = 𝟙 f.left :=
  rfl
#align category_theory.arrow.id_left CategoryTheory.Arrow.id_left

@[simp]
theorem id_right (f : Arrow T) : CommaMorphism.right (𝟙 f) = 𝟙 f.right :=
  rfl
#align category_theory.arrow.id_right CategoryTheory.Arrow.id_right

-- porting note: added to ease automation
@[simp]
theorem comp_left {X Y Z : Arrow T} (f : X ⟶ Y) (g : Y ⟶ Z) :
  (f ≫ g).left = f.left ≫ g.left := rfl

-- porting note: added to ease automation
@[simp]
theorem comp_right {X Y Z : Arrow T} (f : X ⟶ Y) (g : Y ⟶ Z) :
  (f ≫ g).right = f.right ≫ g.right := rfl

/-- An object in the arrow category is simply a morphism in `T`. -/
@[simps]
def mk {X Y : T} (f : X ⟶ Y) : Arrow T where
  left := X
  right := Y
  hom := f
#align category_theory.arrow.mk CategoryTheory.Arrow.mk

@[simp]
theorem mk_eq (f : Arrow T) : Arrow.mk f.hom = f := by
  cases f
  rfl
#align category_theory.arrow.mk_eq CategoryTheory.Arrow.mk_eq

theorem mk_injective (A B : T) :
    Function.Injective (Arrow.mk : (A ⟶ B) → Arrow T) := fun f g h => by
  cases h
  rfl
#align category_theory.arrow.mk_injective CategoryTheory.Arrow.mk_injective

theorem mk_inj (A B : T) {f g : A ⟶ B} : Arrow.mk f = Arrow.mk g ↔ f = g :=
  (mk_injective A B).eq_iff
#align category_theory.arrow.mk_inj CategoryTheory.Arrow.mk_inj

/- Porting note : was marked as dangerous instance so changed from `Coe` to `CoeOut` -/
instance {X Y : T} : CoeOut (X ⟶ Y) (Arrow T) where
  coe := mk

/-- A morphism in the arrow category is a commutative square connecting two objects of the arrow
    category. -/
@[simps]
def homMk {f g : Arrow T} {u : f.left ⟶ g.left} {v : f.right ⟶ g.right}
    (w : u ≫ g.hom = f.hom ≫ v) : f ⟶ g where
  left := u
  right := v
  w := w
#align category_theory.arrow.hom_mk CategoryTheory.Arrow.homMk

/-- We can also build a morphism in the arrow category out of any commutative square in `T`. -/
@[simps]
def homMk' {X Y : T} {f : X ⟶ Y} {P Q : T} {g : P ⟶ Q} {u : X ⟶ P} {v : Y ⟶ Q} (w : u ≫ g = f ≫ v) :
    Arrow.mk f ⟶ Arrow.mk g where
  left := u
  right := v
  w := w
#align category_theory.arrow.hom_mk' CategoryTheory.Arrow.homMk'

/- Porting note : was warned simp could prove reassoc'd version. Found simp could not.
Added nolint. -/
@[reassoc (attr := simp, nolint simpNF)]
theorem w {f g : Arrow T} (sq : f ⟶ g) : sq.left ≫ g.hom = f.hom ≫ sq.right :=
  sq.w
#align category_theory.arrow.w CategoryTheory.Arrow.w

-- `w_mk_left` is not needed, as it is a consequence of `w` and `mk_hom`.
@[reassoc (attr := simp)]
theorem w_mk_right {f : Arrow T} {X Y : T} {g : X ⟶ Y} (sq : f ⟶ mk g) :
    sq.left ≫ g = f.hom ≫ sq.right :=
  sq.w
#align category_theory.arrow.w_mk_right CategoryTheory.Arrow.w_mk_right

theorem isIso_of_isIso_left_of_isIso_right {f g : Arrow T} (ff : f ⟶ g) [IsIso ff.left]
    [IsIso ff.right] : IsIso ff where
  out := by
    let inverse : g ⟶ f := ⟨inv ff.left, inv ff.right, (by simp)⟩
    apply Exists.intro inverse
    aesop_cat
#align category_theory.arrow.is_iso_of_iso_left_of_is_iso_right CategoryTheory.Arrow.isIso_of_isIso_left_of_isIso_right

/-- Create an isomorphism between arrows,
by providing isomorphisms between the domains and codomains,
and a proof that the square commutes. -/
@[simps!]
def isoMk {f g : Arrow T} (l : f.left ≅ g.left) (r : f.right ≅ g.right)
    (h : l.hom ≫ g.hom = f.hom ≫ r.hom := by aesop_cat) : f ≅ g :=
  Comma.isoMk l r h
#align category_theory.arrow.iso_mk CategoryTheory.Arrow.isoMk

/-- A variant of `Arrow.isoMk` that creates an iso between two `Arrow.mk`s with a better type
signature. -/
abbrev isoMk' {W X Y Z : T} (f : W ⟶ X) (g : Y ⟶ Z) (e₁ : W ≅ Y) (e₂ : X ≅ Z)
    (h : e₁.hom ≫ g = f ≫ e₂.hom := by aesop_cat) : Arrow.mk f ≅ Arrow.mk g :=
  Arrow.isoMk e₁ e₂ h
#align category_theory.arrow.iso_mk' CategoryTheory.Arrow.isoMk'

theorem hom.congr_left {f g : Arrow T} {φ₁ φ₂ : f ⟶ g} (h : φ₁ = φ₂) : φ₁.left = φ₂.left := by
  rw [h]
#align category_theory.arrow.hom.congr_left CategoryTheory.Arrow.hom.congr_left

@[simp]
theorem hom.congr_right {f g : Arrow T} {φ₁ φ₂ : f ⟶ g} (h : φ₁ = φ₂) : φ₁.right = φ₂.right := by
  rw [h]
#align category_theory.arrow.hom.congr_right CategoryTheory.Arrow.hom.congr_right

theorem iso_w {f g : Arrow T} (e : f ≅ g) : g.hom = e.inv.left ≫ f.hom ≫ e.hom.right := by
  have eq := Arrow.hom.congr_right e.inv_hom_id
  rw [Arrow.comp_right, Arrow.id_right] at eq
  erw [Arrow.w_assoc, eq, Category.comp_id]
#align category_theory.arrow.iso_w CategoryTheory.Arrow.iso_w

theorem iso_w' {W X Y Z : T} {f : W ⟶ X} {g : Y ⟶ Z} (e : Arrow.mk f ≅ Arrow.mk g) :
    g = e.inv.left ≫ f ≫ e.hom.right :=
  iso_w e
#align category_theory.arrow.iso_w' CategoryTheory.Arrow.iso_w'

section

variable {f g : Arrow T} (sq : f ⟶ g)

instance isIso_left [IsIso sq] : IsIso sq.left where
  out := by
    apply Exists.intro (inv sq).left
    simp only [← Comma.comp_left, IsIso.hom_inv_id, IsIso.inv_hom_id, Arrow.id_left,
      eq_self_iff_true, and_self_iff]
    simp
#align category_theory.arrow.is_iso_left CategoryTheory.Arrow.isIso_left

instance isIso_right [IsIso sq] : IsIso sq.right where
  out := by
    apply Exists.intro (inv sq).right
    simp only [← Comma.comp_right, IsIso.hom_inv_id, IsIso.inv_hom_id, Arrow.id_right,
      eq_self_iff_true, and_self_iff]
    simp
#align category_theory.arrow.is_iso_right CategoryTheory.Arrow.isIso_right

@[simp]
theorem inv_left [IsIso sq] : (inv sq).left = inv sq.left :=
  IsIso.eq_inv_of_hom_inv_id <| by rw [← Comma.comp_left, IsIso.hom_inv_id, id_left]
#align category_theory.arrow.inv_left CategoryTheory.Arrow.inv_left

@[simp]
theorem inv_right [IsIso sq] : (inv sq).right = inv sq.right :=
  IsIso.eq_inv_of_hom_inv_id <| by rw [← Comma.comp_right, IsIso.hom_inv_id, id_right]
#align category_theory.arrow.inv_right CategoryTheory.Arrow.inv_right

/- Porting note : simp can prove this so removed @[simp] -/
theorem left_hom_inv_right [IsIso sq] : sq.left ≫ g.hom ≫ inv sq.right = f.hom := by
  simp only [← Category.assoc, IsIso.comp_inv_eq, w]
#align category_theory.arrow.left_hom_inv_right CategoryTheory.Arrow.left_hom_inv_right

-- simp proves this
theorem inv_left_hom_right [IsIso sq] : inv sq.left ≫ f.hom ≫ sq.right = g.hom := by
  simp only [w, IsIso.inv_comp_eq]
#align category_theory.arrow.inv_left_hom_right CategoryTheory.Arrow.inv_left_hom_right

instance mono_left [Mono sq] : Mono sq.left where
  right_cancellation {Z} φ ψ h := by
    let aux : (Z ⟶ f.left) → (Arrow.mk (𝟙 Z) ⟶ f) := fun φ =>
      { left := φ
        right := φ ≫ f.hom }
    have : ∀ g, (aux g).right = g ≫ f.hom := fun g => by dsimp
    show (aux φ).left = (aux ψ).left
    congr 1
    rw [← cancel_mono sq]
    apply CommaMorphism.ext
    · exact h
    · rw [Comma.comp_right, Comma.comp_right, this, this, Category.assoc, Category.assoc]
      rw [←Arrow.w]
      simp only [← Category.assoc, h]
#align category_theory.arrow.mono_left CategoryTheory.Arrow.mono_left

instance epi_right [Epi sq] : Epi sq.right where
  left_cancellation {Z} φ ψ h := by
    let aux : (g.right ⟶ Z) → (g ⟶ Arrow.mk (𝟙 Z)) := fun φ =>
      { right := φ
        left := g.hom ≫ φ }
    show (aux φ).right = (aux ψ).right
    congr 1
    rw [← cancel_epi sq]
    apply CommaMorphism.ext
    · rw [Comma.comp_left, Comma.comp_left, Arrow.w_assoc, Arrow.w_assoc, h]
    · exact h
#align category_theory.arrow.epi_right CategoryTheory.Arrow.epi_right

end

/-- Given a square from an arrow `i` to an isomorphism `p`, express the source part of `sq`
in terms of the inverse of `p`. -/
@[simp]
theorem square_to_iso_invert (i : Arrow T) {X Y : T} (p : X ≅ Y) (sq : i ⟶ Arrow.mk p.hom) :
    i.hom ≫ sq.right ≫ p.inv = sq.left := by
  simpa only [Category.assoc] using (Iso.comp_inv_eq p).mpr (Arrow.w_mk_right sq).symm
#align category_theory.arrow.square_to_iso_invert CategoryTheory.Arrow.square_to_iso_invert

/-- Given a square from an isomorphism `i` to an arrow `p`, express the target part of `sq`
in terms of the inverse of `i`. -/
theorem square_from_iso_invert {X Y : T} (i : X ≅ Y) (p : Arrow T) (sq : Arrow.mk i.hom ⟶ p) :
    i.inv ≫ sq.left ≫ p.hom = sq.right := by simp only [Iso.inv_hom_id_assoc, Arrow.w, Arrow.mk_hom]
#align category_theory.arrow.square_from_iso_invert CategoryTheory.Arrow.square_from_iso_invert

variable {C : Type u} [Category.{v} C]

/-- A helper construction: given a square between `i` and `f ≫ g`, produce a square between
`i` and `g`, whose top leg uses `f`:
A  → X
     ↓f
↓i   Y             --> A → Y
     ↓g                ↓i  ↓g
B  → Z                 B → Z
 -/
@[simps]
def squareToSnd {X Y Z : C} {i : Arrow C} {f : X ⟶ Y} {g : Y ⟶ Z} (sq : i ⟶ Arrow.mk (f ≫ g)) :
    i ⟶ Arrow.mk g where
  left := sq.left ≫ f
  right := sq.right
#align category_theory.arrow.square_to_snd CategoryTheory.Arrow.squareToSnd

/-- The functor sending an arrow to its source. -/
@[simps!]
def leftFunc : Arrow C ⥤ C :=
  Comma.fst _ _
#align category_theory.arrow.left_func CategoryTheory.Arrow.leftFunc

/-- The functor sending an arrow to its target. -/
@[simps!]
def rightFunc : Arrow C ⥤ C :=
  Comma.snd _ _
#align category_theory.arrow.right_func CategoryTheory.Arrow.rightFunc

/-- The natural transformation from `leftFunc` to `rightFunc`, given by the arrow itself. -/
@[simps]
def leftToRight : (leftFunc : Arrow C ⥤ C) ⟶ rightFunc where app f := f.hom
#align category_theory.arrow.left_to_right CategoryTheory.Arrow.leftToRight

end Arrow

namespace Functor

universe v₁ v₂ u₁ u₂

variable {C : Type u₁} [Category.{v₁} C] {D : Type u₂} [Category.{v₂} D]

/-- A functor `C ⥤ D` induces a functor between the corresponding arrow categories. -/
@[simps]
def mapArrow (F : C ⥤ D) : Arrow C ⥤ Arrow D where
  obj a :=
    { left := F.obj a.left
      right := F.obj a.right
      hom := F.map a.hom }
  map f :=
    { left := F.map f.left
      right := F.map f.right
      w := by
        let w := f.w
        simp only [id_map] at w
        dsimp
        simp only [← F.map_comp, w] }
#align category_theory.functor.map_arrow CategoryTheory.Functor.mapArrow

end Functor

/-- The images of `f : Arrow C` by two isomorphic functors `F : C ⥤ D` are
isomorphic arrows in `D`. -/
def Arrow.isoOfNatIso {C D : Type*} [Category C] [Category D] {F G : C ⥤ D} (e : F ≅ G)
    (f : Arrow C) : F.mapArrow.obj f ≅ G.mapArrow.obj f :=
  Arrow.isoMk (e.app f.left) (e.app f.right)
#align category_theory.arrow.iso_of_nat_iso CategoryTheory.Arrow.isoOfNatIso

end CategoryTheory
```
