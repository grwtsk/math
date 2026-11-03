/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.PrimitiveBalanceGcdSupportBound

set_option autoImplicit false
noncomputable section

/-! Exact real size limitation of the primitive balancing ratio. This is
an obstruction for this estimate, not an impossibility claim for ABC.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ABC.PrimitiveBalanceRatioObstruction
open RetainedFactorization PrimitiveBalancedPrimeDerivative PrimitiveBalanceGcdSupportBound

theorem actual_balanceGcd_le_exponent_product (T : CoprimeAdditiveTriple) (p q : ℕ)
    (hp : Nat.Prime p) (hpa : p ∣ T.a) (hq : Nat.Prime q) (hqc : q ∣ T.c) :
    balanceGcd T p q ≤ T.a.factorization p*T.c.factorization q := by
  have he := hp.factorization_pos_of_dvd (ne_of_gt T.a_pos) hpa
  have hf := hq.factorization_pos_of_dvd (ne_of_gt T.c_pos) hqc
  exact Nat.le_of_dvd (Nat.mul_pos he hf)
    (actual_balanceGcd_dvd_exponent_product T p q hpa hqc)

theorem actual_balancing_ratio_le_prime_product (T : CoprimeAdditiveTriple) (p q : ℕ)
    (hp : Nat.Prime p) (hpa : p ∣ T.a) (hq : Nat.Prime q) (hqc : q ∣ T.c) :
    (p : ℝ)*(q : ℝ)*(balanceGcd T p q : ℝ)/
      ((T.a.factorization p*T.c.factorization q : ℕ) : ℝ) ≤ (p : ℝ)*(q : ℝ) := by
  have he := hp.factorization_pos_of_dvd (ne_of_gt T.a_pos) hpa
  have hf := hq.factorization_pos_of_dvd (ne_of_gt T.c_pos) hqc
  have hden : (0 : ℝ)<((T.a.factorization p*T.c.factorization q : ℕ) : ℝ) := by
    exact_mod_cast Nat.mul_pos he hf
  have hg : (balanceGcd T p q : ℝ) ≤
      ((T.a.factorization p*T.c.factorization q : ℕ) : ℝ) := by
    exact_mod_cast actual_balanceGcd_le_exponent_product T p q hp hpa hq hqc
  apply (div_le_iff₀ hden).mpr
  exact mul_le_mul_of_nonneg_left hg (by positivity)

end GRWTSK.NumberTheory.ABC.PrimitiveBalanceRatioObstruction
