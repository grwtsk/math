# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Karoubi.Variant9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bf403af6d37087c2ec6162477af72f8b6cc721da` · SHA-256 `9ccf62894fe78b75aad6878badf74b9aa46856096133a5245b8b2410da1f2127`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.CategoryTheory.Idempotents.Basic
import Mathlib.CategoryTheory.Preadditive.AdditiveFunctor
import Mathlib.CategoryTheory.Equivalence

#align_import category_theory.idempotents.karoubi from "leanprover-community/mathlib"@"200eda15d8ff5669854ff6bcc10aaf37cb70498f"

/-!
# The Karoubi envelope of a category

In this file, we define the Karoubi envelope `Karoubi C` of a category `C`.

## Main constructions and definitions

- `Karoubi C` is the Karoubi envelope of a category `C`: it is an idempotent
complete category. It is also preadditive when `C` is preadditive.
- `toKaroubi C : C ⥤ Karoubi C` is a fully faithful functor, which is an equivalence
(`toKaroubiIsEquivalence`) when `C` is idempotent complete.

-/


noncomputable section

open CategoryTheory.Category CategoryTheory.Preadditive CategoryTheory.Limits BigOperators

namespace CategoryTheory

variable (C : Type*) [Category C]

namespace Idempotents

-- porting note: removed @[nolint has_nonempty_instance]
/-- In a preadditive category `C`, when an object `X` decomposes as `X ≅ P ⨿ Q`, one may
consider `P` as a direct factor of `X` and up to unique isomorphism, it is determined by the
obvious idempotent `X ⟶ P ⟶ X` which is the projection onto `P` with kernel `Q`. More generally,
one may define a formal direct factor of an object `X : C` : it consists of an idempotent
`p : X ⟶ X` which is thought as the "formal image" of `p`. The type `Karoubi C` shall be the
type of the objects of the karoubi envelope of `C`. It makes sense for any category `C`. -/
structure Karoubi where
  /-- an object of the underlying category -/
  X : C
  /-- an endomorphism of the object -/
  p : X ⟶ X
  /-- the condition that the given endomorphism is an idempotent -/
  idem : p ≫ p = p := by aesop_cat
#align category_theory.idempotents.karoubi CategoryTheory.Idempotents.Karoubi

namespace Karoubi

variable {C}

attribute [reassoc (attr := simp)] idem

@[ext]
theorem ext {P Q : Karoubi C} (h_X : P.X = Q.X) (h_p : P.p ≫ eqToHom h_X = eqToHom h_X ≫ Q.p) :
    P = Q := by
  cases P
  cases Q
  dsimp at h_X h_p
  subst h_X
  simpa only [mk.injEq, heq_eq_eq, true_and, eqToHom_refl, comp_id, id_comp] using h_p
#align category_theory.idempotents.karoubi.ext CategoryTheory.Idempotents.Karoubi.ext

/-- A morphism `P ⟶ Q` in the category `Karoubi C` is a morphism in the underlying category
`C` which satisfies a relation, which in the preadditive case, expresses that it induces a
map between the corresponding "formal direct factors" and that it vanishes on the complement
formal direct factor. -/
@[ext]
structure Hom (P Q : Karoubi C) where
  /-- a morphism between the underlying objects -/
  f : P.X ⟶ Q.X
  /-- compatibility of the given morphism with the given idempotents -/
  comm : f = P.p ≫ f ≫ Q.p := by aesop_cat
#align category_theory.idempotents.karoubi.hom CategoryTheory.Idempotents.Karoubi.Hom

instance [Preadditive C] (P Q : Karoubi C) : Inhabited (Hom P Q) :=
  ⟨⟨0, by rw [zero_comp, comp_zero]⟩⟩

@[reassoc (attr := simp)]
theorem p_comp {P Q : Karoubi C} (f : Hom P Q) : P.p ≫ f.f = f.f := by rw [f.comm, ← assoc, P.idem]
#align category_theory.idempotents.karoubi.p_comp CategoryTheory.Idempotents.Karoubi.p_comp

@[reassoc (attr := simp)]
theorem comp_p {P Q : Karoubi C} (f : Hom P Q) : f.f ≫ Q.p = f.f := by
  rw [f.comm, assoc, assoc, Q.idem]
#align category_theory.idempotents.karoubi.comp_p CategoryTheory.Idempotents.Karoubi.comp_p

@[reassoc]
theorem p_comm {P Q : Karoubi C} (f : Hom P Q) : P.p ≫ f.f = f.f ≫ Q.p := by rw [p_comp, comp_p]
#align category_theory.idempotents.karoubi.p_comm CategoryTheory.Idempotents.Karoubi.p_comm

theorem comp_proof {P Q R : Karoubi C} (g : Hom Q R) (f : Hom P Q) :
    f.f ≫ g.f = P.p ≫ (f.f ≫ g.f) ≫ R.p := by rw [assoc, comp_p, ← assoc, p_comp]
#align category_theory.idempotents.karoubi.comp_proof CategoryTheory.Idempotents.Karoubi.comp_proof

/-- The category structure on the karoubi envelope of a category. -/
instance : Category (Karoubi C) where
  Hom := Karoubi.Hom
  id P := ⟨P.p, by repeat' rw [P.idem]⟩
  comp f g := ⟨f.f ≫ g.f, Karoubi.comp_proof g f⟩

@[simp]
theorem hom_ext_iff {P Q : Karoubi C} {f g : P ⟶ Q} : f = g ↔ f.f = g.f := by
  constructor
  · intro h
    rw [h]
  · apply Hom.ext
#align category_theory.idempotents.karoubi.hom_ext CategoryTheory.Idempotents.Karoubi.hom_ext_iff

-- porting note: added because `Hom.ext` is not triggered automatically
@[ext]
theorem hom_ext {P Q : Karoubi C} (f g : P ⟶ Q) (h : f.f = g.f) : f = g := by
  simpa [hom_ext_iff] using h

@[simp]
theorem comp_f {P Q R : Karoubi C} (f : P ⟶ Q) (g : Q ⟶ R) : (f ≫ g).f = f.f ≫ g.f := by rfl
#align category_theory.idempotents.karoubi.comp_f CategoryTheory.Idempotents.Karoubi.comp_f

@[simp]
theorem id_eq {P : Karoubi C} : 𝟙 P = ⟨P.p, by repeat' rw [P.idem]⟩ := by rfl
#align category_theory.idempotents.karoubi.id_eq CategoryTheory.Idempotents.Karoubi.id_eq

/-- It is possible to coerce an object of `C` into an object of `Karoubi C`.
See also the functor `toKaroubi`. -/
instance coe : CoeTC C (Karoubi C) :=
  ⟨fun X => ⟨X, 𝟙 X, by rw [comp_id]⟩⟩
#align category_theory.idempotents.karoubi.coe CategoryTheory.Idempotents.Karoubi.coe

-- porting note: removed @[simp] as the linter complains
theorem coe_X (X : C) : (X : Karoubi C).X = X := by rfl
set_option linter.uppercaseLean3 false in
#align category_theory.idempotents.karoubi.coe_X CategoryTheory.Idempotents.Karoubi.coe_X

@[simp]
theorem coe_p (X : C) : (X : Karoubi C).p = 𝟙 X := by rfl
#align category_theory.idempotents.karoubi.coe_p CategoryTheory.Idempotents.Karoubi.coe_p

@[simp]
theorem eqToHom_f {P Q : Karoubi C} (h : P = Q) :
    Karoubi.Hom.f (eqToHom h) = P.p ≫ eqToHom (congr_arg Karoubi.X h) := by
  subst h
  simp only [eqToHom_refl, Karoubi.id_eq, comp_id]
#align category_theory.idempotents.karoubi.eq_to_hom_f CategoryTheory.Idempotents.Karoubi.eqToHom_f

end Karoubi

/-- The obvious fully faithful functor `toKaroubi` sends an object `X : C` to the obvious
formal direct factor of `X` given by `𝟙 X`. -/
@[simps]
def toKaroubi : C ⥤ Karoubi C where
  obj X := ⟨X, 𝟙 X, by rw [comp_id]⟩
  map f := ⟨f, by simp only [comp_id, id_comp]⟩
#align category_theory.idempotents.to_karoubi CategoryTheory.Idempotents.toKaroubi

instance : Full (toKaroubi C) where preimage f := f.f

instance : Faithful (toKaroubi C) where
  map_injective := fun h => congr_arg Karoubi.Hom.f h

variable {C}

@[simps add zero neg]
instance instAddCommGroupHom [Preadditive C] {P Q : Karoubi C} : AddCommGroup (P ⟶ Q) where
  add f g :=
    ⟨f.f + g.f, by rw [add_comp, comp_add, ← f.comm, ← g.comm]⟩
  zero := ⟨0, by simp only [comp_zero, zero_comp]⟩
  zero_add f := by
    ext
    apply zero_add
  add_zero f := by
    ext
    apply add_zero
  add_assoc f g h' := by
    ext
    apply add_assoc
  add_comm f g := by
    ext
    apply add_comm
  neg f := ⟨-f.f, by simpa only [neg_comp, comp_neg, neg_inj] using f.comm⟩
  add_left_neg f := by
    ext
    apply add_left_neg

namespace Karoubi

theorem hom_eq_zero_iff [Preadditive C] {P Q : Karoubi C} {f : P ⟶ Q} : f = 0 ↔ f.f = 0 :=
  hom_ext_iff
#align category_theory.idempotents.karoubi.hom_eq_zero_iff CategoryTheory.Idempotents.Karoubi.hom_eq_zero_iff

/-- The map sending `f : P ⟶ Q` to `f.f : P.X ⟶ Q.X` is additive. -/
@[simps]
def inclusionHom [Preadditive C] (P Q : Karoubi C) : AddMonoidHom (P ⟶ Q) (P.X ⟶ Q.X) where
  toFun f := f.f
  map_zero' := rfl
  map_add' _ _ := rfl
#align category_theory.idempotents.karoubi.inclusion_hom CategoryTheory.Idempotents.Karoubi.inclusionHom

@[simp]
theorem sum_hom [Preadditive C] {P Q : Karoubi C} {α : Type*} (s : Finset α) (f : α → (P ⟶ Q)) :
    (∑ x in s, f x).f = ∑ x in s, (f x).f :=
  map_sum (inclusionHom P Q) f s
#align category_theory.idempotents.karoubi.sum_hom CategoryTheory.Idempotents.Karoubi.sum_hom

end Karoubi

/-- The category `Karoubi C` is preadditive if `C` is. -/
instance [Preadditive C] : Preadditive (Karoubi C) where
  homGroup P Q := by infer_instance

instance [Preadditive C] : Functor.Additive (toKaroubi C) where

open Karoubi

variable (C)

instance : IsIdempotentComplete (Karoubi C) := by
  refine' ⟨_⟩
  intro P p hp
  simp only [hom_ext_iff, comp_f] at hp
  use ⟨P.X, p.f, hp⟩
  use ⟨p.f, by rw [comp_p p, hp]⟩
  use ⟨p.f, by rw [hp, p_comp p]⟩
  simp [hp]

instance [IsIdempotentComplete C] : EssSurj (toKaroubi C) :=
  ⟨fun P => by
    rcases IsIdempotentComplete.idempotents_split P.X P.p P.idem with ⟨Y, i, e, ⟨h₁, h₂⟩⟩
    use Y
    exact
      Nonempty.intro
        { hom := ⟨i, by erw [id_comp, ← h₂, ← assoc, h₁, id_comp]⟩
          inv := ⟨e, by erw [comp_id, ← h₂, assoc, h₁, comp_id]⟩ }⟩

/-- If `C` is idempotent complete, the functor `toKaroubi : C ⥤ Karoubi C` is an equivalence. -/
def toKaroubiIsEquivalence [IsIdempotentComplete C] : IsEquivalence (toKaroubi C) :=
  Equivalence.ofFullyFaithfullyEssSurj (toKaroubi C)
#align category_theory.idempotents.to_karoubi_is_equivalence CategoryTheory.Idempotents.toKaroubiIsEquivalence

/-- The equivalence `C ≅ Karoubi C` when `C` is idempotent complete. -/
def toKaroubiEquivalence [IsIdempotentComplete C] : C ≌ Karoubi C :=
  haveI := toKaroubiIsEquivalence C
  Functor.asEquivalence (toKaroubi C)
#align category_theory.idempotents.to_karoubi_equivalence CategoryTheory.Idempotents.toKaroubiEquivalence

instance toKaroubiEquivalence_functor_additive [Preadditive C] [IsIdempotentComplete C] :
    (toKaroubiEquivalence C).functor.Additive :=
  (inferInstance : (toKaroubi C).Additive)
#align category_theory.idempotents.to_karoubi_equivalence_functor_additive CategoryTheory.Idempotents.toKaroubiEquivalence_functor_additive

namespace Karoubi

variable {C}

/-- The split mono which appears in the factorisation `decompId P`. -/
@[simps]
def decompId_i (P : Karoubi C) : P ⟶ P.X :=
  ⟨P.p, by erw [coe_p, comp_id, P.idem]⟩
#align category_theory.idempotents.karoubi.decomp_id_i CategoryTheory.Idempotents.Karoubi.decompId_i

/-- The split epi which appears in the factorisation `decompId P`. -/
@[simps]
def decompId_p (P : Karoubi C) : (P.X : Karoubi C) ⟶ P :=
  ⟨P.p, by erw [coe_p, id_comp, P.idem]⟩
#align category_theory.idempotents.karoubi.decomp_id_p CategoryTheory.Idempotents.Karoubi.decompId_p

/-- The formal direct factor of `P.X` given by the idempotent `P.p` in the category `C`
is actually a direct factor in the category `Karoubi C`. -/
@[reassoc]
theorem decompId (P : Karoubi C) : 𝟙 P = decompId_i P ≫ decompId_p P := by
  ext
  simp only [comp_f, id_eq, P.idem, decompId_i, decompId_p]
#align category_theory.idempotents.karoubi.decomp_id CategoryTheory.Idempotents.Karoubi.decompId

theorem decomp_p (P : Karoubi C) : (toKaroubi C).map P.p = decompId_p P ≫ decompId_i P := by
  ext
  simp only [comp_f, decompId_p_f, decompId_i_f, P.idem, toKaroubi_map_f]
#align category_theory.idempotents.karoubi.decomp_p CategoryTheory.Idempotents.Karoubi.decomp_p

theorem decompId_i_toKaroubi (X : C) : decompId_i ((toKaroubi C).obj X) = 𝟙 _ := by
  rfl
#align category_theory.idempotents.karoubi.decomp_id_i_to_karoubi CategoryTheory.Idempotents.Karoubi.decompId_i_toKaroubi

theorem decompId_p_toKaroubi (X : C) : decompId_p ((toKaroubi C).obj X) = 𝟙 _ := by
  rfl
#align category_theory.idempotents.karoubi.decomp_id_p_to_karoubi CategoryTheory.Idempotents.Karoubi.decompId_p_toKaroubi

theorem decompId_i_naturality {P Q : Karoubi C} (f : P ⟶ Q) :
    f ≫ decompId_i Q = decompId_i P ≫ (by exact Hom.mk f.f (by simp)) := by
  aesop_cat
#align category_theory.idempotents.karoubi.decomp_id_i_naturality CategoryTheory.Idempotents.Karoubi.decompId_i_naturality

theorem decompId_p_naturality {P Q : Karoubi C} (f : P ⟶ Q) :
    decompId_p P ≫ f = (by exact Hom.mk f.f (by simp)) ≫ decompId_p Q := by
  aesop_cat
#align category_theory.idempotents.karoubi.decomp_id_p_naturality CategoryTheory.Idempotents.Karoubi.decompId_p_naturality

@[simp]
theorem zsmul_hom [Preadditive C] {P Q : Karoubi C} (n : ℤ) (f : P ⟶ Q) : (n • f).f = n • f.f :=
  map_zsmul (inclusionHom P Q) n f
#align category_theory.idempotents.karoubi.zsmul_hom CategoryTheory.Idempotents.Karoubi.zsmul_hom

end Karoubi

end Idempotents

end CategoryTheory
```
