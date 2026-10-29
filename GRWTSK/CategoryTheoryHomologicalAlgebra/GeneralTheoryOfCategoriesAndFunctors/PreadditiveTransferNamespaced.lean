-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OfFullyFaithful.Variant793603bda2a92f57757b81f18407847887516862c6b62c7d7c315f1c130d6680","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"793603bda2a92f57757b81f18407847887516862c6b62c7d7c315f1c130d6680","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.OfFullyFaithful.Variant793603bda2a92f57757b81f18407847887516862c6b62c7d7c315f1c130d6680","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"793603bda2a92f57757b81f18407847887516862c6b62c7d7c315f1c130d6680","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Preadditive/Transfer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Jakob von Raumer. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jakob von Raumer
-/
import Mathlib.CategoryTheory.Preadditive.AdditiveFunctor
import Mathlib.Algebra.Equiv.TransferInstance

/-!
# Pulling back a preadditive structure along a fully faithful functor

A preadditive structure on a category `D` transfers to a preadditive structure on `C` for a given
fully faithful functor `F : C ⥤ D`.
-/

namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OfFullyFaithful.Variant793603bda2a92f57757b81f18407847887516862c6b62c7d7c315f1c130d6680

namespace CategoryTheory

open Limits

universe v₁ v₂ u₁ u₂

variable {C : Type u₁} [Category.{v₁} C]
variable {D : Type u₂} [Category.{v₂} D] [Preadditive D]
variable {F : C ⥤ D} (hF : F.FullyFaithful)

namespace Preadditive


/-- If `D` is a preadditive category, any fully faithful functor `F : C ⥤ D` induces a preadditive
structure on `C`. -/
def ofFullyFaithful : Preadditive C where
  homGroup P Q := hF.homEquiv.addCommGroup
  add_comp P Q R f f' g := hF.map_injective (by simp [Equiv.add_def])
  comp_add P Q R f g g' := hF.map_injective (by simp [Equiv.add_def])

end Preadditive

open Preadditive
namespace Functor.FullyFaithful

/-- The preadditive structure on `C` induced by a fully faithful functor `F : C ⥤ D` makes `F` an
additive functor. -/
lemma additive_ofFullyFaithful :
    letI : Preadditive C := Preadditive.ofFullyFaithful hF
    F.Additive :=
  letI : Preadditive C := Preadditive.ofFullyFaithful hF
  { map_add := by simp [Equiv.add_def] }

end Functor.FullyFaithful

namespace Equivalence

/-- The preadditive structure on `C` induced by an equivalence `e : C ≌ D` makes `e.inverse` an
additive functor. -/
lemma additive_inverse_of_FullyFaithful (e : C ≌ D) :
    letI : Preadditive C := ofFullyFaithful e.fullyFaithfulFunctor
    e.inverse.Additive :=
  letI : Preadditive C := ofFullyFaithful e.fullyFaithfulFunctor
  letI : e.functor.Additive := e.fullyFaithfulFunctor.additive_ofFullyFaithful
  e.inverse_additive

end Equivalence

end CategoryTheory
