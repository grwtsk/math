/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.IntegerRateSupportSizeAndPrimeFamily

set_option autoImplicit false
noncomputable section

/-! Exact low-rate source restrictions, not a height bound for rate one.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ABC.IntegerRateZeroOneClassification
open RetainedFactorization IntegerWronskianRepetitionCorrection RetainedCoefficientPrimeCongruence
open IntegerRateSupportCharacterization IntegerRateSupportSizeAndPrimeFamily
open VanishingWronskianSupportClassification

theorem integer_rate_zero_forces_one (n : ℕ) (hn : n≠0)
    (hdiv : ∀ p ∈ n.factorization.support, p ∣ n.factorization p)
    (hr : supportIntegerRate n=0) : n=1 := by
  have hc := support_card_le_rate n hdiv
  have hz : n.factorization.support.card=0 := by omega
  have hs : n.factorization.support=∅ := Finset.card_eq_zero.mp hz
  simpa only [hs,Finset.prod_empty] using integer_rate_prime_product n hn hdiv

theorem integer_rate_one_prime_self_power (n : ℕ) (hn : n≠0)
    (hdiv : ∀ p ∈ n.factorization.support, p ∣ n.factorization p)
    (hr : supportIntegerRate n=1) : ∃ p : ℕ, Nat.Prime p ∧ n=p^p := by
  have hc := support_card_le_rate n hdiv
  have hne : n.factorization.support.card≠0 := by
    intro hz
    have hs : n.factorization.support=∅ := Finset.card_eq_zero.mp hz
    have hh : supportIntegerRate n=0 := by simp [supportIntegerRate,hs]
    omega
  have hone : n.factorization.support.card=1 := by omega
  obtain ⟨p,hp⟩ := Finset.card_eq_one.mp hone
  have hmem : p ∈ n.factorization.support := by simp [hp]
  have hprime := support_prime n p hmem
  have hrate : n.factorization p/p=1 := by simpa [supportIntegerRate,hp] using hr
  have he := integer_rate_prime_product n hn hdiv
  refine ⟨p,hprime,?_⟩
  simpa [hp,hrate] using he

theorem zero_wronskian_zero_rate_triple (T : CoprimeAdditiveTriple)
    (hW : integerWronskian T.a T.b=0) (hr : supportIntegerRate T.a=0) :
    T.a=1 ∧ T.b=1 ∧ T.c=2 := by
  obtain ⟨ha,hb,he⟩ := (vanishing_wronskian_iff_support_rates T).mp hW
  have h₁ := integer_rate_zero_forces_one T.a (ne_of_gt T.a_pos) ha hr
  have h₂ := integer_rate_zero_forces_one T.b (ne_of_gt T.b_pos) hb (he.symm.trans hr)
  have hc := T.additive
  exact ⟨h₁,h₂,by omega⟩

/- Rate one already permits arbitrarily large supported primes; the exact
classification n=p^p does not supply a bound for rad(p^p+q^q). Uniform
W=0 additive height and nonzero-defect weighted-log budgets remain missing. -/
end GRWTSK.NumberTheory.ABC.IntegerRateZeroOneClassification
