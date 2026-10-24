/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Primes.GoldbachCompositeRamanujan
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Composite Goldbach denominator coefficients

The denominator coefficient in the canonical Goldbach progression model is
evaluated for every positive modulus.  If `c_q(N)` denotes the integer
Ramanujan sum, then

`C_q(N) = μ(q)^2 * c_q(N) / φ(q)^2`.

Consequently the coefficient is real, vanishes on non-squarefree moduli, and
is multiplicative in coprime moduli.  The prime formula from the earlier layer
is recovered as a specialization.

These are finite arithmetic identities.  No comparison with an infinite
singular series, prime-progression estimate, minor-arc estimate, or Goldbach
theorem is supplied.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Primes.GoldbachCompositeCoefficient

open scoped BigOperators Real ArithmeticFunction.Moebius
open Finset Nat
open GRWTSK.NumberTheory.Primes.GoldbachRationalArcs
open GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.UnitIntervalCharacters
open GRWTSK.NumberTheory.Primes.GoldbachProgressionErrorTransfer
open GRWTSK.NumberTheory.Primes.GoldbachProgressionMainModel
open GRWTSK.NumberTheory.Primes.GoldbachProgressionCoefficientFactorization
open GRWTSK.NumberTheory.Primes.GoldbachPrimeCoefficientBridge
open GRWTSK.NumberTheory.Primes.GoldbachCompositeRamanujan

noncomputable section

/-- Rational form of the composite denominator coefficient. -/
def goldbachCompositeCoefficientRational
    (q N : ℕ) : ℚ :=
  ((((ArithmeticFunction.moebius q : ℤ) : ℚ) ^ 2) *
      (goldbachRamanujanInteger q N : ℚ)) /
    ((Nat.totient q : ℚ) ^ 2)

/-- Exact factorization before casting to a rational value. -/
theorem goldbachProgressionDenominatorCoefficient_factor
    {q N : ℕ} (hq : 0 < q) :
    goldbachProgressionDenominatorCoefficient q N =
      (((ArithmeticFunction.moebius q : ℤ) : ℂ) /
          (Nat.totient q : ℂ)) ^ 2 *
        goldbachReducedIntegerPhaseSum q (-(N : ℤ)) := by
  unfold goldbachProgressionDenominatorCoefficient
    goldbachProgressionArithmeticCoefficient
  calc
    (∑ a ∈ goldbachCoprimeResidues q,
        goldbachNormalizedRamanujanCoefficient a q *
          goldbachNormalizedRamanujanCoefficient a q *
          unitCharacter (-(N : ℤ))
            (goldbachRationalArcCenter a q)) =
      ∑ a ∈ goldbachCoprimeResidues q,
        ((((ArithmeticFunction.moebius q : ℤ) : ℂ) /
            (Nat.totient q : ℂ)) ^ 2) *
          unitCharacter (-(N : ℤ))
            (goldbachRationalArcCenter a q) := by
              apply Finset.sum_congr rfl
              intro a ha
              have hcop : q.Coprime a :=
                (Finset.mem_filter.mp ha).2
              rw [goldbachNormalizedRamanujanCoefficient_of_coprime
                hq hcop]
              ring
    _ =
      ((((ArithmeticFunction.moebius q : ℤ) : ℂ) /
          (Nat.totient q : ℂ)) ^ 2) *
        goldbachReducedIntegerPhaseSum q (-(N : ℤ)) := by
          unfold goldbachReducedIntegerPhaseSum
          rw [Finset.mul_sum]

/-- Closed composite-modulus coefficient formula. -/
theorem goldbachProgressionDenominatorCoefficient_formula
    {q N : ℕ} (hq : 0 < q) :
    goldbachProgressionDenominatorCoefficient q N =
      ((((ArithmeticFunction.moebius q : ℤ) : ℂ) ^ 2) *
          (goldbachRamanujanInteger q N : ℂ)) /
        ((Nat.totient q : ℂ) ^ 2) := by
  rw [goldbachProgressionDenominatorCoefficient_factor hq,
    goldbachReducedIntegerPhaseSum_neg_target_eq_ramanujanInteger hq]
  ring

/-- The complex coefficient is the cast of its rational formula. -/
theorem goldbachProgressionDenominatorCoefficient_eq_rational
    {q N : ℕ} (hq : 0 < q) :
    goldbachProgressionDenominatorCoefficient q N =
      (goldbachCompositeCoefficientRational q N : ℂ) := by
  rw [goldbachProgressionDenominatorCoefficient_formula hq]
  unfold goldbachCompositeCoefficientRational
  push_cast
  ring

/-- Every positive-modulus denominator coefficient is real. -/
theorem goldbachProgressionDenominatorCoefficient_im_zero
    {q N : ℕ} (hq : 0 < q) :
    (goldbachProgressionDenominatorCoefficient q N).im = 0 := by
  rw [goldbachProgressionDenominatorCoefficient_eq_rational hq]
  simp

/-- Real part of the composite denominator coefficient. -/
theorem goldbachProgressionDenominatorCoefficient_re
    {q N : ℕ} (hq : 0 < q) :
    (goldbachProgressionDenominatorCoefficient q N).re =
      (goldbachCompositeCoefficientRational q N : ℝ) := by
  rw [goldbachProgressionDenominatorCoefficient_eq_rational hq]
  simp

/-- Nonsquarefree moduli contribute zero. -/
theorem goldbachProgressionDenominatorCoefficient_eq_zero_of_not_squarefree
    {q N : ℕ} (hq : 0 < q)
    (hsq : ¬ Squarefree q) :
    goldbachProgressionDenominatorCoefficient q N = 0 := by
  rw [goldbachProgressionDenominatorCoefficient_formula hq,
    ArithmeticFunction.moebius_eq_zero_of_not_squarefree hsq]
  simp

/-- The unit denominator contributes one. -/
@[simp]
theorem goldbachProgressionDenominatorCoefficient_one
    (N : ℕ) :
    goldbachProgressionDenominatorCoefficient 1 N = 1 := by
  rw [goldbachProgressionDenominatorCoefficient_formula
    (by norm_num : 0 < (1 : ℕ))]
  have hcop : Nat.Coprime 1 N := Nat.coprime_one_left N
  rw [goldbachRamanujanInteger_of_coprime
    (by norm_num) hcop]
  simp

/-- The general formula specializes to the already established prime formula. -/
theorem goldbachProgressionDenominatorCoefficient_formula_prime
    {p N : ℕ} (hp : p.Prime) :
    goldbachProgressionDenominatorCoefficient p N =
      if p ∣ N then
        (((p - 1 : ℕ) : ℂ))⁻¹
      else
        -((((p - 1 : ℕ) : ℂ))⁻¹) ^ 2 := by
  exact goldbachProgressionDenominatorCoefficient_prime_formula hp

/-- Composite coefficients multiply over coprime positive moduli. -/
theorem goldbachProgressionDenominatorCoefficient_mul_of_coprime
    {q r N : ℕ}
    (hq : 0 < q) (hr : 0 < r)
    (hqr : q.Coprime r) :
    goldbachProgressionDenominatorCoefficient (q * r) N =
      goldbachProgressionDenominatorCoefficient q N *
        goldbachProgressionDenominatorCoefficient r N := by
  have hmul : 0 < q * r := mul_pos hq hr
  rw [goldbachProgressionDenominatorCoefficient_formula hmul,
    goldbachProgressionDenominatorCoefficient_formula hq,
    goldbachProgressionDenominatorCoefficient_formula hr,
    goldbachRamanujanInteger_mul_of_coprime hq.ne' hr.ne' hqr,
    Nat.totient_mul hqr,
    ArithmeticFunction.isMultiplicative_moebius.map_mul_of_coprime
      hqr]
  have hφq : (Nat.totient q : ℂ) ≠ 0 := by
    exact_mod_cast (Nat.totient_pos.mpr hq).ne'
  have hφr : (Nat.totient r : ℂ) ≠ 0 := by
    exact_mod_cast (Nat.totient_pos.mpr hr).ne'
  push_cast
  field_simp [hφq, hφr]

/-- Arithmetic-function package for the composite denominator coefficient. -/
def goldbachDenominatorCoefficientArithmeticFunction
    (N : ℕ) : ArithmeticFunction ℂ :=
  ⟨fun q =>
      if q = 0 then 0
      else goldbachProgressionDenominatorCoefficient q N,
    by simp⟩

@[simp]
theorem goldbachDenominatorCoefficientArithmeticFunction_apply_pos
    {q N : ℕ} (hq : 0 < q) :
    goldbachDenominatorCoefficientArithmeticFunction N q =
      goldbachProgressionDenominatorCoefficient q N := by
  simp [goldbachDenominatorCoefficientArithmeticFunction,
    hq.ne']

/-- The composite coefficient package is multiplicative. -/
theorem isMultiplicative_goldbachDenominatorCoefficientArithmeticFunction
    (N : ℕ) :
    (goldbachDenominatorCoefficientArithmeticFunction N).IsMultiplicative := by
  rw [ArithmeticFunction.IsMultiplicative.iff_ne_zero]
  constructor
  · simp [goldbachDenominatorCoefficientArithmeticFunction]
  · intro q r hq hr hqr
    have hqpos : 0 < q := Nat.pos_of_ne_zero hq
    have hrpos : 0 < r := Nat.pos_of_ne_zero hr
    simp only [goldbachDenominatorCoefficientArithmeticFunction,
      ArithmeticFunction.coe_mk, if_neg hq, if_neg hr,
      if_neg (mul_ne_zero hq hr)]
    exact
      goldbachProgressionDenominatorCoefficient_mul_of_coprime
        hqpos hrpos hqr

/-- A positive squarefree modulus is the product of its prime denominator
coefficients. -/
theorem goldbachProgressionDenominatorCoefficient_eq_primeFactorProduct
    {q N : ℕ} (hq : 0 < q)
    (hsq : Squarefree q) :
    goldbachProgressionDenominatorCoefficient q N =
      ∏ p ∈ q.primeFactors,
        goldbachProgressionDenominatorCoefficient p N := by
  let f := goldbachDenominatorCoefficientArithmeticFunction N
  have hmult : f.IsMultiplicative :=
    isMultiplicative_goldbachDenominatorCoefficientArithmeticFunction N
  calc
    goldbachProgressionDenominatorCoefficient q N =
        f q := by
          symm
          exact
            goldbachDenominatorCoefficientArithmeticFunction_apply_pos hq
    _ = f (∏ p ∈ q.primeFactors, p) := by
          rw [Nat.prod_primeFactors_of_squarefree hsq]
    _ = ∏ p ∈ q.primeFactors, f p :=
          hmult.map_prod_of_subset_primeFactors
            q q.primeFactors Subset.rfl
    _ = ∏ p ∈ q.primeFactors,
          goldbachProgressionDenominatorCoefficient p N := by
            apply Finset.prod_congr rfl
            intro p hp
            have hpprime : p.Prime :=
              prime_of_mem_primeFactors hp
            exact
              goldbachDenominatorCoefficientArithmeticFunction_apply_pos
                hpprime.pos

/-- The absolute coefficient is bounded by the corresponding product of prime
absolute coefficients on squarefree support. -/
theorem norm_goldbachProgressionDenominatorCoefficient_eq_primeFactorProduct
    {q N : ℕ} (hq : 0 < q)
    (hsq : Squarefree q) :
    ‖goldbachProgressionDenominatorCoefficient q N‖ =
      ∏ p ∈ q.primeFactors,
        ‖goldbachProgressionDenominatorCoefficient p N‖ := by
  rw [goldbachProgressionDenominatorCoefficient_eq_primeFactorProduct
    hq hsq, norm_prod]

end
end GRWTSK.NumberTheory.Primes.GoldbachCompositeCoefficient
