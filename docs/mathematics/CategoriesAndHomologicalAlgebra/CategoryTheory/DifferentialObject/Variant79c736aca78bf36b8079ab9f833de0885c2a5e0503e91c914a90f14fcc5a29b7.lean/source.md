# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.DifferentialObject.Variant79c736aca78bf36b8079ab9f833de0885c2a5e0503e91c914a90f14fcc5a29b7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f9d2fea3c69146b39338b90c9c3327174c78ad5` · SHA-256 `d8cc0ea4eda88b767ccede92564875efc5ae8f378341d69d5f025c2fa00162f1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.DifferentialObject.Variant64ea2d489af36fa2f1f2f7eaf1faacc823f88c5f9d5f2d4df1b162a44adfdd28","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"64ea2d489af36fa2f1f2f7eaf1faacc823f88c5f9d5f2d4df1b162a44adfdd28","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.DifferentialObject.Variant64ea2d489af36fa2f1f2f7eaf1faacc823f88c5f9d5f2d4df1b162a44adfdd28","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"64ea2d489af36fa2f1f2f7eaf1faacc823f88c5f9d5f2d4df1b162a44adfdd28","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/DifferentialObject.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Algebra.Group.Basic
import Mathlib.Data.Int.Cast.Defs
import Mathlib.CategoryTheory.Shift.Basic
import Mathlib.CategoryTheory.ConcreteCategory.Basic

/-!
# Differential objects in a category.

A differential object in a category with zero morphisms and a shift is
an object `X` equipped with
a morphism `d : obj ⟶ obj⟦1⟧`, such that `d^2 = 0`.

We build the category of differential objects, and some basic constructions
such as the forgetful functor, zero morphisms and zero objects, and the shift functor
on differential objects.
-/



namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.DifferentialObject.Variant64ea2d489af36fa2f1f2f7eaf1faacc823f88c5f9d5f2d4df1b162a44adfdd28

open CategoryTheory.Limits

universe v u

namespace CategoryTheory

variable (S : Type*) [AddMonoidWithOne S] (C : Type u) [Category.{v} C]
variable [HasZeroMorphisms C] [HasShift C S]

/-- A differential object in a category with zero morphisms and a shift is
an object `obj` equipped with
a morphism `d : obj ⟶ obj⟦1⟧`, such that `d^2 = 0`. -/
structure DifferentialObject where
  /-- The underlying object of a differential object. -/
  obj : C
  /-- The differential of a differential object. -/
  d : obj ⟶ obj⟦(1 : S)⟧
  /-- The differential `d` satisfies that `d² = 0`. -/
  d_squared : d ≫ d⟦(1 : S)⟧' = 0 := by aesop_cat

attribute [reassoc (attr := simp)] DifferentialObject.d_squared

variable {S C}

namespace DifferentialObject

/-- A morphism of differential objects is a morphism commuting with the differentials. -/
@[ext]
structure Hom (X Y : DifferentialObject S C) where
  /-- The morphism between underlying objects of the two differentiable objects. -/
  f : X.obj ⟶ Y.obj
  comm : X.d ≫ f⟦1⟧' = f ≫ Y.d := by aesop_cat

attribute [reassoc (attr := simp)] Hom.comm

namespace Hom

/-- The identity morphism of a differential object. -/
@[simps]
def id (X : DifferentialObject S C) : Hom X X where
  f := 𝟙 X.obj

/-- The composition of morphisms of differential objects. -/
@[simps]
def comp {X Y Z : DifferentialObject S C} (f : Hom X Y) (g : Hom Y Z) : Hom X Z where
  f := f.f ≫ g.f

end Hom

instance categoryOfDifferentialObjects : Category (DifferentialObject S C) where
  Hom := Hom
  id := Hom.id
  comp f g := Hom.comp f g

@[ext]
theorem ext {A B : DifferentialObject S C} {f g : A ⟶ B} (w : f.f = g.f := by aesop_cat) : f = g :=
  Hom.ext w

@[simp]
theorem id_f (X : DifferentialObject S C) : (𝟙 X : X ⟶ X).f = 𝟙 X.obj := rfl

@[simp]
theorem comp_f {X Y Z : DifferentialObject S C} (f : X ⟶ Y) (g : Y ⟶ Z) :
    (f ≫ g).f = f.f ≫ g.f :=
  rfl

@[simp]
theorem eqToHom_f {X Y : DifferentialObject S C} (h : X = Y) :
    Hom.f (eqToHom h) = eqToHom (congr_arg _ h) := by
  subst h
  rw [eqToHom_refl, eqToHom_refl]
  rfl

variable (S C)

/-- The forgetful functor taking a differential object to its underlying object. -/
def forget : DifferentialObject S C ⥤ C where
  obj X := X.obj
  map f := f.f

instance forget_faithful : (forget S C).Faithful where

variable {S C}

section
variable [(shiftFunctor C (1 : S)).PreservesZeroMorphisms]

instance {X Y : DifferentialObject S C} : Zero (X ⟶ Y) := ⟨{f := 0}⟩

@[simp]
theorem zero_f (P Q : DifferentialObject S C) : (0 : P ⟶ Q).f = 0 := rfl

instance hasZeroMorphisms : HasZeroMorphisms (DifferentialObject S C) where

end

/-- An isomorphism of differential objects gives an isomorphism of the underlying objects. -/
@[simps]
def isoApp {X Y : DifferentialObject S C} (f : X ≅ Y) : X.obj ≅ Y.obj where
  hom := f.hom.f
  inv := f.inv.f
  hom_inv_id := by rw [← comp_f, Iso.hom_inv_id, id_f]
  inv_hom_id := by rw [← comp_f, Iso.inv_hom_id, id_f]

@[simp]
theorem isoApp_refl (X : DifferentialObject S C) : isoApp (Iso.refl X) = Iso.refl X.obj := rfl

@[simp]
theorem isoApp_symm {X Y : DifferentialObject S C} (f : X ≅ Y) : isoApp f.symm = (isoApp f).symm :=
  rfl

@[simp]
theorem isoApp_trans {X Y Z : DifferentialObject S C} (f : X ≅ Y) (g : Y ≅ Z) :
    isoApp (f ≪≫ g) = isoApp f ≪≫ isoApp g := rfl

/-- An isomorphism of differential objects can be constructed
from an isomorphism of the underlying objects that commutes with the differentials. -/
@[simps]
def mkIso {X Y : DifferentialObject S C} (f : X.obj ≅ Y.obj) (hf : X.d ≫ f.hom⟦1⟧' = f.hom ≫ Y.d) :
    X ≅ Y where
  hom := ⟨f.hom, hf⟩
  inv := ⟨f.inv, by
    rw [← Functor.mapIso_inv, Iso.comp_inv_eq, Category.assoc, Iso.eq_inv_comp, Functor.mapIso_hom,
      hf]⟩
  hom_inv_id := by ext1; dsimp; exact f.hom_inv_id
  inv_hom_id := by ext1; dsimp; exact f.inv_hom_id

end DifferentialObject

namespace Functor

universe v' u'

variable (D : Type u') [Category.{v'} D]
variable [HasZeroMorphisms D] [HasShift D S]

/-- A functor `F : C ⥤ D` which commutes with shift functors on `C` and `D` and preserves zero
morphisms can be lifted to a functor `DifferentialObject S C ⥤ DifferentialObject S D`. -/
@[simps]
def mapDifferentialObject (F : C ⥤ D)
    (η : (shiftFunctor C (1 : S)).comp F ⟶ F.comp (shiftFunctor D (1 : S)))
    (hF : ∀ c c', F.map (0 : c ⟶ c') = 0) : DifferentialObject S C ⥤ DifferentialObject S D where
  obj X :=
    { obj := F.obj X.obj
      d := F.map X.d ≫ η.app X.obj
      d_squared := by
        rw [Functor.map_comp, ← Functor.comp_map F (shiftFunctor D (1 : S))]
        slice_lhs 2 3 => rw [← η.naturality X.d]
        rw [Functor.comp_map]
        slice_lhs 1 2 => rw [← F.map_comp, X.d_squared, hF]
        rw [zero_comp, zero_comp] }
  map f :=
    { f := F.map f.f
      comm := by
        dsimp
        slice_lhs 2 3 => rw [← Functor.comp_map F (shiftFunctor D (1 : S)), ← η.naturality f.f]
        slice_lhs 1 2 => rw [Functor.comp_map, ← F.map_comp, f.comm, F.map_comp]
        rw [Category.assoc] }
  map_id := by intros; ext; simp
  map_comp := by intros; ext; simp

end Functor

end CategoryTheory

namespace CategoryTheory

namespace DifferentialObject

variable (S : Type*) [AddMonoidWithOne S] (C : Type u) [Category.{v} C]
variable [HasZeroObject C] [HasZeroMorphisms C] [HasShift C S]
variable [(shiftFunctor C (1 : S)).PreservesZeroMorphisms]

open scoped ZeroObject

instance hasZeroObject : HasZeroObject (DifferentialObject S C) where
  zero := ⟨{ obj := 0, d := 0 },
    { unique_to := fun X => ⟨⟨⟨{ f := 0 }⟩, fun f => by ext⟩⟩,
      unique_from := fun X => ⟨⟨⟨{ f := 0 }⟩, fun f => by ext⟩⟩ }⟩

end DifferentialObject

namespace DifferentialObject

section HasForget

variable (S : Type*) [AddMonoidWithOne S]
variable (C : Type (u + 1)) [LargeCategory C] [HasForget C] [HasZeroMorphisms C]
variable [HasShift C S]

instance hasForgetOfDifferentialObjects : HasForget (DifferentialObject S C) where
  forget := forget S C ⋙ CategoryTheory.forget C

instance : HasForget₂ (DifferentialObject S C) C where
  forget₂ := forget S C

end HasForget

section ConcreteCategory

variable (S : Type*) [AddMonoidWithOne S]
variable (C : Type (u + 1)) [LargeCategory C] [HasZeroMorphisms C]
variable {FC : C → C → Type*} {CC : C → Type*} [∀ X Y, FunLike (FC X Y) (CC X) (CC Y)]
variable [ConcreteCategory C FC] [HasShift C S]

/--
The type of `C`-morphisms that can be lifted back to morphisms in the category `DifferentialObject`.
-/
abbrev HomSubtype (X Y : DifferentialObject S C) :=
  { f : FC X.obj Y.obj // X.d ≫ (ConcreteCategory.ofHom f)⟦1⟧' = (ConcreteCategory.ofHom f) ≫ Y.d }

instance (X Y : DifferentialObject S C) :
    FunLike (HomSubtype S C X Y) (CC X.obj) (CC Y.obj) where
  coe f := f.1
  coe_injective' _ _ h := Subtype.ext (DFunLike.coe_injective h)

instance concreteCategoryOfDifferentialObjects :
    ConcreteCategory (DifferentialObject S C) (HomSubtype S C) where
  hom f := ⟨ConcreteCategory.hom (C := C) f.1, by simp [ConcreteCategory.ofHom_hom]⟩
  ofHom f := ⟨ConcreteCategory.ofHom (C := C) f, by simpa [ConcreteCategory.hom_ofHom] using f.2⟩
  hom_ofHom _ := by dsimp; ext; simp [ConcreteCategory.hom_ofHom]
  ofHom_hom _ := by ext; simp [ConcreteCategory.ofHom_hom]
  id_apply := ConcreteCategory.id_apply (C := C)
  comp_apply _ _ := ConcreteCategory.comp_apply (C := C) _ _

end ConcreteCategory

end DifferentialObject

/-! The category of differential objects itself has a shift functor. -/


namespace DifferentialObject

variable {S : Type*} [AddCommGroupWithOne S] (C : Type u) [Category.{v} C]
variable [HasZeroMorphisms C] [HasShift C S]

noncomputable section

/-- The shift functor on `DifferentialObject S C`. -/
@[simps]
def shiftFunctor (n : S) : DifferentialObject S C ⥤ DifferentialObject S C where
  obj X :=
    { obj := X.obj⟦n⟧
      d := X.d⟦n⟧' ≫ (shiftComm _ _ _).hom
      d_squared := by
        rw [Functor.map_comp, Category.assoc, shiftComm_hom_comp_assoc, ← Functor.map_comp_assoc,
          X.d_squared, Functor.map_zero, zero_comp] }
  map f :=
    { f := f.f⟦n⟧'
      comm := by
        dsimp
        rw [Category.assoc]
        erw [shiftComm_hom_comp]
        rw [← Functor.map_comp_assoc, f.comm, Functor.map_comp_assoc]
        rfl }
  map_id X := by ext1; dsimp; rw [Functor.map_id]
  map_comp f g := by ext1; dsimp; rw [Functor.map_comp]

/-- The shift functor on `DifferentialObject S C` is additive. -/
@[simps!]
nonrec def shiftFunctorAdd (m n : S) :
    shiftFunctor C (m + n) ≅ shiftFunctor C m ⋙ shiftFunctor C n := by
  refine NatIso.ofComponents (fun X => mkIso (shiftAdd X.obj _ _) ?_) (fun f => ?_)
  · dsimp
    rw [← cancel_epi ((shiftFunctorAdd C m n).inv.app X.obj)]
    simp only [Category.assoc, Iso.inv_hom_id_app_assoc]
    rw [← NatTrans.naturality_assoc]
    dsimp
    simp only [Functor.map_comp, Category.assoc,
      shiftFunctorComm_hom_app_comp_shift_shiftFunctorAdd_hom_app 1 m n X.obj,
      Iso.inv_hom_id_app_assoc]
  · ext; dsimp; exact NatTrans.naturality _ _

section

/-- The shift by zero is naturally isomorphic to the identity. -/
@[simps!]
def shiftZero : shiftFunctor C (0 : S) ≅ 𝟭 (DifferentialObject S C) := by
  refine NatIso.ofComponents (fun X => mkIso ((shiftFunctorZero C S).app X.obj) ?_) (fun f => ?_)
  · erw [← NatTrans.naturality]
    dsimp
    simp only [shiftFunctorZero_hom_app_shift, Category.assoc]
  · aesop_cat

end

instance : HasShift (DifferentialObject S C) S :=
  hasShiftMk _ _
    { F := shiftFunctor C
      zero := shiftZero C
      add := shiftFunctorAdd C
      assoc_hom_app := fun m₁ m₂ m₃ X => by
        ext1
        convert shiftFunctorAdd_assoc_hom_app m₁ m₂ m₃ X.obj
        dsimp [shiftFunctorAdd']
        simp
      zero_add_hom_app := fun n X => by
        ext1
        convert shiftFunctorAdd_zero_add_hom_app n X.obj
        simp
      add_zero_hom_app := fun n X => by
        ext1
        convert shiftFunctorAdd_add_zero_hom_app n X.obj
        simp }

end

end DifferentialObject

end CategoryTheory
```
