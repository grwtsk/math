/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.IntegerRateSupportCharacterization

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-! Exact retained-support classification of the vanishing arithmetic Wronskian.
This describes the exceptional class; no additive height estimate follows.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ABC.VanishingWronskianSupportClassification
open RetainedFactorization RetainedArithmeticDerivative IntegerWronskianRepetitionCorrection
open VanishingWronskianIntegerRate IntegerRateSupportCharacterization

theorem vanishing_wronskian_iff_support_rates (T : CoprimeAdditiveTriple) :
    integerWronskian T.a T.b=0 ↔
      (∀ p ∈ T.a.factorization.support, p ∣ T.a.factorization p) ∧
      (∀ p ∈ T.b.factorization.support, p ∣ T.b.factorization p) ∧
      supportIntegerRate T.a=supportIntegerRate T.b := by
  constructor
  · intro hW
    obtain ⟨k,ha,hb⟩ := (vanishing_wronskian_iff_common_rate T).mp hW
    have hsa := (integer_rate_iff_supported_exponents T.a (ne_of_gt T.a_pos)).mp ⟨k,ha⟩
    have hsb := (integer_rate_iff_supported_exponents T.b (ne_of_gt T.b_pos)).mp ⟨k,hb⟩
    have hra := derivative_eq_input_mul_support_rate T.a hsa
    have hrb := derivative_eq_input_mul_support_rate T.b hsb
    have hka : supportIntegerRate T.a=k :=
      (mul_left_inj' (ne_of_gt T.a_pos)).mp (hra.symm.trans ha)
    have hkb : supportIntegerRate T.b=k :=
      (mul_left_inj' (ne_of_gt T.b_pos)).mp (hrb.symm.trans hb)
    exact ⟨hsa,hsb,hka.trans hkb.symm⟩
  · rintro ⟨hsa,hsb,hr⟩
    apply (vanishing_wronskian_iff_common_rate T).mpr
    refine ⟨supportIntegerRate T.a, derivative_eq_input_mul_support_rate T.a hsa, ?_⟩
    rw [derivative_eq_input_mul_support_rate T.b hsb, hr]

theorem integer_rate_prime_product (n : ℕ) (hn : n ≠ 0)
    (h : ∀ p ∈ n.factorization.support, p ∣ n.factorization p) :
    n = ∏ p ∈ n.factorization.support, p^(p*(n.factorization p/p)) := by
  calc
    _ = ∏ p ∈ n.factorization.support, p^n.factorization p := by
      simpa only [Nat.support_factorization] using (Nat.prod_primeFactors_pow_factorization hn).symm
    _ = _ := by
      apply Finset.prod_congr rfl
      intro p hp
      rw [Nat.mul_div_cancel' (h p hp)]

end GRWTSK.NumberTheory.ABC.VanishingWronskianSupportClassification
