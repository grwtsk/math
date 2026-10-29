-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Pi.Varianta5057cb5e3b99f09df66fd0dbd3089d35e7848cd2bccb7aa97271398d1fc2b71","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a5057cb5e3b99f09df66fd0dbd3089d35e7848cd2bccb7aa97271398d1fc2b71","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Pi.Varianta5057cb5e3b99f09df66fd0dbd3089d35e7848cd2bccb7aa97271398d1fc2b71","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"a5057cb5e3b99f09df66fd0dbd3089d35e7848cd2bccb7aa97271398d1fc2b71","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Group/PiLex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes
-/
import Mathlib.Algebra.Group.Pi.Basic
import Mathlib.Algebra.Order.Group.Synonym
import Mathlib.Algebra.Order.Monoid.Defs
import Mathlib.Order.PiLex

/-!
# Lexicographic product of algebraic order structures

This file proves that the lexicographic order on pi types is compatible with the pointwise algebraic
operations.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.Pi.Varianta5057cb5e3b99f09df66fd0dbd3089d35e7848cd2bccb7aa97271398d1fc2b71

namespace Pi.Lex
variable {ι : Type*} {α : ι → Type*} [LinearOrder ι]

@[to_additive]
instance isOrderedCancelMonoid [∀ i, CommMonoid (α i)] [∀ i, PartialOrder (α i)]
    [∀ i, IsOrderedCancelMonoid (α i)] :
    IsOrderedCancelMonoid (Lex (∀ i, α i)) where
  mul_le_mul_left _ _ hxy z :=
    hxy.elim (fun hxyz => hxyz ▸ le_rfl) fun ⟨i, hi⟩ =>
      Or.inr ⟨i, fun j hji => congr_arg (z j * ·) (hi.1 j hji), mul_lt_mul_left' hi.2 _⟩
  le_of_mul_le_mul_left _ _ _ hxyz :=
    hxyz.elim (fun h => (mul_left_cancel h).le) fun ⟨i, hi⟩ =>
      Or.inr ⟨i, fun j hj => (mul_left_cancel <| hi.1 j hj), lt_of_mul_lt_mul_left' hi.2⟩

end Pi.Lex
