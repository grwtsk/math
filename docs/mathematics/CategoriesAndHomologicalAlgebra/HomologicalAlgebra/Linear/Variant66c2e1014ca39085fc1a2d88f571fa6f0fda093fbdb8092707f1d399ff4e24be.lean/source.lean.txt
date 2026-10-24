-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.HomologicalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.DerivedCategory.Variant023b153595571ee35c2126e46e6e17e2a7a6e0c4050b23baf4e299dd095654dd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"023b153595571ee35c2126e46e6e17e2a7a6e0c4050b23baf4e299dd095654dd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.HomologicalAlgebra.SourceCorpus.DerivedCategory.Variant023b153595571ee35c2126e46e6e17e2a7a6e0c4050b23baf4e299dd095654dd","mathematical_subject":"Algebra.HomologicalAlgebra","original_sha256":"023b153595571ee35c2126e46e6e17e2a7a6e0c4050b23baf4e299dd095654dd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Homology/DerivedCategory/Linear.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
module

public import Mathlib.Algebra.Homology.DerivedCategory.Basic
public import Mathlib.Algebra.Homology.Linear
public import Mathlib.CategoryTheory.Localization.Linear
public import Mathlib.CategoryTheory.Shift.Linear

/-!
# The derived category of a linear abelian category is linear

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.DerivedCategory.Variant023b153595571ee35c2126e46e6e17e2a7a6e0c4050b23baf4e299dd095654dd

public section

open CategoryTheory

universe t w v u

variable (R : Type t) [Ring R] (C : Type u) [Category.{v} C] [Abelian C] [Linear R C]
  [HasDerivedCategory.{w} C]

namespace DerivedCategory

noncomputable instance : Linear R (DerivedCategory C) :=
  Localization.linear R (DerivedCategory.Qh : _ ⥤ DerivedCategory C)
    (HomotopyCategory.quasiIso C _)

instance : Functor.Linear R (DerivedCategory.Qh : _ ⥤ DerivedCategory C) :=
  Localization.functor_linear _ _ _

instance : Functor.Linear R (DerivedCategory.Q : _ ⥤ DerivedCategory C) :=
  Functor.linear_of_iso _ (quotientCompQhIso C)

instance (n : ℤ) : (shiftFunctor (DerivedCategory C) n).Linear R :=
  Shift.linear_of_localization R Qh (HomotopyCategory.subcategoryAcyclic C).trW _

instance (n : ℤ) : Functor.Linear R (DerivedCategory.singleFunctor C n) :=
  Functor.linear_of_iso _ (singleFunctorIsoCompQh C n).symm

end DerivedCategory
