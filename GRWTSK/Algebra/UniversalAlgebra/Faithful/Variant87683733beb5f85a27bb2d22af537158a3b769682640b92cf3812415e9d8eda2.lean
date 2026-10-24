-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Faithful.Variante9c059d2ddee9c9b411e4448af789dca11e68d89b346695b453823ac4a762538","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e9c059d2ddee9c9b411e4448af789dca11e68d89b346695b453823ac4a762538","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Faithful.Variante9c059d2ddee9c9b411e4448af789dca11e68d89b346695b453823ac4a762538","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"e9c059d2ddee9c9b411e4448af789dca11e68d89b346695b453823ac4a762538","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/GroupWithZero/Action/Faithful.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes, Yury Kudryashov
-/
import Mathlib.Algebra.Group.Action.Faithful
import Mathlib.Algebra.GroupWithZero.NeZero

/-!
# Faithful actions involving groups with zero
-/


namespace GRWTSK.Algebra.UniversalAlgebra.Faithful.Variante9c059d2ddee9c9b411e4448af789dca11e68d89b346695b453823ac4a762538

assert_not_exists Equiv.Perm.equivUnitsEnd Prod.fst_mul Ring

open Function

variable {α : Type*}

/-- `Monoid.toMulAction` is faithful on nontrivial cancellative monoids with zero. -/
instance CancelMonoidWithZero.faithfulSMul [CancelMonoidWithZero α] [Nontrivial α] :
    FaithfulSMul α α where eq_of_smul_eq_smul  h := mul_left_injective₀ one_ne_zero (h 1)
