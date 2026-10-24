-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.SubmonoidIsPrimal.Variant43ce850aaa07f8cda99cded34b2a3068b323aff16dafd61e57c9e9a6daf4de23","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"43ce850aaa07f8cda99cded34b2a3068b323aff16dafd61e57c9e9a6daf4de23","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.SubmonoidIsPrimal.Variant43ce850aaa07f8cda99cded34b2a3068b323aff16dafd61e57c9e9a6daf4de23","mathematical_subject":"Algebra.Groups","original_sha256":"43ce850aaa07f8cda99cded34b2a3068b323aff16dafd61e57c9e9a6daf4de23","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/GroupWithZero/Submonoid/Primal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Junyan Xu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Junyan Xu
-/
import Mathlib.Algebra.Group.Submonoid.Defs
import Mathlib.Algebra.GroupWithZero.Divisibility

/-!
# Submonoid of primal elements
-/


namespace GRWTSK.Algebra.GroupTheory.SubmonoidIsPrimal.Variant43ce850aaa07f8cda99cded34b2a3068b323aff16dafd61e57c9e9a6daf4de23

assert_not_exists RelIso Ring

/-- The submonoid of primal elements in a cancellative commutative monoid with zero. -/
def Submonoid.isPrimal (M₀ : Type*) [CancelCommMonoidWithZero M₀] : Submonoid M₀ where
  carrier := {a | IsPrimal a}
  mul_mem' := .mul
  one_mem' := isUnit_one.isPrimal
