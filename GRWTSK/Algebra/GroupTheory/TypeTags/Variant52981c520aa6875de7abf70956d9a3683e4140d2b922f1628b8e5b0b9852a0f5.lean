-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.Action.Variant0bc980c7e7a04ba000032d130635f6cdb4517186166ff164eb9031ea76ddd69b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0bc980c7e7a04ba000032d130635f6cdb4517186166ff164eb9031ea76ddd69b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.Action.Variant0bc980c7e7a04ba000032d130635f6cdb4517186166ff164eb9031ea76ddd69b","mathematical_subject":"Algebra.Groups","original_sha256":"0bc980c7e7a04ba000032d130635f6cdb4517186166ff164eb9031ea76ddd69b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Group/Action/TypeTags.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes, Yury Kudryashov
-/
module

public import Mathlib.Algebra.Group.Action.Defs
public import Mathlib.Algebra.Group.TypeTags.Basic

/-!
# Additive and Multiplicative for group actions

## Tags

group action
-/


namespace GRWTSK.Algebra.GroupTheory.Action.Variant0bc980c7e7a04ba000032d130635f6cdb4517186166ff164eb9031ea76ddd69b

public section

assert_not_exists MonoidWithZero MonoidHom

open Function (Injective Surjective)

variable {α β γ : Type*}

section

open Additive Multiplicative

instance Additive.vadd [SMul α β] : VAdd (Additive α) β where vadd a := (a.toMul • ·)

instance Multiplicative.smul [VAdd α β] : SMul (Multiplicative α) β where smul a := (a.toAdd +ᵥ ·)

@[simp] lemma toMul_smul [SMul α β] (a : Additive α) (b : β) : (a.toMul : α) • b = a +ᵥ b := rfl

@[simp] lemma ofMul_vadd [SMul α β] (a : α) (b : β) : ofMul a +ᵥ b = a • b := rfl

@[simp] lemma toAdd_vadd [VAdd α β] (a : Multiplicative α) (b : β) : (a.toAdd : α) +ᵥ b = a • b :=
  rfl

@[simp] lemma ofAdd_smul [VAdd α β] (a : α) (b : β) : ofAdd a • b = a +ᵥ b := rfl

instance Additive.addAction [Monoid α] [MulAction α β] : AddAction (Additive α) β where
  zero_vadd := MulAction.one_smul
  add_vadd := mul_smul (α := α)

instance Multiplicative.mulAction [AddMonoid α] [AddAction α β] :
    MulAction (Multiplicative α) β where
  one_smul := AddAction.zero_vadd
  mul_smul := add_vadd (G := α)

instance Additive.vaddCommClass [SMul α γ] [SMul β γ] [SMulCommClass α β γ] :
    VAddCommClass (Additive α) (Additive β) γ :=
  ⟨@smul_comm α β _ _ _ _⟩

instance Multiplicative.smulCommClass [VAdd α γ] [VAdd β γ] [VAddCommClass α β γ] :
    SMulCommClass (Multiplicative α) (Multiplicative β) γ :=
  ⟨@vadd_comm α β _ _ _ _⟩

end
