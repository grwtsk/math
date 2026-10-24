# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RegularMono.Variantc2f0792d650a870d99aaf06beaaba09455530498c6dec98bd09d8070972ae882

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e2a342230367d698ab26faed966df2d792ff702` · SHA-256 `97c0eb205a48bd2e161a6db8c01ce672323923560a4ad3033112eac6312c005c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RegularMono.Variant64f139caf3941757dd70f004299ab78d6607b6a2a889aee0db276368e6593ded","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"64f139caf3941757dd70f004299ab78d6607b6a2a889aee0db276368e6593ded","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.RegularMono.Variant64f139caf3941757dd70f004299ab78d6607b6a2a889aee0db276368e6593ded","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"64f139caf3941757dd70f004299ab78d6607b6a2a889aee0db276368e6593ded","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Limits/Shapes/RegularMono.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Bhavik Mehta
-/
import Mathlib.CategoryTheory.Limits.Shapes.Pullback.HasPullback
import Mathlib.CategoryTheory.Limits.Shapes.StrongEpi
import Mathlib.CategoryTheory.Limits.Shapes.Equalizers
import Mathlib.Lean.Expr.Basic

/-!
# Definitions and basic properties of regular monomorphisms and epimorphisms.

A regular monomorphism is a morphism that is the equalizer of some parallel pair.

We give the constructions
* `IsSplitMono → RegularMono` and
* `RegularMono → Mono`

as well as the dual constructions for regular epimorphisms. Additionally, we give the construction
* `RegularEpi ⟶ StrongEpi`.

We also define classes `IsRegularMonoCategory` and `IsRegularEpiCategory` for categories in which
every monomorphism or epimorphism is regular, and deduce that these categories are
`StrongMonoCategory`s resp. `StrongEpiCategory`s.

-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.RegularMono.Variant64f139caf3941757dd70f004299ab78d6607b6a2a889aee0db276368e6593ded

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

attribute [reassoc] RegularMono.w

/-- Every regular monomorphism is a monomorphism. -/
instance (priority := 100) RegularMono.mono (f : X ⟶ Y) [RegularMono f] : Mono f :=
  mono_of_isLimit_fork RegularMono.isLimit

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

/-- Every split monomorphism is a regular monomorphism. -/
instance (priority := 100) RegularMono.ofIsSplitMono (f : X ⟶ Y) [IsSplitMono f] :
    RegularMono f where
  Z := Y
  left := 𝟙 Y
  right := retraction f ≫ f
  isLimit := isSplitMonoEqualizes f

/-- If `f` is a regular mono, then any map `k : W ⟶ Y` equalizing `RegularMono.left` and
    `RegularMono.right` induces a morphism `l : W ⟶ X` such that `l ≫ f = k`. -/
def RegularMono.lift' {W : C} (f : X ⟶ Y) [RegularMono f] (k : W ⟶ Y)
    (h : k ≫ (RegularMono.left : Y ⟶ @RegularMono.Z _ _ _ _ f _) = k ≫ RegularMono.right) :
    { l : W ⟶ X // l ≫ f = k } :=
  Fork.IsLimit.lift' RegularMono.isLimit _ h

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
    have l₁ : (Fork.ι s ≫ k) ≫ RegularMono.left = (Fork.ι s ≫ k) ≫ hr.right := by
      rw [Category.assoc, s.condition, Category.assoc]
    obtain ⟨l, hl⟩ := Fork.IsLimit.lift' hr.isLimit _ l₁
    obtain ⟨p, _, hp₂⟩ := PullbackCone.IsLimit.lift' t _ _ hl
    refine ⟨p, hp₂, ?_⟩
    intro m w
    have z : m ≫ g = p ≫ g := w.trans hp₂.symm
    apply t.hom_ext
    apply (PullbackCone.mk f g comm).equalizer_ext
    · erw [← cancel_mono h, Category.assoc, Category.assoc, comm]
      simp only [← Category.assoc, eq_whisker z]
    · exact z

/-- The first leg of a pullback cone is a regular monomorphism if the left component is too.

See also `Pullback.fstOfMono` for the basic monomorphism version, and
`regularOfIsPullbackSndOfRegular` for the flipped version.
-/
def regularOfIsPullbackFstOfRegular {P Q R S : C} {f : P ⟶ Q} {g : P ⟶ R} {h : Q ⟶ S} {k : R ⟶ S}
    [RegularMono k] (comm : f ≫ h = g ≫ k) (t : IsLimit (PullbackCone.mk _ _ comm)) :
    RegularMono f :=
  regularOfIsPullbackSndOfRegular comm.symm (PullbackCone.flipIsLimit t)

instance (priority := 100) strongMono_of_regularMono (f : X ⟶ Y) [RegularMono f] : StrongMono f :=
  StrongMono.mk' (by
      intro A B z hz u v sq
      have : v ≫ (RegularMono.left : Y ⟶ RegularMono.Z f) = v ≫ RegularMono.right := by
        apply (cancel_epi z).1
        repeat (rw [← Category.assoc, ← eq_whisker sq.w])
        simp only [Category.assoc, RegularMono.w]
      obtain ⟨t, ht⟩ := RegularMono.lift' _ _ this
      refine CommSq.HasLift.mk' ⟨t, (cancel_mono f).1 ?_, ht⟩
      simp only [Arrow.mk_hom, Arrow.homMk'_left, Category.assoc, ht, sq.w])

/-- A regular monomorphism is an isomorphism if it is an epimorphism. -/
theorem isIso_of_regularMono_of_epi (f : X ⟶ Y) [RegularMono f] [Epi f] : IsIso f :=
  isIso_of_epi_of_strongMono _

section

variable (C)

/-- A regular mono category is a category in which every monomorphism is regular. -/
class IsRegularMonoCategory : Prop where
  /-- Every monomorphism is a regular monomorphism -/
  regularMonoOfMono : ∀ {X Y : C} (f : X ⟶ Y) [Mono f], Nonempty (RegularMono f)

@[deprecated (since := "2024-11-27")] alias RegularMonoCategory := IsRegularMonoCategory

end

/-- In a category in which every monomorphism is regular, we can express every monomorphism as
    an equalizer. This is not an instance because it would create an instance loop. -/
def regularMonoOfMono [IsRegularMonoCategory C] (f : X ⟶ Y) [Mono f] : RegularMono f :=
  (IsRegularMonoCategory.regularMonoOfMono _).some

instance (priority := 100) regularMonoCategoryOfSplitMonoCategory [SplitMonoCategory C] :
    IsRegularMonoCategory C where
  regularMonoOfMono f _ := ⟨by
    haveI := isSplitMono_of_mono f
    infer_instance⟩

instance (priority := 100) strongMonoCategory_of_regularMonoCategory [IsRegularMonoCategory C] :
    StrongMonoCategory C where
  strongMono_of_mono f _ := by
    haveI := regularMonoOfMono f
    infer_instance

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

attribute [reassoc] RegularEpi.w

/-- Every regular epimorphism is an epimorphism. -/
instance (priority := 100) RegularEpi.epi (f : X ⟶ Y) [RegularEpi f] : Epi f :=
  epi_of_isColimit_cofork RegularEpi.isColimit

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

/-- A morphism which is a coequalizer for its kernel pair is a regular epi. -/
noncomputable def regularEpiOfKernelPair {B X : C} (f : X ⟶ B) [HasPullback f f]
    (hc : IsColimit (Cofork.ofπ f pullback.condition)) : RegularEpi f where
  W := pullback f f
  left := pullback.fst f f
  right := pullback.snd f f
  w := pullback.condition
  isColimit := hc

/-- Every split epimorphism is a regular epimorphism. -/
instance (priority := 100) RegularEpi.ofSplitEpi (f : X ⟶ Y) [IsSplitEpi f] : RegularEpi f where
  W := X
  left := 𝟙 X
  right := f ≫ section_ f
  isColimit := isSplitEpiCoequalizes f

/-- If `f` is a regular epi, then every morphism `k : X ⟶ W` coequalizing `RegularEpi.left` and
    `RegularEpi.right` induces `l : Y ⟶ W` such that `f ≫ l = k`. -/
def RegularEpi.desc' {W : C} (f : X ⟶ Y) [RegularEpi f] (k : X ⟶ W)
    (h : (RegularEpi.left : RegularEpi.W f ⟶ X) ≫ k = RegularEpi.right ≫ k) :
    { l : Y ⟶ W // f ≫ l = k } :=
  Cofork.IsColimit.desc' RegularEpi.isColimit _ h

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
    have l₁ : gr.left ≫ f ≫ s.π = gr.right ≫ f ≫ s.π := by
      rw [← Category.assoc, ← Category.assoc, s.condition]
    obtain ⟨l, hl⟩ := Cofork.IsColimit.desc' gr.isColimit (f ≫ Cofork.π s) l₁
    obtain ⟨p, hp₁, _⟩ := PushoutCocone.IsColimit.desc' t _ _ hl.symm
    refine ⟨p, hp₁, ?_⟩
    intro m w
    have z := w.trans hp₁.symm
    apply t.hom_ext
    apply (PushoutCocone.mk _ _ comm).coequalizer_ext
    · exact z
    · erw [← cancel_epi g, ← Category.assoc, ← eq_whisker comm]
      erw [← Category.assoc, ← eq_whisker comm]
      dsimp at z; simp only [Category.assoc, z]

/-- The first leg of a pushout cocone is a regular epimorphism if the left component is too.

See also `Pushout.fstOfEpi` for the basic epimorphism version, and
`regularOfIsPushoutSndOfRegular` for the flipped version.
-/
def regularOfIsPushoutFstOfRegular {P Q R S : C} {f : P ⟶ Q} {g : P ⟶ R} {h : Q ⟶ S} {k : R ⟶ S}
    [RegularEpi f] (comm : f ≫ h = g ≫ k) (t : IsColimit (PushoutCocone.mk _ _ comm)) :
    RegularEpi k :=
  regularOfIsPushoutSndOfRegular comm.symm (PushoutCocone.flipIsColimit t)

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

/-- A regular epimorphism is an isomorphism if it is a monomorphism. -/
theorem isIso_of_regularEpi_of_mono (f : X ⟶ Y) [RegularEpi f] [Mono f] : IsIso f :=
  isIso_of_mono_of_strongEpi _

section

variable (C)

/-- A regular epi category is a category in which every epimorphism is regular. -/
class IsRegularEpiCategory : Prop where
  /-- Everyone epimorphism is a regular epimorphism -/
  regularEpiOfEpi : ∀ {X Y : C} (f : X ⟶ Y) [Epi f], Nonempty (RegularEpi f)

@[deprecated (since := "2024-11-27")] alias RegularEpiCategory := IsRegularEpiCategory

end

/-- In a category in which every epimorphism is regular, we can express every epimorphism as
    a coequalizer. This is not an instance because it would create an instance loop. -/
def regularEpiOfEpi [IsRegularEpiCategory C] (f : X ⟶ Y) [Epi f] : RegularEpi f :=
  (IsRegularEpiCategory.regularEpiOfEpi _).some

instance (priority := 100) regularEpiCategoryOfSplitEpiCategory [SplitEpiCategory C] :
    IsRegularEpiCategory C where
  regularEpiOfEpi f _ := ⟨by
    haveI := isSplitEpi_of_epi f
    infer_instance⟩

instance (priority := 100) strongEpiCategory_of_regularEpiCategory [IsRegularEpiCategory C] :
    StrongEpiCategory C where
  strongEpi_of_epi f _ := by
    haveI := regularEpiOfEpi f
    infer_instance

end CategoryTheory
```
