/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachTwoArcMinorCalibration
import Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap
import Mathlib.Tactic

set_option autoImplicit false

/-!
# The absolute minor integral is Fourier energy

Finite orthogonality identifies the full energy with the sum of squared
prime logarithms. The exact major/minor split is retained. This is not a
bound for the norm of the signed minor integral.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.GoldbachMinorAbsoluteEnergy

open scoped BigOperators Real ComplexConjugate
open Set MeasureTheory
open GRWTSK.Analysis.Fourier.UnitIntervalCharacters
open GRWTSK.NumberTheory.Primes.GoldbachWeighted
open GRWTSK.NumberTheory.Primes.GoldbachCircleIntegral
open GRWTSK.NumberTheory.Primes.GoldbachArcDecomposition
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcCriterion
open GRWTSK.NumberTheory.Primes.GoldbachProgressionErrorTransfer

noncomputable section

def goldbachPrimeLogSquareTotal (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.range (N + 1), primeLogWeight n ^ 2

def goldbachExponentialEnergy (N : ℕ) (x : ℝ) : ℝ :=
  ‖goldbachExponentialSum N x‖ ^ 2

def goldbachMajorEnergy (Q N : ℕ) : ℝ :=
  ∫ x in goldbachRationalMajorArcSet Q N, goldbachExponentialEnergy N x

/-- Absolute value is taken BEFORE integration. This is a different object
from norm(goldbachRationalMinorContribution Q N). -/
def goldbachMinorAbsoluteIntegral (Q N : ℕ) : ℝ :=
  ∫ x in goldbachRationalMinorArcSet Q N, ‖goldbachCircleIntegrand N x‖

@[continuity, fun_prop]
theorem continuous_goldbachExponentialEnergy (N : ℕ) :
    Continuous (goldbachExponentialEnergy N) := by
  unfold goldbachExponentialEnergy goldbachExponentialSum
  fun_prop

theorem goldbachExponentialEnergy_nonneg (N : ℕ) (x : ℝ) :
    0 ≤ goldbachExponentialEnergy N x := sq_nonneg _

/-- The target character has unit norm; taking absolute values destroys
all additive phase cancellation and leaves exactly |S|^2. -/
theorem norm_goldbachCircleIntegrand_eq_energy (N : ℕ) (x : ℝ) :
    ‖goldbachCircleIntegrand N x‖ = goldbachExponentialEnergy N x := by
  simp [goldbachCircleIntegrand, goldbachExponentialEnergy,
    norm_unitCharacter, pow_two]

theorem unitCharacter_neg_eq_conj (m : ℤ) (x : ℝ) :
    unitCharacter (-m) x = conj (unitCharacter m x) := by
  let : Fact (0 < (1 : ℝ)) := ⟨zero_lt_one⟩
  change fourier (-m) (x : AddCircle (1 : ℝ)) =
    conj (fourier m (x : AddCircle (1 : ℝ)))
  exact fourier_neg

/-- Difference frequencies, rather than the additive target frequencies,
govern the absolute energy. -/
theorem goldbachEnergy_eq_difference_sum (N : ℕ) (x : ℝ) :
    (goldbachExponentialEnergy N x : ℂ) =
      ∑ p ∈ Finset.range (N + 1), ∑ q ∈ Finset.range (N + 1),
        (primeLogWeight p : ℂ) * (primeLogWeight q : ℂ) *
          unitCharacter ((p : ℤ) - (q : ℤ)) x := by
  unfold goldbachExponentialEnergy
  rw [Complex.sq_norm, ← Complex.mul_conj]
  unfold goldbachExponentialSum
  simp_rw [map_sum, map_mul, Complex.conj_ofReal, ← unitCharacter_neg_eq_conj]
  simp_rw [Finset.sum_mul, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro p hp
  apply Finset.sum_congr rfl
  intro q hq
  rw [sub_eq_add_neg, unitCharacter_add]
  ring

theorem integral_goldbachDifferenceTerm (p q : ℕ) :
    (∫ x : ℝ in 0..1,
      (primeLogWeight p : ℂ) * (primeLogWeight q : ℂ) *
        unitCharacter ((p : ℤ) - (q : ℤ)) x) =
      (primeLogWeight p : ℂ) * (primeLogWeight q : ℂ) *
        (if p = q then 1 else 0) := by
  rw [intervalIntegral.integral_const_mul, integral_unitCharacter]
  have hf : (p : ℤ) - (q : ℤ) = 0 ↔ p = q := by omega
  simp [hf]

/-- Finite Parseval with the source's exact inclusive support and weights.
No prime number theorem or infinite Fourier limit is used. -/
theorem integral_goldbachEnergy_eq_squareTotal (N : ℕ) :
    (∫ x : ℝ in 0..1, goldbachExponentialEnergy N x) =
      goldbachPrimeLogSquareTotal N := by
  have hc : (∫ x : ℝ in 0..1, (goldbachExponentialEnergy N x : ℂ)) =
      (goldbachPrimeLogSquareTotal N : ℂ) := by
    calc
      (∫ x : ℝ in 0..1, (goldbachExponentialEnergy N x : ℂ)) =
          ∫ x : ℝ in 0..1,
            ∑ p ∈ Finset.range (N + 1), ∑ q ∈ Finset.range (N + 1),
              (primeLogWeight p : ℂ) * (primeLogWeight q : ℂ) *
                unitCharacter ((p : ℤ) - (q : ℤ)) x := by
        apply intervalIntegral.integral_congr
        intro x hx
        exact goldbachEnergy_eq_difference_sum N x
      _ = ∑ p ∈ Finset.range (N + 1), ∑ q ∈ Finset.range (N + 1),
          ∫ x : ℝ in 0..1,
            (primeLogWeight p : ℂ) * (primeLogWeight q : ℂ) *
              unitCharacter ((p : ℤ) - (q : ℤ)) x := by
        rw [intervalIntegral.integral_finsetSum]
        · apply Finset.sum_congr rfl
          intro p hp
          rw [intervalIntegral.integral_finsetSum]
          intro q hq
          exact (by fun_prop : Continuous (fun x : ℝ =>
            (primeLogWeight p : ℂ) * (primeLogWeight q : ℂ) *
              unitCharacter ((p : ℤ) - (q : ℤ)) x)).intervalIntegrable 0 1
        · intro p hp
          exact (by fun_prop : Continuous (fun x : ℝ =>
            ∑ q ∈ Finset.range (N + 1),
              (primeLogWeight p : ℂ) * (primeLogWeight q : ℂ) *
                unitCharacter ((p : ℤ) - (q : ℤ)) x)).intervalIntegrable 0 1
      _ = (goldbachPrimeLogSquareTotal N : ℂ) := by
        simp_rw [integral_goldbachDifferenceTerm]
        unfold goldbachPrimeLogSquareTotal
        rw [Complex.ofReal_sum]
        apply Finset.sum_congr rfl
        intro p hp
        simp [mul_ite, hp, pow_two]
  rw [intervalIntegral.integral_ofReal] at hc
  exact_mod_cast hc

theorem integrableOn_goldbachEnergy_unit (N : ℕ) :
    IntegrableOn (goldbachExponentialEnergy N) (Set.Ioc 0 1) :=
  ((continuous_goldbachExponentialEnergy N).intervalIntegrable 0 1).1

theorem goldbachMinorAbsoluteIntegral_eq_energy (Q N : ℕ) :
    goldbachMinorAbsoluteIntegral Q N =
      ∫ x in goldbachRationalMinorArcSet Q N, goldbachExponentialEnergy N x := by
  simp only [goldbachMinorAbsoluteIntegral, norm_goldbachCircleIntegrand_eq_energy]

theorem goldbachMajorEnergy_nonneg (Q N : ℕ) : 0 ≤ goldbachMajorEnergy Q N := by
  exact integral_nonneg (goldbachExponentialEnergy_nonneg N)

theorem goldbachMinorAbsoluteIntegral_nonneg (Q N : ℕ) :
    0 ≤ goldbachMinorAbsoluteIntegral Q N := by
  exact integral_nonneg (fun x => norm_nonneg _)

/-- Exact energy partition on the actual complementary sets. -/
theorem goldbachMajorEnergy_add_minorAbsolute (Q N : ℕ) :
    goldbachMajorEnergy Q N + goldbachMinorAbsoluteIntegral Q N =
      goldbachPrimeLogSquareTotal N := by
  rw [goldbachMinorAbsoluteIntegral_eq_energy]
  unfold goldbachMajorEnergy goldbachRationalMajorArcSet goldbachRationalMinorArcSet
    goldbachMajorArcSet goldbachMinorArcSet
  rw [integral_inter_add_sdiff
    (GRWTSK.NumberTheory.Primes.GoldbachRationalArcs.measurable_goldbachRationalMajorRegion Q N)
    (integrableOn_goldbachEnergy_unit N)]
  rw [← intervalIntegral.integral_of_le zero_le_one]
  exact integral_goldbachEnergy_eq_squareTotal N

end
end GRWTSK.NumberTheory.Primes.GoldbachMinorAbsoluteEnergy
