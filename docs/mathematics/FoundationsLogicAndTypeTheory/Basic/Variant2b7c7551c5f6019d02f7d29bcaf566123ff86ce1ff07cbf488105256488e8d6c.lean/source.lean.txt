-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.CastSub.Variantedc55b1574c236276762f0b85712c1e3556f115984cf1b0215f28c54ac16d542","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"edc55b1574c236276762f0b85712c1e3556f115984cf1b0215f28c54ac16d542","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.CastSub.Variantedc55b1574c236276762f0b85712c1e3556f115984cf1b0215f28c54ac16d542","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"edc55b1574c236276762f0b85712c1e3556f115984cf1b0215f28c54ac16d542","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Int/Cast/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Gabriel Ebner
-/
import Mathlib.Data.Int.Cast.Defs
import Mathlib.Algebra.Group.Basic
import Mathlib.Data.Nat.Basic

/-!
# Cast of integers (additional theorems)

This file proves additional properties about the *canonical* homomorphism from
the integers into an additive group with a one (`Int.cast`).

There is also `Mathlib.Data.Int.Cast.Lemmas`,
which includes lemmas stated in terms of algebraic homomorphisms,
and results involving the order structure of `ℤ`.

By contrast, this file's only import beyond `Mathlib.Data.Int.Cast.Defs` is
`Mathlib.Algebra.Group.Basic`.
-/



namespace GRWTSK.FoundationsLogicAndTypeTheory.CastSub.Variantedc55b1574c236276762f0b85712c1e3556f115984cf1b0215f28c54ac16d542

universe u

namespace Nat

variable {R : Type u} [AddGroupWithOne R]

@[simp, norm_cast]
theorem cast_sub {m n} (h : m ≤ n) : ((n - m : ℕ) : R) = n - m :=
  eq_sub_of_add_eq <| by rw [← cast_add, Nat.sub_add_cancel h]
-- `HasLiftT` appeared in the type signature

@[simp, norm_cast]
theorem cast_pred : ∀ {n}, 0 < n → ((n - 1 : ℕ) : R) = n - 1
  | 0, h => by cases h
  | n + 1, _ => by rw [cast_succ, add_sub_cancel_right, Nat.add_sub_cancel_right]

end Nat

open Nat

namespace Int

variable {R : Type u} [AddGroupWithOne R]

-- TODO: I don't like that `norm_cast` is used here, because it results in `norm_cast`
-- introducing the "implementation detail" `Int.negSucc`.
@[simp, norm_cast squash]
theorem cast_negSucc (n : ℕ) : (-[n+1] : R) = -(n + 1 : ℕ) :=
  AddGroupWithOne.intCast_negSucc n
-- expected `n` to be implicit, and `HasLiftT`

@[simp, norm_cast]
theorem cast_zero : ((0 : ℤ) : R) = 0 :=
  (AddGroupWithOne.intCast_ofNat 0).trans Nat.cast_zero
-- type had `HasLiftT`

-- This lemma competes with `Int.ofNat_eq_natCast` to come later
@[simp high, nolint simpNF, norm_cast]
theorem cast_natCast (n : ℕ) : ((n : ℤ) : R) = n :=
  AddGroupWithOne.intCast_ofNat _
-- expected `n` to be implicit, and `HasLiftT`

@[simp, norm_cast]
theorem cast_ofNat (n : ℕ) [n.AtLeastTwo] :
    ((ofNat(n) : ℤ) : R) = ofNat(n) := by
  simpa only [OfNat.ofNat] using AddGroupWithOne.intCast_ofNat (R := R) n

@[simp, norm_cast]
theorem cast_one : ((1 : ℤ) : R) = 1 := by
  rw [← Int.natCast_one, cast_natCast, Nat.cast_one]
-- type had `HasLiftT`

@[simp, norm_cast]
theorem cast_neg : ∀ n, ((-n : ℤ) : R) = -n
  | (0 : ℕ) => by simp
  | (n + 1 : ℕ) => by rw [cast_natCast, neg_ofNat_succ]; simp
  | -[n+1] => by rw [Int.neg_negSucc, cast_natCast]; simp
-- type had `HasLiftT`

@[simp, norm_cast]
theorem cast_subNatNat (m n) : ((Int.subNatNat m n : ℤ) : R) = m - n := by
  unfold subNatNat
  cases e : n - m
  · simp only [ofNat_eq_coe]
    simp [e, Nat.le_of_sub_eq_zero e]
  · rw [cast_negSucc, ← e, Nat.cast_sub <| _root_.le_of_lt <| Nat.lt_of_sub_eq_succ e, neg_sub]
-- type had `HasLiftT`

@[simp]
theorem cast_negOfNat (n : ℕ) : ((negOfNat n : ℤ) : R) = -n := by simp [Int.cast_neg, negOfNat_eq]

@[simp, norm_cast]
theorem cast_add : ∀ m n, ((m + n : ℤ) : R) = m + n
  | (m : ℕ), (n : ℕ) => by simp [← Int.natCast_add]
  | (m : ℕ), -[n+1] => by
    rw [Int.ofNat_add_negSucc, cast_subNatNat, cast_natCast, cast_negSucc, sub_eq_add_neg]
  | -[m+1], (n : ℕ) => by
    rw [Int.negSucc_add_ofNat, cast_subNatNat, cast_natCast, cast_negSucc, sub_eq_iff_eq_add,
      add_assoc, eq_neg_add_iff_add_eq, ← Nat.cast_add, ← Nat.cast_add, Nat.add_comm]
  | -[m+1], -[n+1] => by
    rw [Int.negSucc_add_negSucc, succ_eq_add_one, cast_negSucc, cast_negSucc, cast_negSucc,
      ← neg_add_rev, ← Nat.cast_add, Nat.add_right_comm m n 1, Nat.add_assoc, Nat.add_comm]
-- type had `HasLiftT`

@[simp, norm_cast]
theorem cast_sub (m n) : ((m - n : ℤ) : R) = m - n := by
  simp [Int.sub_eq_add_neg, sub_eq_add_neg, Int.cast_neg, Int.cast_add]
-- type had `HasLiftT`

theorem cast_two : ((2 : ℤ) : R) = 2 := cast_ofNat _

theorem cast_three : ((3 : ℤ) : R) = 3 := cast_ofNat _

theorem cast_four : ((4 : ℤ) : R) = 4 := cast_ofNat _

end Int

section zsmul

variable {R : Type*}

@[simp] lemma zsmul_one [AddGroupWithOne R] (n : ℤ) : n • (1 : R) = n := by cases n <;> simp

end zsmul
