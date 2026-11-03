/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.IntegerWronskianRepetitionCorrection

set_option autoImplicit false
noncomputable section

/-! A literal coprime additive triple refutes omission of the Wronskian
correction. This is a finite arithmetic diagnostic, not an ABC proof or
counterexample. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.NumberTheory.ABC.Checks.IntegerWronskianDefect178
open RetainedFactorization RetainedArithmeticDerivative NaturalRepetitionSource
open IntegerAdditiveDefectCongruences IntegerWronskianRepetitionCorrection

def triple178 : CoprimeAdditiveTriple where
  a := 1
  b := 7
  c := 8
  a_pos := by norm_num
  b_pos := by norm_num
  c_pos := by norm_num
  additive := by norm_num
  coprime := by norm_num

lemma derivative_one : naturalArithmeticDerivative 1 = 0 := by
  simp [naturalArithmeticDerivative]

lemma derivative_eight : naturalArithmeticDerivative 8 = 12 := by
  simpa using naturalArithmeticDerivative_prime_pow_succ 2 2 (by norm_num)

lemma repetition_eight : repetitionQuotient 8 = 4 := by
  have hs : (8 : ℕ).primeFactors = {2} := by decide
  rw [repetitionQuotient, Nat.radical_eq_prod_primeFactors, hs]
  norm_num

theorem literal_defect : integerAdditiveDefect triple178 = 11 := by
  change (naturalArithmeticDerivative 8 : ℤ) -
    (naturalArithmeticDerivative 1 : ℤ) - (naturalArithmeticDerivative 7 : ℤ) = 11
  rw [derivative_eight, derivative_one, naturalArithmeticDerivative_prime 7 (by norm_num)]
  norm_num

theorem literal_wronskian : integerWronskian triple178.a triple178.b = 1 := by
  change (1 : ℤ) * (naturalArithmeticDerivative 7 : ℤ) -
    (7 : ℤ) * (naturalArithmeticDerivative 1 : ℤ) = 1
  rw [derivative_one, naturalArithmeticDerivative_prime 7 (by norm_num)]
  norm_num

theorem raw_target_divisibility_false :
    ¬ (repetitionQuotient triple178.c : ℤ) ∣ integerWronskian triple178.a triple178.b := by
  rw [literal_wronskian]
  change ¬ (repetitionQuotient 8 : ℤ) ∣ 1
  rw [repetition_eight]
  norm_num

theorem corrected_value :
    integerWronskian triple178.a triple178.b -
      (triple178.b : ℤ) * integerAdditiveDefect triple178 = -76 := by
  rw [literal_wronskian, literal_defect]
  norm_num [triple178]

theorem corrected_target_divisibility :
    (repetitionQuotient triple178.c : ℤ) ∣ integerWronskian triple178.a triple178.b -
      (triple178.b : ℤ) * integerAdditiveDefect triple178 :=
  target_repetition_dvd_corrected_wronskian triple178

end GRWTSK.NumberTheory.ABC.Checks.IntegerWronskianDefect178
