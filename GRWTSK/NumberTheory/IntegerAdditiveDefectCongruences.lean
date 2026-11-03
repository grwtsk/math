/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ArithmeticDerivativeRepetitionDivisibility
import GRWTSK.NumberTheory.ArithmeticWronskianDefect

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Integer additive failure with exact retained support coefficients.
Congruences are stated as integer divisibilities, without a hidden size
bound or additive-derivation hypothesis. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.NumberTheory.ABC.IntegerAdditiveDefectCongruences
open RetainedFactorization RetainedArithmeticDerivative NaturalRepetitionSource

def retainedSupportCoefficient (n : ℕ) : ℕ :=
  ∑ p ∈ n.factorization.support,
    n.factorization p * (UniqueFactorizationMonoid.radical n / p)

theorem derivative_eq_repetition_mul_support (n : ℕ) :
    naturalArithmeticDerivative n = repetitionQuotient n * retainedSupportCoefficient n := by
  unfold naturalArithmeticDerivative retainedSupportCoefficient
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro p hp
  rw [retained_quotient_factorization n p hp]
  ring

def integerAdditiveDefect (T : CoprimeAdditiveTriple) : ℤ :=
  (naturalArithmeticDerivative T.c : ℤ) -
    (naturalArithmeticDerivative T.a : ℤ) - (naturalArithmeticDerivative T.b : ℤ)

theorem integerDefect_rational_cast (T : CoprimeAdditiveTriple) :
    (integerAdditiveDefect T : ℚ) = ArithmeticWronskianDefect.additiveDefect T := by
  unfold integerAdditiveDefect ArithmeticWronskianDefect.additiveDefect
  push_cast
  rw [naturalArithmeticDerivative_cast, naturalArithmeticDerivative_cast,
    naturalArithmeticDerivative_cast]

theorem integerDefect_retained_factorization (T : CoprimeAdditiveTriple) :
    integerAdditiveDefect T =
      (repetitionQuotient T.c : ℤ) * (retainedSupportCoefficient T.c : ℤ) -
      (repetitionQuotient T.a : ℤ) * (retainedSupportCoefficient T.a : ℤ) -
      (repetitionQuotient T.b : ℤ) * (retainedSupportCoefficient T.b : ℤ) := by
  unfold integerAdditiveDefect
  rw [derivative_eq_repetition_mul_support, derivative_eq_repetition_mul_support,
    derivative_eq_repetition_mul_support]
  simp only [Nat.cast_mul]

theorem target_defect_congruence (T : CoprimeAdditiveTriple) :
    (repetitionQuotient T.c : ℤ) ∣ integerAdditiveDefect T +
      (naturalArithmeticDerivative T.a : ℤ) + (naturalArithmeticDerivative T.b : ℤ) := by
  have hd : (repetitionQuotient T.c : ℤ) ∣ (naturalArithmeticDerivative T.c : ℤ) := by
    exact_mod_cast repetitionQuotient_dvd_naturalArithmeticDerivative T.c
  have he : integerAdditiveDefect T + (naturalArithmeticDerivative T.a : ℤ) +
      (naturalArithmeticDerivative T.b : ℤ) = (naturalArithmeticDerivative T.c : ℤ) := by
    unfold integerAdditiveDefect
    ring
  rw [he]
  exact hd

theorem first_summand_defect_congruence (T : CoprimeAdditiveTriple) :
    (repetitionQuotient T.a : ℤ) ∣ integerAdditiveDefect T -
      (naturalArithmeticDerivative T.c : ℤ) + (naturalArithmeticDerivative T.b : ℤ) := by
  have hd : (repetitionQuotient T.a : ℤ) ∣ (naturalArithmeticDerivative T.a : ℤ) := by
    exact_mod_cast repetitionQuotient_dvd_naturalArithmeticDerivative T.a
  have he : integerAdditiveDefect T - (naturalArithmeticDerivative T.c : ℤ) +
      (naturalArithmeticDerivative T.b : ℤ) = -(naturalArithmeticDerivative T.a : ℤ) := by
    unfold integerAdditiveDefect
    ring
  rw [he]
  exact dvd_neg.mpr hd

theorem second_summand_defect_congruence (T : CoprimeAdditiveTriple) :
    (repetitionQuotient T.b : ℤ) ∣ integerAdditiveDefect T -
      (naturalArithmeticDerivative T.c : ℤ) + (naturalArithmeticDerivative T.a : ℤ) := by
  have hd : (repetitionQuotient T.b : ℤ) ∣ (naturalArithmeticDerivative T.b : ℤ) := by
    exact_mod_cast repetitionQuotient_dvd_naturalArithmeticDerivative T.b
  have he : integerAdditiveDefect T - (naturalArithmeticDerivative T.c : ℤ) +
      (naturalArithmeticDerivative T.a : ℤ) = -(naturalArithmeticDerivative T.b : ℤ) := by
    unfold integerAdditiveDefect
    ring
  rw [he]
  exact dvd_neg.mpr hd

end GRWTSK.NumberTheory.ABC.IntegerAdditiveDefectCongruences
