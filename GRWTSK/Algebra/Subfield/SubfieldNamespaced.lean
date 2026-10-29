-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Subfield.Variant7e69ba4a3ebdedebaa109e238d8a453982abc8213d32e9be59b5f0f7df0eef2d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7e69ba4a3ebdedebaa109e238d8a453982abc8213d32e9be59b5f0f7df0eef2d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.Subfield.Variant7e69ba4a3ebdedebaa109e238d8a453982abc8213d32e9be59b5f0f7df0eef2d","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"7e69ba4a3ebdedebaa109e238d8a453982abc8213d32e9be59b5f0f7df0eef2d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Field/Subfield.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Damiano Testa. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Damiano Testa
-/

import Mathlib.Algebra.Field.Subfield.Defs
import Mathlib.Algebra.Order.Ring.InjSurj

/-!
# Ordered instances on subfields
-/


namespace GRWTSK.Algebra.Subfield.Variant7e69ba4a3ebdedebaa109e238d8a453982abc8213d32e9be59b5f0f7df0eef2d

namespace Subfield
variable {K : Type*}

/-- A subfield of an ordered field is a ordered field. -/
instance toIsStrictOrderedRing [Field K] [LinearOrder K] [IsStrictOrderedRing K] (s : Subfield K) :
    IsStrictOrderedRing s :=
  Subtype.coe_injective.isStrictOrderedRing Subtype.val rfl rfl (fun _ _ => rfl) (fun _ _ => rfl)
    (fun _ _ => rfl) (fun _ _ => rfl) fun _ => rfl

end Subfield
