-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ModTrivialAction.Variantf8765e1f251458a21d16cc4f4fa07cb5cf99ee5c00bbab93f593b2b8cc0b4180","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f8765e1f251458a21d16cc4f4fa07cb5cf99ee5c00bbab93f593b2b8cc0b4180","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ModTrivialAction.Variantf8765e1f251458a21d16cc4f4fa07cb5cf99ee5c00bbab93f593b2b8cc0b4180","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"f8765e1f251458a21d16cc4f4fa07cb5cf99ee5c00bbab93f593b2b8cc0b4180","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Monoidal/Cartesian/Mod_.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Paul Lezeau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Lezeau
-/
import Mathlib.CategoryTheory.Monoidal.Cartesian.Basic
import Mathlib.CategoryTheory.Monoidal.Mod_

/-!
# Additional results about module objects in cartesian monoidal categories
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ModTrivialAction.Variantf8765e1f251458a21d16cc4f4fa07cb5cf99ee5c00bbab93f593b2b8cc0b4180

open CategoryTheory MonoidalCategory CartesianMonoidalCategory

universe v u
variable {C : Type u} [Category.{v} C] [CartesianMonoidalCategory C]

attribute [local simp] leftUnitor_hom

/-- Every object is a module over a monoid object via the trivial action. -/
@[simps]
def Mod_.trivialAction (M : Mon_ C) (X : C) : Mod_ M where
  X := X
  smul := snd M.X X

/-- Every object is a module over a monoid object via the trivial action. -/
@[reducible] def Mod_Class.trivialAction (M : C) [Mon_Class M] (X : C) : Mod_Class M X where
  smul := snd M X
