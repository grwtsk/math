/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDivisorCausalGramCollapse
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusStrongMertensAbel
import Mathlib.NumberTheory.ArithmeticFunction.Moebius
import Mathlib.NumberTheory.ArithmeticFunction.Misc
import Mathlib.NumberTheory.ArithmeticFunction.Zeta
import Mathlib.NumberTheory.Divisors
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# PNT-level source transfer for the original proper-divisor Möbius Gram

The ACTUAL source coefficient is b(n)=mu(n)*C(n), where
  C(n)=sum_(d|n) mu(d)/sqrt(d).
A separate ordinary-mathematical multiplicative calculation gives
  b = mu * h,  h(n)=1/sqrt(prod_(p|n) p),  h(p^k)=1/sqrt p (k>=1).

This file builds the EXACT finite Dirichlet-convolution prefix identity
using the PINNED Mathlib sum_Ioc_mul_eq_sum_sum API and transfers genuine
Mertens prefix bounds to the convolution without inventing cancellation.
The bridge b = mu*h and summability sum h(n)/n^theta for theta>1/2
are explicitly UNPROVED Lean proposition targets, not axioms.

In ordinary mathematics, classical PNT supplies M(x)=o(x), and the
finite identity plus summable h/n gives sum_(n<=x)b(n)=o(x).
The original response-area Abel kernel then gives
  properDivisorPacket(T)=o(exp(T/2)).
All proof details and quantitative exponent transfer are in the
separate mathematical disposition. This is NOT the every-rate RH
signed estimate: incomparable ordered pairs remain uncontrolled.
-/

namespace GRWTSK.NumberTheory.Moebius.DivisorPNTTransfer

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.DivisorCausalGramCollapse
open GRWTSK.NumberTheory.Moebius.StrongMertensAbel

/-- The actual squarefree support (radical) as a product of DISTINCT
original arithmetic prime divisors. Zero is handled separately. -/
def finiteRadical (n : ℕ) : ℕ :=
  ∏ p ∈ n.primeFactors, p

/-- Nonnegative radical kernel with h(p^k)=1/sqrt(p) for k>=1.
No Möbius evaluation or observer output occurs in this kernel. -/
def radicalWeight (n : ℕ) : ℝ :=
  if n = 0 then 0
  else (Real.sqrt (finiteRadical n : ℝ))⁻¹

theorem radicalWeight_zero : radicalWeight 0 = 0 := by
  simp [radicalWeight]

theorem radicalWeight_nonneg (n : ℕ) : 0 ≤ radicalWeight n := by
  unfold radicalWeight
  split_ifs <;> positivity

/-- Arithmetic-function carrier for the genuinely positive-index
radical kernel, using the source's unaltered natural integer. -/
def radicalArithmetic : ArithmeticFunction ℝ :=
  ⟨radicalWeight, by simp [radicalWeight]⟩

/-- The pinned Mathlib Möbius arithmetic function cast to real values. -/
def realMoebiusArithmetic : ArithmeticFunction ℝ :=
  (ArithmeticFunction.moebius : ArithmeticFunction ℝ)

def radicalConvolution : ArithmeticFunction ℝ :=
  radicalArithmetic * realMoebiusArithmetic

/-- EXACT finite Dirichlet convolution/Fubini identity at the same
original cutoff N. Nothing is truncated or normalized away. -/
theorem radicalConvolution_prefix_eq_Mertens (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N, radicalConvolution n) =
      ∑ d ∈ Finset.Icc 1 N,
        radicalWeight d *
          mertensPrefix (((N / d : ℕ) : ℝ)) := by
  have h := ArithmeticFunction.sum_Ioc_mul_eq_sum_sum
    radicalArithmetic realMoebiusArithmetic N
  simp only [ioc_zero_eq_icc_one] at h
  calc
    (∑ n ∈ Finset.Icc 1 N, radicalConvolution n) =
      ∑ d ∈ Finset.Icc 1 N,
        radicalWeight d *
          (∑ k ∈ Finset.Icc 1 (N / d), moebiusReal k) := by
      simpa only [radicalConvolution, radicalArithmetic,
        realMoebiusArithmetic, ArithmeticFunction.intCoe_apply,
        moebiusReal] using h
    _ = _ := by
      apply Finset.sum_congr rfl
      intro d hd
      congr 1
      simp [mertensPrefix, moebiusReal]

/-- Unconditional source-exact finite absolute envelope for the
radical convolution, before any analytic or PNT estimates. -/
theorem radicalConvolution_prefix_abs_le (N : ℕ) :
    |∑ n ∈ Finset.Icc 1 N, radicalConvolution n| ≤
      ∑ d ∈ Finset.Icc 1 N,
        radicalWeight d *
          |mertensPrefix (((N / d : ℕ) : ℝ))| := by
  rw [radicalConvolution_prefix_eq_Mertens]
  calc
    |∑ d ∈ Finset.Icc 1 N,
      radicalWeight d *
        mertensPrefix (((N / d : ℕ) : ℝ))| ≤
        ∑ d ∈ Finset.Icc 1 N,
          |radicalWeight d *
            mertensPrefix (((N / d : ℕ) : ℝ))| :=
      Finset.abs_sum_le_sum_abs _ _
    _ = _ := by
      apply Finset.sum_congr rfl
      intro d hd
      rw [abs_mul, abs_of_nonneg (radicalWeight_nonneg d)]

/-- A genuine original-Mertens tail hypothesis pays only the
corresponding large ORIGINAL quotient. The small quotient keeps
the elementary bound |M(m)|<=m, not a fictitious PNT estimate. -/
theorem radicalConvolution_prefix_twoZone
    (K N : ℕ) (δ : ℝ)
    (hM : ActualMertensTailAt K δ) :
    |∑ n ∈ Finset.Icc 1 N, radicalConvolution n| ≤
      ∑ d ∈ Finset.Icc 1 N,
        radicalWeight d *
          (if K ≤ N / d then δ * ((N / d : ℕ) : ℝ)
            else ((N / d : ℕ) : ℝ)) := by
  refine (radicalConvolution_prefix_abs_le N).trans ?_
  apply Finset.sum_le_sum
  intro d hd
  have hnon : 0 ≤ radicalWeight d := radicalWeight_nonneg d
  by_cases hk : K ≤ N / d
  · simp only [if_pos hk]
    exact mul_le_mul_of_nonneg_left (hM (N / d) hk) hnon
  · simp only [if_neg hk]
    have htriv :
        |mertensPrefix (((N / d : ℕ) : ℝ))| ≤
          ((N / d : ℕ) : ℝ) :=
      mertensPrefix_abs_le (Nat.cast_nonneg (N / d))
    exact mul_le_mul_of_nonneg_left htriv hnon

/-- The exact prime-power Euler calculation identifying the
ACTUAL weighted original coefficient with the radical convolution.
Ordinary proof: both sides multiplicative; at p, value -1+1/sqrt p;
at p^k,k>=2, both vanish since h(p^k)=h(p^(k-1)).
This remains a NAMED UNPROVED Lean proposition, not a new axiom. -/
def OriginalWeightedRadicalConvolution : Prop :=
  ∀ n : ℕ, 0 < n →
    radicalConvolution n =
      moebiusReal n * divisorReciprocalRoot n

/-- Ordinary Euler-product proof gives H_theta<infinity for every
theta>1/2, since each local factor is
1+p^(-theta-1/2)/(1-p^(-theta)).
This is an UNPROVED Lean analytic target. -/
def RadicalDirichletKernelSummable : Prop :=
  ∀ θ : ℝ, (1 / 2 : ℝ) < θ →
    Summable (fun k : ℕ =>
      radicalWeight (k + 1) /
        (((k + 1 : ℕ) : ℝ) ^ θ))

/-- The precise ORIGINAL response-area Stieltjes kernel, with the
real-time cutoff B and original integer n untouched. Unproved Lean
calculus target; the paper proof differentiates the explicit R_n. -/
def OriginalResponseAreaStieltjes : Prop :=
  ∀ (B : ℝ) (n : ℕ), 0 < n → (n : ℝ) ≤ B →
    responseArea (Real.log B) n =
      ∫ x in (n : ℝ)..B,
        Real.log (B / x) / (x * Real.sqrt x)

/-- Named PNT-to-proper-divisor little-o return. It does NOT assert
the PNT input, and it supplies no incomparable-index estimate. -/
def ClassicalPNTProperDivisorHalfRate : Prop :=
  ClassicalPNTMertensTail →
    ∀ δ : ℝ, 0 < δ →
      ∃ R : ℝ, 0 ≤ R ∧
        ∀ T : ℝ, R ≤ T →
          |properDivisorPacket T| ≤
            δ * Real.exp (T / 2)

/-- The remaining original signed source, not an independently
bounded packet. Any RH-facing return must retain compensation. -/
def originalCombinedSignedSource (T : ℝ) : ℝ :=
  originalOrderedDivisibility T + incomparableOrderedPacket T

theorem originalCombinedSignedSource_eq_pickupCross (T : ℝ) :
    originalCombinedSignedSource T = pickupCross T := by
  unfold originalCombinedSignedSource
  exact (pickupCross_eq_divisibility_add_incomparable T).symm

end GRWTSK.NumberTheory.Moebius.DivisorPNTTransfer
