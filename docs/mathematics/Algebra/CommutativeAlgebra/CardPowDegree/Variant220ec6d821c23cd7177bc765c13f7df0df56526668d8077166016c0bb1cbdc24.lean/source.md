# Complete source: GRWTSK.Algebra.CommutativeAlgebra.CardPowDegree.Variant220ec6d821c23cd7177bc765c13f7df0df56526668d8077166016c0bb1cbdc24

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `48fbcbef1949ef02c403a440164ca9250ebc1d6b` · SHA-256 `01d9637ef17ec122f4daa22017a677d26a07beace09bb25f88fb625469de723b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.CardPowDegree.Variantf774deb56ae43ddc55ccb2a522f1d9aa3feb93c42ba309f6195fa5d087ffbceb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f774deb56ae43ddc55ccb2a522f1d9aa3feb93c42ba309f6195fa5d087ffbceb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.CardPowDegree.Variantf774deb56ae43ddc55ccb2a522f1d9aa3feb93c42ba309f6195fa5d087ffbceb","mathematical_subject":"Algebra.Polynomials","original_sha256":"f774deb56ae43ddc55ccb2a522f1d9aa3feb93c42ba309f6195fa5d087ffbceb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Data/Polynomial/Degree/CardPowDegree.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Anne Baanen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anne Baanen
-/
import Mathlib.Algebra.Order.EuclideanAbsoluteValue
import Mathlib.Data.Polynomial.FieldDivision


namespace GRWTSK.Algebra.CommutativeAlgebra.CardPowDegree.Variantf774deb56ae43ddc55ccb2a522f1d9aa3feb93c42ba309f6195fa5d087ffbceb

#align_import data.polynomial.degree.card_pow_degree from "leanprover-community/mathlib"@"85d9f2189d9489f9983c0d01536575b0233bd305"

/-!
# Absolute value on polynomials over a finite field.

Let `𝔽_q` be a finite field of cardinality `q`, then the map sending a polynomial `p`
to `q ^ degree p` (where `q ^ degree 0 = 0`) is an absolute value.

## Main definitions

 * `Polynomial.cardPowDegree` is an absolute value on `𝔽_q[t]`, the ring of
   polynomials over a finite field of cardinality `q`, mapping a polynomial `p`
   to `q ^ degree p` (where `q ^ degree 0 = 0`)

## Main results
 * `Polynomial.cardPowDegree_isEuclidean`: `cardPowDegree` respects the
   Euclidean domain structure on the ring of polynomials

-/


namespace Polynomial

variable {Fq : Type*} [Field Fq] [Fintype Fq]

open AbsoluteValue

open Classical Polynomial

/-- `cardPowDegree` is the absolute value on `𝔽_q[t]` sending `f` to `q ^ degree f`.

`cardPowDegree 0` is defined to be `0`. -/
noncomputable def cardPowDegree : AbsoluteValue Fq[X] ℤ :=
  have card_pos : 0 < Fintype.card Fq := Fintype.card_pos_iff.mpr inferInstance
  have pow_pos : ∀ n, 0 < (Fintype.card Fq : ℤ) ^ n := fun n =>
    pow_pos (Int.coe_nat_pos.mpr card_pos) n
  { toFun := fun p => if p = 0 then 0 else (Fintype.card Fq : ℤ) ^ p.natDegree
    nonneg' := fun p => by
      dsimp
      split_ifs
      · rfl
      exact pow_nonneg (Int.ofNat_zero_le _) _
    eq_zero' := fun p =>
      ite_eq_left_iff.trans <|
        ⟨fun h => by
          contrapose! h
          exact ⟨h, (pow_pos _).ne'⟩, absurd⟩
    add_le' := fun p q => by
      by_cases hp : p = 0; · simp [hp]
      by_cases hq : q = 0; · simp [hq]
      by_cases hpq : p + q = 0
      · simp only [hpq, hp, hq, eq_self_iff_true, if_true, if_false]
        exact add_nonneg (pow_pos _).le (pow_pos _).le
      simp only [hpq, hp, hq, if_false]
      refine' le_trans (pow_le_pow (by linarith) (Polynomial.natDegree_add_le _ _)) _
      refine'
        le_trans (le_max_iff.mpr _)
          (max_le_add_of_nonneg (pow_nonneg (by linarith) _) (pow_nonneg (by linarith) _))
      exact (max_choice p.natDegree q.natDegree).imp (fun h => by rw [h]) fun h => by rw [h]
    map_mul' := fun p q => by
      by_cases hp : p = 0; · simp [hp]
      by_cases hq : q = 0; · simp [hq]
      have hpq : p * q ≠ 0 := mul_ne_zero hp hq
      simp only [hpq, hp, hq, eq_self_iff_true, if_true, if_false, Polynomial.natDegree_mul hp hq,
        pow_add] }
#align polynomial.card_pow_degree Polynomial.cardPowDegree

theorem cardPowDegree_apply (p : Fq[X]) :
    cardPowDegree p = if p = 0 then 0 else (Fintype.card Fq : ℤ) ^ natDegree p :=
  rfl
#align polynomial.card_pow_degree_apply Polynomial.cardPowDegree_apply

@[simp, nolint simpNF]
theorem cardPowDegree_zero : cardPowDegree (0 : Fq[X]) = 0 := rfl
#align polynomial.card_pow_degree_zero Polynomial.cardPowDegree_zero

@[simp]
theorem cardPowDegree_nonzero (p : Fq[X]) (hp : p ≠ 0) :
    cardPowDegree p = (Fintype.card Fq : ℤ) ^ p.natDegree :=
  if_neg hp
#align polynomial.card_pow_degree_nonzero Polynomial.cardPowDegree_nonzero

theorem cardPowDegree_isEuclidean : IsEuclidean (cardPowDegree : AbsoluteValue Fq[X] ℤ) :=
  have card_pos : 0 < Fintype.card Fq := Fintype.card_pos_iff.mpr inferInstance
  have pow_pos : ∀ n, 0 < (Fintype.card Fq : ℤ) ^ n := fun n =>
    pow_pos (Int.coe_nat_pos.mpr card_pos) n
  { map_lt_map_iff' := fun {p q} => by
      show cardPowDegree p < cardPowDegree q ↔ degree p < degree q
      simp only [cardPowDegree_apply]
      split_ifs with hp hq hq
      · simp only [hp, hq, lt_self_iff_false]
      · simp only [hp, hq, degree_zero, Ne.def, bot_lt_iff_ne_bot, degree_eq_bot, pow_pos,
          not_false_iff]
      · simp only [hp, hq, degree_zero, not_lt_bot, (pow_pos _).not_lt]
      · rw [degree_eq_natDegree hp, degree_eq_natDegree hq, Nat.cast_withBot, Nat.cast_withBot,
          WithBot.coe_lt_coe, pow_lt_pow_iff]
        exact_mod_cast @Fintype.one_lt_card Fq _ _ }
#align polynomial.card_pow_degree_is_euclidean Polynomial.cardPowDegree_isEuclidean

end Polynomial
```
