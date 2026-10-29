-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Module.Variant15439389b833a649ca97389ebc1509b633e0d93a211e2f9969fa5a1e90333d59","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"15439389b833a649ca97389ebc1509b633e0d93a211e2f9969fa5a1e90333d59","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Module.Variant15439389b833a649ca97389ebc1509b633e0d93a211e2f9969fa5a1e90333d59","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"15439389b833a649ca97389ebc1509b633e0d93a211e2f9969fa5a1e90333d59","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Condensed/Limits.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.Condensed.Module

/-!

# Limits in categories of condensed objects

This file adds some instances for limits in condensed sets and condensed modules.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Module.Variant15439389b833a649ca97389ebc1509b633e0d93a211e2f9969fa5a1e90333d59

universe u

open CategoryTheory Limits

instance : HasLimits CondensedSet.{u} := by
  change HasLimits (Sheaf _ _)
  infer_instance

instance : HasLimitsOfSize.{u, u + 1} CondensedSet.{u} :=
  hasLimitsOfSizeShrink.{u, u + 1, u + 1, u} _

variable (R : Type (u + 1)) [Ring R]

instance : HasLimits (CondensedMod.{u} R) :=
  inferInstanceAs (HasLimits (Sheaf _ _))

instance : HasColimits (CondensedMod.{u} R) :=
  inferInstanceAs (HasColimits (Sheaf _ _))

instance : HasLimitsOfSize.{u, u + 1} (CondensedMod.{u} R) :=
  hasLimitsOfSizeShrink.{u, u + 1, u + 1, u} _

instance {A J : Type*} [Category A] [Category J] [HasColimitsOfShape J A]
    [HasWeakSheafify (coherentTopology CompHaus.{u}) A] :
    HasColimitsOfShape J (Condensed.{u} A) :=
  inferInstanceAs (HasColimitsOfShape J (Sheaf _ _))

instance {A J : Type*} [Category A] [Category J] [HasLimitsOfShape J A] :
    HasLimitsOfShape J (Condensed.{u} A) :=
  inferInstanceAs (HasLimitsOfShape J (Sheaf _ _))

instance {A : Type*} [Category A] [HasFiniteLimits A] : HasFiniteLimits (Condensed.{u} A) :=
  inferInstanceAs (HasFiniteLimits (Sheaf _ _))

instance {A : Type*} [Category A] [HasFiniteColimits A]
    [HasWeakSheafify (coherentTopology CompHaus.{u}) A] : HasFiniteColimits (Condensed.{u} A) :=
  inferInstanceAs (HasFiniteColimits (Sheaf _ _))
