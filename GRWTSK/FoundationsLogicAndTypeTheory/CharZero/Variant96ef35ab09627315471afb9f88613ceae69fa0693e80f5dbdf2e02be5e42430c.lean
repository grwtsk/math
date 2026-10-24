-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.CastDivCharZero.Variant9028e2f04c1ac95a96891e0653b77bee9174591f9850fa5f21d0c753bcc0c3f5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9028e2f04c1ac95a96891e0653b77bee9174591f9850fa5f21d0c753bcc0c3f5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.CastDivCharZero.Variant9028e2f04c1ac95a96891e0653b77bee9174591f9850fa5f21d0c753bcc0c3f5","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"9028e2f04c1ac95a96891e0653b77bee9174591f9850fa5f21d0c753bcc0c3f5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Int/CharZero.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Algebra.Group.Support
import Mathlib.Data.Int.Cast.Field
import Mathlib.Data.Int.Cast.Lemmas
import Mathlib.Data.Int.Cast.Pi

/-!
# Injectivity of `Int.Cast` into characteristic zero rings and fields.

-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.CastDivCharZero.Variant9028e2f04c1ac95a96891e0653b77bee9174591f9850fa5f21d0c753bcc0c3f5

open Nat Set

variable {α β : Type*}

namespace Int

@[simp, norm_cast]
theorem cast_div_charZero {k : Type*} [DivisionRing k] [CharZero k] {m n : ℤ} (n_dvd : n ∣ m) :
    ((m / n : ℤ) : k) = m / n := by
  rcases eq_or_ne n 0 with (rfl | hn)
  · simp [Int.ediv_zero]
  · exact cast_div n_dvd (cast_ne_zero.mpr hn)

-- Necessary for confluence with `ofNat_ediv` and `cast_div_charZero`.
@[simp, norm_cast]
theorem cast_div_ofNat_charZero {k : Type*} [DivisionRing k] [CharZero k] {m n : ℕ}
    (n_dvd : n ∣ m) : (((m : ℤ) / (n : ℤ) : ℤ) : k) = m / n := by
  rw [cast_div_charZero (Int.ofNat_dvd.mpr n_dvd), cast_natCast, cast_natCast]

end Int

theorem RingHom.injective_int {α : Type*} [NonAssocRing α] (f : ℤ →+* α) [CharZero α] :
    Function.Injective f :=
  Subsingleton.elim (Int.castRingHom _) f ▸ Int.cast_injective

namespace Function
variable [AddGroupWithOne β] [CharZero β] {n : ℤ}

lemma support_intCast (hn : n ≠ 0) : support (n : α → β) = univ :=
  support_const <| Int.cast_ne_zero.2 hn

lemma mulSupport_intCast (hn : n ≠ 1) : mulSupport (n : α → β) = univ :=
  mulSupport_const <| Int.cast_ne_one.2 hn

end Function
