-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.SmulDef.Variant7a00aed954313b7fa3c0906220cef1e33e1730e71bec68ca131f94a4573d2722","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7a00aed954313b7fa3c0906220cef1e33e1730e71bec68ca131f94a4573d2722","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.SmulDef.Variant7a00aed954313b7fa3c0906220cef1e33e1730e71bec68ca131f94a4573d2722","mathematical_subject":"Algebra.Groups","original_sha256":"7a00aed954313b7fa3c0906220cef1e33e1730e71bec68ca131f94a4573d2722","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Group/Action/Sigma.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Group.Action.Faithful
import Mathlib.Data.Sigma.Basic

/-!
# Sigma instances for additive and multiplicative actions

This file defines instances for arbitrary sum of additive and multiplicative actions.

## See also

* `Mathlib/Algebra/Group/Action/Option.lean`
* `Mathlib/Algebra/Group/Action/Pi.lean`
* `Mathlib/Algebra/Group/Action/Prod.lean`
* `Mathlib/Algebra/Group/Action/Sum.lean`
-/


namespace GRWTSK.Algebra.GroupTheory.SmulDef.Variant7a00aed954313b7fa3c0906220cef1e33e1730e71bec68ca131f94a4573d2722

assert_not_exists MonoidWithZero


variable {ι : Type*} {M N : Type*} {α : ι → Type*}

namespace Sigma

section SMul

variable [∀ i, SMul M (α i)] [∀ i, SMul N (α i)] (a : M) (i : ι) (b : α i) (x : Σi, α i)

@[to_additive Sigma.VAdd]
instance : SMul M (Σi, α i) :=
  ⟨fun a => (Sigma.map id) fun _ => (a • ·)⟩

@[to_additive]
theorem smul_def : a • x = x.map id fun _ => (a • ·) :=
  rfl

@[to_additive (attr := simp)]
theorem smul_mk : a • mk i b = ⟨i, a • b⟩ :=
  rfl

@[to_additive]
instance instIsScalarTowerOfSMul [SMul M N] [∀ i, IsScalarTower M N (α i)] :
    IsScalarTower M N (Σi, α i) :=
  ⟨fun a b x => by
    cases x
    rw [smul_mk, smul_mk, smul_mk, smul_assoc]⟩

@[to_additive]
instance [∀ i, SMulCommClass M N (α i)] : SMulCommClass M N (Σi, α i) :=
  ⟨fun a b x => by
    cases x
    rw [smul_mk, smul_mk, smul_mk, smul_mk, smul_comm]⟩

@[to_additive]
instance [∀ i, SMul Mᵐᵒᵖ (α i)] [∀ i, IsCentralScalar M (α i)] : IsCentralScalar M (Σi, α i) :=
  ⟨fun a x => by
    cases x
    rw [smul_mk, smul_mk, op_smul_eq_smul]⟩

/-- This is not an instance because `i` becomes a metavariable. -/
@[to_additive "This is not an instance because `i` becomes a metavariable."]
protected theorem FaithfulSMul' [FaithfulSMul M (α i)] : FaithfulSMul M (Σi, α i) :=
  ⟨fun h => eq_of_smul_eq_smul fun a : α i => heq_iff_eq.1 (Sigma.ext_iff.1 <| h <| mk i a).2⟩

@[to_additive]
instance [Nonempty ι] [∀ i, FaithfulSMul M (α i)] : FaithfulSMul M (Σi, α i) :=
  (Nonempty.elim ‹_›) fun i => Sigma.FaithfulSMul' i

end SMul

@[to_additive]
instance {m : Monoid M} [∀ i, MulAction M (α i)] :
    MulAction M (Σi, α i) where
  mul_smul a b x := by
    cases x
    rw [smul_mk, smul_mk, smul_mk, mul_smul]
  one_smul x := by
    cases x
    rw [smul_mk, one_smul]

end Sigma
