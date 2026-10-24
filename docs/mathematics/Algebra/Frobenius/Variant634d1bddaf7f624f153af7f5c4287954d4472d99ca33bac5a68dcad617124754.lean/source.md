# Complete source: GRWTSK.Algebra.Frobenius.Variant634d1bddaf7f624f153af7f5c4287954d4472d99ca33bac5a68dcad617124754

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6ea93b0c41b922140d168b0ec6fff4e801ba9761` · SHA-256 `1a6024b502a05bce6a50de70c044af03ed763a197192a78662b37bb3bf0ca242`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

````lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.FrobeniusPolyRat.Variantc227e2a6f352eb5bc6fd7ee469ded5a79aa2afc7acf7e3bf45f50f3f3191cde9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c227e2a6f352eb5bc6fd7ee469ded5a79aa2afc7acf7e3bf45f50f3f3191cde9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.FrobeniusPolyRat.Variantc227e2a6f352eb5bc6fd7ee469ded5a79aa2afc7acf7e3bf45f50f3f3191cde9","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"c227e2a6f352eb5bc6fd7ee469ded5a79aa2afc7acf7e3bf45f50f3f3191cde9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/RingTheory/WittVector/Frobenius.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
import Mathlib.Data.Nat.Multiplicity
import Mathlib.Data.ZMod.Algebra
import Mathlib.RingTheory.WittVector.Basic
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.FieldTheory.Perfect


namespace GRWTSK.Algebra.FrobeniusPolyRat.Variantc227e2a6f352eb5bc6fd7ee469ded5a79aa2afc7acf7e3bf45f50f3f3191cde9

#align_import ring_theory.witt_vector.frobenius from "leanprover-community/mathlib"@"0723536a0522d24fc2f159a096fb3304bef77472"

/-!
## The Frobenius operator

If `R` has characteristic `p`, then there is a ring endomorphism `frobenius R p`
that raises `r : R` to the power `p`.
By applying `WittVector.map` to `frobenius R p`, we obtain a ring endomorphism `𝕎 R →+* 𝕎 R`.
It turns out that this endomorphism can be described by polynomials over `ℤ`
that do not depend on `R` or the fact that it has characteristic `p`.
In this way, we obtain a Frobenius endomorphism `WittVector.frobeniusFun : 𝕎 R → 𝕎 R`
for every commutative ring `R`.

Unfortunately, the aforementioned polynomials can not be obtained using the machinery
of `wittStructureInt` that was developed in `StructurePolynomial.lean`.
We therefore have to define the polynomials by hand, and check that they have the required property.

In case `R` has characteristic `p`, we show in `frobenius_eq_map_frobenius`
that `WittVector.frobeniusFun` is equal to `WittVector.map (frobenius R p)`.

### Main definitions and results

* `frobeniusPoly`: the polynomials that describe the coefficients of `frobeniusFun`;
* `frobeniusFun`: the Frobenius endomorphism on Witt vectors;
* `frobeniusFun_isPoly`: the tautological assertion that Frobenius is a polynomial function;
* `frobenius_eq_map_frobenius`: the fact that in characteristic `p`, Frobenius is equal to
  `WittVector.map (frobenius R p)`.

TODO: Show that `WittVector.frobeniusFun` is a ring homomorphism,
and bundle it into `WittVector.frobenius`.

## References

* [Hazewinkel, *Witt Vectors*][Haze09]

* [Commelin and Lewis, *Formalizing the Ring of Witt Vectors*][CL21]
-/


namespace WittVector

variable {p : ℕ} {R S : Type*} [hp : Fact p.Prime] [CommRing R] [CommRing S]

local notation "𝕎" => WittVector p -- type as `\bbW`

noncomputable section

open MvPolynomial Finset

open scoped BigOperators

variable (p)

/-- The rational polynomials that give the coefficients of `frobenius x`,
in terms of the coefficients of `x`.
These polynomials actually have integral coefficients,
see `frobeniusPoly` and `map_frobeniusPoly`. -/
def frobeniusPolyRat (n : ℕ) : MvPolynomial ℕ ℚ :=
  bind₁ (wittPolynomial p ℚ ∘ fun n => n + 1) (xInTermsOfW p ℚ n)
#align witt_vector.frobenius_poly_rat WittVector.frobeniusPolyRat

theorem bind₁_frobeniusPolyRat_wittPolynomial (n : ℕ) :
    bind₁ (frobeniusPolyRat p) (wittPolynomial p ℚ n) = wittPolynomial p ℚ (n + 1) := by
  delta frobeniusPolyRat
  rw [← bind₁_bind₁, bind₁_xInTermsOfW_wittPolynomial, bind₁_X_right, Function.comp_apply]
#align witt_vector.bind₁_frobenius_poly_rat_witt_polynomial WittVector.bind₁_frobeniusPolyRat_wittPolynomial

/-- An auxiliary definition, to avoid an excessive amount of finiteness proofs
for `multiplicity p n`. -/
private def pnat_multiplicity (n : ℕ+) : ℕ :=
  (multiplicity p n).get <| multiplicity.finite_nat_iff.mpr <| ⟨ne_of_gt hp.1.one_lt, n.2⟩

local notation "v" => pnat_multiplicity

/-- An auxiliary polynomial over the integers, that satisfies
`p * (frobeniusPolyAux p n) + X n ^ p = frobeniusPoly p n`.
This makes it easy to show that `frobeniusPoly p n` is congruent to `X n ^ p`
modulo `p`. -/
noncomputable def frobeniusPolyAux : ℕ → MvPolynomial ℕ ℤ
  | n => X (n + 1) -  ∑ i : Fin n, have _ := i.is_lt
      ∑ j in range (p ^ (n - i)),
        (((X (i : ℕ) ^ p) ^ (p ^ (n - (i : ℕ)) - (j + 1)) : MvPolynomial ℕ ℤ) *
        (frobeniusPolyAux i) ^ (j + 1)) *
        C (((p ^ (n - i)).choose (j + 1) / (p ^ (n - i - v p ⟨j + 1, Nat.succ_pos j⟩))
          * ↑p ^ (j - v p ⟨j + 1, Nat.succ_pos j⟩) : ℕ) : ℤ)
#align witt_vector.frobenius_poly_aux WittVector.frobeniusPolyAux

theorem frobeniusPolyAux_eq (n : ℕ) :
    frobeniusPolyAux p n =
      X (n + 1) - ∑ i in range n,
          ∑ j in range (p ^ (n - i)),
            (X i ^ p) ^ (p ^ (n - i) - (j + 1)) * frobeniusPolyAux p i ^ (j + 1) *
              C ↑((p ^ (n - i)).choose (j + 1) / p ^ (n - i - v p ⟨j + 1, Nat.succ_pos j⟩) *
                ↑p ^ (j - v p ⟨j + 1, Nat.succ_pos j⟩) : ℕ) :=
  by rw [frobeniusPolyAux, ← Fin.sum_univ_eq_sum_range]
#align witt_vector.frobenius_poly_aux_eq WittVector.frobeniusPolyAux_eq

/-- The polynomials that give the coefficients of `frobenius x`,
in terms of the coefficients of `x`. -/
def frobeniusPoly (n : ℕ) : MvPolynomial ℕ ℤ :=
  X n ^ p + C (p : ℤ) * frobeniusPolyAux p n
#align witt_vector.frobenius_poly WittVector.frobeniusPoly

/-
Our next goal is to prove
```
lemma map_frobeniusPoly (n : ℕ) :
  MvPolynomial.map (Int.castRingHom ℚ) (frobeniusPoly p n) = frobeniusPolyRat p n
```
This lemma has a rather long proof, but it mostly boils down to applying induction,
and then using the following two key facts at the right point.
-/
/-- A key divisibility fact for the proof of `WittVector.map_frobeniusPoly`. -/
theorem map_frobeniusPoly.key₁ (n j : ℕ) (hj : j < p ^ n) :
    p ^ (n - v p ⟨j + 1, j.succ_pos⟩) ∣ (p ^ n).choose (j + 1) := by
  apply multiplicity.pow_dvd_of_le_multiplicity
  rw [hp.out.multiplicity_choose_prime_pow hj j.succ_ne_zero]
  rfl
#align witt_vector.map_frobenius_poly.key₁ WittVector.map_frobeniusPoly.key₁

/-- A key numerical identity needed for the proof of `WittVector.map_frobeniusPoly`. -/
theorem map_frobeniusPoly.key₂ {n i j : ℕ} (hi : i ≤ n) (hj : j < p ^ (n - i)) :
    j - v p ⟨j + 1, j.succ_pos⟩ + n = i + j + (n - i - v p ⟨j + 1, j.succ_pos⟩) := by
  generalize h : v p ⟨j + 1, j.succ_pos⟩ = m
  rsuffices ⟨h₁, h₂⟩ : m ≤ n - i ∧ m ≤ j
  · rw [tsub_add_eq_add_tsub h₂, add_comm i j, add_tsub_assoc_of_le (h₁.trans (Nat.sub_le n i)),
      add_assoc, tsub_right_comm, add_comm i,
      tsub_add_cancel_of_le (le_tsub_of_add_le_right ((le_tsub_iff_left hi).mp h₁))]
  have hle : p ^ m ≤ j + 1 := h ▸ Nat.le_of_dvd j.succ_pos (multiplicity.pow_multiplicity_dvd _)
  exact ⟨(pow_le_pow_iff hp.1.one_lt).1 (hle.trans hj),
     Nat.le_of_lt_succ ((Nat.lt_pow_self hp.1.one_lt m).trans_le hle)⟩
#align witt_vector.map_frobenius_poly.key₂ WittVector.map_frobeniusPoly.key₂

theorem map_frobeniusPoly (n : ℕ) :
    MvPolynomial.map (Int.castRingHom ℚ) (frobeniusPoly p n) = frobeniusPolyRat p n := by
  rw [frobeniusPoly, RingHom.map_add, RingHom.map_mul, RingHom.map_pow, map_C, map_X, eq_intCast,
    Int.cast_ofNat, frobeniusPolyRat]
  refine Nat.strong_induction_on n ?_; clear n
  intro n IH
  rw [xInTermsOfW_eq]
  simp only [AlgHom.map_sum, AlgHom.map_sub, AlgHom.map_mul, AlgHom.map_pow, bind₁_C_right]
  have h1 : (p : ℚ) ^ n * ⅟ (p : ℚ) ^ n = 1 := by rw [← mul_pow, mul_invOf_self, one_pow]
  rw [bind₁_X_right, Function.comp_apply, wittPolynomial_eq_sum_C_mul_X_pow, sum_range_succ,
    sum_range_succ, tsub_self, add_tsub_cancel_left, pow_zero, pow_one, pow_one, sub_mul, add_mul,
    add_mul, mul_right_comm, mul_right_comm (C ((p : ℚ) ^ (n + 1))), ← C_mul, ← C_mul, pow_succ,
    mul_assoc (p : ℚ) ((p : ℚ) ^ n), h1, mul_one, C_1, one_mul, add_comm _ (X n ^ p), add_assoc,
    ← add_sub, add_right_inj, frobeniusPolyAux_eq, RingHom.map_sub, map_X, mul_sub, sub_eq_add_neg,
    add_comm _ (C (p : ℚ) * X (n + 1)), ← add_sub, show (Int.castRingHom ℚ) ↑p = (p : ℚ) from rfl,
    add_right_inj, neg_eq_iff_eq_neg, neg_sub, eq_comm]
  simp only [map_sum, mul_sum, sum_mul, ← sum_sub_distrib]
  apply sum_congr rfl
  intro i hi
  rw [mem_range] at hi
  rw [← IH i hi]
  clear IH
  rw [add_comm (X i ^ p), add_pow, sum_range_succ', pow_zero, tsub_zero, Nat.choose_zero_right,
    one_mul, Nat.cast_one, mul_one, mul_add, add_mul, Nat.succ_sub (le_of_lt hi),
    Nat.succ_eq_add_one (n - i), pow_succ, pow_mul, add_sub_cancel, mul_sum, sum_mul]
  apply sum_congr rfl
  intro j hj
  rw [mem_range] at hj
  rw [RingHom.map_mul, RingHom.map_mul, RingHom.map_pow, RingHom.map_pow, RingHom.map_pow,
    RingHom.map_pow, RingHom.map_pow, map_C, map_X, mul_pow]
  rw [mul_comm (C (p : ℚ) ^ i), mul_comm _ ((X i ^ p) ^ _),
    show (Int.castRingHom ℚ) ↑p = (p : ℚ) from rfl, mul_comm (C (p : ℚ) ^ (j + 1)),
    mul_comm (C (p : ℚ))]
  simp only [mul_assoc]
  apply congr_arg
  apply congr_arg
  rw [← C_eq_coe_nat]
  simp only [← RingHom.map_pow, ← C_mul]
  rw [C_inj]
  simp only [invOf_eq_inv, eq_intCast, inv_pow, Int.cast_ofNat, Nat.cast_mul, Int.cast_mul]
  rw [Rat.coe_nat_div _ _ (map_frobeniusPoly.key₁ p (n - i) j hj)]
  simp only [Nat.cast_pow, pow_add, pow_one]
  suffices
    (((p ^ (n - i)).choose (j + 1): ℚ) * (p : ℚ) ^ (j - v p ⟨j + 1, j.succ_pos⟩) * ↑p * (p ^ n : ℚ))
      = (p : ℚ) ^ j * p * ↑((p ^ (n - i)).choose (j + 1) * p ^ i) *
        (p : ℚ) ^ (n - i - v p ⟨j + 1, j.succ_pos⟩) by
    have aux : ∀ k : ℕ, (p : ℚ)^ k ≠ 0 := by
      intro; apply pow_ne_zero; exact_mod_cast hp.1.ne_zero
    simpa [aux, -one_div, field_simps] using this.symm
  rw [mul_comm _ (p : ℚ), mul_assoc, Nat.cast_pow, mul_assoc, ← pow_add,
    map_frobeniusPoly.key₂ p hi.le hj, Nat.cast_mul, Nat.cast_pow]
  ring
#align witt_vector.map_frobenius_poly WittVector.map_frobeniusPoly

theorem frobeniusPoly_zmod (n : ℕ) :
    MvPolynomial.map (Int.castRingHom (ZMod p)) (frobeniusPoly p n) = X n ^ p := by
  rw [frobeniusPoly, RingHom.map_add, RingHom.map_pow, RingHom.map_mul, map_X, map_C]
  simp only [Int.cast_ofNat, add_zero, eq_intCast, ZMod.nat_cast_self, zero_mul, C_0]
#align witt_vector.frobenius_poly_zmod WittVector.frobeniusPoly_zmod

@[simp]
theorem bind₁_frobeniusPoly_wittPolynomial (n : ℕ) :
    bind₁ (frobeniusPoly p) (wittPolynomial p ℤ n) = wittPolynomial p ℤ (n + 1) := by
  apply MvPolynomial.map_injective (Int.castRingHom ℚ) Int.cast_injective
  simp only [map_bind₁, map_frobeniusPoly, bind₁_frobeniusPolyRat_wittPolynomial,
    map_wittPolynomial]
#align witt_vector.bind₁_frobenius_poly_witt_polynomial WittVector.bind₁_frobeniusPoly_wittPolynomial

variable {p}

/-- `frobeniusFun` is the function underlying the ring endomorphism
`frobenius : 𝕎 R →+* frobenius 𝕎 R`. -/
def frobeniusFun (x : 𝕎 R) : 𝕎 R :=
  mk p fun n => MvPolynomial.aeval x.coeff (frobeniusPoly p n)
#align witt_vector.frobenius_fun WittVector.frobeniusFun

theorem coeff_frobeniusFun (x : 𝕎 R) (n : ℕ) :
    coeff (frobeniusFun x) n = MvPolynomial.aeval x.coeff (frobeniusPoly p n) := by
  rw [frobeniusFun, coeff_mk]
#align witt_vector.coeff_frobenius_fun WittVector.coeff_frobeniusFun

variable (p)

/-- `frobeniusFun` is tautologically a polynomial function.

See also `frobenius_isPoly`. -/
-- Porting note: replaced `@[is_poly]` with `instance`.
instance frobeniusFun_isPoly : IsPoly p fun R _Rcr => @frobeniusFun p R _ _Rcr :=
  ⟨⟨frobeniusPoly p, by intros; funext n; apply coeff_frobeniusFun⟩⟩
#align witt_vector.frobenius_fun_is_poly WittVector.frobeniusFun_isPoly

variable {p}

@[ghost_simps]
theorem ghostComponent_frobeniusFun (n : ℕ) (x : 𝕎 R) :
    ghostComponent n (frobeniusFun x) = ghostComponent (n + 1) x := by
  simp only [ghostComponent_apply, frobeniusFun, coeff_mk, ← bind₁_frobeniusPoly_wittPolynomial,
    aeval_bind₁]
#align witt_vector.ghost_component_frobenius_fun WittVector.ghostComponent_frobeniusFun

/-- If `R` has characteristic `p`, then there is a ring endomorphism
that raises `r : R` to the power `p`.
By applying `WittVector.map` to this endomorphism,
we obtain a ring endomorphism `frobenius R p : 𝕎 R →+* 𝕎 R`.

The underlying function of this morphism is `WittVector.frobeniusFun`.
-/
def frobenius : 𝕎 R →+* 𝕎 R where
  toFun := frobeniusFun
  map_zero' := by
    -- Porting note: removing the placeholders give an error
    refine IsPoly.ext (@IsPoly.comp p _ _ (frobeniusFun_isPoly p) WittVector.zeroIsPoly)
      (@IsPoly.comp p _ _ WittVector.zeroIsPoly
      (frobeniusFun_isPoly p)) ?_ _ 0
    simp only [Function.comp_apply, map_zero, forall_const]
    ghost_simp
  map_one' := by
    refine
      -- Porting note: removing the placeholders give an error
      IsPoly.ext (@IsPoly.comp p _ _ (frobeniusFun_isPoly p) WittVector.oneIsPoly)
        (@IsPoly.comp p _ _ WittVector.oneIsPoly (frobeniusFun_isPoly p)) ?_ _ 0
    simp only [Function.comp_apply, map_one, forall_const]
    ghost_simp
  map_add' := by ghost_calc _ _; ghost_simp
  map_mul' := by ghost_calc _ _; ghost_simp
#align witt_vector.frobenius WittVector.frobenius

theorem coeff_frobenius (x : 𝕎 R) (n : ℕ) :
    coeff (frobenius x) n = MvPolynomial.aeval x.coeff (frobeniusPoly p n) :=
  coeff_frobeniusFun _ _
#align witt_vector.coeff_frobenius WittVector.coeff_frobenius

@[ghost_simps]
theorem ghostComponent_frobenius (n : ℕ) (x : 𝕎 R) :
    ghostComponent n (frobenius x) = ghostComponent (n + 1) x :=
  ghostComponent_frobeniusFun _ _
#align witt_vector.ghost_component_frobenius WittVector.ghostComponent_frobenius

variable (p)

/-- `frobenius` is tautologically a polynomial function. -/
-- Porting note: replaced `@[is_poly]` with `instance`.
instance frobenius_isPoly : IsPoly p fun R _Rcr => @frobenius p R _ _Rcr :=
  frobeniusFun_isPoly _
#align witt_vector.frobenius_is_poly WittVector.frobenius_isPoly

section CharP

variable [CharP R p]

@[simp]
theorem coeff_frobenius_charP (x : 𝕎 R) (n : ℕ) : coeff (frobenius x) n = x.coeff n ^ p := by
  rw [coeff_frobenius]
  letI : Algebra (ZMod p) R := ZMod.algebra _ _
  -- outline of the calculation, proofs follow below
  calc
    aeval (fun k => x.coeff k) (frobeniusPoly p n) =
        aeval (fun k => x.coeff k)
          (MvPolynomial.map (Int.castRingHom (ZMod p)) (frobeniusPoly p n)) := ?_
    _ = aeval (fun k => x.coeff k) (X n ^ p : MvPolynomial ℕ (ZMod p)) := ?_
    _ = x.coeff n ^ p := ?_
  · conv_rhs => rw [aeval_eq_eval₂Hom, eval₂Hom_map_hom]
    apply eval₂Hom_congr (RingHom.ext_int _ _) rfl rfl
  · rw [frobeniusPoly_zmod]
  · rw [map_pow, aeval_X]
#align witt_vector.coeff_frobenius_char_p WittVector.coeff_frobenius_charP

theorem frobenius_eq_map_frobenius : @frobenius p R _ _ = map (_root_.frobenius R p) := by
  ext (x n)
  simp only [coeff_frobenius_charP, map_coeff, frobenius_def]
#align witt_vector.frobenius_eq_map_frobenius WittVector.frobenius_eq_map_frobenius

@[simp]
theorem frobenius_zmodp (x : 𝕎 (ZMod p)) : frobenius x = x := by
  simp only [ext_iff, coeff_frobenius_charP, ZMod.pow_card, eq_self_iff_true, forall_const]
#align witt_vector.frobenius_zmodp WittVector.frobenius_zmodp

variable (R)

/-- `WittVector.frobenius` as an equiv. -/
@[simps (config := { fullyApplied := false })]
def frobeniusEquiv [PerfectRing R p] : WittVector p R ≃+* WittVector p R :=
  { (WittVector.frobenius : WittVector p R →+* WittVector p R) with
    toFun := WittVector.frobenius
    invFun := map (_root_.frobeniusEquiv R p).symm
    left_inv := fun f => ext fun n => by
      rw [frobenius_eq_map_frobenius]
      exact frobeniusEquiv_symm_apply_frobenius R p _
    right_inv := fun f => ext fun n => by
      rw [frobenius_eq_map_frobenius]
      exact frobenius_apply_frobeniusEquiv_symm R p _ }
#align witt_vector.frobenius_equiv WittVector.frobeniusEquiv

theorem frobenius_bijective [PerfectRing R p] :
    Function.Bijective (@WittVector.frobenius p R _ _) :=
  (frobeniusEquiv p R).bijective
#align witt_vector.frobenius_bijective WittVector.frobenius_bijective

end CharP

end

end WittVector
````
