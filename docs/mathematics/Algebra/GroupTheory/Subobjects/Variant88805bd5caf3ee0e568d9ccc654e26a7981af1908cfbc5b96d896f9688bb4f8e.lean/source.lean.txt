-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.Subgroup.Variant6e8e22d71041f4a40eca13ad484f146f43821a4ea9f9f9568053a9c718c1e418","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6e8e22d71041f4a40eca13ad484f146f43821a4ea9f9f9568053a9c718c1e418","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.Subgroup.Variant6e8e22d71041f4a40eca13ad484f146f43821a4ea9f9f9568053a9c718c1e418","mathematical_subject":"Algebra.Groups","original_sha256":"6e8e22d71041f4a40eca13ad484f146f43821a4ea9f9f9568053a9c718c1e418","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Ring/Action/Subobjects.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.Group.Subgroup.Defs
import Mathlib.Algebra.Group.Submonoid.DistribMulAction
import Mathlib.Algebra.Ring.Action.Basic

/-!
# Instances of `MulSemiringAction` for subobjects

These are defined in this file as `Semiring`s are not available yet where `Submonoid` and `Subgroup`
are defined.

Instances for `Subsemiring` and `Subring` are provided next to the other scalar actions instances
for those subobjects.

-/


namespace GRWTSK.Algebra.GroupTheory.Subgroup.Variant6e8e22d71041f4a40eca13ad484f146f43821a4ea9f9f9568053a9c718c1e418

assert_not_exists RelIso

variable {M G R : Type*}
variable [Monoid M] [Group G] [Semiring R]

instance (priority := low) [MulSemiringAction M R] {S : Type*} [SetLike S M] (s : S)
    [SubmonoidClass S M] : MulSemiringAction s R :=
  { inferInstanceAs (DistribMulAction s R), inferInstanceAs (MulDistribMulAction s R) with }

/-- A stronger version of `Submonoid.distribMulAction`. -/
instance Submonoid.mulSemiringAction [MulSemiringAction M R] (H : Submonoid M) :
    MulSemiringAction H R :=
  inferInstance

/-- A stronger version of `Subgroup.distribMulAction`. -/
instance Subgroup.mulSemiringAction [MulSemiringAction G R] (H : Subgroup G) :
    MulSemiringAction H R :=
  inferInstance
