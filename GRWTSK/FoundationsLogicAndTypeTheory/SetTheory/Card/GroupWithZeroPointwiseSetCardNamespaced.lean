-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.RootCardinalMkSmulSet.Variant4a14f61d408bd2e62ddb2c5e941419e93a3c6aaaf726275997a81fc709515cd1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4a14f61d408bd2e62ddb2c5e941419e93a3c6aaaf726275997a81fc709515cd1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.SetTheory.SourceCorpus.RootCardinalMkSmulSet.Variant4a14f61d408bd2e62ddb2c5e941419e93a3c6aaaf726275997a81fc709515cd1","mathematical_subject":"Logic.SetTheory","original_sha256":"4a14f61d408bd2e62ddb2c5e941419e93a3c6aaaf726275997a81fc709515cd1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/GroupWithZero/Pointwise/Set/Card.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Group.Pointwise.Set.Scalar
import Mathlib.Algebra.GroupWithZero.Action.Basic
import Mathlib.SetTheory.Cardinal.Finite

/-!
# Cardinality of sets under pointwise group with zero operations
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.RootCardinalMkSmulSet.Variant4a14f61d408bd2e62ddb2c5e941419e93a3c6aaaf726275997a81fc709515cd1

assert_not_exists Field

open scoped Cardinal Pointwise

variable {G₀ M₀ : Type*}

namespace Set
variable [GroupWithZero G₀] [Zero M₀] [MulActionWithZero G₀ M₀] {a : G₀}

lemma _root_.GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.RootCardinalMkSmulSet.Variant4a14f61d408bd2e62ddb2c5e941419e93a3c6aaaf726275997a81fc709515cd1.Cardinal.mk_smul_set₀ (ha : a ≠ 0) (s : Set M₀) : #↥(a • s) = #s :=
  Cardinal.mk_image_eq_of_injOn _ _ (MulAction.injective₀ ha).injOn

lemma natCard_smul_set₀ (ha : a ≠ 0) (s : Set M₀) : Nat.card ↥(a • s) = Nat.card s :=
  Nat.card_image_of_injective (MulAction.injective₀ ha) _

end Set
