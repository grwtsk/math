-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Equiv.Variant6d38ade7a5482e6a0188256c713241e1c4b26016edcc2c908a74764073bb84c3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6d38ade7a5482e6a0188256c713241e1c4b26016edcc2c908a74764073bb84c3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Equiv.Variant6d38ade7a5482e6a0188256c713241e1c4b26016edcc2c908a74764073bb84c3","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"6d38ade7a5482e6a0188256c713241e1c4b26016edcc2c908a74764073bb84c3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Group/Equiv/Finite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
module

public import Mathlib.Algebra.Group.Equiv.Defs
public import Mathlib.Data.Fintype.Defs

/-!
# Finite types with addition/multiplications

This file contains basic results and instances for finite types that have an
addition/multiplication operator.

## Main results

* `Fintype.decidableEqMulEquivFintype`: `MulEquiv`s on finite types have decidable equality
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Equiv.Variant6d38ade7a5482e6a0188256c713241e1c4b26016edcc2c908a74764073bb84c3

public section

assert_not_exists MonoidWithZero MulAction

open Function

universe u v

variable {α β : Type*}

namespace Fintype

section BundledHoms

@[to_additive]
instance decidableEqMulEquivFintype {α β : Type*} [DecidableEq β] [Fintype α] [Mul α] [Mul β] :
    DecidableEq (α ≃* β) :=
  fun a b => decidable_of_iff ((a : α → β) = b) (Injective.eq_iff DFunLike.coe_injective)

end BundledHoms

end Fintype
