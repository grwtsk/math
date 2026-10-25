# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.CharZero.Variant1a9e4693e96a52a95a7f37c45ce01a85e38fcec366f78653899a2aa9f1d64dde

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c2cf3a52bec37bf5e33c03216a66ac3c1ad2042c` · SHA-256 `ac8ae6e4b4bcf5b5555849119aca82468f6fd75d4259f0fc3730b7adb846b57e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.CastEqZero.Variantbb40a3e6316ac9b4cdf87c873e902a6ab66db448014cf4cd34e1d4b0cb86158e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bb40a3e6316ac9b4cdf87c873e902a6ab66db448014cf4cd34e1d4b0cb86158e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.CastEqZero.Variantbb40a3e6316ac9b4cdf87c873e902a6ab66db448014cf4cd34e1d4b0cb86158e","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"bb40a3e6316ac9b4cdf87c873e902a6ab66db448014cf4cd34e1d4b0cb86158e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Data/Int/CharZero.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Data.Int.Cast.Field


namespace GRWTSK.FoundationsLogicAndTypeTheory.CastEqZero.Variantbb40a3e6316ac9b4cdf87c873e902a6ab66db448014cf4cd34e1d4b0cb86158e

#align_import data.int.char_zero from "leanprover-community/mathlib"@"29cb56a7b35f72758b05a30490e1f10bd62c35c1"

/-!
# Injectivity of `Int.Cast` into characteristic zero rings and fields.

-/


variable {α : Type*}

open Nat

namespace Int

@[simp]
theorem cast_eq_zero [AddGroupWithOne α] [CharZero α] {n : ℤ} : (n : α) = 0 ↔ n = 0 :=
  ⟨fun h => by
    cases n
    · erw [Int.cast_ofNat] at h
      exact congr_arg _ (Nat.cast_eq_zero.1 h)
    · rw [cast_negSucc, neg_eq_zero, Nat.cast_eq_zero] at h
      contradiction,
    fun h => by rw [h, cast_zero]⟩
#align int.cast_eq_zero Int.cast_eq_zero

@[simp, norm_cast]
theorem cast_inj [AddGroupWithOne α] [CharZero α] {m n : ℤ} : (m : α) = n ↔ m = n := by
  rw [← sub_eq_zero, ← cast_sub, cast_eq_zero, sub_eq_zero]
#align int.cast_inj Int.cast_inj

theorem cast_injective [AddGroupWithOne α] [CharZero α] : Function.Injective (Int.cast : ℤ → α)
  | _, _ => cast_inj.1
#align int.cast_injective Int.cast_injective

theorem cast_ne_zero [AddGroupWithOne α] [CharZero α] {n : ℤ} : (n : α) ≠ 0 ↔ n ≠ 0 :=
  not_congr cast_eq_zero
#align int.cast_ne_zero Int.cast_ne_zero

@[simp]
theorem cast_eq_one [AddGroupWithOne α] [CharZero α] {n : ℤ} : (n : α) = 1 ↔ n = 1 := by
  rw [← cast_one, cast_inj]
#align int.cast_eq_one Int.cast_eq_one

theorem cast_ne_one [AddGroupWithOne α] [CharZero α] {n : ℤ} : (n : α) ≠ 1 ↔ n ≠ 1 :=
  cast_eq_one.not
#align int.cast_ne_one Int.cast_ne_one

@[simp, norm_cast]
theorem cast_div_charZero {k : Type*} [DivisionRing k] [CharZero k] {m n : ℤ} (n_dvd : n ∣ m) :
    ((m / n : ℤ) : k) = m / n := by
  rcases eq_or_ne n 0 with (rfl | hn)
  · simp [Int.ediv_zero]
  · exact cast_div n_dvd (cast_ne_zero.mpr hn)
#align int.cast_div_char_zero Int.cast_div_charZero

end Int

theorem RingHom.injective_int {α : Type*} [NonAssocRing α] (f : ℤ →+* α) [CharZero α] :
    Function.Injective f :=
  Subsingleton.elim (Int.castRingHom _) f ▸ Int.cast_injective
#align ring_hom.injective_int RingHom.injective_int
```
