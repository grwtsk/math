-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Abbrev.Variant1463511b2da9d15a6cea6bc6961a18b3d53cddb020965690ff1b3d1e359ad0f1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1463511b2da9d15a6cea6bc6961a18b3d53cddb020965690ff1b3d1e359ad0f1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Abbrev.Variant1463511b2da9d15a6cea6bc6961a18b3d53cddb020965690ff1b3d1e359ad0f1","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"1463511b2da9d15a6cea6bc6961a18b3d53cddb020965690ff1b3d1e359ad0f1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Monoidal/Cartesian/CommGrp_.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.CategoryTheory.Monoidal.Cartesian.CommMon_
import Mathlib.CategoryTheory.Monoidal.Cartesian.Grp_

/-!
# Yoneda embedding of `CommGrp_ C`
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Abbrev.Variant1463511b2da9d15a6cea6bc6961a18b3d53cddb020965690ff1b3d1e359ad0f1

open CategoryTheory MonoidalCategory Limits Opposite CartesianMonoidalCategory Mon_Class

universe w v u
variable {C : Type u} [Category.{v} C] [CartesianMonoidalCategory C] [BraidedCategory C] {X : C}

variable (X) in
/-- Abbreviation for an unbundled commutative group object. It is a group object that is a
commutative monoid object. -/
class abbrev CommGrp_Class := Grp_Class X, IsCommMon X

section CommGrp_

variable (X) in
/-- If `X` represents a presheaf of commutative groups, then `X` is a commutative group object. -/
def CommGrp_Class.ofRepresentableBy (F : Cᵒᵖ ⥤ CommGrp.{w})
    (α : (F ⋙ forget _).RepresentableBy X) : CommGrp_Class X where
  __ := Grp_Class.ofRepresentableBy X (F ⋙ forget₂ CommGrp Grp) α
  __ := IsCommMon.ofRepresentableBy X (F ⋙ forget₂ CommGrp CommMonCat) α

end CommGrp_
