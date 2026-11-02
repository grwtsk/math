/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/

import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusHighSmoothDivisorCount
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusClassicalMertensRealQuotientBridge
import Mathlib.NumberTheory.EulerProduct.Basic
import Mathlib.NumberTheory.SmoothNumbers
import Mathlib.Topology.Algebra.InfiniteSum.Order
import Mathlib

/-!
# Original finite P-smooth Euler moments from pinned Mathlib

The original proposition FiniteSmoothEulerMoments B is now given a
proof candidate without using any Mertens/PNT/RH arithmetic premise.

Mathlib Nat.mem_factoredNumbers' identifies the same *actual*
bankSmooth B.primes d source carrier, including d = 1, all prime
powers, squareful integers and exclusion of zero. The pinned Euler
theorem summable_and_hasSum_factoredNumbers_prod_filter_prime_geometric
supplies a HasSum for the completely multiplicative real weights
    n |-> (n : Real)^(-1)
and n |-> (sqrt (n : Real))^(-1).
The prime norms are strictly below one, since every member of the
original PrimeBand is a genuine prime > 1.

Finite subset sums are compared directly to their infinite HasSum,
with positivity of every individual term and the full finite bank
Euler product (including the empty bank and all prime powers).
The resulting theorem has EXACTLY the old proposition's type;
the original high-smooth count can therefore consume it without a
new mathematical premise.

No invented real constant, Euler-factor deletion, new axiom, sorry,
unqualified RH theorem, new source coefficient, or native verification.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.FiniteSmoothEulerMomentsProof

open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.NumberTheory.Moebius.PrimeSmoothFiniteConvolution
open GRWTSK.NumberTheory.Moebius.BalancedTwoSidedPNTDense
open GRWTSK.NumberTheory.Moebius.NearSquareRootEulerPrefix
open GRWTSK.NumberTheory.Moebius.HighSmoothDensePairs
open GRWTSK.NumberTheory.Moebius.HighSmoothDivisorCount

/-- The exact source condition says ALL prime divisors lie in the
true finite selected-prime bank. Mathlib's factored-number predicate
has precisely the same quantifier, and excludes zero automatically. -/
theorem bankSmooth_iff_mem_factoredNumbers
    (P : Finset ℕ) (n : ℕ) :
    bankSmooth P n ↔ n ∈ Nat.factoredNumbers P := by
  exact (Nat.mem_factoredNumbers').symm

/-- Completely multiplicative reciprocal real weight, including zero
with its usual inverse-zero convention. -/
private def reciprocalNatHom : ℕ →* ℝ where
  toFun n := (n : ℝ)⁻¹
  map_one' := by simp
  map_mul' a b := by
    change (((a * b : ℕ) : ℝ))⁻¹ =
      (a : ℝ)⁻¹ * (b : ℝ)⁻¹
    rw [Nat.cast_mul, mul_inv_rev]
    ring

/-- Completely multiplicative inverse-square-root real weight on
the ORIGINAL nonnegative integer argument. -/
private def reciprocalSqrtNatHom : ℕ →* ℝ where
  toFun n := (Real.sqrt (n : ℝ))⁻¹
  map_one' := by simp
  map_mul' a b := by
    change (Real.sqrt (((a * b : ℕ) : ℝ)))⁻¹ =
      (Real.sqrt (a : ℝ))⁻¹ * (Real.sqrt (b : ℝ))⁻¹
    rw [Nat.cast_mul, Real.sqrt_mul (Nat.cast_nonneg a)]
    rw [mul_inv_rev]
    ring

private theorem reciprocalNatHom_nonneg (n : ℕ) :
    0 ≤ reciprocalNatHom n := by
  change 0 ≤ (n : ℝ)⁻¹
  positivity

private theorem reciprocalSqrtNatHom_nonneg (n : ℕ) :
    0 ≤ reciprocalSqrtNatHom n := by
  change 0 ≤ (Real.sqrt (n : ℝ))⁻¹
  positivity

/-- The finite Euler theorem's genuine strict geometric hypothesis,
with its original prime labels. -/
private theorem reciprocalNatHom_prime_norm_lt_one
    {p : ℕ} (hp : p.Prime) :
    ‖reciprocalNatHom p‖ < 1 := by
  have hpOne : (1 : ℝ) < (p : ℝ) := by exact_mod_cast hp.one_lt
  have hpPos : (0 : ℝ) < (p : ℝ) := by linarith
  change ‖(p : ℝ)⁻¹‖ < 1
  rw [Real.norm_eq_abs, abs_of_nonneg (inv_nonneg.mpr hpPos.le)]
  exact (inv_lt_one₀ hpPos).2 hpOne

private theorem reciprocalSqrtNatHom_prime_norm_lt_one
    {p : ℕ} (hp : p.Prime) :
    ‖reciprocalSqrtNatHom p‖ < 1 := by
  have hpOne : (1 : ℝ) < (p : ℝ) := by exact_mod_cast hp.one_lt
  have hRootOne : (1 : ℝ) < Real.sqrt (p : ℝ) := by
    have h := Real.sqrt_lt_sqrt (by norm_num : (0 : ℝ) ≤ 1) hpOne
    simpa only [Real.sqrt_one] using h
  have hRootPos : 0 < Real.sqrt (p : ℝ) := by linarith
  change ‖(Real.sqrt (p : ℝ))⁻¹‖ < 1
  rw [Real.norm_eq_abs, abs_of_nonneg (inv_nonneg.mpr hRootPos.le)]
  exact (inv_lt_one₀ hRootPos).2 hRootOne

/-- The finite true-prime bank is fixed pointwise under the extra
prime predicate in Mathlib's general Euler theorem. -/
private theorem primeBand_filter_prime (B : PrimeBand) :
    B.primes.filter Nat.Prime = B.primes := by
  ext p
  constructor
  · intro hp
    exact (Finset.mem_filter.mp hp).1
  · intro hp
    exact Finset.mem_filter.mpr ⟨hp, B.prime_mem p hp⟩

/-- A general source-faithful finite positive-mass Euler comparison.
The FULL actual prime bank is retained; no finite truncation of a
product or fitted arithmetic norm appears. -/
private theorem finite_bankSmooth_weight_le_Euler
    (B : PrimeBand) (f : ℕ →* ℝ)
    (hf_nonneg : ∀ n : ℕ, 0 ≤ f n)
    (hf_prime : ∀ {p : ℕ}, p.Prime → ‖f p‖ < 1)
    (N : ℕ) :
    (∑ d ∈ Finset.Icc 1 N,
      if bankSmooth B.primes d then f d else 0) ≤
        ∏ p ∈ B.primes, (1 - f p)⁻¹ := by
  classical
  let S : Finset (Nat.factoredNumbers B.primes) :=
    (Finset.Icc 1 N).subtype
      (fun d => d ∈ Nat.factoredNumbers B.primes)
  have hEuler :=
    (EulerProduct.summable_and_hasSum_factoredNumbers_prod_filter_prime_geometric
      (f := f) hf_prime B.primes).2
  have hEuler' :
      HasSum (fun d : Nat.factoredNumbers B.primes => f (d : ℕ))
        (∏ p ∈ B.primes, (1 - f p)⁻¹) := by
    have hFilter := primeBand_filter_prime B
    change HasSum (fun d : Nat.factoredNumbers B.primes => f (d : ℕ))
      (∏ p ∈ B.primes.filter Nat.Prime, (1 - f p)⁻¹) at hEuler
    simpa only [hFilter] using hEuler
  have hFinite :
      (∑ d ∈ S, f (d : ℕ)) ≤
        ∏ p ∈ B.primes, (1 - f p)⁻¹ :=
    sum_le_hasSum S (fun d hd => hf_nonneg (d : ℕ)) hEuler'
  have hReindex :
      (∑ d ∈ Finset.Icc 1 N,
         if bankSmooth B.primes d then f d else 0) =
        ∑ d ∈ S, f (d : ℕ) := by
    calc
      (∑ d ∈ Finset.Icc 1 N,
         if bankSmooth B.primes d then f d else 0) =
        ∑ d ∈ Finset.Icc 1 N,
          if d ∈ Nat.factoredNumbers B.primes then f d else 0 := by
          apply Finset.sum_congr rfl
          intro d hd
          rw [bankSmooth_iff_mem_factoredNumbers]
      _ = ∑ d ∈ (Finset.Icc 1 N).filter
          (fun n => n ∈ Nat.factoredNumbers B.primes), f d := by
          rw [Finset.sum_filter]
      _ = ∑ d ∈ S, f (d : ℕ) := by
          dsimp only [S]
          rw [Finset.sum_subtype_eq_sum_filter]
  exact hReindex.trans_le hFinite

/-- The ACTUAL finite reciprocal Euler allowance, with every
P-smooth positive integer and arbitrary endpoint N. -/
theorem finite_bankSmooth_reciprocal_le
    (B : PrimeBand) (N : ℕ) :
    (∑ d ∈ Finset.Icc 1 N,
      if bankSmooth B.primes d then (d : ℝ)⁻¹ else 0) ≤
        bankReciprocalWeight B.primes := by
  have h := finite_bankSmooth_weight_le_Euler
    B reciprocalNatHom reciprocalNatHom_nonneg
      (fun {_} hp => reciprocalNatHom_prime_norm_lt_one hp) N
  simpa [reciprocalNatHom, bankReciprocalWeight] using h

/-- The ACTUAL finite inverse-square-root Euler allowance; repeated
prime powers are included rather than silently squarefree-filtered. -/
theorem finite_bankSmooth_invSqrt_le
    (B : PrimeBand) (N : ℕ) :
    (∑ d ∈ Finset.Icc 1 N,
      if bankSmooth B.primes d then
        (Real.sqrt (d : ℝ))⁻¹ else 0) ≤
        bankSquareRootWeight B.primes := by
  have h := finite_bankSmooth_weight_le_Euler
    B reciprocalSqrtNatHom reciprocalSqrtNatHom_nonneg
      (fun {_} hp => reciprocalSqrtNatHom_prime_norm_lt_one hp) N
  simpa [reciprocalSqrtNatHom, bankSquareRootWeight] using h

/-- Unconditional elementary FiniteSmoothEulerMoments for EVERY finite
bank of genuine primes, with exactly the original proposition's type. -/
theorem finiteSmoothEulerMoments (B : PrimeBand) :
    FiniteSmoothEulerMoments B := by
  intro N hN
  exact ⟨finite_bankSmooth_reciprocal_le B N,
    finite_bankSmooth_invSqrt_le B N⟩

/-- Eliminate the formerly explicit Euler-moment premise from the
original source high-smooth cardinality target, without altering its
quantifiers, cutoff, bank, or index inventory. This theorem consumes
only the independently source-proved finite-multiple counting bridge. -/
theorem highSmoothCountFormalizationTarget :
    HighSmoothCountFormalizationTarget := by
  exact highSmoothCountTarget_of_finiteMoments finiteSmoothEulerMoments

/-- For ANY terminal physical time and eligible shell, one may now
apply the count without supplying a separate Euler moment parameter. -/
theorem highSmooth_card_unconditional
    (B : PrimeBand) (X : ℕ) (T : ℝ) (hX : 1 ≤ X) :
    ((highSmoothBlock B X T).card : ℝ) ≤
      Real.sqrt (2 * (X : ℝ)) *
        Real.exp (Real.sqrt (Real.log (2 * (X : ℝ)))) *
          bankSquareRootWeight B.primes := by
  exact highSmooth_card_le_of_finiteMoments B X T hX
    (finiteSmoothEulerMoments B)

/-- Downstream: the existing REAL quotient Mertens route no longer
requires an independently supplied finite Euler-moment hypothesis.
The genuine near-square-root prefix theorem hNear and the quantitative
classical Mertens theorem hClassical remain EXPLICIT premises. -/
theorem nearSquareRoot_from_classical_without_Euler_premise
    (hClassical :
      GRWTSK.NumberTheory.Moebius.CausalMertensSquareBridge.ClassicalMertensLogPowerInput)
    (hNear : NearSquareRootEulerFormalizationTarget)
    (B : PrimeBand) (A : ℕ) (hA : 1 ≤ A) :
    ∃ D : ℝ, 0 ≤ D ∧
      ∀ N : ℕ, 1 ≤ N →
        |∑ n ∈ Finset.Icc 1 N, taggedMoebius B.primes true n| ≤
          nearSquareRootRoughEnvelope B A D N ∧
        |∑ n ∈ Finset.Icc 1 N, taggedMoebius B.primes false n| ≤
          nearSquareRootMatchedEnvelope B A D N := by
  exact GRWTSK.NumberTheory.Moebius.ClassicalMertensRealQuotientBridge.
    nearSquareRoot_from_single_classical_source
      hClassical hNear B A hA (finiteSmoothEulerMoments B)

end GRWTSK.NumberTheory.Moebius.FiniteSmoothEulerMomentsProof
