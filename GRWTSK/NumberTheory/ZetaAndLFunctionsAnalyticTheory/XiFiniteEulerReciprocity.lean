/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Tactic
import Mathlib.Data.Nat.Factorization.Basic

/-! # A reciprocal perturbation at one delayed prime power -/
namespace GRWTSK.NumberTheory.XiFiniteEulerReciprocity

def localCoeff (p L A v : ℕ) : ℕ :=
  1 + (if L ≤ v then A else 0) + (if 2*L ≤ v then p^L else 0)

/-- Dirichlet coefficients of the zeta function times the reciprocal Euler polynomial. -/
def coeff (p L A n : ℕ) : ℕ := localCoeff p L A (n.factorization p)

theorem multiplicative {p m n L : ℕ} (hp : p.Prime) (hL : 0 < L)
    (hm : m ≠ 0) (hn : n ≠ 0) (h : m.Coprime n) (A : ℕ) :
    coeff p L A (m*n) = coeff p L A m * coeff p L A n := by
  have empty : localCoeff p L A 0 = 1 := by simp [localCoeff, show ¬ L ≤ 0 by omega,
    show ¬ 2*L ≤ 0 by omega]
  simp only [coeff, Nat.factorization_mul hm hn, Finsupp.add_apply]
  by_cases hd : p ∣ m
  · have hn' : ¬p ∣ n := fun k => (Nat.Prime.not_coprime_iff_dvd.mpr ⟨p,hp,hd,k⟩) h
    simp [Nat.factorization_eq_zero_of_not_dvd hn', empty]
  · simp [Nat.factorization_eq_zero_of_not_dvd hd, empty]

theorem unaltered {p L A n : ℕ} (h : n.factorization p < L) : coeff p L A n = 1 := by
  simp [coeff, localCoeff, show ¬ L ≤ n.factorization p by omega,
    show ¬ 2*L ≤ n.factorization p by omega]

theorem reciprocal {K : Type*} [Field K] (A q x : K) (hq : q ≠ 0) (hx : x ≠ 0) :
    q*x^2*(1+A*(q*x)⁻¹+q*((q*x)⁻¹)^2) = 1+A*x+q*x^2 := by
  field_simp; ring

/-- After extracting the coefficient of x^(2L), the base zeta factor contributes 1. -/
theorem first_negative {A q : ℝ} (hq : 1 < q) (hA : 4*q < A^2)
    (L : ℕ) (hL : 0 < L) : 1 - (L : ℝ)*(A^2-2*q) < 0 := by
  have h : 1 ≤ (L : ℝ) := by exact_mod_cast hL
  nlinarith [mul_nonneg (sub_nonneg.mpr h) (show 0 ≤ A^2-2*q by linarith)]

/-- The defect in the centered logarithmic derivative after conductor removal. -/
theorem diagonal_bound {h d u : ℝ} (hh : 0 ≤ h) (hd : 0 ≤ d) (hu : 0 ≤ u) :
    0 ≤ h-h*(1-u^2)/(1+2*d*u+u^2) ∧
    h-h*(1-u^2)/(1+2*d*u+u^2) ≤ 2*h*(d*u+u^2) := by
  have hden : 1 ≤ 1+2*d*u+u^2 := by nlinarith [mul_nonneg hd hu, sq_nonneg u]
  have hdpos : 0 < 1+2*d*u+u^2 := by linarith
  rw [show h-h*(1-u^2)/(1+2*d*u+u^2) = 2*h*(d*u+u^2)/(1+2*d*u+u^2) by field_simp; ring]
  have H : 0 ≤ 2*h*(d*u+u^2) := by positivity
  exact ⟨div_nonneg H hdpos.le, (div_le_iff₀ hdpos).2 (by nlinarith [mul_le_mul_of_nonneg_left hden H])⟩

end GRWTSK.NumberTheory.XiFiniteEulerReciprocity
