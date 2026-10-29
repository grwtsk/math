-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.Action.Variant405490ac325fc731e7d1ada0754819c5094613880cc7a4845b60c04ff9d88ebb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"405490ac325fc731e7d1ada0754819c5094613880cc7a4845b60c04ff9d88ebb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.Action.Variant405490ac325fc731e7d1ada0754819c5094613880cc7a4845b60c04ff9d88ebb","mathematical_subject":"Algebra.Groups","original_sha256":"405490ac325fc731e7d1ada0754819c5094613880cc7a4845b60c04ff9d88ebb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Group/Action/TypeTags.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes, Yury Kudryashov
-/
import Mathlib.Algebra.Group.Action.Defs
import Mathlib.Algebra.Group.TypeTags.Basic

/-!
# Additive and Multiplicative for group actions

## Tags

group action
-/


namespace GRWTSK.Algebra.GroupTheory.Action.Variant405490ac325fc731e7d1ada0754819c5094613880cc7a4845b60c04ff9d88ebb

assert_not_exists MonoidWithZero MonoidHom

open Function (Injective Surjective)

variable {M α β γ : Type*}

section

open Additive Multiplicative

instance Additive.vadd [SMul α β] : VAdd (Additive α) β where vadd a := (a.toMul • ·)

instance Multiplicative.smul [VAdd α β] : SMul (Multiplicative α) β where smul a := (a.toAdd +ᵥ ·)

@[simp] lemma toMul_smul [SMul α β] (a:Additive α) (b : β) : (a.toMul : α) • b = a +ᵥ b := rfl

@[simp] lemma ofMul_vadd [SMul α β] (a : α) (b : β) : ofMul a +ᵥ b = a • b := rfl

@[simp] lemma toAdd_vadd [VAdd α β] (a:Multiplicative α) (b : β) : (a.toAdd : α) +ᵥ b = a • b := rfl

@[simp] lemma ofAdd_smul [VAdd α β] (a : α) (b : β) : ofAdd a • b = a +ᵥ b := rfl

-- Porting note: I don't know why `one_smul` can do without an explicit α and `mul_smul` can't.
instance Additive.addAction [Monoid α] [MulAction α β] : AddAction (Additive α) β where
  zero_vadd := MulAction.one_smul
  add_vadd := MulAction.mul_smul (α := α)

instance Multiplicative.mulAction [AddMonoid α] [AddAction α β] :
    MulAction (Multiplicative α) β where
  one_smul := AddAction.zero_vadd
  mul_smul := AddAction.add_vadd (G := α)

instance Additive.vaddCommClass [SMul α γ] [SMul β γ] [SMulCommClass α β γ] :
    VAddCommClass (Additive α) (Additive β) γ :=
  ⟨@smul_comm α β _ _ _ _⟩

instance Multiplicative.smulCommClass [VAdd α γ] [VAdd β γ] [VAddCommClass α β γ] :
    SMulCommClass (Multiplicative α) (Multiplicative β) γ :=
  ⟨@vadd_comm α β _ _ _ _⟩

end
