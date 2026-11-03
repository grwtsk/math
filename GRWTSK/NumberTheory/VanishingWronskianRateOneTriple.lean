/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.IntegerRateZeroOneClassification

set_option autoImplicit false
noncomputable section

/-! Exact ordered common-rate-one exceptional source family.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ABC.VanishingWronskianRateOneTriple
open RetainedFactorization IntegerWronskianRepetitionCorrection IntegerRateSupportCharacterization
open IntegerRateZeroOneClassification VanishingWronskianSupportClassification

theorem actual_rate_one_zero_w_triple (T : CoprimeAdditiveTriple)
    (hW : integerWronskian T.a T.b=0) (hr : supportIntegerRate T.a=1) :
    ∃ p q : ℕ, Nat.Prime p ∧ Nat.Prime q ∧ p≠q ∧
      T.a=p^p ∧ T.b=q^q ∧ T.c=p^p+q^q := by
  obtain ⟨hsa,hsb,he⟩ := (vanishing_wronskian_iff_support_rates T).mp hW
  obtain ⟨p,hp,ha⟩ := integer_rate_one_prime_self_power T.a (ne_of_gt T.a_pos) hsa hr
  obtain ⟨q,hq,hb⟩ := integer_rate_one_prime_self_power T.b (ne_of_gt T.b_pos) hsb
    (he.symm.trans hr)
  have hpq : p≠q := by
    intro h
    subst q
    have hab : T.a=T.b := ha.trans hb.symm
    have hg := T.coprime.gcd_eq_one
    rw [← hab,Nat.gcd_self] at hg
    have hpp : 1<p^p := one_lt_pow' hp.one_lt (ne_of_gt hp.pos)
    rw [ha] at hg
    omega
  have hc : T.c=p^p+q^q := by
    have hh := T.additive
    rw [ha,hb] at hh
    exact hh.symm
  exact ⟨p,q,hp,hq,hpq,ha,hb,hc⟩

/- Existing primeSelfPowerTriple supplies genuine coprime examples with
zero Wronskian for every distinct prime pair. Classifying the full rate-one
branch does not bound rad(p^p+q^q), and the primes remain unbounded. No
finite exceptional-set reduction or ABC height claim is inferred. -/
end GRWTSK.NumberTheory.ABC.VanishingWronskianRateOneTriple
