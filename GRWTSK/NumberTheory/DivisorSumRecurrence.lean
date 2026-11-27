/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.DivisorSumEulerSamples
import Mathlib.LinearAlgebra.Vandermonde
import Mathlib.LinearAlgebra.Matrix.NonsingularInverse
import Mathlib.Algebra.Polynomial.Eval.Degree
import Mathlib.Algebra.Order.Round
import Mathlib.Data.Rat.Floor
import Mathlib.Algebra.Polynomial.BigOperators
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Abel

/-!
# Rational recurrence recovery for divisor-sum samples

Joseph M. Shunia, arXiv:2611.34242v1, Lemma 3.4. Matrix columns run from
zero through `l-1` and refer to coefficients numbered from one through `l`.
-/
namespace GRWTSK.IntegerFactorization.DivisorSumRecurrence

open Polynomial Matrix
open scoped BigOperators Matrix

noncomputable def denominator {l : ℕ} (q : Fin l → ℕ) : ℤ[X] :=
  ∏ i, (1 - C (q i : ℤ) * X)

noncomputable def coeffs {l : ℕ} (q : Fin l → ℕ) (k : Fin l) : ℤ :=
  (denominator q).coeff (k.val + 1)

def node {l : ℕ} (q : Fin l → ℕ) (i : Fin l) : ℚ := (q i : ℚ)⁻¹

def retained {l : ℕ} (p q : Fin l → ℕ) (j : ℕ) : ℚ :=
  ∑ i, (p i : ℚ)⁻¹ * node q i ^ j

def system (l J : ℕ) (z : ℕ → ℚ) : Matrix (Fin l) (Fin l) ℚ :=
  fun s k => z (J + s.val + k.val + 1)

def rhs (l J : ℕ) (z : ℕ → ℚ) (s : Fin l) : ℚ := -z (J + s.val)

theorem degree_le {l} (q : Fin l → ℕ) : (denominator q).natDegree ≤ l := by
  apply (Polynomial.natDegree_prod_le _ _).trans
  calc
    _ ≤ ∑ _ : Fin l, (1 : ℕ) := by
      apply Finset.sum_le_sum
      intro i _
      apply (Polynomial.natDegree_sub_le _ _).trans
      apply max_le
      · simp
      · simpa using Polynomial.natDegree_C_mul_le (q i : ℤ) (X : ℤ[X])
    _ = l := by simp

theorem constant_one {l} (q : Fin l → ℕ) : (denominator q).coeff 0 = 1 := by
  simp [denominator, Polynomial.coeff_zero_eq_eval_zero, Polynomial.eval_prod]

theorem reciprocal_root {l} (q : Fin l → ℕ) (hq : ∀ i, q i ≠ 0) (i : Fin l) :
    (denominator q).eval₂ (Int.castRingHom ℚ) (node q i) = 0 := by
  rw [denominator, Polynomial.eval₂_finsetProd]
  apply Finset.prod_eq_zero (Finset.mem_univ i)
  simp [node, Polynomial.eval₂_sub, Polynomial.eval₂_mul, hq i]

private theorem node_recurrence {l} (q : Fin l → ℕ) (hq : ∀ i, q i ≠ 0) (i : Fin l) :
    ∑ k : Fin l, (coeffs q k : ℚ) * node q i ^ (k.val + 1) = -1 := by
  have h := reciprocal_root q hq i
  rw [Polynomial.eval₂_eq_sum_range' _ (Nat.lt_succ_of_le (degree_le q)),
    ← Fin.sum_univ_eq_sum_range, Fin.sum_univ_succ] at h
  simp only [Fin.val_zero, pow_zero, mul_one, constant_one, map_one] at h
  change 1 + (∑ k : Fin l, (coeffs q k : ℚ) * node q i ^ (k.val + 1)) = 0 at h
  linarith

/-- A retained component itself vanishes in the reversed monic equation (3.11).
This returns an integer root of the polynomial used for extraction. -/
theorem reversed_root {l} (q : Fin l → ℕ) (hq : ∀ i, q i ≠ 0) (i : Fin l) :
    (q i : ℤ)^l + ∑ k : Fin l, coeffs q k * (q i : ℤ)^(l - (k.val + 1)) = 0 := by
  let x : ℚ := q i
  have hx : x ≠ 0 := Nat.cast_ne_zero.mpr (hq i)
  have he (k : Fin l) :
      (coeffs q k : ℚ) * x^(l - (k.val + 1)) =
        x^l * ((coeffs q k : ℚ) * node q i ^ (k.val + 1)) := by
    rw [pow_sub₀ x hx k.isLt]
    change (coeffs q k : ℚ) * (x^l * (x^(k.val+1))⁻¹) =
      x^l * ((coeffs q k : ℚ) * x⁻¹^(k.val+1))
    rw [inv_pow]
    ring
  have hrat : x^l + ∑ k : Fin l, (coeffs q k : ℚ) * x^(l-(k.val+1)) = 0 := by
    simp_rw [he]
    rw [← Finset.mul_sum, node_recurrence q hq i]
    ring
  dsimp [x] at hrat
  exact_mod_cast hrat

/-- Every shifted equation of the retained rational sequence. -/
theorem retained_system {l} (p q : Fin l → ℕ) (hq : ∀ i, q i ≠ 0) (J : ℕ) :
    (system l J (retained p q)) *ᵥ (fun k => (coeffs q k : ℚ)) = rhs l J (retained p q) := by
  funext s
  simp only [Matrix.mulVec, dotProduct, system, rhs, retained, Finset.sum_mul]
  rw [Finset.sum_comm, ← Finset.sum_neg_distrib]
  apply Finset.sum_congr rfl
  intro i _
  have he (k : Fin l) :
      (p i : ℚ)⁻¹ * node q i ^ (J + s.val + k.val + 1) * (coeffs q k : ℚ) =
      ((p i : ℚ)⁻¹ * node q i ^ (J + s.val)) * ((coeffs q k : ℚ) * node q i ^ (k.val + 1)) := by
    rw [Nat.add_assoc (J + s.val) k.val 1, pow_add]
    ring
  simp_rw [he]
  rw [← Finset.mul_sum, node_recurrence q hq]
  ring

/-- Mathlib's Vandermonde has nodes on its rows, so its transpose occurs on
the left. The diagonal absorbs the obligatory offset of one in the columns. -/
theorem retained_matrix {l} (p q : Fin l → ℕ) (J : ℕ) :
    system l J (retained p q) =
      (vandermonde (node q))ᵀ *
      diagonal (fun i => (p i : ℚ)⁻¹ * node q i ^ (J + 1)) * vandermonde (node q) := by
  ext s k
  rw [Matrix.mul_apply]
  simp only [system, retained, Matrix.mul_diagonal, Matrix.transpose_apply,
    Matrix.vandermonde_apply]
  apply Finset.sum_congr rfl
  intro i _
  rw [show J + s.val + k.val + 1 = s.val + (J + 1) + k.val by omega]
  simp only [pow_add]
  ring

theorem retained_det_ne_zero {l} (p q : Fin l → ℕ) (J : ℕ) (hp : ∀ i, p i ≠ 0)
    (hq : ∀ i, q i ≠ 0) (hd : Function.Injective q) :
    (system l J (retained p q)).det ≠ 0 := by
  have hnodes : Function.Injective (node q) := by
    intro i k h
    apply hd
    have h' : (q i : ℚ) = q k := inv_injective h
    exact_mod_cast h'
  have hv := Matrix.det_vandermonde_ne_zero_iff.mpr hnodes
  rw [retained_matrix, Matrix.det_mul, Matrix.det_mul, Matrix.det_transpose, Matrix.det_diagonal]
  refine mul_ne_zero (mul_ne_zero hv (Finset.prod_ne_zero_iff.mpr ?_)) hv
  intro i _
  exact mul_ne_zero (inv_ne_zero (Nat.cast_ne_zero.mpr (hp i)))
    (pow_ne_zero _ (inv_ne_zero (Nat.cast_ne_zero.mpr (hq i))))

/-- The inverse-weighted residual is an exact rational bound for every coefficient
error of the perturbed solution. Strict inequality is needed for tie-independent rounding. -/
theorem round_inverse_solution {l : ℕ} (A : Matrix (Fin l) (Fin l) ℚ)
    (b : Fin l → ℚ) (c : Fin l → ℤ) (ha : IsUnit A.det)
    (herr : ∀ i, (∑ s, |A⁻¹ i s| * |(b - A *ᵥ (fun k => (c k : ℚ))) s|) < 1/2) :
    (∃! x, A *ᵥ x = b) ∧ ∀ i, round ((A⁻¹ *ᵥ b) i) = c i := by
  have hleft (x : Fin l → ℚ) : A⁻¹ *ᵥ (A *ᵥ x) = x := by
    rw [Matrix.mulVec_mulVec, A.nonsing_inv_mul ha, Matrix.one_mulVec]
  refine ⟨⟨A⁻¹ *ᵥ b, ?_, ?_⟩, ?_⟩
  · change A *ᵥ (A⁻¹ *ᵥ b) = b
    rw [Matrix.mulVec_mulVec, A.mul_nonsing_inv ha, Matrix.one_mulVec]
  · intro x hx
    rw [← hx, hleft]
  · intro i
    have he : A⁻¹ *ᵥ (b - A *ᵥ (fun k => (c k : ℚ))) = A⁻¹ *ᵥ b - (fun k => (c k : ℚ)) := by
      rw [Matrix.mulVec_sub, hleft]
    have h1 : |(A⁻¹ *ᵥ b) i - (c i : ℚ)| < 1/2 := by
      change |(A⁻¹ *ᵥ b - (fun k => (c k : ℚ))) i| < 1/2
      rw [← he]
      apply lt_of_le_of_lt _ (herr i)
      simpa only [Matrix.mulVec, dotProduct, abs_mul] using
        Finset.abs_sum_le_sum_abs (fun s => A⁻¹ i s * (b - A *ᵥ (fun k => (c k : ℚ))) s) Finset.univ
    obtain ⟨hlo,hhi⟩ := abs_lt.mp h1
    exact round_eq_iff.mpr ⟨by linarith, by linarith⟩

def rowSum {l} (D : Matrix (Fin l) (Fin l) ℚ) (i : Fin l) : ℚ :=
  ∑ k, |D i k|

private theorem maxRow {l} (D : Matrix (Fin l) (Fin l) ℚ) (v : Fin l → ℚ) (i : Fin l)
    (hm : ∀ k, |v k| ≤ |v i|) : |(D *ᵥ v) i| ≤ rowSum D i * |v i| := by
  calc
    _ ≤ ∑ k, |D i k| * |v k| := by
      simpa only [Matrix.mulVec, dotProduct, abs_mul] using
        Finset.abs_sum_le_sum_abs (fun k => D i k * v k) Finset.univ
    _ ≤ ∑ k, |D i k| * |v i| :=
      Finset.sum_le_sum (fun k _ => mul_le_mul_of_nonneg_left (hm k) (abs_nonneg _))
    _ = _ := (Finset.sum_mul ..).symm

/-- A rational preconditioner certifies that the possibly perturbed matrix
is invertible. This follows from contraction on a largest coordinate. -/
theorem det_of_row_contraction {l} (A L : Matrix (Fin l) (Fin l) ℚ)
    (h : ∀ i, rowSum (1 - L * A) i < 1) : IsUnit A.det := by
  apply A.isUnit_iff_isUnit_det.mp
  apply Matrix.mulVec_injective_iff_isUnit.mp
  intro x y hxy
  by_contra hne
  obtain ⟨j, hj⟩ := Function.ne_iff.mp hne
  let v := x-y
  have hv : A *ᵥ v = 0 := by simp [v, Matrix.mulVec_sub, hxy]
  have he : (1 - L * A) *ᵥ v = v := by
    rw [Matrix.sub_mulVec, Matrix.one_mulVec, ← Matrix.mulVec_mulVec, hv, Matrix.mulVec_zero, sub_zero]
  obtain ⟨i, _, hm⟩ := Finset.exists_max_image (Finset.univ : Finset (Fin l)) (fun k => |v k|)
    ⟨j, Finset.mem_univ j⟩
  have hi : 0 < |v i| := (abs_pos.mpr (sub_ne_zero.mpr hj)).trans_le (hm _ (Finset.mem_univ j))
  have hmax := maxRow (1 - L * A) v i (fun k => hm _ (Finset.mem_univ k))
  rw [he] at hmax
  exact (not_lt_of_ge hmax) (by simpa using mul_lt_mul_of_pos_right (h i) hi)

/-- Rational perturbation certificate for both existence and exact rounding.
For the paper take `L` to be the inverse of the retained Hankel matrix. Only
row sums of the preconditioned error and an absolute residual are required. -/
theorem round_of_contraction {l} (A L : Matrix (Fin l) (Fin l) ℚ)
    (b : Fin l → ℚ) (c : Fin l → ℤ)
    (hd : ∀ i, rowSum (1 - L * A) i ≤ 1/2)
    (hr : ∀ i, |(L *ᵥ (b - A *ᵥ (fun k => (c k : ℚ)))) i| < 1/4) :
    (∃! x, A *ᵥ x = b) ∧ ∀ i, round ((A⁻¹ *ᵥ b) i) = c i := by
  have ha := det_of_row_contraction A L (fun i => (hd i).trans_lt (by norm_num))
  let x := A⁻¹ *ᵥ b
  let z : Fin l → ℚ := fun k => c k
  let v := x-z
  let D := (1: Matrix (Fin l) (Fin l) ℚ) - L*A
  let r := L *ᵥ (b-A *ᵥ z)
  have hx : A *ᵥ x = b := by
    change A *ᵥ (A⁻¹ *ᵥ b) = b
    rw [Matrix.mulVec_mulVec, A.mul_nonsing_inv ha, Matrix.one_mulVec]
  have he : v = D *ᵥ v + r := by
    dsimp only [v, D, r]
    rw [Matrix.sub_mulVec, Matrix.one_mulVec, ← Matrix.mulVec_mulVec, Matrix.mulVec_sub A,
      hx, Matrix.mulVec_sub]
    abel
  refine ⟨⟨x, hx, fun y hy => Matrix.mulVec_injective_iff_isUnit.mpr (A.isUnit_iff_isUnit_det.mpr ha)
    (hy.trans hx.symm)⟩, ?_⟩
  intro j
  obtain ⟨i, _, hm⟩ := Finset.exists_max_image (Finset.univ : Finset (Fin l)) (fun k => |v k|)
    ⟨j, Finset.mem_univ j⟩
  have hmax := maxRow D v i (fun k => hm k (Finset.mem_univ k))
  have hcrit : |v i| ≤ (1/2 : ℚ) * |v i| + |r i| := calc
    _ = |(D *ᵥ v) i + r i| := congrArg abs (congrFun he i)
    _ ≤ _ := (abs_add_le ..).trans (add_le_add_left
      (hmax.trans (mul_le_mul_of_nonneg_right (hd i) (abs_nonneg _))) _)
  have hri : |r i| < 1/4 := hr i
  have hvj := (hm j (Finset.mem_univ j)).trans_lt (show |v i| < 1/2 by linarith)
  obtain ⟨hlo,hhi⟩ := abs_lt.mp hvj
  change -(1/2 : ℚ) < x j - (c j : ℚ) at hlo
  change x j - (c j : ℚ) < 1/2 at hhi
  change round (x j) = c j
  exact round_eq_iff.mpr ⟨by linarith, by linarith⟩


private theorem row_entry_bound {l} (A : Matrix (Fin l) (Fin l) ℚ) (v : Fin l → ℚ)
    {E : ℚ} (h : ∀ k, |v k| ≤ E) (i : Fin l) : |(A *ᵥ v) i| ≤ rowSum A i * E := by
  calc
    _ ≤ ∑ k, |A i k| * |v k| := by
      simpa only [Matrix.mulVec, dotProduct, abs_mul] using
        Finset.abs_sum_le_sum_abs (fun k => A i k * v k) Finset.univ
    _ ≤ ∑ k, |A i k| * E := Finset.sum_le_sum fun k _ =>
      mul_le_mul_of_nonneg_left (h k) (abs_nonneg _)
    _ = _ := (Finset.sum_mul ..).symm

/-- Entrywise perturbations in all observed Hankel entries and RHS values
suffice once the retained inverse has a measured row bound. -/
theorem recovery_budget {l} (A₀ A L : Matrix (Fin l) (Fin l) ℚ)
    (b₀ b : Fin l → ℚ) (c : Fin l → ℤ) (hleft : L * A₀ = 1)
    (hideal : A₀ *ᵥ (fun k => (c k : ℚ)) = b₀)
    {C E : ℚ} (_hC : 0 ≤ C) (hE : 0 ≤ E) (hL : ∀ i, rowSum L i ≤ C)
    (hA : ∀ i k, |(A₀ - A) i k| ≤ E) (hb : ∀ i, |(b - b₀) i| ≤ E)
    (hc : (l : ℚ) * (C * E) ≤ 1/2)
    (hs : C * (E + E * ∑ k, |(c k : ℚ)|) < 1/4) :
    (∃! x, A *ᵥ x = b) ∧ ∀ i, round ((A⁻¹ *ᵥ b) i) = c i := by
  let z : Fin l → ℚ := fun k => c k
  let D := A₀ - A
  have hdiff : (1 : Matrix (Fin l) (Fin l) ℚ) - L*A = L*D := by rw [← hleft, mul_sub]
  apply round_of_contraction A L b c
  · intro i
    rw [hdiff]
    apply le_trans _ hc
    calc
      rowSum (L * D) i ≤ ∑ _ : Fin l, C * E := by
        apply Finset.sum_le_sum
        intro k _
        calc
          |(L * D) i k| ≤ rowSum L i * E := row_entry_bound _ (fun s => D s k) (fun s => hA s k) i
          _ ≤ _ := mul_le_mul_of_nonneg_right (hL i) hE
      _ = _ := by simp
  · intro i
    have he : b - A *ᵥ z = (b - b₀) + D *ᵥ z := by
      rw [show D = A₀ - A from rfl, Matrix.sub_mulVec, hideal]
      abel
    have hr (k : Fin l) : |(b - A *ᵥ z) k| ≤ E + E * ∑ s, |(c s : ℚ)| := by
      rw [he]
      apply (abs_add_le ..).trans (add_le_add (hb k) ?_)
      calc
        _ ≤ ∑ s, |D k s| * |z s| := by
          simpa only [Matrix.mulVec, dotProduct, abs_mul] using
            Finset.abs_sum_le_sum_abs (fun s => D k s * z s) Finset.univ
        _ ≤ ∑ s, E * |z s| := Finset.sum_le_sum fun s _ =>
          mul_le_mul_of_nonneg_right (hA k s) (abs_nonneg _)
        _ = E * ∑ s, |(c s : ℚ)| := (Finset.mul_sum ..).symm
    apply lt_of_le_of_lt _ hs
    exact (row_entry_bound L _ hr i).trans (mul_le_mul_of_nonneg_right (hL i)
      (add_nonneg hE (mul_nonneg hE (Finset.sum_nonneg fun _ _ => abs_nonneg _))))

/-- The exact absolute coefficient mass. The sign of each integer coefficient
is obtained by substituting `-X` in the polynomial with natural coefficients. -/
theorem coefficient_mass {l} (q : Fin l → ℕ) :
    1 + (∑ k : Fin l, |(coeffs q k : ℚ)|) = ∏ i, (1 + (q i : ℚ)) := by
  let Q : ℕ[X] := ∏ i, (1 + C (q i) * X)
  have hdeg : Q.natDegree ≤ l := by
    apply (Polynomial.natDegree_prod_le _ _).trans
    calc
      _ ≤ ∑ _ : Fin l, (1:ℕ) := Finset.sum_le_sum fun i _ =>
        (Polynomial.natDegree_add_le _ _).trans (max_le (by simp)
          (by simpa using Polynomial.natDegree_C_mul_le (q i) (X : ℕ[X])))
      _ = _ := by simp
  have hcomp : denominator q = (Q.map (Nat.castRingHom ℤ)).comp (C (-1) * X) := by
    simp only [denominator, Q, Polynomial.map_prod, Polynomial.prod_comp,
      Polynomial.map_add, Polynomial.map_one, Polynomial.map_mul, Polynomial.map_C,
      Polynomial.map_X, Polynomial.add_comp, Polynomial.one_comp, Polynomial.mul_comp,
      Polynomial.C_comp, Polynomial.X_comp]
    congr 1
    funext i
    simp [sub_eq_add_neg]
  have hc (k : ℕ) : |((denominator q).coeff k : ℚ)| = (Q.coeff k : ℚ) := by
    rw [hcomp, Polynomial.comp_C_mul_X_coeff, Polynomial.coeff_map]
    simp [Int.cast_mul, Int.cast_pow, abs_mul, abs_pow]
  have hz : (Q.coeff 0 : ℚ) = 1 := by
    simpa only [constant_one, Int.cast_one, abs_one] using (hc 0).symm
  calc
    _ = (∑ k : Fin (l+1), (Q.coeff k.val : ℚ)) := by
      rw [Fin.sum_univ_succ]
      simp only [Fin.val_zero, hz, Fin.val_succ]
      congr 1
      exact Finset.sum_congr rfl (fun i _ => hc _)
    _ = Q.eval₂ (Nat.castRingHom ℚ) 1 := by
      rw [Polynomial.eval₂_eq_sum_range' _ (Nat.lt_succ_of_le hdeg),
        ← Fin.sum_univ_eq_sum_range]
      simp
    _ = _ := by simp [Q, Polynomial.eval₂_finsetProd, Polynomial.eval₂_add, Polynomial.eval₂_mul]


theorem retainedMoment_eq {w l : ℕ} (p : Fin l → ℕ) (hd : Function.Injective p) (j : ℕ) :
    EulerSamples.retainedMoment w (Finset.univ.image p) j =
      retained p (fun i => EulerSamples.component w (p i)) j := by
  unfold EulerSamples.retainedMoment retained node
  exact Finset.sum_image (fun _ _ _ _ h => hd h)

/-- Concrete recovery from the signed normalized divisor sums. The arithmetic
gap is over the actual nontrivial unitary divisors. The one analytic matrix
input is the row bound for the inverse of the retained rational system. -/
theorem shunia_recovery {w B z l J : ℕ} (hw : 0 < w) (hz : 0 < z)
    (p : Fin l → ℕ) (hd : Function.Injective p) (hp : ∀ i, p i ∈ w.primeFactors)
    (hq : Function.Injective (fun i => EulerSamples.component w (p i)))
    (hgap : ∀ d, 1 < d → d ∣ w → d.Coprime (w / d) →
      ((d ≤ B ↔ ∃ a ∈ Finset.univ.image p, d = EulerSamples.component w a) ∧
       (d ≤ B ∨ z ≤ d)))
    {C : ℚ} (hC : 0 ≤ C)
    (hL : ∀ i, rowSum (system l J (retained p (fun i => EulerSamples.component w (p i))))⁻¹ i ≤ C)
    (hc : (l : ℚ) * (C * ((w : ℚ) / (z : ℚ)^J)) ≤ 1/2)
    (hs : C * (((w : ℚ) / (z : ℚ)^J) * ∏ i, (1 + (EulerSamples.component w (p i) : ℚ))) < 1/4) :
    let A := system l J (EulerSamples.normalized w)
    let b := rhs l J (EulerSamples.normalized w)
    (∃! x, A *ᵥ x = b) ∧ ∀ i, round ((A⁻¹ *ᵥ b) i) =
      coeffs (fun i => EulerSamples.component w (p i)) i := by
  let q := fun i => EulerSamples.component w (p i)
  let z₀ := retained p q
  let ξ := EulerSamples.normalized w
  let A₀ := system l J z₀
  let E : ℚ := w / (z : ℚ)^J
  have hQ (i) : q i ≠ 0 := by have := EulerSamples.component_two_le (hp i); dsimp [q]; omega
  have hP (i) : p i ≠ 0 := (Nat.prime_of_mem_primeFactors (hp i)).ne_zero
  have hdet : IsUnit A₀.det := isUnit_iff_ne_zero.mpr (retained_det_ne_zero p q J hP hQ hq)
  have hsub : Finset.univ.image p ⊆ w.primeFactors := by
    intro a ha
    obtain ⟨i,_,rfl⟩ := Finset.mem_image.mp ha
    exact hp i
  have he (j : ℕ) (hj : J ≤ j) : |ξ j - z₀ j| ≤ E := by
    have hh := EulerSamples.retainedMoment_error hw hz (Finset.univ.image p) hsub hgap j
    rw [retainedMoment_eq p hd] at hh
    refine hh.trans ?_
    exact div_le_div_of_nonneg_left (Nat.cast_nonneg _) (pow_pos (Nat.cast_pos.mpr hz) _)
      (pow_le_pow_right₀ (by exact_mod_cast hz : (1:ℚ) ≤ z) hj)
  apply recovery_budget A₀ (system l J ξ) A₀⁻¹ (rhs l J z₀) (rhs l J ξ) (coeffs q)
    (A₀.nonsing_inv_mul hdet) (retained_system p q hQ J) hC (by positivity : 0 ≤ E) hL
  · intro i k
    change |z₀ _ - ξ _| ≤ E
    rw [abs_sub_comm]
    exact he _ (by omega)
  · intro i
    change |-ξ _ - -z₀ _| ≤ E
    rw [neg_sub_neg, abs_sub_comm]
    exact he _ (by omega)
  · exact hc
  · change C * (E * ∏ i, (1 + (q i : ℚ))) < 1/4 at hs
    rw [← coefficient_mass q] at hs
    simpa only [mul_add, mul_one] using hs

/-- The one-component system distinguishes the column offset and prime-power node. -/
example : system 1 1 (retained (l := 1) (fun _ => 2) (fun _ => 4)) 0 0 = 1/32 ∧
    rhs 1 1 (retained (l := 1) (fun _ => 2) (fun _ => 4)) 0 = -(1/8) := by
  norm_num [system, rhs, retained, node, Fin.sum_univ_one]

example : round ((2 : ℚ)⁻¹) = 1 := round_two_inv

end GRWTSK.IntegerFactorization.DivisorSumRecurrence
