-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.SmulInvPrimePrime.Variant98e5c413a9011bdcb96d566865ac1f94647f6e2c83dfb869b53c7825ee62c5d9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"98e5c413a9011bdcb96d566865ac1f94647f6e2c83dfb869b53c7825ee62c5d9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.SmulInvPrimePrime.Variant98e5c413a9011bdcb96d566865ac1f94647f6e2c83dfb869b53c7825ee62c5d9","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"98e5c413a9011bdcb96d566865ac1f94647f6e2c83dfb869b53c7825ee62c5d9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Ring/Action/Field.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau
-/
import Mathlib.Algebra.Ring.Action.Basic
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.GroupWithZero.Units.Lemmas

/-!
# Group action on fields
-/


namespace GRWTSK.Algebra.SmulInvPrimePrime.Variant98e5c413a9011bdcb96d566865ac1f94647f6e2c83dfb869b53c7825ee62c5d9

variable {M} [Monoid M] {F} [DivisionRing F]

/-- Note that `smul_inv'` refers to the group case, and `smul_inv` has an additional inverse
on `x`. -/
@[simp]
theorem smul_inv'' [MulSemiringAction M F] (x : M) (m : F) : x • m⁻¹ = (x • m)⁻¹ :=
  map_inv₀ (MulSemiringAction.toRingHom M F x) _
