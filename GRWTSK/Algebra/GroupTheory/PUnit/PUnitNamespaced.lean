-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.Group.Variant7d211473ddefffe1c69f20481fb72284578d10aa33fc9882d9b806f157fb06d1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7d211473ddefffe1c69f20481fb72284578d10aa33fc9882d9b806f157fb06d1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.Group.Variant7d211473ddefffe1c69f20481fb72284578d10aa33fc9882d9b806f157fb06d1","mathematical_subject":"Algebra.Groups","original_sha256":"7d211473ddefffe1c69f20481fb72284578d10aa33fc9882d9b806f157fb06d1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Group/PUnit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau
-/
import Mathlib.Algebra.Group.Defs

/-!
# `PUnit` is a commutative group

This file collects facts about algebraic structures on the one-element type, e.g. that it is a
commutative ring.
-/


namespace GRWTSK.Algebra.GroupTheory.Group.Variant7d211473ddefffe1c69f20481fb72284578d10aa33fc9882d9b806f157fb06d1

assert_not_exists MonoidWithZero

namespace PUnit

@[to_additive]
instance commGroup : CommGroup PUnit where
  mul _ _ := unit
  one := unit
  inv _ := unit
  div _ _ := unit
  npow _ _ := unit
  zpow _ _ := unit
  mul_assoc _ _ _ := rfl
  one_mul _ := rfl
  mul_one _ := rfl
  inv_mul_cancel _ := rfl
  mul_comm _ _ := rfl

-- shortcut instances
@[to_additive] instance : One PUnit where one := unit
@[to_additive] instance : Mul PUnit where mul _ _ := unit
@[to_additive] instance : Div PUnit where div _ _ := unit
@[to_additive] instance : Inv PUnit where inv _ := unit

@[to_additive (attr := simp)] lemma one_eq : (1 : PUnit) = unit := rfl

-- note simp can prove this when the Boolean ring structure is introduced
@[to_additive] lemma mul_eq (x y : PUnit) : x * y = unit := rfl

@[to_additive (attr := simp)] lemma div_eq (x y : PUnit) : x / y = unit := rfl
@[to_additive (attr := simp)] lemma inv_eq (x : PUnit) : x⁻¹ = unit := rfl

end PUnit
