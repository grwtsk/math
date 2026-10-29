-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SmulFApply.Variant4d51226f5ba488cc1bc71585abd09423d35c2c79a6f80cb79e656212d5ed4280","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4d51226f5ba488cc1bc71585abd09423d35c2c79a6f80cb79e656212d5ed4280","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.SmulFApply.Variant4d51226f5ba488cc1bc71585abd09423d35c2c79a6f80cb79e656212d5ed4280","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"4d51226f5ba488cc1bc71585abd09423d35c2c79a6f80cb79e656212d5ed4280","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Homology/Linear.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Algebra.Homology.Additive
import Mathlib.CategoryTheory.Linear.LinearFunctor

/-!
# The category of homological complexes is linear

In this file, we define the instance `Linear R (HomologicalComplex C c)` when the
category `C` is `R`-linear.

## TODO

- show lemmas like `HomologicalComplex.homologyMap_smul` (after doing the same
for short complexes in `Mathlib/Algebra/Homology/ShortComplex/Linear.lean`)

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SmulFApply.Variant4d51226f5ba488cc1bc71585abd09423d35c2c79a6f80cb79e656212d5ed4280

open CategoryTheory

variable {R : Type*} [Semiring R] {C D : Type*} [Category C] [Preadditive C]
  [Category D] [Preadditive D] [CategoryTheory.Linear R C] [CategoryTheory.Linear R D]
  {ι : Type*} {c : ComplexShape ι}

namespace HomologicalComplex

variable {X Y : HomologicalComplex C c}

instance : SMul R (X ⟶ Y) where
  smul r f := { f := fun n => r • f.f n }

@[simp]
lemma smul_f_apply (r : R) (f : X ⟶ Y) (n : ι) : (r • f).f n = r • f.f n := rfl

@[simp]
lemma units_smul_f_apply (r : Rˣ) (f : X ⟶ Y) (n : ι) : (r • f).f n = r • f.f n := rfl

instance (X Y : HomologicalComplex C c) : Module R (X ⟶ Y) where
  one_smul a := by aesop_cat
  smul_zero := by aesop_cat
  smul_add := by aesop_cat
  zero_smul := by aesop_cat
  add_smul _ _ _ := by ext; apply add_smul
  mul_smul _ _ _ := by ext; apply mul_smul

instance : Linear R (HomologicalComplex C c) where

end HomologicalComplex

instance CategoryTheory.Functor.mapHomologicalComplex_linear
    (F : C ⥤ D) [F.Additive] [Functor.Linear R F] (c : ComplexShape ι) :
  Functor.Linear R (F.mapHomologicalComplex c) where
