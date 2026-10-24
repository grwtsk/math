# Complete source: GRWTSK.Algebra.GroupTheory.Defs.Variant2f2d99ebfe60b40f8aa49317c075da58a3b5ed327b62f23a6457be5be72db364

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ab41d35fae21462ba2434fb16533856476e89975` · SHA-256 `0561708ad82a4d3e1758747559a66388399eb748d66f4a9dab9be624402daf82`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.AddGroupWithOne.Variant37c9e768b5b7a20cdfc0bb15c64388a1bfae6b6a06ae4c270bc71b0a1a07ee4d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"37c9e768b5b7a20cdfc0bb15c64388a1bfae6b6a06ae4c270bc71b0a1a07ee4d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.AddGroupWithOne.Variant37c9e768b5b7a20cdfc0bb15c64388a1bfae6b6a06ae4c270bc71b0a1a07ee4d","mathematical_subject":"Algebra.Groups","original_sha256":"37c9e768b5b7a20cdfc0bb15c64388a1bfae6b6a06ae4c270bc71b0a1a07ee4d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Data/Int/Cast/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Gabriel Ebner
-/
import Mathlib.Data.Nat.Cast.Defs


namespace GRWTSK.Algebra.GroupTheory.AddGroupWithOne.Variant37c9e768b5b7a20cdfc0bb15c64388a1bfae6b6a06ae4c270bc71b0a1a07ee4d

#align_import data.int.cast.defs from "leanprover-community/mathlib"@"acebd8d49928f6ed8920e502a6c90674e75bd441"

/-!
# Cast of integers

This file defines the *canonical* homomorphism from the integers into an
additive group with a one (typically a `Ring`).  In additive groups with a one
element, there exists a unique such homomorphism and we store it in the
`intCast : ℤ → R` field.

Preferentially, the homomorphism is written as a coercion.

## Main declarations

* `Int.cast`: Canonical homomorphism `ℤ → R`.
* `AddGroupWithOne`: Type class for `Int.cast`.
-/


universe u

attribute [simp] Int.ofNat_eq_coe

/-- Default value for `IntCast.intCast` in an `AddGroupWithOne`. -/
protected def Int.castDef {R : Type u} [NatCast R] [Neg R] : ℤ → R
  | (n : ℕ) => n
  | Int.negSucc n => -(n + 1 : ℕ)
#align int.cast_def Int.castDef

#align has_int_cast IntCast
#align int.cast Int.cast

/-! ### Additive groups with one -/

/-- An `AddGroupWithOne` is an `AddGroup` with a 1. It also contains data for the unique
homomorphisms `ℕ → R` and `ℤ → R`. -/
class AddGroupWithOne (R : Type u) extends IntCast R, AddMonoidWithOne R, AddGroup R where
  /-- The canonical homorphism `ℤ → R`. -/
  intCast := Int.castDef
  /-- The canonical homorphism `ℤ → R` agrees with the one from `ℕ → R` on `ℕ`. -/
  intCast_ofNat : ∀ n : ℕ, intCast (n : ℕ) = Nat.cast n := by intros; rfl
  /-- The canonical homorphism `ℤ → R` for negative values is just the negation of the values
  of the canonical homomorphism `ℕ → R`. -/
  intCast_negSucc : ∀ n : ℕ, intCast (Int.negSucc n) = - Nat.cast (n + 1) := by intros; rfl
#align add_group_with_one AddGroupWithOne
#align add_group_with_one.to_int_cast AddGroupWithOne.toIntCast
#align add_group_with_one.to_add_monoid_with_one AddGroupWithOne.toAddMonoidWithOne
#align add_group_with_one.to_add_group AddGroupWithOne.toAddGroup
#align add_group_with_one.int_cast_of_nat AddGroupWithOne.intCast_ofNat
#align add_group_with_one.int_cast_neg_succ_of_nat AddGroupWithOne.intCast_negSucc

/-- An `AddCommGroupWithOne` is an `AddGroupWithOne` satisfying `a + b = b + a`. -/
class AddCommGroupWithOne (R : Type u)
  extends AddCommGroup R, AddGroupWithOne R, AddCommMonoidWithOne R
#align add_comm_group_with_one AddCommGroupWithOne
#align add_comm_group_with_one.to_add_comm_group AddCommGroupWithOne.toAddCommGroup
#align add_comm_group_with_one.to_add_group_with_one AddCommGroupWithOne.toAddGroupWithOne
#align add_comm_group_with_one.to_add_comm_monoid_with_one AddCommGroupWithOne.toAddCommMonoidWithOne

```
