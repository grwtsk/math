# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.DifferentialObject.Variant49b140c9a615a2f02234ab105c5680aa04cbc5d497c3a4a8ca2d7edd36750df6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7856c9e855d493ec3449b450b0ffd2c09fd63f1c` · SHA-256 `87fea088f1e0372bdeb5c47d6639acd90bdad44bfa69a2b1a96ee266ae39d613`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ObjEqToHom.Variantf4edb2c320005eb386eb88631df0baeab241d6a637c5909681a63ff3e2c89feb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f4edb2c320005eb386eb88631df0baeab241d6a637c5909681a63ff3e2c89feb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ObjEqToHom.Variantf4edb2c320005eb386eb88631df0baeab241d6a637c5909681a63ff3e2c89feb","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"f4edb2c320005eb386eb88631df0baeab241d6a637c5909681a63ff3e2c89feb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Homology/DifferentialObject.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Algebra.Homology.HomologicalComplex
import Mathlib.CategoryTheory.DifferentialObject

/-!
# Homological complexes are differential graded objects.

We verify that a `HomologicalComplex` indexed by an `AddCommGroup` is
essentially the same thing as a differential graded object.

This equivalence is probably not particularly useful in practice;
it's here to check that definitions match up as expected.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ObjEqToHom.Variantf4edb2c320005eb386eb88631df0baeab241d6a637c5909681a63ff3e2c89feb

open CategoryTheory CategoryTheory.Limits

noncomputable section

/-!
We first prove some results about differential graded objects.

Porting note: after the port, move these to their own file.
-/
namespace CategoryTheory.DifferentialObject

variable {β : Type*} [AddCommGroup β] {b : β}
variable {V : Type*} [Category V] [HasZeroMorphisms V]
variable (X : DifferentialObject ℤ (GradedObjectWithShift b V))

/-- Since `eqToHom` only preserves the fact that `X.X i = X.X j` but not `i = j`, this definition
is used to aid the simplifier. -/
abbrev objEqToHom {i j : β} (h : i = j) :
    X.obj i ⟶ X.obj j :=
  eqToHom (congr_arg X.obj h)

@[simp]
theorem objEqToHom_refl (i : β) : X.objEqToHom (refl i) = 𝟙 _ :=
  rfl

@[reassoc (attr := simp)]
theorem objEqToHom_d {x y : β} (h : x = y) :
    X.objEqToHom h ≫ X.d y = X.d x ≫ X.objEqToHom (by cases h; rfl) := by cases h; dsimp; simp

@[reassoc (attr := simp)]
theorem d_squared_apply {x : β} : X.d x ≫ X.d _ = 0 := congr_fun X.d_squared _

@[reassoc (attr := simp)]
theorem eqToHom_f' {X Y : DifferentialObject ℤ (GradedObjectWithShift b V)} (f : X ⟶ Y) {x y : β}
    (h : x = y) : X.objEqToHom h ≫ f.f y = f.f x ≫ Y.objEqToHom h := by cases h; simp

end CategoryTheory.DifferentialObject

open CategoryTheory.DifferentialObject

namespace HomologicalComplex

variable {β : Type*} [AddCommGroup β] (b : β)
variable (V : Type*) [Category V] [HasZeroMorphisms V]

@[reassoc]
theorem d_eqToHom (X : HomologicalComplex V (ComplexShape.up' b)) {x y z : β} (h : y = z) :
    X.d x y ≫ eqToHom (congr_arg X.X h) = X.d x z := by cases h; simp

open Classical in
/-- The functor from differential graded objects to homological complexes.
-/
@[simps]
def dgoToHomologicalComplex :
    DifferentialObject ℤ (GradedObjectWithShift b V) ⥤
      HomologicalComplex V (ComplexShape.up' b) where
  obj X :=
    { X := fun i => X.obj i
      d := fun i j =>
        if h : i + b = j then X.d i ≫ X.objEqToHom (show i + (1 : ℤ) • b = j by simp [h]) else 0
      shape := fun i j w => by dsimp at w; convert dif_neg w
      d_comp_d' := fun i j k hij hjk => by
        dsimp at hij hjk; substs hij hjk
        simp }
  map {X Y} f :=
    { f := f.f
      comm' := fun i j h => by
        dsimp at h ⊢
        subst h
        simp only [dite_true, Category.assoc, eqToHom_f']
        -- Porting note: this `rw` used to be part of the `simp`.
        have : f.f i ≫ Y.d i = X.d i ≫ f.f _ := (congr_fun f.comm i).symm
        rw [reassoc_of% this] }

/-- The functor from homological complexes to differential graded objects.
-/
@[simps]
def homologicalComplexToDGO :
    HomologicalComplex V (ComplexShape.up' b) ⥤
      DifferentialObject ℤ (GradedObjectWithShift b V) where
  obj X :=
    { obj := fun i => X.X i
      d := fun i => X.d i _ }
  map {X Y} f := { f := f.f }

/-- The unit isomorphism for `dgoEquivHomologicalComplex`.
-/
@[simps!]
def dgoEquivHomologicalComplexUnitIso :
    𝟭 (DifferentialObject ℤ (GradedObjectWithShift b V)) ≅
      dgoToHomologicalComplex b V ⋙ homologicalComplexToDGO b V :=
  NatIso.ofComponents (fun X =>
    { hom := { f := fun i => 𝟙 (X.obj i) }
      inv := { f := fun i => 𝟙 (X.obj i) } })

/-- The counit isomorphism for `dgoEquivHomologicalComplex`.
-/
@[simps!]
def dgoEquivHomologicalComplexCounitIso :
    homologicalComplexToDGO b V ⋙ dgoToHomologicalComplex b V ≅
      𝟭 (HomologicalComplex V (ComplexShape.up' b)) :=
  NatIso.ofComponents (fun X =>
    { hom := { f := fun i => 𝟙 (X.X i) }
      inv := { f := fun i => 𝟙 (X.X i) } })

/-- The category of differential graded objects in `V` is equivalent
to the category of homological complexes in `V`.
-/
@[simps]
def dgoEquivHomologicalComplex :
    DifferentialObject ℤ (GradedObjectWithShift b V) ≌
      HomologicalComplex V (ComplexShape.up' b) where
  functor := dgoToHomologicalComplex b V
  inverse := homologicalComplexToDGO b V
  unitIso := dgoEquivHomologicalComplexUnitIso b V
  counitIso := dgoEquivHomologicalComplexCounitIso b V

end HomologicalComplex
```
