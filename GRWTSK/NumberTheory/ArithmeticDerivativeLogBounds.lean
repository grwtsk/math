/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.RetainedMultiplicityLogBound
import GRWTSK.NumberTheory.ArithmeticDerivativeQuantitativeSource

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Quantitative real bounds for the actual integer derivative and defect.
Source prime lower bounds and height dependence are explicit. These do
not give uniform ABC support credit. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.NumberTheory.ABC.ArithmeticDerivativeLogBounds
open RetainedArithmeticDerivative RetainedMultiplicityLogBound
open RetainedFactorization IntegerAdditiveDefectCongruences

theorem naturalDerivative_real_sum (n : ℕ) :
    (naturalArithmeticDerivative n : ℝ) =
      ∑ p ∈ n.primeFactors, (n : ℝ) * (n.factorization p : ℝ) / (p : ℝ) := by
  unfold naturalArithmeticDerivative
  rw [Nat.support_factorization]
  push_cast
  apply Finset.sum_congr rfl
  intro p hp
  rw [Nat.cast_div_charZero (Nat.dvd_of_mem_primeFactors hp)]
  ring

theorem derivative_le_height_mul_multiplicity (n : ℕ) (ell : ℝ)
    (hell : 0 < ell) (hp : ∀ p ∈ n.primeFactors, ell ≤ (p : ℝ)) :
    (naturalArithmeticDerivative n : ℝ) ≤
      (n : ℝ) * retainedMultiplicity n / ell := by
  rw [naturalDerivative_real_sum]
  calc
    _ ≤ ∑ p ∈ n.primeFactors, (n : ℝ) * (n.factorization p : ℝ) / ell := by
      apply Finset.sum_le_sum
      intro p hmem
      exact div_le_div_of_nonneg_left
        (mul_nonneg (Nat.cast_nonneg n) (Nat.cast_nonneg _)) hell (hp p hmem)
    _ = (n : ℝ) * retainedMultiplicity n / ell := by
      unfold retainedMultiplicity
      rw [← Finset.sum_div, Finset.mul_sum]

theorem derivative_le_height_log (n : ℕ) (hn : n ≠ 0)
    (ell : ℝ) (hell : 1 < ell)
    (hp : ∀ p ∈ n.primeFactors, ell ≤ (p : ℝ)) :
    (naturalArithmeticDerivative n : ℝ) ≤
      (n : ℝ) * Real.log (n : ℝ) / (ell * Real.log ell) := by
  have he : 0 < ell := by linarith
  calc
    _ ≤ (n : ℝ) * retainedMultiplicity n / ell :=
      derivative_le_height_mul_multiplicity n ell he hp
    _ ≤ (n : ℝ) * (Real.log (n : ℝ) / Real.log ell) / ell :=
      div_le_div_of_nonneg_right
        (mul_le_mul_of_nonneg_left (multiplicity_le_log_div n hn ell hell hp)
          (Nat.cast_nonneg n)) (le_of_lt he)
    _ = (n : ℝ) * Real.log (n : ℝ) / (ell * Real.log ell) := by ring

theorem integerDefect_real_upper (T : CoprimeAdditiveTriple)
    (ell : ℝ) (hell : 1 < ell)
    (hp : ∀ p ∈ T.c.primeFactors, ell ≤ (p : ℝ)) :
    (integerAdditiveDefect T : ℝ) ≤
      (T.c : ℝ) * Real.log (T.c : ℝ) / (ell * Real.log ell) := by
  have h : (integerAdditiveDefect T : ℝ) ≤ (naturalArithmeticDerivative T.c : ℝ) := by
    exact_mod_cast integerDefect_upper T
  exact h.trans (derivative_le_height_log T.c (ne_of_gt T.c_pos) ell hell hp)

theorem integerDefect_real_lower (T : CoprimeAdditiveTriple)
    (ell : ℝ) (hell : 1 < ell)
    (ha : ∀ p ∈ T.a.primeFactors, ell ≤ (p : ℝ))
    (hb : ∀ p ∈ T.b.primeFactors, ell ≤ (p : ℝ)) :
    -((T.a : ℝ) * Real.log (T.a : ℝ) / (ell * Real.log ell)) -
      ((T.b : ℝ) * Real.log (T.b : ℝ) / (ell * Real.log ell)) ≤
        (integerAdditiveDefect T : ℝ) := by
  have h : -(naturalArithmeticDerivative T.a : ℝ) -
      (naturalArithmeticDerivative T.b : ℝ) ≤ (integerAdditiveDefect T : ℝ) := by
    exact_mod_cast integerDefect_lower T
  have hA := derivative_le_height_log T.a (ne_of_gt T.a_pos) ell hell ha
  have hB := derivative_le_height_log T.b (ne_of_gt T.b_pos) ell hell hb
  linarith

end GRWTSK.NumberTheory.ABC.ArithmeticDerivativeLogBounds
