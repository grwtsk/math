import Mathlib.Algebra.Order.Field.Basic
import Mathlib.LinearAlgebra.Lagrange
import Mathlib.LinearAlgebra.Vandermonde
import Mathlib.LinearAlgebra.Matrix.NonsingularInverse
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith

/-!
# Inverse Vandermonde bounds at reciprocal integer nodes

Authors: grwtsk contributors

The Lagrange column bound used in Shunia's integer-recurrence estimate (3.9).
All entries and coefficient sums are exact rationals.
-/
namespace GRWTSK.IntegerFactorization.ReciprocalVandermonde

open Polynomial
open scoped Polynomial Matrix

private def mass (P : ℚ[X]) (k : ℕ) : ℚ := ∑ a ∈ Finset.range k, |P.coeff a|

private theorem mass_basis_step (P : ℚ[X]) (x y M : ℚ) (hM : ∀ k, mass P k ≤ M)
    (k : ℕ) : mass (Lagrange.basisDivisor x y * P) k ≤ |(x-y)⁻¹| * (1+|y|)*M := by
  have hX : mass (X*P) k ≤ M := by
    cases k with
    | zero => simpa [mass] using hM 0
    | succ k => simpa [mass, Finset.sum_range_succ', coeff_X_mul, coeff_X_mul_zero] using hM k
  have hsum : mass (X*P - C y * P) k ≤ mass (X*P) k + |y| * mass P k := by
    unfold mass
    rw [Finset.mul_sum, ← Finset.sum_add_distrib]
    apply Finset.sum_le_sum
    intro a _
    simpa only [sub_eq_add_neg, coeff_add, coeff_neg, coeff_C_mul, abs_neg, abs_mul] using
      abs_add_le (coeff (X*P) a) (-(y * P.coeff a))
  calc
    _ = |(x-y)⁻¹| * mass (X*P-C y*P) k := by
      simp only [Lagrange.basisDivisor,mul_assoc,sub_mul,mass,coeff_C_mul,abs_mul,Finset.mul_sum]
    _ ≤ |(x-y)⁻¹| * (M+|y| * M) :=
      mul_le_mul_of_nonneg_left (hsum.trans (add_le_add hX (mul_le_mul_of_nonneg_left (hM k) (abs_nonneg y)))) (abs_nonneg _)
    _ = _ := by ring

private theorem inv_gap_lt_ordered {a b B : ℕ} (ha : 0<a) (hab : a<b) (hbB : b≤B) :
    |((a:ℚ)⁻¹-(b:ℚ)⁻¹)⁻¹| ≤ (B:ℚ)^2 := by
  have ha' : (0:ℚ)<a := by exact_mod_cast ha
  have hb' : (0:ℚ)<b := by exact_mod_cast ha.trans hab
  have hdiff : 1 ≤ (b:ℚ)-a := by
    have h : (a:ℚ)+1 ≤ b := by exact_mod_cast hab
    linarith
  have hid : ((a:ℚ)⁻¹-(b:ℚ)⁻¹)⁻¹ = (a:ℚ)*b/(b-a) := by
    field_simp
  rw [hid, abs_of_nonneg (div_nonneg (by positivity) (by linarith))]
  calc
    _ ≤ (a:ℚ)*b := div_le_self (by positivity) hdiff
    _ ≤ (B:ℚ)*B := mul_le_mul (by exact_mod_cast hab.le.trans hbB)
      (by exact_mod_cast hbB) (by positivity) (by positivity)
    _ = _ := (sq _).symm

theorem inverse_gap_le {a b B : ℕ} (ha : 0<a) (hb : 0<b) (h : a ≠ b)
    (haB : a ≤ B) (hbB : b ≤ B) : |((a:ℚ)⁻¹-(b:ℚ)⁻¹)⁻¹| ≤ (B:ℚ)^2 := by
  rcases lt_or_gt_of_ne h with hab|hba
  · exact inv_gap_lt_ordered ha hab hbB
  · rw [abs_inv, abs_sub_comm, ← abs_inv]
    exact inv_gap_lt_ordered hb hba haB

/-- The entire absolute coefficient sum of each interpolation basis polynomial
is bounded by the same power, even when truncated at an arbitrary degree. -/
theorem basis_column_bound {ι : Type*} [DecidableEq ι] (s : Finset ι) (q : ι → ℕ)
    (i : ι) (hi : i ∈ s) (B : ℕ) (hq : ∀ j ∈ s, 0 < q j ∧ q j ≤ B)
    (hinj : Set.InjOn q s) (k : ℕ) :
    (∑ a ∈ Finset.range k, |(Lagrange.basis s (fun j => (q j : ℚ)⁻¹) i).coeff a|)
      ≤ (2*(B:ℚ)^2)^(s.card-1) := by
  let f := fun j => Lagrange.basisDivisor (q i : ℚ)⁻¹ (q j : ℚ)⁻¹
  have hp (t : Finset ι) (ht : t ⊆ s.erase i) :
      ∀ a, mass (∏ j ∈ t, f j) a ≤ (2*(B:ℚ)^2)^t.card := by
    induction t using Finset.induction_on with
    | empty =>
      intro a
      cases a <;> simp [mass, Finset.sum_range_succ', coeff_one]
    | @insert j t hj ih =>
      have hjmem := Finset.mem_erase.mp (ht (Finset.mem_insert_self ..))
      have hji : q i ≠ q j := fun h => hjmem.1 (hinj hi hjmem.2 h).symm
      have hqj := hq j hjmem.2
      have hqi := hq i hi
      have hv : |(q j : ℚ)⁻¹| ≤ 1 := by
        rw [abs_of_nonneg (inv_nonneg.mpr (Nat.cast_nonneg _))]
        exact inv_le_one_of_one_le₀ (by exact_mod_cast hqj.1)
      have hs := inverse_gap_le hqi.1 hqj.1 hji hqi.2 hqj.2
      have hscale : |((q i : ℚ)⁻¹-(q j : ℚ)⁻¹)⁻¹| * (1+|(q j : ℚ)⁻¹|) ≤ 2*(B:ℚ)^2 := by
        calc
          _ ≤ (B:ℚ)^2*2 := mul_le_mul hs (by linarith) (by positivity) (by positivity)
          _ = _ := by ring
      intro a
      rw [Finset.prod_insert hj,Finset.card_insert_of_notMem hj,pow_succ']
      exact (mass_basis_step _ _ _ _ (ih (fun v hv' => ht (Finset.mem_insert_of_mem hv'))) a).trans
        (mul_le_mul_of_nonneg_right hscale (by positivity))
  simpa only [mass, f, Lagrange.basis, Finset.card_erase_of_mem hi] using hp (s.erase i) (fun _ h => h) k


/-- Coefficients of fundamental interpolation polynomials, indexed by
coefficient (row) and data point (column). -/
noncomputable def columns {l : ℕ} (v : Fin l → ℚ) : Matrix (Fin l) (Fin l) ℚ :=
  fun k i => (Lagrange.basis Finset.univ v i).coeff k.val

theorem vandermonde_columns {l : ℕ} (v : Fin l → ℚ) (hv : Function.Injective v) :
    Matrix.vandermonde v * columns v = 1 := by
  ext i j
  have hd := Lagrange.natDegree_basis hv.injOn (Finset.mem_univ j)
  have hlt : (Lagrange.basis Finset.univ v j).natDegree < l := by
    simp only [Finset.card_univ,Fintype.card_fin] at hd
    have := j.isLt
    omega
  have he := Polynomial.eval_eq_sum_range' hlt (v i)
  rw [← Fin.sum_univ_eq_sum_range] at he
  calc
    _ = (Lagrange.basis Finset.univ v j).eval (v i) := by
      rw [Matrix.mul_apply, he]
      apply Finset.sum_congr rfl
      intro k _
      exact mul_comm _ _
    _ = _ := by
      by_cases e : i=j
      · subst j
        simpa using Lagrange.eval_basis_self hv.injOn (Finset.mem_univ i)
      · simpa [Matrix.one_apply, e] using Lagrange.eval_basis_of_ne (v:=v) (s:=Finset.univ) (Ne.symm e) (Finset.mem_univ i)

theorem reciprocal_column_sum {l : ℕ} (q : Fin l → ℕ) (B : ℕ)
    (hq : ∀ i, 0 < q i ∧ q i ≤ B) (hinj : Function.Injective q) (i : Fin l) :
    (∑ k : Fin l, |columns (fun a => (q a : ℚ)⁻¹) k i|) ≤ (2*(B:ℚ)^2)^(l-1) := by
  have h := basis_column_bound Finset.univ q i (Finset.mem_univ _) B (fun j _ => hq j) hinj.injOn l
  rw [← Fin.sum_univ_eq_sum_range] at h
  simpa only [columns, Finset.card_univ, Fintype.card_fin] using h


private def row {l : ℕ} (A : Matrix (Fin l) (Fin l) ℚ) (i : Fin l) := ∑ j, |A i j|

private theorem row_mul {l : ℕ} (A B : Matrix (Fin l) (Fin l) ℚ) (u : ℚ)
    (hB : ∀ i, row B i ≤ u) (i : Fin l) : row (A*B) i ≤ row A i*u := by
  calc
    _ ≤ ∑ j, ∑ k, |A i k| * |B k j| := by
      apply Finset.sum_le_sum
      intro j _
      rw [Matrix.mul_apply]
      simpa only [abs_mul] using Finset.abs_sum_le_sum_abs (fun k => A i k * B k j) Finset.univ
    _ = ∑ k, |A i k| * row B k := by rw [Finset.sum_comm]; simp only [row, Finset.mul_sum]
    _ ≤ ∑ k, |A i k| * u := Finset.sum_le_sum fun k _ => mul_le_mul_of_nonneg_left (hB k) (abs_nonneg _)
    _ = _ := (Finset.sum_mul ..).symm

/-- The inverse row envelope for the exact retained Hankel system. Here V is
the reciprocal-node Vandermonde matrix and the weights are positive reciprocals
of the prime bases. The two bounds account for the distinct row and column
norms of the interpolation matrix. -/
theorem retained_inverse_row {l : ℕ} (p q : Fin l → ℕ) (B J : ℕ)
    (hp : ∀ i, 0 < p i ∧ p i ≤ B) (hq : ∀ i, 0 < q i ∧ q i ≤ B)
    (hinj : Function.Injective q) (i : Fin l) :
    let v := fun a => (q a : ℚ)⁻¹
    let V := Matrix.vandermonde v
    let d := fun a => (p a : ℚ)⁻¹ * v a^(J+1)
    (∑ k, |(Vᵀ * Matrix.diagonal d * V)⁻¹ i k|) ≤
      (l:ℚ)*(2*(B:ℚ)^2)^(2*(l-1))*(B:ℚ)^(J+2) := by
  classical
  dsimp only
  let v := fun a => (q a : ℚ)⁻¹
  let V := Matrix.vandermonde v
  let U := columns v
  let d := fun a => (p a : ℚ)⁻¹ * v a^(J+1)
  let e := fun a => (p a : ℚ) * (q a : ℚ)^(J+1)
  let M := (2*(B:ℚ)^2)^(l-1)
  have hv : Function.Injective v := by
    intro a b h
    apply hinj
    exact_mod_cast inv_injective h
  have hVU : V*U=1 := vandermonde_columns v hv
  have hUV : U*V=1 := mul_eq_one_comm.mp hVU
  have hT : Uᵀ * Vᵀ = 1 := by rw [← Matrix.transpose_mul,hVU,Matrix.transpose_one]
  have hD : Matrix.diagonal e * Matrix.diagonal d = 1 := by
    rw [Matrix.diagonal_mul_diagonal]
    ext a b
    by_cases hab : a=b
    · subst b
      simp [e,d,v,(Nat.cast_ne_zero.mpr (hp a).1.ne' : (p a:ℚ)≠0),
        (Nat.cast_ne_zero.mpr (hq a).1.ne' : (q a:ℚ)≠0), mul_assoc, mul_left_comm]
    · simp [hab]
  have hI : (Vᵀ * Matrix.diagonal d * V)⁻¹ = U * Matrix.diagonal e * Uᵀ := by
    apply Matrix.inv_eq_left_inv
    calc
      _ = U * (Matrix.diagonal e * ((Uᵀ * Vᵀ) * Matrix.diagonal d)) * V := by simp only [mul_assoc]
      _ = _ := by rw [hT,one_mul,hD,mul_one,hUV]
  have hcol (a : Fin l) : row Uᵀ a ≤ M := reciprocal_column_sum q B hq hinj a
  have hrow (a : Fin l) : row U a ≤ l*M := by
    calc
      _ ≤ ∑ _j : Fin l, M := by
        apply Finset.sum_le_sum
        intro j _
        exact (Finset.single_le_sum (fun k _ => abs_nonneg (U k j)) (Finset.mem_univ a)).trans (hcol j)
      _ = _ := by simp
  have hdiag (a : Fin l) : row (Matrix.diagonal e) a ≤ (B:ℚ)^(J+2) := by
    have hpa : (p a:ℚ) ≤ B := by exact_mod_cast (hp a).2
    have hqa : (q a:ℚ) ≤ B := by exact_mod_cast (hq a).2
    calc
      _ = e a := by
        unfold row
        rw [Finset.sum_eq_single a]
        · rw [Matrix.diagonal_apply_eq, abs_of_nonneg (by dsimp [e]; positivity)]
        · intro j _ hj
          simp [Matrix.diagonal_apply_ne _ (Ne.symm hj)]
        · simp
      _ ≤ (B:ℚ)*(B:ℚ)^(J+1) :=
        mul_le_mul hpa (pow_le_pow_left₀ (Nat.cast_nonneg _) hqa _) (by positivity) (by positivity)
      _ = _ := (pow_succ' _ _).symm
  change row ((Vᵀ * Matrix.diagonal d * V)⁻¹) i ≤ _
  rw [hI]
  calc
    _ ≤ row (U*Matrix.diagonal e) i*M := row_mul _ _ _ hcol i
    _ ≤ (row U i*(B:ℚ)^(J+2))*M :=
      mul_le_mul_of_nonneg_right (row_mul _ _ _ hdiag i) (by dsimp [M]; positivity)
    _ ≤ (((l:ℚ)*M)*(B:ℚ)^(J+2))*M :=
      mul_le_mul_of_nonneg_right (mul_le_mul_of_nonneg_right (hrow i) (by positivity)) (by dsimp [M]; positivity)
    _ = _ := by dsimp [M]; rw [show 2*(l-1)=(l-1)+(l-1) by omega,pow_add]; ring

end GRWTSK.IntegerFactorization.ReciprocalVandermonde
