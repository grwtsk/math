# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.DifferentialObject.Variant3450c48761712dc9be0a0c8d1e253cbf0ed0a566b389fc5130b3a6a49ae4b760

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cad03b939bf17ad9e13c20aa824b88e34f34d8e7` · SHA-256 `e9ba440ab4fd81497abecc4ac3b8eb49f8247c18a817fe884c632b8183980841`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ObjEqToHom.Variant32aeb2b1be0652bfeaf7cf3d9fbd93e0e6ea210d06d1a0588f99f8b056fa3dbf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"32aeb2b1be0652bfeaf7cf3d9fbd93e0e6ea210d06d1a0588f99f8b056fa3dbf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ObjEqToHom.Variant32aeb2b1be0652bfeaf7cf3d9fbd93e0e6ea210d06d1a0588f99f8b056fa3dbf","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"32aeb2b1be0652bfeaf7cf3d9fbd93e0e6ea210d06d1a0588f99f8b056fa3dbf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/Homology/DifferentialObject.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Mathlib.Algebra.Homology.HomologicalComplex
import Mathlib.CategoryTheory.DifferentialObject


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ObjEqToHom.Variant32aeb2b1be0652bfeaf7cf3d9fbd93e0e6ea210d06d1a0588f99f8b056fa3dbf

#align_import algebra.homology.differential_object from "leanprover-community/mathlib"@"b535c2d5d996acd9b0554b76395d9c920e186f4f"

/-!
# Homological complexes are differential graded objects.

We verify that a `HomologicalComplex` indexed by an `AddCommGroup` is
essentially the same thing as a differential graded object.

This equivalence is probably not particularly useful in practice;
it's here to check that definitions match up as expected.
-/

set_option autoImplicit true


open CategoryTheory CategoryTheory.Limits

open scoped Classical

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
set_option linter.uppercaseLean3 false in
#align category_theory.differential_object.X_eq_to_hom CategoryTheory.DifferentialObject.objEqToHom

@[simp]
theorem objEqToHom_refl (i : β) : X.objEqToHom (refl i) = 𝟙 _ :=
  rfl
set_option linter.uppercaseLean3 false in
#align category_theory.differential_object.X_eq_to_hom_refl CategoryTheory.DifferentialObject.objEqToHom_refl

@[reassoc (attr := simp)]
theorem objEqToHom_d {x y : β} (h : x = y) :
    X.objEqToHom h ≫ X.d y = X.d x ≫ X.objEqToHom (by cases h; rfl) := by cases h; dsimp; simp
#align homological_complex.eq_to_hom_d CategoryTheory.DifferentialObject.objEqToHom_d

@[reassoc (attr := simp)]
theorem d_squared_apply : X.d x ≫ X.d _ = 0 := congr_fun X.d_squared _

@[reassoc (attr := simp)]
theorem eqToHom_f' {X Y : DifferentialObject ℤ (GradedObjectWithShift b V)} (f : X ⟶ Y) {x y : β}
    (h : x = y) : X.objEqToHom h ≫ f.f y = f.f x ≫ Y.objEqToHom h := by cases h; simp
#align homological_complex.eq_to_hom_f' CategoryTheory.DifferentialObject.eqToHom_f'

end CategoryTheory.DifferentialObject

open CategoryTheory.DifferentialObject

namespace HomologicalComplex

variable {β : Type*} [AddCommGroup β] (b : β)
variable (V : Type*) [Category V] [HasZeroMorphisms V]

-- Porting note: this should be moved to an earlier file.
-- Porting note: simpNF linter silenced, both `d_eqToHom` and its `_assoc` version
-- do not simplify under themselves
@[reassoc (attr := simp, nolint simpNF)]
theorem d_eqToHom (X : HomologicalComplex V (ComplexShape.up' b)) {x y z : β} (h : y = z) :
    X.d x y ≫ eqToHom (congr_arg X.X h) = X.d x z := by cases h; simp
#align homological_complex.d_eq_to_hom HomologicalComplex.d_eqToHom

set_option maxHeartbeats 800000 in
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
#align homological_complex.dgo_to_homological_complex HomologicalComplex.dgoToHomologicalComplex

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
#align homological_complex.homological_complex_to_dgo HomologicalComplex.homologicalComplexToDGO

/-- The unit isomorphism for `dgoEquivHomologicalComplex`.
-/
@[simps!]
def dgoEquivHomologicalComplexUnitIso :
    𝟭 (DifferentialObject ℤ (GradedObjectWithShift b V)) ≅
      dgoToHomologicalComplex b V ⋙ homologicalComplexToDGO b V :=
  NatIso.ofComponents (fun X =>
    { hom := { f := fun i => 𝟙 (X.obj i) }
      inv := { f := fun i => 𝟙 (X.obj i) } })
#align homological_complex.dgo_equiv_homological_complex_unit_iso HomologicalComplex.dgoEquivHomologicalComplexUnitIso

/-- The counit isomorphism for `dgoEquivHomologicalComplex`.
-/
@[simps!]
def dgoEquivHomologicalComplexCounitIso :
    homologicalComplexToDGO b V ⋙ dgoToHomologicalComplex b V ≅
      𝟭 (HomologicalComplex V (ComplexShape.up' b)) :=
  NatIso.ofComponents (fun X =>
    { hom := { f := fun i => 𝟙 (X.X i) }
      inv := { f := fun i => 𝟙 (X.X i) } })
#align homological_complex.dgo_equiv_homological_complex_counit_iso HomologicalComplex.dgoEquivHomologicalComplexCounitIso

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
#align homological_complex.dgo_equiv_homological_complex HomologicalComplex.dgoEquivHomologicalComplex

end HomologicalComplex
```
