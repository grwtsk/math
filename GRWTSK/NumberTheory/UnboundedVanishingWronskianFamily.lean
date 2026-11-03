/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.IntegerWronskianRepetitionCorrection

set_option autoImplicit false
noncomputable section

/-! Coprime additive triples with identically vanishing arithmetic Wronskian.
This obstructs a universal nonvanishing supplier, not ABC itself.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ABC.UnboundedVanishingWronskianFamily
open RetainedFactorization RetainedArithmeticDerivative IntegerWronskianRepetitionCorrection

theorem derivative_power_of_fixed_point (m k : ℕ) (hm : m ≠ 0)
    (hD : naturalArithmeticDerivative m = m) :
    naturalArithmeticDerivative (m^(k+1)) = (k+1)*m^(k+1) := by
  induction k with
  | zero => simpa using hD
  | succ k ih =>
    rw [pow_succ, naturalArithmeticDerivative_leibniz _ _ (pow_ne_zero _ hm) hm, ih, hD]
    simp only [pow_succ]
    ring

lemma derivative_four : naturalArithmeticDerivative 4 = 4 := by
  have h := naturalArithmeticDerivative_prime_pow_succ 2 1 Nat.prime_two
  norm_num at h ⊢
  exact h

lemma derivative_twenty_seven : naturalArithmeticDerivative 27 = 27 := by
  have h := naturalArithmeticDerivative_prime_pow_succ 3 2 (by norm_num)
  norm_num at h ⊢
  exact h

def vanishingTriple (k : ℕ) : CoprimeAdditiveTriple where
  a := 4^(k+1)
  b := 27^(k+1)
  c := 4^(k+1)+27^(k+1)
  a_pos := by positivity
  b_pos := by positivity
  c_pos := by positivity
  additive := rfl
  coprime := (show Nat.Coprime 4 27 by norm_num).pow _ _

theorem vanishingTriple_wronskian (k : ℕ) :
    integerWronskian (vanishingTriple k).a (vanishingTriple k).b = 0 := by
  change integerWronskian (4^(k+1)) (27^(k+1)) = 0
  unfold integerWronskian
  rw [derivative_power_of_fixed_point 4 k (by norm_num) derivative_four,
    derivative_power_of_fixed_point 27 k (by norm_num) derivative_twenty_seven]
  push_cast
  ring

end GRWTSK.NumberTheory.ABC.UnboundedVanishingWronskianFamily
