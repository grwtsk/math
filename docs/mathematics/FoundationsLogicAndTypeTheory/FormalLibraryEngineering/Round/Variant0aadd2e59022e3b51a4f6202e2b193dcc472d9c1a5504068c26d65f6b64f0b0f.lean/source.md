# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Round.Variant0aadd2e59022e3b51a4f6202e2b193dcc472d9c1a5504068c26d65f6b64f0b0f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9709d5fac7895cf04e157d8bcf1ea71f8497fb30` · SHA-256 `3d6b78b38597f821f971fd9041b47977eb8d371f7faf2646f47ffcf963213565`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RoundDownLe.Variant704bb5516b98da3d8e7fa45143376515bcd67e232f6141802293e8a9a354b169","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"704bb5516b98da3d8e7fa45143376515bcd67e232f6141802293e8a9a354b169","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.RoundDownLe.Variant704bb5516b98da3d8e7fa45143376515bcd67e232f6141802293e8a9a354b169","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"704bb5516b98da3d8e7fa45143376515bcd67e232f6141802293e8a9a354b169","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Dyadic/Round.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public import Init.Data.Dyadic.Basic
import Init.Data.Dyadic.Instances
import Init.Grind.Ordered.Rat
import Init.Grind.Ordered.Field
import Init.ByCases
import Init.Data.Int.Bitwise.Lemmas
import Init.Data.Int.DivMod.Lemmas
import Init.Data.Int.Pow
import Init.Data.Option.Lemmas
import Init.Omega


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RoundDownLe.Variant704bb5516b98da3d8e7fa45143376515bcd67e232f6141802293e8a9a354b169

namespace Dyadic

/-!
Theorems about `roundUp` and `roundDown`.
-/

public section

theorem roundDown_le {x : Dyadic} {prec : Int} : roundDown x prec ≤ x :=
  match x with
  | .zero => Dyadic.le_refl _
  | .ofOdd n k _ => by
    unfold roundDown
    dsimp
    match h : k - prec with
    | .ofNat l =>
      dsimp
      rw [ofOdd_eq_ofIntWithPrec, ← toRat_le_toRat_iff]
      replace h : k = Int.ofNat l + prec := by omega
      subst h
      simp only [toRat_ofIntWithPrec_eq_mul_two_pow]
      rw [Int.neg_add, Rat.zpow_add (by decide), ← Rat.mul_assoc]
      refine Lean.Grind.OrderedRing.mul_le_mul_of_nonneg_right ?_ (Rat.zpow_nonneg (by decide))
      rw [Int.shiftRight_eq_div_pow]
      rw [← Lean.Grind.Field.IsOrdered.mul_le_mul_iff_of_pos_right (c := 2^(Int.ofNat l)) (Rat.zpow_pos (by decide))]
      simp only [Int.natCast_pow, Int.cast_ofNat_Int, Int.ofNat_eq_natCast]
      rw [Rat.mul_assoc, ← Rat.zpow_add (by decide), Int.add_left_neg, Rat.zpow_zero, Rat.mul_one]
      have : (2 : Rat) ^ (l : Int) = (2 ^ l : Int) := by
        rw [Rat.zpow_natCast, Rat.intCast_pow, Rat.intCast_ofNat]
      rw [this, ← Rat.intCast_mul, Rat.intCast_le_intCast]
      exact Int.ediv_mul_le n (Int.pow_ne_zero (by decide))
    | .negSucc _ =>
      apply Dyadic.le_refl

theorem precision_roundDown {x : Dyadic} {prec : Int} : (roundDown x prec).precision ≤ some prec := by
  unfold roundDown
  match x with
  | zero => simp [precision]
  | ofOdd n k hn =>
    dsimp
    split
    · rename_i n' h
      by_cases h' : n >>> n' = 0
      · simp [h']
      · exact precision_ofIntWithPrec_le h' _
    · simp [precision]
      omega

-- This theorem would characterize `roundDown` in terms of the order and `precision`.
-- theorem le_roundDown {x y : Dyadic} {prec : Int} (h : y.precision ≤ some prec) (h' : y ≤ x) :
--     y ≤ x.roundDown prec := sorry

theorem le_roundUp {x : Dyadic} {prec : Int} : x ≤ roundUp x prec := by
  rw [roundUp_eq_neg_roundDown_neg, Lean.Grind.OrderedAdd.le_neg_iff]
  apply roundDown_le

theorem precision_roundUp {x : Dyadic} {prec : Int} : (roundUp x prec).precision ≤ some prec := by
  rw [roundUp_eq_neg_roundDown_neg, precision_neg]
  exact precision_roundDown

-- This theorem would characterize `roundUp` in terms of the order and `precision`.
-- theorem roundUp_le {x y : Dyadic} {prec : Int} (h : y.precision ≤ some prec) (h' : x ≤ y) :
--    x.roundUp prec ≤ y := sorry
```
