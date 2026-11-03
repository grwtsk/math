/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.RetainedSupportCoefficientBounds

set_option autoImplicit false
noncomputable section

/-! Integer Wronskian divisibility with the full additive-defect correction.
The target repetition quotient divides W(a,b)-b*delta, not an asserted
uncorrected W(a,b). SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.NumberTheory.ABC.IntegerWronskianRepetitionCorrection
open RetainedFactorization RetainedArithmeticDerivative NaturalRepetitionSource
open IntegerAdditiveDefectCongruences

def integerWronskian (m n : ℕ) : ℤ :=
  (m : ℤ) * (naturalArithmeticDerivative n : ℤ) -
    (n : ℤ) * (naturalArithmeticDerivative m : ℤ)

theorem repetitionQuotient_dvd_input (n : ℕ) : repetitionQuotient n ∣ n := by
  refine ⟨UniqueFactorizationMonoid.radical n, ?_⟩
  simpa [mul_comm] using (radical_mul_repetitionQuotient n).symm

theorem first_repetition_dvd_wronskian (m n : ℕ) :
    (repetitionQuotient m : ℤ) ∣ integerWronskian m n := by
  have hm : (repetitionQuotient m : ℤ) ∣ (m : ℤ) := by
    exact_mod_cast repetitionQuotient_dvd_input m
  have hd : (repetitionQuotient m : ℤ) ∣ (naturalArithmeticDerivative m : ℤ) := by
    exact_mod_cast repetitionQuotient_dvd_naturalArithmeticDerivative m
  exact dvd_sub (dvd_mul_of_dvd_left hm _) (dvd_mul_of_dvd_right hd _)

theorem second_repetition_dvd_wronskian (m n : ℕ) :
    (repetitionQuotient n : ℤ) ∣ integerWronskian m n := by
  have hn : (repetitionQuotient n : ℤ) ∣ (n : ℤ) := by
    exact_mod_cast repetitionQuotient_dvd_input n
  have hd : (repetitionQuotient n : ℤ) ∣ (naturalArithmeticDerivative n : ℤ) := by
    exact_mod_cast repetitionQuotient_dvd_naturalArithmeticDerivative n
  exact dvd_sub (dvd_mul_of_dvd_right hd _) (dvd_mul_of_dvd_left hn _)

theorem integer_wronskian_cycle (T : CoprimeAdditiveTriple) :
    integerWronskian T.a T.b + integerWronskian T.b T.c =
      (T.b : ℤ) * integerAdditiveDefect T := by
  have hc : (T.c : ℤ) = (T.a : ℤ) + (T.b : ℤ) := by exact_mod_cast T.additive.symm
  unfold integerWronskian integerAdditiveDefect
  rw [hc]
  ring

theorem target_repetition_dvd_corrected_wronskian (T : CoprimeAdditiveTriple) :
    (repetitionQuotient T.c : ℤ) ∣
      integerWronskian T.a T.b - (T.b : ℤ) * integerAdditiveDefect T := by
  have he : integerWronskian T.a T.b - (T.b : ℤ) * integerAdditiveDefect T =
      -integerWronskian T.b T.c := by
    have h := integer_wronskian_cycle T
    linarith
  rw [he]
  exact dvd_neg.mpr (second_repetition_dvd_wronskian T.b T.c)

end GRWTSK.NumberTheory.ABC.IntegerWronskianRepetitionCorrection
