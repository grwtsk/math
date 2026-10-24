# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.EpiMono.Variant6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6ed7cd1f1a9f08d328312fcb69bc771ab716f4cd` · SHA-256 `6b6e73b457d631a2f4a58140248fc93cbc4b01c837fda8ceb6d67c0ec029ee18`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Reid Barton. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Reid Barton, Scott Morrison
-/
import Mathlib.CategoryTheory.Opposites
import Mathlib.CategoryTheory.Groupoid

#align_import category_theory.epi_mono from "leanprover-community/mathlib"@"48085f140e684306f9e7da907cd5932056d1aded"

/-!
# Facts about epimorphisms and monomorphisms.

The definitions of `Epi` and `Mono` are in `CategoryTheory.Category`,
since they are used by some lemmas for `Iso`, which is used everywhere.
-/


universe v₁ v₂ u₁ u₂

namespace CategoryTheory

variable {C : Type u₁} [Category.{v₁} C]

instance unop_mono_of_epi {A B : Cᵒᵖ} (f : A ⟶ B) [Epi f] : Mono f.unop :=
  ⟨fun _ _ eq => Quiver.Hom.op_inj ((cancel_epi f).1 (Quiver.Hom.unop_inj eq))⟩
#align category_theory.unop_mono_of_epi CategoryTheory.unop_mono_of_epi

instance unop_epi_of_mono {A B : Cᵒᵖ} (f : A ⟶ B) [Mono f] : Epi f.unop :=
  ⟨fun _ _ eq => Quiver.Hom.op_inj ((cancel_mono f).1 (Quiver.Hom.unop_inj eq))⟩
#align category_theory.unop_epi_of_mono CategoryTheory.unop_epi_of_mono

instance op_mono_of_epi {A B : C} (f : A ⟶ B) [Epi f] : Mono f.op :=
  ⟨fun _ _ eq => Quiver.Hom.unop_inj ((cancel_epi f).1 (Quiver.Hom.op_inj eq))⟩
#align category_theory.op_mono_of_epi CategoryTheory.op_mono_of_epi

instance op_epi_of_mono {A B : C} (f : A ⟶ B) [Mono f] : Epi f.op :=
  ⟨fun _ _ eq => Quiver.Hom.unop_inj ((cancel_mono f).1 (Quiver.Hom.op_inj eq))⟩
#align category_theory.op_epi_of_mono CategoryTheory.op_epi_of_mono

/-- A split monomorphism is a morphism `f : X ⟶ Y` with a given retraction `retraction f : Y ⟶ X`
such that `f ≫ retraction f = 𝟙 X`.

Every split monomorphism is a monomorphism.
-/
/- Porting note: @[nolint has_nonempty_instance] -/
/- Porting note: `@[ext]` used to accept lemmas like this. Now we add an aesop rule -/
@[aesop apply safe (rule_sets [CategoryTheory])]
structure SplitMono {X Y : C} (f : X ⟶ Y) where
  /-- The map splitting `f` -/
  retraction : Y ⟶ X
  /-- `f` composed with `retraction` is the identity -/
  id : f ≫ retraction = 𝟙 X := by aesop_cat
#align category_theory.split_mono CategoryTheory.SplitMono

attribute [reassoc (attr := simp)] SplitMono.id

/-- `IsSplitMono f` is the assertion that `f` admits a retraction -/
class IsSplitMono {X Y : C} (f : X ⟶ Y) : Prop where
  /-- There is a splitting -/
  exists_splitMono : Nonempty (SplitMono f)
#align category_theory.is_split_mono CategoryTheory.IsSplitMono
#align category_theory.is_split_mono.exists_split_mono CategoryTheory.IsSplitMono.exists_splitMono

/-- A constructor for `IsSplitMono f` taking a `SplitMono f` as an argument -/
theorem IsSplitMono.mk' {X Y : C} {f : X ⟶ Y} (sm : SplitMono f) : IsSplitMono f :=
  ⟨Nonempty.intro sm⟩
#align category_theory.is_split_mono.mk' CategoryTheory.IsSplitMono.mk'

/-- A split epimorphism is a morphism `f : X ⟶ Y` with a given section `section_ f : Y ⟶ X`
such that `section_ f ≫ f = 𝟙 Y`.
(Note that `section` is a reserved keyword, so we append an underscore.)

Every split epimorphism is an epimorphism.
-/
/- Porting note: @[nolint has_nonempty_instance] -/
/- Porting note: `@[ext]` used to accept lemmas like this. Now we add an aesop rule -/
@[aesop apply safe (rule_sets [CategoryTheory])]
structure SplitEpi {X Y : C} (f : X ⟶ Y) where
  /-- The map splitting `f` -/
  section_ : Y ⟶ X
  /--  `section_` composed with `f` is the identity -/
  id : section_ ≫ f = 𝟙 Y := by aesop_cat
#align category_theory.split_epi CategoryTheory.SplitEpi

attribute [reassoc (attr := simp)] SplitEpi.id

/-- `IsSplitEpi f` is the assertion that `f` admits a section -/
class IsSplitEpi {X Y : C} (f : X ⟶ Y) : Prop where
  /-- There is a splitting -/
  exists_splitEpi : Nonempty (SplitEpi f)
#align category_theory.is_split_epi CategoryTheory.IsSplitEpi
#align category_theory.is_split_epi.exists_split_epi CategoryTheory.IsSplitEpi.exists_splitEpi

/-- A constructor for `IsSplitEpi f` taking a `SplitEpi f` as an argument -/
theorem IsSplitEpi.mk' {X Y : C} {f : X ⟶ Y} (se : SplitEpi f) : IsSplitEpi f :=
  ⟨Nonempty.intro se⟩
#align category_theory.is_split_epi.mk' CategoryTheory.IsSplitEpi.mk'

/-- The chosen retraction of a split monomorphism. -/
noncomputable def retraction {X Y : C} (f : X ⟶ Y) [hf : IsSplitMono f] : Y ⟶ X :=
  hf.exists_splitMono.some.retraction
#align category_theory.retraction CategoryTheory.retraction

@[reassoc (attr := simp)]
theorem IsSplitMono.id {X Y : C} (f : X ⟶ Y) [hf : IsSplitMono f] : f ≫ retraction f = 𝟙 X :=
  hf.exists_splitMono.some.id
#align category_theory.is_split_mono.id CategoryTheory.IsSplitMono.id

/-- The retraction of a split monomorphism has an obvious section. -/
def SplitMono.splitEpi {X Y : C} {f : X ⟶ Y} (sm : SplitMono f) : SplitEpi sm.retraction
    where section_ := f
#align category_theory.split_mono.split_epi CategoryTheory.SplitMono.splitEpi

/-- The retraction of a split monomorphism is itself a split epimorphism. -/
instance retraction_isSplitEpi {X Y : C} (f : X ⟶ Y) [IsSplitMono f] :
    IsSplitEpi (retraction f) :=
  IsSplitEpi.mk' (SplitMono.splitEpi _)
#align category_theory.retraction_is_split_epi CategoryTheory.retraction_isSplitEpi

/-- A split mono which is epi is an iso. -/
theorem isIso_of_epi_of_isSplitMono {X Y : C} (f : X ⟶ Y) [IsSplitMono f] [Epi f] : IsIso f :=
  ⟨⟨retraction f, ⟨by simp, by simp [← cancel_epi f]⟩⟩⟩
#align category_theory.is_iso_of_epi_of_is_split_mono CategoryTheory.isIso_of_epi_of_isSplitMono

/-- The chosen section of a split epimorphism.
(Note that `section` is a reserved keyword, so we append an underscore.)
-/
noncomputable def section_ {X Y : C} (f : X ⟶ Y) [hf : IsSplitEpi f] : Y ⟶ X :=
  hf.exists_splitEpi.some.section_
#align category_theory.section_ CategoryTheory.section_

@[reassoc (attr := simp)]
theorem IsSplitEpi.id {X Y : C} (f : X ⟶ Y) [hf : IsSplitEpi f] : section_ f ≫ f = 𝟙 Y :=
  hf.exists_splitEpi.some.id
#align category_theory.is_split_epi.id CategoryTheory.IsSplitEpi.id

/-- The section of a split epimorphism has an obvious retraction. -/
def SplitEpi.splitMono {X Y : C} {f : X ⟶ Y} (se : SplitEpi f) : SplitMono se.section_
    where retraction := f
#align category_theory.split_epi.split_mono CategoryTheory.SplitEpi.splitMono

/-- The section of a split epimorphism is itself a split monomorphism. -/
instance section_isSplitMono {X Y : C} (f : X ⟶ Y) [IsSplitEpi f] : IsSplitMono (section_ f) :=
  IsSplitMono.mk' (SplitEpi.splitMono _)
#align category_theory.section_is_split_mono CategoryTheory.section_isSplitMono

/-- A split epi which is mono is an iso. -/
theorem isIso_of_mono_of_isSplitEpi {X Y : C} (f : X ⟶ Y) [Mono f] [IsSplitEpi f] : IsIso f :=
  ⟨⟨section_ f, ⟨by simp [← cancel_mono f], by simp⟩⟩⟩
#align category_theory.is_iso_of_mono_of_is_split_epi CategoryTheory.isIso_of_mono_of_isSplitEpi

/-- Every iso is a split mono. -/
instance (priority := 100) IsSplitMono.of_iso {X Y : C} (f : X ⟶ Y) [IsIso f] : IsSplitMono f :=
  IsSplitMono.mk' { retraction := inv f }
#align category_theory.is_split_mono.of_iso CategoryTheory.IsSplitMono.of_iso

/-- Every iso is a split epi. -/
instance (priority := 100) IsSplitEpi.of_iso {X Y : C} (f : X ⟶ Y) [IsIso f] : IsSplitEpi f :=
  IsSplitEpi.mk' { section_ := inv f }
#align category_theory.is_split_epi.of_iso CategoryTheory.IsSplitEpi.of_iso

theorem SplitMono.mono {X Y : C} {f : X ⟶ Y} (sm : SplitMono f) : Mono f :=
  { right_cancellation := fun g h w => by replace w := w =≫ sm.retraction; simpa using w }
#align category_theory.split_mono.mono CategoryTheory.SplitMono.mono

/-- Every split mono is a mono. -/
instance (priority := 100) IsSplitMono.mono {X Y : C} (f : X ⟶ Y) [hf : IsSplitMono f] : Mono f :=
  hf.exists_splitMono.some.mono
#align category_theory.is_split_mono.mono CategoryTheory.IsSplitMono.mono

theorem SplitEpi.epi {X Y : C} {f : X ⟶ Y} (se : SplitEpi f) : Epi f :=
  { left_cancellation := fun g h w => by replace w := se.section_ ≫= w; simpa using w }
#align category_theory.split_epi.epi CategoryTheory.SplitEpi.epi

/-- Every split epi is an epi. -/
instance (priority := 100) IsSplitEpi.epi {X Y : C} (f : X ⟶ Y) [hf : IsSplitEpi f] : Epi f :=
  hf.exists_splitEpi.some.epi
#align category_theory.is_split_epi.epi CategoryTheory.IsSplitEpi.epi

/-- Every split mono whose retraction is mono is an iso. -/
theorem IsIso.of_mono_retraction' {X Y : C} {f : X ⟶ Y} (hf : SplitMono f) [Mono <| hf.retraction] :
    IsIso f :=
  ⟨⟨hf.retraction, ⟨by simp, (cancel_mono_id <| hf.retraction).mp (by simp)⟩⟩⟩
#align category_theory.is_iso.of_mono_retraction' CategoryTheory.IsIso.of_mono_retraction'

/-- Every split mono whose retraction is mono is an iso. -/
theorem IsIso.of_mono_retraction {X Y : C} (f : X ⟶ Y) [hf : IsSplitMono f]
    [hf' : Mono <| retraction f] : IsIso f :=
  @IsIso.of_mono_retraction' _ _ _ _ _ hf.exists_splitMono.some hf'
#align category_theory.is_iso.of_mono_retraction CategoryTheory.IsIso.of_mono_retraction

/-- Every split epi whose section is epi is an iso. -/
theorem IsIso.of_epi_section' {X Y : C} {f : X ⟶ Y} (hf : SplitEpi f) [Epi <| hf.section_] :
    IsIso f :=
  ⟨⟨hf.section_, ⟨(cancel_epi_id <| hf.section_).mp (by simp), by simp⟩⟩⟩
#align category_theory.is_iso.of_epi_section' CategoryTheory.IsIso.of_epi_section'

/-- Every split epi whose section is epi is an iso. -/
theorem IsIso.of_epi_section {X Y : C} (f : X ⟶ Y) [hf : IsSplitEpi f] [hf' : Epi <| section_ f] :
    IsIso f :=
  @IsIso.of_epi_section' _ _ _ _ _ hf.exists_splitEpi.some hf'
#align category_theory.is_iso.of_epi_section CategoryTheory.IsIso.of_epi_section

-- FIXME this has unnecessarily become noncomputable!
/-- A category where every morphism has a `Trunc` retraction is computably a groupoid. -/
noncomputable def Groupoid.ofTruncSplitMono
    (all_split_mono : ∀ {X Y : C} (f : X ⟶ Y), Trunc (IsSplitMono f)) : Groupoid.{v₁} C := by
  apply Groupoid.ofIsIso
  intro X Y f
  have ⟨a,_⟩ := Trunc.exists_rep <| all_split_mono f
  have ⟨b,_⟩ := Trunc.exists_rep <| all_split_mono <| retraction f
  apply IsIso.of_mono_retraction
#align category_theory.groupoid.of_trunc_split_mono CategoryTheory.Groupoid.ofTruncSplitMono

section

variable (C)

/-- A split mono category is a category in which every monomorphism is split. -/
class SplitMonoCategory : Prop where
  /-- All monos are split -/
  isSplitMono_of_mono : ∀ {X Y : C} (f : X ⟶ Y) [Mono f], IsSplitMono f
#align category_theory.split_mono_category CategoryTheory.SplitMonoCategory
#align category_theory.split_mono_category.is_split_mono_of_mono CategoryTheory.SplitMonoCategory.isSplitMono_of_mono

/-- A split epi category is a category in which every epimorphism is split. -/
class SplitEpiCategory : Prop where
  /-- All epis are split -/
  isSplitEpi_of_epi : ∀ {X Y : C} (f : X ⟶ Y) [Epi f], IsSplitEpi f
#align category_theory.split_epi_category CategoryTheory.SplitEpiCategory
#align category_theory.split_epi_category.is_split_epi_of_epi CategoryTheory.SplitEpiCategory.isSplitEpi_of_epi

end

/-- In a category in which every monomorphism is split, every monomorphism splits. This is not an
    instance because it would create an instance loop. -/
theorem isSplitMono_of_mono [SplitMonoCategory C] {X Y : C} (f : X ⟶ Y) [Mono f] : IsSplitMono f :=
  SplitMonoCategory.isSplitMono_of_mono _
#align category_theory.is_split_mono_of_mono CategoryTheory.isSplitMono_of_mono

/-- In a category in which every epimorphism is split, every epimorphism splits. This is not an
    instance because it would create an instance loop. -/
theorem isSplitEpi_of_epi [SplitEpiCategory C] {X Y : C} (f : X ⟶ Y) [Epi f] : IsSplitEpi f :=
  SplitEpiCategory.isSplitEpi_of_epi _
#align category_theory.is_split_epi_of_epi CategoryTheory.isSplitEpi_of_epi

section

variable {D : Type u₂} [Category.{v₂} D]

/-- Split monomorphisms are also absolute monomorphisms. -/
@[simps]
def SplitMono.map {X Y : C} {f : X ⟶ Y} (sm : SplitMono f) (F : C ⥤ D) : SplitMono (F.map f)
    where
  retraction := F.map sm.retraction
  id := by rw [← Functor.map_comp, SplitMono.id, Functor.map_id]
#align category_theory.split_mono.map CategoryTheory.SplitMono.map

/-- Split epimorphisms are also absolute epimorphisms. -/
@[simps]
def SplitEpi.map {X Y : C} {f : X ⟶ Y} (se : SplitEpi f) (F : C ⥤ D) : SplitEpi (F.map f)
    where
  section_ := F.map se.section_
  id := by rw [← Functor.map_comp, SplitEpi.id, Functor.map_id]
#align category_theory.split_epi.map CategoryTheory.SplitEpi.map

instance {X Y : C} (f : X ⟶ Y) [hf : IsSplitMono f] (F : C ⥤ D) : IsSplitMono (F.map f) :=
  IsSplitMono.mk' (hf.exists_splitMono.some.map F)

instance {X Y : C} (f : X ⟶ Y) [hf : IsSplitEpi f] (F : C ⥤ D) : IsSplitEpi (F.map f) :=
  IsSplitEpi.mk' (hf.exists_splitEpi.some.map F)

end

end CategoryTheory
```
