/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.MobiusDilationPairSplit

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Coprime prime-dilation packets have a genuine negative sign.
No bound for the complete remaining signed source is asserted.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

theorem prime_dilation_value (p r : ℕ) (hp : Nat.Prime p) (hcop : Nat.Coprime p r) :
    moebiusReal (p*r) = -moebiusReal r := by
  unfold moebiusReal
  rw [ArithmeticFunction.isMultiplicative_moebius.map_mul_of_coprime hcop,
    ArithmeticFunction.moebius_apply_prime hp]
  simp

theorem prime_dilation_product (p r : ℕ) (hp : Nat.Prime p) (hcop : Nat.Coprime p r) :
    moebiusReal r * moebiusReal (p*r) = -(moebiusReal r)^2 := by
  rw [prime_dilation_value p r hp hcop]
  ring

def primeDilationPacket (p m n : ℕ) : ℝ :=
  ∑ r ∈ Finset.Icc 1 m,
    if Nat.Coprime p r ∧ p*r ≤ n then moebiusReal r * moebiusReal (p*r) else 0

theorem primeDilationPacket_nonpos (p m n : ℕ) (hp : Nat.Prime p) :
    primeDilationPacket p m n ≤ 0 := by
  unfold primeDilationPacket
  apply Finset.sum_nonpos
  intro r _
  split_ifs with h
  · rw [prime_dilation_product p r hp h.1]
    exact neg_nonpos.mpr (sq_nonneg _)
  · exact le_rfl

theorem primeDilationPacket_credit_le (p m n : ℕ) (hp : Nat.Prime p) :
    -primeDilationPacket p m n ≤ (m : ℝ) := by
  have hl : -(m : ℝ) ≤ primeDilationPacket p m n := by
    calc
      _ = ∑ _r ∈ Finset.Icc 1 m, (-1 : ℝ) := by simp
      _ ≤ _ := by
        unfold primeDilationPacket
        apply Finset.sum_le_sum
        intro r _
        split_ifs with h
        · rw [prime_dilation_product p r hp h.1]
          have hs := GRWTSK.RiemannHypothesis.CCC.moebiusReal_sq_le_one r
          linarith
        · norm_num
  linarith

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
