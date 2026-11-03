/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDivisorCoefficientBridge
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDivisorRadicalReversible
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Exact remaining inverse majorant factorization gate

The genuine inverse radical g=h^{-1} has prime-power factors
  g(p^k)=-a_p(1-a_p)^(k-1),  a_p=p^(-1/2).
The precise global prime factorization is a NAMED PROPOSITION, not
an axiom; no proof of it is claimed in this source. Once it is
proved from the actual pinned Dirichlet inverse, the coefficientwise
majorant |g(n)| <= h(n) follows by product order.
The preceding coefficient-bridge proof attempt does not use this.
-/

namespace GRWTSK.NumberTheory.Moebius.RadicalInverseMajorantGate

open GRWTSK.NumberTheory.Moebius.DivisorPNTTransfer
open GRWTSK.NumberTheory.Moebius.DivisorRadicalReversible
open GRWTSK.NumberTheory.Moebius.DivisorCoefficientBridge

/-- Finite original arithmetic coefficient bridge consumes no further
arithmetic premise if its source-level proof is accepted. -/
theorem originalWeightedPrefix_eq_radicalConvolutionPrefix (N : ℕ) :
    originalWeightedPrefix N = radicalConvolutionPrefix N := by
  exact (radicalConvolutionPrefix_eq_originalWeighted
    originalWeightedRadicalConvolution_proof N).symm

/-- Complete actual Mertens prefix from the original weighted source,
retaining every original positive-integer quotient and n=1. -/
theorem originalMertensPrefix_eq_inverse_weighted (N : ℕ) :
    GRWTSK.RiemannHypothesis.CCC.mertensPrefix (N : ℝ) =
      ∑ d ∈ Finset.Icc 1 N,
        radicalInverse d * originalWeightedPrefix (N / d) := by
  exact originalMertensPrefix_inverse_weighted
    originalWeightedRadicalConvolution_proof N

/-- The remaining GLOBAL Dirichlet-inverse prime factorization
obligation. It is a proposition target, not an axiom. -/
def RadicalInverseFactorization : Prop :=
  ∀ n : ℕ, 0 < n →
    radicalInverse n =
      ∏ p ∈ n.primeFactors,
        -(invRootAt p) * (1 - invRootAt p) ^ (n.factorization p - 1)

private theorem invRootAt_nonneg_le_one (p : ℕ) (hp : Nat.Prime p) :
    0 ≤ invRootAt p ∧ invRootAt p ≤ 1 := by
  have hp1 : (1 : ℝ) ≤ (p : ℝ) := by
    exact_mod_cast hp.one_le
  have hroot : 1 ≤ Real.sqrt (p : ℝ) :=
    (Real.one_le_sqrt).2 hp1
  have hpos : 0 < Real.sqrt (p : ℝ) := by
    exact Real.sqrt_pos.2 (by exact_mod_cast hp.pos)
  unfold invRootAt
  exact ⟨le_of_lt (inv_pos.mpr hpos),
    (inv_le_one₀ hpos).2 hroot⟩

private theorem inverse_local_factor_abs_le (p k : ℕ)
    (hp : Nat.Prime p) :
    |-(invRootAt p) * (1 - invRootAt p) ^ k| ≤ invRootAt p := by
  obtain ⟨ha0, ha1⟩ := invRootAt_nonneg_le_one p hp
  have hb0 : 0 ≤ 1 - invRootAt p := by linarith
  have hb1 : 1 - invRootAt p ≤ 1 := by linarith
  have hpow0 : 0 ≤ (1 - invRootAt p) ^ k := pow_nonneg hb0 k
  have hpow1 : (1 - invRootAt p) ^ k ≤ 1 :=
    pow_le_one₀ hb0 hb1
  rw [abs_mul, abs_neg, abs_of_nonneg ha0, abs_of_nonneg hpow0]
  nlinarith [mul_nonneg ha0 (sub_nonneg.mpr hpow1)]

/-- Global original inverse-majorant reduction; the sole
additional hypothesis is the exact still-unproved factorization,
not an arbitrary cancellation estimate. -/
theorem radicalInverseCoefficientMajorant_of_factorization
    (hf : RadicalInverseFactorization) :
    RadicalInverseCoefficientMajorant := by
  intro n
  by_cases hn : n = 0
  · subst n
    have hz : radicalInverse 0 = 0 := ArithmeticFunction.map_zero radicalInverse
    simp [hz, radicalWeight]
  · have hpn : 0 < n := Nat.pos_of_ne_zero hn
    change |radicalInverse n| ≤ radicalArithmetic n
    rw [hf n hpn]
    rw [radicalArithmetic_eq_prodPrimeFactors,
      ArithmeticFunction.prodPrimeFactors_apply hn]
    rw [Finset.abs_prod]
    apply Finset.prod_le_prod
    · intro p hp
      exact abs_nonneg _
    · intro p hp
      exact inverse_local_factor_abs_le p (n.factorization p - 1)
        (Nat.prime_of_mem_primeFactors hp)

end GRWTSK.NumberTheory.Moebius.RadicalInverseMajorantGate
