/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ActualTwoPrimeBalancedDerivative

set_option autoImplicit false
noncomputable section

/-! Exact retained support factorization of each prime channel and the
source-balanced derivative. Divisibility alone supplies no height gain.
SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED. -/
namespace GRWTSK.NumberTheory.ABC.WeightedPrimeDerivativeRepetition
open RetainedFactorization NaturalRepetitionSource RetainedArithmeticDerivative
open SinglePrimeWronskianDefectObstruction ActualTwoPrimeBalancedDerivative

theorem primeDerivative_retained_factorization (n p : ℕ) :
    primeDerivative p n = repetitionQuotient n *
      (n.factorization p*(UniqueFactorizationMonoid.radical n/p)) := by
  by_cases hp : n.factorization p=0
  · simp [primeDerivative,hp]
  · have hs : p ∈ n.factorization.support := Finsupp.mem_support_iff.mpr hp
    unfold primeDerivative
    rw [retained_quotient_factorization n p hs]
    ring

theorem repetition_dvd_primeDerivative (n p : ℕ) :
    repetitionQuotient n ∣ primeDerivative p n := by
  rw [primeDerivative_retained_factorization]
  exact dvd_mul_right _ _

theorem balancedDerivative_retained_factorization (T : CoprimeAdditiveTriple)
    (p q n : ℕ) :
    balancedPrimeDerivative T p q n = repetitionQuotient n *
      (primeDerivative q T.c*(n.factorization p*(UniqueFactorizationMonoid.radical n/p))+
       primeDerivative p T.a*(n.factorization q*(UniqueFactorizationMonoid.radical n/q))) := by
  unfold balancedPrimeDerivative
  rw [primeDerivative_retained_factorization n p,primeDerivative_retained_factorization n q]
  ring

theorem repetition_dvd_balancedDerivative (T : CoprimeAdditiveTriple) (p q n : ℕ) :
    repetitionQuotient n ∣ balancedPrimeDerivative T p q n := by
  rw [balancedDerivative_retained_factorization]
  exact dvd_mul_right _ _

end GRWTSK.NumberTheory.ABC.WeightedPrimeDerivativeRepetition
