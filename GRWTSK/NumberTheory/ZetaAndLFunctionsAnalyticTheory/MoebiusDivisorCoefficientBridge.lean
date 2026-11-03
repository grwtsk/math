/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDivisorRadicalReversible
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators zeta

namespace GRWTSK.NumberTheory.Moebius.DivisorCoefficientBridge

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.DivisorCausalGramCollapse
open GRWTSK.NumberTheory.Moebius.DivisorPNTTransfer
open GRWTSK.NumberTheory.Moebius.DivisorRadicalReversible

def invRootAt (p : ℕ) : ℝ := (Real.sqrt (p : ℝ))⁻¹

/-- Exact positive-index radical weight as a product over the
actual distinct prime-factor inventory, with the zero case retained. -/
theorem radicalArithmetic_eq_prodPrimeFactors :
    radicalArithmetic = ArithmeticFunction.prodPrimeFactors invRootAt := by
  ext n
  by_cases hn : n = 0
  · subst n
    simp [radicalArithmetic, radicalWeight, ArithmeticFunction.prodPrimeFactors]
  · rw [ArithmeticFunction.prodPrimeFactors_apply hn]
    have hp : (Real.sqrt (∏ p ∈ n.primeFactors, (p : ℝ)))⁻¹ =
        ∏ p ∈ n.primeFactors, invRootAt p := by
      rw [Real.sqrt_prod n.primeFactors (fun p _ => Nat.cast_nonneg p)]
      simp [invRootAt]
    calc
      radicalArithmetic n =
          (Real.sqrt (∏ p ∈ n.primeFactors, (p : ℝ)))⁻¹ := by
        simp [radicalArithmetic, radicalWeight, finiteRadical, hn]
      _ = ∏ p ∈ n.primeFactors, invRootAt p := hp

/-- Multiplicativity of the actual radical weight. -/
theorem radicalArithmetic_multiplicative :
    radicalArithmetic.IsMultiplicative := by
  rw [radicalArithmetic_eq_prodPrimeFactors]
  exact ArithmeticFunction.IsMultiplicative.prodPrimeFactors invRootAt

/-- For a genuine prime power the original radical retains one prime. -/
theorem radicalArithmetic_prime_pow (p k : ℕ) (hp : Nat.Prime p)
    (hk : 0 < k) :
    radicalArithmetic (p ^ k) = invRootAt p := by
  rw [radicalArithmetic_eq_prodPrimeFactors,
    ArithmeticFunction.prodPrimeFactors_apply
      (pow_ne_zero _ hp.ne_zero),
    Nat.primeFactors_prime_pow hk.ne' hp]
  simp [invRootAt]

/-- Reciprocal square root at the original integer index. -/
private def reciprocalRootArithmetic : ArithmeticFunction ℝ :=
  ⟨fun n => if n = 0 then 0 else (Real.sqrt (n : ℝ))⁻¹,
    by simp⟩

private theorem reciprocalRootArithmetic_multiplicative :
    reciprocalRootArithmetic.IsMultiplicative := by
  apply ArithmeticFunction.IsMultiplicative.iff_ne_zero.mpr
  refine ⟨by simp [reciprocalRootArithmetic], ?_⟩
  intro m n hm hn _
  have hmn : m * n ≠ 0 := mul_ne_zero hm hn
  simp [reciprocalRootArithmetic, hm, hn, hmn, Nat.cast_mul,
    Real.sqrt_mul (Nat.cast_nonneg m)]

/-- Actual divisor sum as zeta convolved with a pointwise
product of genuine mu and reciprocal-square-root weights. -/
private def divisorRootArithmetic : ArithmeticFunction ℝ :=
  (ζ : ArithmeticFunction ℝ) *
    (realMoebiusArithmetic.pmul reciprocalRootArithmetic)

private theorem divisorRootArithmetic_apply (n : ℕ) :
    divisorRootArithmetic n = divisorReciprocalRoot n := by
  unfold divisorRootArithmetic
  rw [ArithmeticFunction.coe_zeta_mul_apply]
  unfold divisorReciprocalRoot
  apply Finset.sum_congr rfl
  intro d hd
  have hd0 : d ≠ 0 := (Nat.pos_of_mem_divisors hd).ne'
  simp [ArithmeticFunction.pmul_apply, realMoebiusArithmetic,
    reciprocalRootArithmetic, hd0, moebiusReal]

private theorem divisorRootArithmetic_multiplicative :
    divisorRootArithmetic.IsMultiplicative := by
  unfold divisorRootArithmetic
  exact (ArithmeticFunction.isMultiplicative_zeta.natCast).mul
    ((ArithmeticFunction.isMultiplicative_moebius.intCast).pmul
       reciprocalRootArithmetic_multiplicative)

/-- Genuine mu times its actual divisor-root sum, as an
ArithmeticFunction, including the zero carrier. -/
private def originalWeightedArithmetic : ArithmeticFunction ℝ :=
  realMoebiusArithmetic.pmul divisorRootArithmetic

private theorem originalWeightedArithmetic_apply (n : ℕ) :
    originalWeightedArithmetic n =
      moebiusReal n * divisorReciprocalRoot n := by
  simp [originalWeightedArithmetic, ArithmeticFunction.pmul_apply,
    divisorRootArithmetic_apply, realMoebiusArithmetic, moebiusReal]

private theorem originalWeightedArithmetic_multiplicative :
    originalWeightedArithmetic.IsMultiplicative := by
  unfold originalWeightedArithmetic
  exact (ArithmeticFunction.isMultiplicative_moebius.intCast).pmul
    divisorRootArithmetic_multiplicative

/-- At a prime the complete ORIGINAL divisor-root sum has two
terms; higher prime powers are killed in the final coefficient. -/
private theorem divisorReciprocalRoot_prime (p : ℕ) (hp : Nat.Prime p) :
    divisorReciprocalRoot p = 1 - invRootAt p := by
  unfold divisorReciprocalRoot
  rw [hp.divisors]
  simp [invRootAt, moebiusReal,
    ArithmeticFunction.moebius_apply_prime hp, hp.ne_one]

private theorem sum_range_two_of_tail_zero (f : ℕ → ℝ)
    (hf : ∀ j : ℕ, 2 ≤ j → f j = 0) (k : ℕ) :
    (∑ j ∈ Finset.range (k + 2), f j) = f 0 + f 1 := by
  induction k with
  | zero => simp [Finset.sum_range_succ]
  | succ k ih =>
      have heq : Nat.succ k + 2 = (k + 2) + 1 := by omega
      rw [heq, Finset.sum_range_succ, ih, hf (k + 2) (by omega)]
      ring

/-- All repeated prime powers cancel in the actual
radical/Mobius Dirichlet convolution. -/
private theorem radicalConvolution_prime_succ (p k : ℕ)
    (hp : Nat.Prime p) :
    radicalConvolution (p ^ (k + 1)) =
      invRootAt p - (if k = 0 then (1 : ℝ) else invRootAt p) := by
  let f : ℕ → ℝ := fun j =>
    realMoebiusArithmetic (p ^ j) *
      radicalArithmetic (p ^ (k + 1) / p ^ j)
  have hf (j : ℕ) (hj : 2 ≤ j) : f j = 0 := by
    have hj0 : j ≠ 0 := by omega
    have hj1 : j ≠ 1 := by omega
    simp [f, realMoebiusArithmetic,
      ArithmeticFunction.moebius_apply_prime_pow hp hj0, hj1]
  have hsum : radicalConvolution (p ^ (k + 1)) =
      ∑ j ∈ Finset.range (k + 2), f j := by
    unfold radicalConvolution
    rw [mul_comm radicalArithmetic realMoebiusArithmetic,
      ArithmeticFunction.mul_apply,
      Nat.sum_divisorsAntidiagonal,
      Nat.sum_divisors_prime_pow hp]
    rfl
  have hfirst : f 0 = radicalArithmetic (p ^ (k + 1)) := by
    simp [f, realMoebiusArithmetic, ArithmeticFunction.moebius_apply_one]
  have hdiv : p ^ (k + 1) / p = p ^ k := by
    simpa [pow_succ, mul_comm] using
      (Nat.mul_div_cancel (p ^ k) hp.pos)
  have hsecond : f 1 = -radicalArithmetic (p ^ k) := by
    simp [f, realMoebiusArithmetic,
      ArithmeticFunction.moebius_apply_prime hp, hdiv]
  rw [hsum, sum_range_two_of_tail_zero f hf k, hfirst, hsecond]
  rw [radicalArithmetic_prime_pow p (k + 1) hp (by omega)]
  by_cases hk : k = 0
  · subst k
    simp [radicalArithmetic_eq_prodPrimeFactors]
  · rw [radicalArithmetic_prime_pow p k hp (Nat.pos_of_ne_zero hk)]
    simp [hk]

private theorem radicalConvolution_multiplicative :
    radicalConvolution.IsMultiplicative := by
  unfold radicalConvolution
  exact radicalArithmetic_multiplicative.mul
    (ArithmeticFunction.isMultiplicative_moebius.intCast)

/-- Full source-level proof candidate of the PREEXISTING original
coefficient proposition, without any external arithmetic premise. -/
theorem originalWeightedRadicalConvolution_proof :
    OriginalWeightedRadicalConvolution := by
  have heq : originalWeightedArithmetic = radicalConvolution := by
    apply (ArithmeticFunction.IsMultiplicative.eq_iff_eq_on_prime_powers
      originalWeightedArithmetic originalWeightedArithmetic_multiplicative
      radicalConvolution radicalConvolution_multiplicative).2
    intro p k hp
    by_cases hk : k = 0
    · subst k
      calc
        originalWeightedArithmetic (p ^ 0) = 1 := by
          simpa using originalWeightedArithmetic_multiplicative.map_one
        _ = radicalConvolution (p ^ 0) := by
          simpa using radicalConvolution_multiplicative.map_one.symm
    · obtain ⟨t, rfl⟩ := Nat.exists_eq_succ_of_ne_zero hk
      rw [originalWeightedArithmetic_apply,
        radicalConvolution_prime_succ p t hp]
      by_cases ht : t = 0
      · subst t
        simp [moebiusReal, ArithmeticFunction.moebius_apply_prime hp,
          divisorReciprocalRoot_prime p hp] <;> ring
      · have hk2 : t + 1 ≠ 1 := by omega
        simp [moebiusReal,
          ArithmeticFunction.moebius_apply_prime_pow hp (by omega),
          hk2, ht]
  intro n hn
  have h := congrArg (fun f : ArithmeticFunction ℝ => f n) heq
  rw [originalWeightedArithmetic_apply] at h
  exact h.symm

end GRWTSK.NumberTheory.Moebius.DivisorCoefficientBridge
