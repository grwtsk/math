# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Single.Variantf502058f3a452e2f54c2c3d42947f60d01ecb488122493fa17eae39dd20b63d1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `96a27024d9b3e30a814c452ae75ad672aa7f1f0c` · SHA-256 `4344282bb3d4d06c4461dca89da1d20b4e3a61171d887ad1139214b770903d93`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Single.Variant64bc3f477192c81b3455e1889d33dfbf75ca50db65e1d12113adcee725f3a054","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"64bc3f477192c81b3455e1889d33dfbf75ca50db65e1d12113adcee725f3a054","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Single.Variant64bc3f477192c81b3455e1889d33dfbf75ca50db65e1d12113adcee725f3a054","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"64bc3f477192c81b3455e1889d33dfbf75ca50db65e1d12113adcee725f3a054","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/CategoryTheory/GradedObject/Single.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.CategoryTheory.GradedObject

/-!
# The graded object in a single degree

In this file, we define the functor `GradedObject.single j : C ⥤ GradedObject J C`
which sends an object `X : C` to the graded object which is `X` in degree `j` and
the initial object of `C` in other degrees.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Single.Variant64bc3f477192c81b3455e1889d33dfbf75ca50db65e1d12113adcee725f3a054

@[expose] public section

namespace CategoryTheory

open Limits

namespace GradedObject

variable {J : Type*} {C : Type*} [Category* C] [HasInitial C] [DecidableEq J]

/-- The functor which sends `X : C` to the graded object which is `X` in degree `j`
and the initial object in other degrees. -/
noncomputable def single (j : J) : C ⥤ GradedObject J C where
  obj X i := if i = j then X else ⊥_ C
  map {X₁ X₂} f i :=
    if h : i = j then eqToHom (ite_eq_left h) ≫ f ≫ eqToHom (ite_eq_left h).symm
    else eqToHom (by dsimp; rw [ite_eq_right h, ite_eq_right h])

variable (J) in
/-- The functor which sends `X : C` to the graded object which is `X` in degree `0`
and the initial object in nonzero degrees. -/
noncomputable abbrev single₀ [Zero J] : C ⥤ GradedObject J C := single 0

/-- The canonical isomorphism `(single j).obj X i ≅ X` when `i = j`. -/
noncomputable def singleObjApplyIsoOfEq (j : J) (X : C) (i : J) (h : i = j) :
    (single j).obj X i ≅ X := eqToIso (ite_eq_left h)

/-- The canonical isomorphism `(single j).obj X j ≅ X`. -/
noncomputable abbrev singleObjApplyIso (j : J) (X : C) :
    (single j).obj X j ≅ X := singleObjApplyIsoOfEq j X j rfl

/-- The object `(single j).obj X i` is initial when `i ≠ j`. -/
noncomputable def isInitialSingleObjApply (j : J) (X : C) (i : J) (h : i ≠ j) :
    IsInitial ((single j).obj X i) := by
  dsimp [single]
  rw [ite_eq_right h]
  exact initialIsInitial

lemma singleObjApplyIsoOfEq_inv_single_map (j : J) {X Y : C} (f : X ⟶ Y) (i : J) (h : i = j) :
    (singleObjApplyIsoOfEq j X i h).inv ≫ (single j).map f i =
      f ≫ (singleObjApplyIsoOfEq j Y i h).inv := by
  subst h
  simp [singleObjApplyIsoOfEq, single]

lemma single_map_singleObjApplyIsoOfEq_hom (j : J) {X Y : C} (f : X ⟶ Y) (i : J) (h : i = j) :
    (single j).map f i ≫ (singleObjApplyIsoOfEq j Y i h).hom =
      (singleObjApplyIsoOfEq j X i h).hom ≫ f := by
  subst h
  simp [singleObjApplyIsoOfEq, single]

@[reassoc (attr := simp)]
lemma singleObjApplyIso_inv_single_map (j : J) {X Y : C} (f : X ⟶ Y) :
    (singleObjApplyIso j X).inv ≫ (single j).map f j = f ≫ (singleObjApplyIso j Y).inv := by
  apply singleObjApplyIsoOfEq_inv_single_map

@[reassoc (attr := simp)]
lemma single_map_singleObjApplyIso_hom (j : J) {X Y : C} (f : X ⟶ Y) :
    (single j).map f j ≫ (singleObjApplyIso j Y).hom = (singleObjApplyIso j X).hom ≫ f := by
  apply single_map_singleObjApplyIsoOfEq_hom

set_option backward.defeqAttrib.useBackward true in
variable (C) in
/-- The composition of the single functor `single j : C ⥤ GradedObject J C` and the
evaluation functor `eval j` identifies to the identity functor. -/
@[simps!]
noncomputable def singleCompEval (j : J) : single j ⋙ eval j ≅ 𝟭 C :=
  NatIso.ofComponents (singleObjApplyIso j) (by simp)

end GradedObject

end CategoryTheory
```
