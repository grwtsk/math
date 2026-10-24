-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.Action.Variantb3c182b3965ac72d5a9e3ea15495f1bc2afaaffd72c05e96e77773b16fbf0e65","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b3c182b3965ac72d5a9e3ea15495f1bc2afaaffd72c05e96e77773b16fbf0e65","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.Action.Variantb3c182b3965ac72d5a9e3ea15495f1bc2afaaffd72c05e96e77773b16fbf0e65","mathematical_subject":"Algebra.Groups","original_sha256":"b3c182b3965ac72d5a9e3ea15495f1bc2afaaffd72c05e96e77773b16fbf0e65","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Group/Action/Synonym.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Group.Action.Defs
import Mathlib.Algebra.Order.Group.Synonym

/-!
# Actions by and on order synonyms

This PR transfers group action instances from a type `α` to `αᵒᵈ` and `Lex α`.

## See also

* `Mathlib/Algebra/Order/GroupWithZero/Action/Synonym.lean`
* `Mathlib/Algebra/Order/Module/Synonym.lean`
-/


namespace GRWTSK.Algebra.GroupTheory.Action.Variantb3c182b3965ac72d5a9e3ea15495f1bc2afaaffd72c05e96e77773b16fbf0e65

variable {M N α : Type*}

namespace OrderDual

@[to_additive]
instance instMulAction [Monoid M] [MulAction M α] : MulAction Mᵒᵈ α := ‹MulAction M α›

@[to_additive]
instance instMulAction' [Monoid M] [MulAction M α] : MulAction M αᵒᵈ := ‹MulAction M α›

@[to_additive]
instance instSMulCommClass [SMul M α] [SMul N α] [SMulCommClass M N α] : SMulCommClass Mᵒᵈ N α :=
  ‹SMulCommClass M N α›

@[to_additive]
instance instSMulCommClass' [SMul M α] [SMul N α] [SMulCommClass M N α] : SMulCommClass M Nᵒᵈ α :=
  ‹SMulCommClass M N α›

@[to_additive]
instance instSMulCommClass'' [SMul M α] [SMul N α] [SMulCommClass M N α] : SMulCommClass M N αᵒᵈ :=
  ‹SMulCommClass M N α›

@[to_additive]
instance instIsScalarTower [SMul M N] [SMul M α] [SMul N α] [IsScalarTower M N α] :
    IsScalarTower Mᵒᵈ N α := ‹IsScalarTower M N α›

@[to_additive]
instance instIsScalarTower' [SMul M N] [SMul M α] [SMul N α] [IsScalarTower M N α] :
    IsScalarTower M Nᵒᵈ α := ‹IsScalarTower M N α›

@[to_additive]
instance instIsScalarTower'' [SMul M N] [SMul M α] [SMul N α] [IsScalarTower M N α] :
    IsScalarTower M N αᵒᵈ := ‹IsScalarTower M N α›

end OrderDual

namespace Lex

@[to_additive]
instance instMulAction [Monoid M] [MulAction M α] : MulAction (Lex M) α := ‹MulAction M α›

@[to_additive]
instance instMulAction' [Monoid M] [MulAction M α] : MulAction M (Lex α) := ‹MulAction M α›

@[to_additive]
instance instSMulCommClass [SMul M α] [SMul N α] [SMulCommClass M N α] :
    SMulCommClass (Lex M) N α := ‹SMulCommClass M N α›

@[to_additive]
instance instSMulCommClass' [SMul M α] [SMul N α] [SMulCommClass M N α] :
    SMulCommClass M (Lex N) α := ‹SMulCommClass M N α›

@[to_additive]
instance instSMulCommClass'' [SMul M α] [SMul N α] [SMulCommClass M N α] :
    SMulCommClass M N (Lex α) := ‹SMulCommClass M N α›

@[to_additive]
instance instIsScalarTower [SMul M N] [SMul M α] [SMul N α] [IsScalarTower M N α] :
    IsScalarTower (Lex M) N α := ‹IsScalarTower M N α›

@[to_additive]
instance instIsScalarTower' [SMul M N] [SMul M α] [SMul N α] [IsScalarTower M N α] :
    IsScalarTower M (Lex N) α := ‹IsScalarTower M N α›

@[to_additive]
instance instIsScalarTower'' [SMul M N] [SMul M α] [SMul N α] [IsScalarTower M N α] :
    IsScalarTower M N (Lex α) := ‹IsScalarTower M N α›

end Lex
