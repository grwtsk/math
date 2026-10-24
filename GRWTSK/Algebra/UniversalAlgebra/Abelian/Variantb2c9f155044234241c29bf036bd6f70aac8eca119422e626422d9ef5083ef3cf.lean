-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.CondensedAb.Variantaebbea73ce06e2baa62e7adc935fa9a7a35452da9bd671a39883e14e674f101d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aebbea73ce06e2baa62e7adc935fa9a7a35452da9bd671a39883e14e674f101d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.CondensedAb.Variantaebbea73ce06e2baa62e7adc935fa9a7a35452da9bd671a39883e14e674f101d","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"aebbea73ce06e2baa62e7adc935fa9a7a35452da9bd671a39883e14e674f101d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Condensed/Abelian.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Adam Topaz. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Adam Topaz
-/
import Mathlib.Topology.Sheaves.Abelian
import Mathlib.Algebra.Category.GroupCat.Abelian
import Mathlib.Algebra.Category.GroupCat.FilteredColimits
import Mathlib.Condensed.Basic

/-!

Condensed abelian groups form an abelian category.

-/


namespace GRWTSK.Algebra.UniversalAlgebra.CondensedAb.Variantaebbea73ce06e2baa62e7adc935fa9a7a35452da9bd671a39883e14e674f101d

universe u

open CategoryTheory Limits

/--
The category of condensed abelian groups, defined as sheaves of abelian groups over
`CompHaus` with respect to the coherent Grothendieck topology.
-/
abbrev CondensedAb := Condensed.{u} AddCommGroupCat.{u+1}

noncomputable instance CondensedAb.abelian :
    CategoryTheory.Abelian CondensedAb.{u} :=
  letI : PreservesLimits (forget AddCommGroupCat.{u+1}) :=
    AddCommGroupCat.forgetPreservesLimits.{u+1, u+1}
  CategoryTheory.sheafIsAbelian
