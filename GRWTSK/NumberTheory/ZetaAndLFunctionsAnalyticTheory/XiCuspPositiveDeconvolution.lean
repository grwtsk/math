/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiCuspScatteringEuler
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Data.Fintype.Pi
import Mathlib.Algebra.BigOperators.Fin

/-! # Positive divisor deconvolution of the finite-time trace weights -/
namespace GRWTSK.NumberTheory.XiCuspPositiveDeconvolution
open Finset

/-- The complementary prime weight for the squared totient scattering trace. -/
def primeWeight (p : ℕ) : ℚ := 2/(p:ℚ) - 1/(p:ℚ)^2

theorem primeWeight_range {p : ℕ} (hp : p.Prime) :
    0 < primeWeight p ∧ primeWeight p < 1 := by
  have h : (2:ℚ) ≤ p := by exact_mod_cast hp.two_le
  unfold primeWeight
  constructor <;> field_simp <;> nlinarith [sq_nonneg ((p:ℚ)-2)]

/-- Telescoping the positive convolution along one full prime-power column. -/
theorem local_deconvolution (a : ℚ) (k : ℕ) :
    a^k + ∑ j ∈ range k, (1-a)*a^j = 1 := by
  induction k with
  | zero => simp
  | succ k ih => rw [sum_range_succ, pow_succ]; linarith

/-- Factorization over all divisors expressed by their exponents; only one
copy of the boundary at the maximal exponent is counted. -/
theorem all_divisor_weights {ι : Type*} [Fintype ι] [DecidableEq ι] (a : ι → ℚ) (k : ι → ℕ) :
    (∑ j : ((i : ι) → Fin (k i+1)), ∏ i,
      (if (j i).val = k i then 1 else 1-a i) * a i ^ (j i).val) = 1 := by
  classical
  rw [← Fintype.prod_sum (fun (i : ι) (j : Fin (k i+1)) => (if j.val = k i then 1 else 1-a i)*a i^j.val)]
  apply Finset.prod_eq_one
  intro i _
  rw [Fin.sum_univ_castSucc]
  simp only [Fin.val_castSucc, Fin.val_last, ite_true, one_mul]
  simp_rw [if_neg (Nat.ne_of_lt (Fin.isLt _))]
  rw [Fin.sum_univ_eq_sum_range (fun j : ℕ => (1-a i)*a i^j)]
  linarith [local_deconvolution (a i) (k i)]

end GRWTSK.NumberTheory.XiCuspPositiveDeconvolution
