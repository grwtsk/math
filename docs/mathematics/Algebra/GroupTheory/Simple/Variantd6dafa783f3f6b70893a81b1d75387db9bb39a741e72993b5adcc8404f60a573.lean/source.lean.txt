-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.CommGroupIsSimpleGroupIffIsCoatom.Variantc51613157cb67d4cbbd47a9713b0bc19fb479750e25f00ceee0fa23eb6a63b95","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c51613157cb67d4cbbd47a9713b0bc19fb479750e25f00ceee0fa23eb6a63b95","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.CommGroupIsSimpleGroupIffIsCoatom.Variantc51613157cb67d4cbbd47a9713b0bc19fb479750e25f00ceee0fa23eb6a63b95","mathematical_subject":"Algebra.Groups","original_sha256":"c51613157cb67d4cbbd47a9713b0bc19fb479750e25f00ceee0fa23eb6a63b95","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/GroupTheory/QuotientGroup/Simple.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Xavier Roblot. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Xavier Roblot
-/
module

public import Mathlib.GroupTheory.QuotientGroup.Basic
public import Mathlib.GroupTheory.Subgroup.Simple

/-!
# Simplicity of quotient groups

This file characterizes when a quotient group is simple.

## Main results

* `CommGroup.isSimpleGroup_iff_isCoatom`: a subgroup of a commutative group is a coatom in the
  subgroup lattice iff the quotient by it is simple.
-/


namespace GRWTSK.Algebra.GroupTheory.CommGroupIsSimpleGroupIffIsCoatom.Variantc51613157cb67d4cbbd47a9713b0bc19fb479750e25f00ceee0fa23eb6a63b95

public section

/-- A subgroup of a commutative group is maximal (a coatom in the subgroup lattice) iff the quotient
by it is simple. Group analogue of `isSimpleModule_iff_isCoatom`. -/
@[to_additive /-- A subgroup of an additive commutative group is maximal (a coatom in the subgroup
lattice) iff the quotient by it is simple. Additive group analogue of
`isSimpleModule_iff_isCoatom`. -/]
theorem CommGroup.isSimpleGroup_iff_isCoatom {G : Type*} [CommGroup G] {M : Subgroup G} :
    IsSimpleGroup (G ⧸ M) ↔ IsCoatom M := by
  rw [← Set.isSimpleOrder_Ici_iff_isCoatom,
    ← (QuotientGroup.comapMk'OrderIso M).isSimpleOrder_iff, isSimpleGroup_iff, isSimpleOrder_iff]
  simp [Subgroup.normal_of_isMulCommutative]
