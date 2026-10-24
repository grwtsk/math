# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RegularMono.Variant5a96362c05bb5c20a4ccef729ffe8a0f6d9d9e9889495a3c48acbae4ffc7a98c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b9b2f2adffe0b032141ce6c09aeeaaee17971415` · SHA-256 `5a96362c05bb5c20a4ccef729ffe8a0f6d9d9e9889495a3c48acbae4ffc7a98c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison, Bhavik Mehta
-/
import Mathlib.CategoryTheory.Limits.Shapes.Pullbacks
import Mathlib.CategoryTheory.Limits.Shapes.StrongEpi
import Mathlib.CategoryTheory.Limits.Shapes.Equalizers
import Mathlib.Lean.Expr.Basic

#align_import category_theory.limits.shapes.regular_mono from "leanprover-community/mathlib"@"239d882c4fb58361ee8b3b39fb2091320edef10a"

/-!
# Definitions and basic properties of regular monomorphisms and epimorphisms.

A regular monomorphism is a morphism that is the equalizer of some parallel pair.

We give the constructions
* `IsSplitMono → RegularMono` and
* `RegularMono → Mono`
as well as the dual constructions for regular epimorphisms. Additionally, we give the construction
* `RegularEpi ⟶ StrongEpi`.

We also define classes `RegularMonoCategory` and `RegularEpiCategory` for categories in which
every monomorphism or epimorphism is regular, and deduce that these categories are
`StrongMonoCategory`s resp. `StrongEpiCategory`s.

-/


noncomputable section

namespace CategoryTheory

open CategoryTheory.Limits

universe v₁ u₁ u₂

variable {C : Type u₁} [Category.{v₁} C]

variable {X Y : C}

/-- A regular monomorphism is a morphism which is the equalizer of some parallel pair. -/
class RegularMono (f : X ⟶ Y) where
  /-- An object in `C` -/
  Z : C -- Porting note: violates naming but what is better?
  /-- A map from the codomain of `f` to `Z` -/
  left : Y ⟶ Z
  /-- Another map from the codomain of `f` to `Z` -/
  right : Y ⟶ Z
  /-- `f` equalizes the two maps -/
  w : f ≫ left = f ≫ right := by aesop_cat
  /-- `f` is the equalizer of the two maps -/
  isLimit : IsLimit (Fork.ofι f w)
#align category_theory.regular_mono CategoryTheory.RegularMono

attribute [reassoc] RegularMono.w

/-- Every regular monomorphism is a monomorphism. -/
instance (priority := 100) RegularMono.mono (f : X ⟶ Y) [RegularMono f] : Mono f :=
  mono_of_isLimit_fork RegularMono.isLimit
#align category_theory.regular_mono.mono CategoryTheory.RegularMono.mono

instance equalizerRegular (g h : X ⟶ Y) [HasLimit (parallelPair g h)] :
    RegularMono (equalizer.ι g h) where
  Z := Y
  left := g
  right := h
  w := equalizer.condition g h
  isLimit :=
    Fork.IsLimit.mk _ (fun s => limit.lift _ s) (by simp) fun s m w => by
      apply equalizer.hom_ext
      simp [← w]
#align category_theory.equalizer_regular CategoryTheory.equalizerRegular

/-- Every split monomorphism is a regular monomorphism. -/
instance (priority := 100) RegularMono.ofIsSplitMono (f : X ⟶ Y) [IsSplitMono f] :
    RegularMono f where
  Z := Y
  left := 𝟙 Y
  right := retraction f ≫ f
  isLimit := isSplitMonoEqualizes f
#align category_theory.regular_mono.of_is_split_mono CategoryTheory.RegularMono.ofIsSplitMono

/-- If `f` is a regular mono, then any map `k : W ⟶ Y` equalizing `RegularMono.left` and
    `RegularMono.right` induces a morphism `l : W ⟶ X` such that `l ≫ f = k`. -/
def RegularMono.lift' {W : C} (f : X ⟶ Y) [RegularMono f] (k : W ⟶ Y)
    (h : k ≫ (RegularMono.left : Y ⟶ @RegularMono.Z _ _ _ _ f _) = k ≫ RegularMono.right) :
    { l : W ⟶ X // l ≫ f = k } :=
  Fork.IsLimit.lift' RegularMono.isLimit _ h
#align category_theory.regular_mono.lift' CategoryTheory.RegularMono.lift'

/-- The second leg of a pullback cone is a regular monomorphism if the right component is too.

See also `Pullback.sndOfMono` for the basic monomorphism version, and
`regularOfIsPullbackFstOfRegular` for the flipped version.
-/
def regularOfIsPullbackSndOfRegular {P Q R S : C} {f : P ⟶ Q} {g : P ⟶ R} {h : Q ⟶ S} {k : R ⟶ S}
    [hr : RegularMono h] (comm : f ≫ h = g ≫ k) (t : IsLimit (PullbackCone.mk _ _ comm)) :
    RegularMono g where
  Z := hr.Z
  left := k ≫ hr.left
  right := k ≫ hr.right
  w := by
    repeat (rw [← Category.assoc, ← eq_whisker comm])
    simp only [Category.assoc, hr.w]
  isLimit := by
    apply Fork.IsLimit.mk' _ _
    intro s
    have l₁ : (Fork.ι s ≫ k) ≫ RegularMono.left = (Fork.ι s ≫ k) ≫ hr.right
    rw [Category.assoc, s.condition, Category.assoc]
    obtain ⟨l, hl⟩ := Fork.IsLimit.lift' hr.isLimit _ l₁
    obtain ⟨p, _, hp₂⟩ := PullbackCone.IsLimit.lift' t _ _ hl
    refine' ⟨p, hp₂, _⟩
    intro m w
    have z : m ≫ g = p ≫ g := w.trans hp₂.symm
    apply t.hom_ext
    apply (PullbackCone.mk f g comm).equalizer_ext
    · erw [← cancel_mono h, Category.assoc, Category.assoc, comm]
      simp only [← Category.assoc, eq_whisker z]
    · exact z
#align category_theory.regular_of_is_pullback_snd_of_regular CategoryTheory.regularOfIsPullbackSndOfRegular

/-- The first leg of a pullback cone is a regular monomorphism if the left component is too.

See also `Pullback.fstOfMono` for the basic monomorphism version, and
`regularOfIsPullbackSndOfRegular` for the flipped version.
-/
def regularOfIsPullbackFstOfRegular {P Q R S : C} {f : P ⟶ Q} {g : P ⟶ R} {h : Q ⟶ S} {k : R ⟶ S}
    [RegularMono k] (comm : f ≫ h = g ≫ k) (t : IsLimit (PullbackCone.mk _ _ comm)) :
    RegularMono f :=
  regularOfIsPullbackSndOfRegular comm.symm (PullbackCone.flipIsLimit t)
#align category_theory.regular_of_is_pullback_fst_of_regular CategoryTheory.regularOfIsPullbackFstOfRegular

instance (priority := 100) strongMono_of_regularMono (f : X ⟶ Y) [RegularMono f] : StrongMono f :=
  StrongMono.mk' (by
      intro A B z hz u v sq
      have : v ≫ (RegularMono.left : Y ⟶ RegularMono.Z f) = v ≫ RegularMono.right := by
        apply (cancel_epi z).1
        repeat (rw [← Category.assoc, ← eq_whisker sq.w])
        simp only [Category.assoc, RegularMono.w]
      obtain ⟨t, ht⟩ := RegularMono.lift' _ _ this
      refine' CommSq.HasLift.mk' ⟨t, (cancel_mono f).1 _, ht⟩
      simp only [Arrow.mk_hom, Arrow.homMk'_left, Category.assoc, ht, sq.w])
#align category_theory.strong_mono_of_regular_mono CategoryTheory.strongMono_of_regularMono

/-- A regular monomorphism is an isomorphism if it is an epimorphism. -/
theorem isIso_of_regularMono_of_epi (f : X ⟶ Y) [RegularMono f] [Epi f] : IsIso f :=
  isIso_of_epi_of_strongMono _
#align category_theory.is_iso_of_regular_mono_of_epi CategoryTheory.isIso_of_regularMono_of_epi

section

variable (C)

/-- A regular mono category is a category in which every monomorphism is regular. -/
class RegularMonoCategory where
  /-- Every monomorphism is a regular monomorphism -/
  regularMonoOfMono : ∀ {X Y : C} (f : X ⟶ Y) [Mono f], RegularMono f
#align category_theory.regular_mono_category CategoryTheory.RegularMonoCategory

end

/-- In a category in which every monomorphism is regular, we can express every monomorphism as
    an equalizer. This is not an instance because it would create an instance loop. -/
def regularMonoOfMono [RegularMonoCategory C] (f : X ⟶ Y) [Mono f] : RegularMono f :=
  RegularMonoCategory.regularMonoOfMono _
#align category_theory.regular_mono_of_mono CategoryTheory.regularMonoOfMono

instance (priority := 100) regularMonoCategoryOfSplitMonoCategory [SplitMonoCategory C] :
    RegularMonoCategory C where
  regularMonoOfMono f _ := by
    haveI := isSplitMono_of_mono f
    infer_instance
#align category_theory.regular_mono_category_of_split_mono_category CategoryTheory.regularMonoCategoryOfSplitMonoCategory

instance (priority := 100) strongMonoCategory_of_regularMonoCategory [RegularMonoCategory C] :
    StrongMonoCategory C where
  strongMono_of_mono f _ := by
    haveI := regularMonoOfMono f
    infer_instance
#align category_theory.strong_mono_category_of_regular_mono_category CategoryTheory.strongMonoCategory_of_regularMonoCategory

/-- A regular epimorphism is a morphism which is the coequalizer of some parallel pair. -/
class RegularEpi (f : X ⟶ Y) where
  /-- An object from `C` -/
  W : C -- Porting note: violates naming convention but what is better?
  /-- Two maps to the domain of `f` -/
  (left right : W ⟶ X)
  /-- `f` coequalizes the two maps -/
  w : left ≫ f = right ≫ f := by aesop_cat
  /-- `f` is the coequalizer -/
  isColimit : IsColimit (Cofork.ofπ f w)
#align category_theory.regular_epi CategoryTheory.RegularEpi

attribute [reassoc] RegularEpi.w

/-- Every regular epimorphism is an epimorphism. -/
instance (priority := 100) RegularEpi.epi (f : X ⟶ Y) [RegularEpi f] : Epi f :=
  epi_of_isColimit_cofork RegularEpi.isColimit
#align category_theory.regular_epi.epi CategoryTheory.RegularEpi.epi

instance coequalizerRegular (g h : X ⟶ Y) [HasColimit (parallelPair g h)] :
    RegularEpi (coequalizer.π g h) where
  W := X
  left := g
  right := h
  w := coequalizer.condition g h
  isColimit :=
    Cofork.IsColimit.mk _ (fun s => colimit.desc _ s) (by simp) fun s m w => by
      apply coequalizer.hom_ext
      simp [← w]
#align category_theory.coequalizer_regular CategoryTheory.coequalizerRegular

/-- Every split epimorphism is a regular epimorphism. -/
instance (priority := 100) RegularEpi.ofSplitEpi (f : X ⟶ Y) [IsSplitEpi f] : RegularEpi f
    where
  W := X
  left := 𝟙 X
  right := f ≫ section_ f
  isColimit := isSplitEpiCoequalizes f
#align category_theory.regular_epi.of_split_epi CategoryTheory.RegularEpi.ofSplitEpi

/-- If `f` is a regular epi, then every morphism `k : X ⟶ W` coequalizing `RegularEpi.left` and
    `RegularEpi.right` induces `l : Y ⟶ W` such that `f ≫ l = k`. -/
def RegularEpi.desc' {W : C} (f : X ⟶ Y) [RegularEpi f] (k : X ⟶ W)
    (h : (RegularEpi.left : RegularEpi.W f ⟶ X) ≫ k = RegularEpi.right ≫ k) :
    { l : Y ⟶ W // f ≫ l = k } :=
  Cofork.IsColimit.desc' RegularEpi.isColimit _ h
#align category_theory.regular_epi.desc' CategoryTheory.RegularEpi.desc'

/-- The second leg of a pushout cocone is a regular epimorphism if the right component is too.

See also `Pushout.sndOfEpi` for the basic epimorphism version, and
`regularOfIsPushoutFstOfRegular` for the flipped version.
-/
def regularOfIsPushoutSndOfRegular {P Q R S : C} {f : P ⟶ Q} {g : P ⟶ R} {h : Q ⟶ S} {k : R ⟶ S}
    [gr : RegularEpi g] (comm : f ≫ h = g ≫ k) (t : IsColimit (PushoutCocone.mk _ _ comm)) :
    RegularEpi h where
  W := gr.W
  left := gr.left ≫ f
  right := gr.right ≫ f
  w := by rw [Category.assoc, Category.assoc, comm]; simp only [← Category.assoc, eq_whisker gr.w]
  isColimit := by
    apply Cofork.IsColimit.mk' _ _
    intro s
    have l₁ : gr.left ≫ f ≫ s.π = gr.right ≫ f ≫ s.π
    rw [← Category.assoc, ← Category.assoc, s.condition]
    obtain ⟨l, hl⟩ := Cofork.IsColimit.desc' gr.isColimit (f ≫ Cofork.π s) l₁
    obtain ⟨p, hp₁, _⟩ := PushoutCocone.IsColimit.desc' t _ _ hl.symm
    refine' ⟨p, hp₁, _⟩
    intro m w
    have z := w.trans hp₁.symm
    apply t.hom_ext
    apply (PushoutCocone.mk _ _ comm).coequalizer_ext
    · exact z
    · erw [← cancel_epi g, ← Category.assoc, ← eq_whisker comm]
      erw [← Category.assoc, ← eq_whisker comm]
      dsimp at z; simp only [Category.assoc, z]
#align category_theory.regular_of_is_pushout_snd_of_regular CategoryTheory.regularOfIsPushoutSndOfRegular

/-- The first leg of a pushout cocone is a regular epimorphism if the left component is too.

See also `Pushout.fstOfEpi` for the basic epimorphism version, and
`regularOfIsPushoutSndOfRegular` for the flipped version.
-/
def regularOfIsPushoutFstOfRegular {P Q R S : C} {f : P ⟶ Q} {g : P ⟶ R} {h : Q ⟶ S} {k : R ⟶ S}
    [RegularEpi f] (comm : f ≫ h = g ≫ k) (t : IsColimit (PushoutCocone.mk _ _ comm)) :
    RegularEpi k :=
  regularOfIsPushoutSndOfRegular comm.symm (PushoutCocone.flipIsColimit t)
#align category_theory.regular_of_is_pushout_fst_of_regular CategoryTheory.regularOfIsPushoutFstOfRegular

instance (priority := 100) strongEpi_of_regularEpi (f : X ⟶ Y) [RegularEpi f] : StrongEpi f :=
  StrongEpi.mk'
    (by
      intro A B z hz u v sq
      have : (RegularEpi.left : RegularEpi.W f ⟶ X) ≫ u = RegularEpi.right ≫ u := by
        apply (cancel_mono z).1
        simp only [Category.assoc, sq.w, RegularEpi.w_assoc]
      obtain ⟨t, ht⟩ := RegularEpi.desc' f u this
      exact
        CommSq.HasLift.mk'
          ⟨t, ht,
            (cancel_epi f).1
              (by simp only [← Category.assoc, ht, ← sq.w, Arrow.mk_hom, Arrow.homMk'_right])⟩)
#align category_theory.strong_epi_of_regular_epi CategoryTheory.strongEpi_of_regularEpi

/-- A regular epimorphism is an isomorphism if it is a monomorphism. -/
theorem isIso_of_regularEpi_of_mono (f : X ⟶ Y) [RegularEpi f] [Mono f] : IsIso f :=
  isIso_of_mono_of_strongEpi _
#align category_theory.is_iso_of_regular_epi_of_mono CategoryTheory.isIso_of_regularEpi_of_mono

section

variable (C)

/-- A regular epi category is a category in which every epimorphism is regular. -/
class RegularEpiCategory where
  /-- Everyone epimorphism is a regular epimorphism -/
  regularEpiOfEpi : ∀ {X Y : C} (f : X ⟶ Y) [Epi f], RegularEpi f
#align category_theory.regular_epi_category CategoryTheory.RegularEpiCategory

end

/-- In a category in which every epimorphism is regular, we can express every epimorphism as
    a coequalizer. This is not an instance because it would create an instance loop. -/
def regularEpiOfEpi [RegularEpiCategory C] (f : X ⟶ Y) [Epi f] : RegularEpi f :=
  RegularEpiCategory.regularEpiOfEpi _
#align category_theory.regular_epi_of_epi CategoryTheory.regularEpiOfEpi

instance (priority := 100) regularEpiCategoryOfSplitEpiCategory [SplitEpiCategory C] :
    RegularEpiCategory C where
  regularEpiOfEpi f _ := by
    haveI := isSplitEpi_of_epi f
    infer_instance
#align category_theory.regular_epi_category_of_split_epi_category CategoryTheory.regularEpiCategoryOfSplitEpiCategory

instance (priority := 100) strongEpiCategory_of_regularEpiCategory [RegularEpiCategory C] :
    StrongEpiCategory C where
  strongEpi_of_epi f _ := by
    haveI := regularEpiOfEpi f
    infer_instance
#align category_theory.strong_epi_category_of_regular_epi_category CategoryTheory.strongEpiCategory_of_regularEpiCategory

end CategoryTheory
```
