/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ArithmeticDerivativeLogBounds

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Retained support coefficient and absolute integer-defect bounds.
Every exponent remains present. The bounds retain input height and do
not establish uniform ABC support credit. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.NumberTheory.ABC.RetainedSupportCoefficientBounds
open RetainedFactorization RetainedArithmeticDerivative NaturalRepetitionSource
open IntegerAdditiveDefectCongruences RetainedMultiplicityLogBound ArithmeticDerivativeLogBounds

theorem supportCoefficient_real_sum (n : ℕ) :
    (retainedSupportCoefficient n : ℝ) =
      ∑ p ∈ n.primeFactors,
        (UniqueFactorizationMonoid.radical n : ℝ) * (n.factorization p : ℝ) / (p : ℝ) := by
  unfold retainedSupportCoefficient
  rw [Nat.support_factorization]
  push_cast
  apply Finset.sum_congr rfl
  intro p hp
  have hs : p ∈ n.factorization.support := by
    simpa only [Nat.support_factorization] using hp
  rw [Nat.cast_div_charZero (support_prime_dvd_radical n p hs)]
  ring

theorem supportCoefficient_le_radical_multiplicity (n : ℕ) (ell : ℝ)
    (hell : 0 < ell) (hp : ∀ p ∈ n.primeFactors, ell ≤ (p : ℝ)) :
    (retainedSupportCoefficient n : ℝ) ≤
      (UniqueFactorizationMonoid.radical n : ℝ) * retainedMultiplicity n / ell := by
  rw [supportCoefficient_real_sum]
  calc
    _ ≤ ∑ p ∈ n.primeFactors,
        (UniqueFactorizationMonoid.radical n : ℝ) * (n.factorization p : ℝ) / ell := by
      apply Finset.sum_le_sum
      intro p hmem
      exact div_le_div_of_nonneg_left
        (mul_nonneg (Nat.cast_nonneg _) (Nat.cast_nonneg _)) hell (hp p hmem)
    _ = _ := by
      unfold retainedMultiplicity
      rw [← Finset.sum_div, Finset.mul_sum]

theorem additive_log_sum_le_target (T : CoprimeAdditiveTriple) :
    (T.a : ℝ) * Real.log (T.a : ℝ) + (T.b : ℝ) * Real.log (T.b : ℝ) ≤
      (T.c : ℝ) * Real.log (T.c : ℝ) := by
  have hcNat := T.additive
  have ha : (T.a : ℝ) ≤ (T.c : ℝ) := by exact_mod_cast (by omega : T.a ≤ T.c)
  have hb : (T.b : ℝ) ≤ (T.c : ℝ) := by exact_mod_cast (by omega : T.b ≤ T.c)
  have hla := Real.log_le_log (by exact_mod_cast T.a_pos) ha
  have hlb := Real.log_le_log (by exact_mod_cast T.b_pos) hb
  have hA := mul_le_mul_of_nonneg_left hla (Nat.cast_nonneg T.a : (0 : ℝ) ≤ T.a)
  have hB := mul_le_mul_of_nonneg_left hlb (Nat.cast_nonneg T.b : (0 : ℝ) ≤ T.b)
  have hc : (T.a : ℝ) + T.b = T.c := by exact_mod_cast T.additive
  nlinarith

theorem absolute_integerDefect_le_height_log (T : CoprimeAdditiveTriple)
    (ell : ℝ) (hell : 1 < ell)
    (ha : ∀ p ∈ T.a.primeFactors, ell ≤ (p : ℝ))
    (hb : ∀ p ∈ T.b.primeFactors, ell ≤ (p : ℝ))
    (hc : ∀ p ∈ T.c.primeFactors, ell ≤ (p : ℝ)) :
    |(integerAdditiveDefect T : ℝ)| ≤
      (T.c : ℝ) * Real.log (T.c : ℝ) / (ell * Real.log ell) := by
  have hd : 0 ≤ ell * Real.log ell :=
    le_of_lt (mul_pos (by linarith) (Real.log_pos hell))
  have hs := div_le_div_of_nonneg_right (additive_log_sum_le_target T) hd
  rw [add_div] at hs
  have hlo := integerDefect_real_lower T ell hell ha hb
  have hhi := integerDefect_real_upper T ell hell hc
  rw [abs_le]
  constructor <;> linarith

end GRWTSK.NumberTheory.ABC.RetainedSupportCoefficientBounds
