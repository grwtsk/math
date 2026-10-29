-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.CardEqCardQuotientMulCard.Variant84951ff5a128380b1ab0d5119dd576ead26ed5cacf5293574689ee2f6c029569","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"84951ff5a128380b1ab0d5119dd576ead26ed5cacf5293574689ee2f6c029569","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.CardEqCardQuotientMulCard.Variant84951ff5a128380b1ab0d5119dd576ead26ed5cacf5293574689ee2f6c029569","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"84951ff5a128380b1ab0d5119dd576ead26ed5cacf5293574689ee2f6c029569","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/LinearAlgebra/Quotient/Card.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro, Kevin Buzzard, Yury Kudryashov
-/
module

public import Mathlib.LinearAlgebra.Quotient.Defs
public import Mathlib.SetTheory.Cardinal.Finite
public import Mathlib.GroupTheory.Coset.Basic

/-! Results about the cardinality of a quotient module. -/


namespace GRWTSK.Algebra.LinearAlgebra.CardEqCardQuotientMulCard.Variant84951ff5a128380b1ab0d5119dd576ead26ed5cacf5293574689ee2f6c029569

public section

namespace Submodule

variable {R M : Type*} [Ring R] [AddCommGroup M] [Module R M]

theorem card_eq_card_quotient_mul_card (S : Submodule R M) :
    Nat.card M = Nat.card S * Nat.card (M ⧸ S) := by
  rw [mul_comm, ← Nat.card_prod]
  exact Nat.card_congr AddSubgroup.addGroupEquivQuotientProdAddSubgroup

end Submodule
