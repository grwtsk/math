/- Copyright (c) 2026 grwtsk contributors. MIT.
Local attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusQuantitativeMertensEulerPrefix
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# A near-square-root finite Euler bridge for original Mobius prefixes

The paper proof uses the existing exact ORIGINAL rough and matched
prime-smooth convolution, the independently classical log-power
Mertens input with exponent 2*A, and ordinary finite positive Euler
moments at 1 and 1/2. The finite moments have a pinned Mathlib Euler
product route but are NOT proved or imported here.

For L=log N, Q=N*exp(-2*sqrt L), splitting d<=Q/d>Q yields

 |M_R(N)| <= C_(2A)*W_P*N/(1+L)^A + V_P*sqrt N*exp(sqrt L).

The matched estimate adds the whole original Mertens prefix.
Both Euler factors and all original signs remain visible.

This module introduces explicit definitions, a proved algebraic
envelope identity, and a PROPOSITIONAL completion target. The target
is NOT an unconditional Lean theorem and is NOT an axiom.
-/

namespace GRWTSK.NumberTheory.Moebius.NearSquareRootEulerPrefix

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.NumberTheory.Moebius.BalancedTwoSidedPNTDense
open GRWTSK.NumberTheory.Moebius.PrimeSmoothFiniteConvolution
open GRWTSK.NumberTheory.Moebius.QuantitativeMertensEulerPrefix

/-- Positive real divisor cutoff; no rounding or changed source
integer inventory occurs in the finite convolution. -/
def nearSquareRootCut (N : ℕ) : ℝ :=
  (N : ℝ) * Real.exp (-2 * Real.sqrt (Real.log (N : ℝ)))

theorem nearSquareRootCut_nonneg (N : ℕ) :
    0 ≤ nearSquareRootCut N := by
  unfold nearSquareRootCut
  exact mul_nonneg (Nat.cast_nonneg _) (le_of_lt (Real.exp_pos _))

theorem nearSquareRootCut_pos (N : ℕ) (hN : 0 < N) :
    0 < nearSquareRootCut N := by
  unfold nearSquareRootCut
  have h : (0 : ℝ) < N := by exact_mod_cast hN
  exact mul_pos h (Real.exp_pos _)

/-- Entirely elementary geometric-series moments over the genuine
prime-smooth positive integers. This is an EXPOSED Lean obligation;
Mathlib EulerProduct.summable_and_hasSum_factoredNumbers_prod_filter_prime_geometric
is an appropriate pinned supplier, after the bankSmooth/factoredNumbers
and completely multiplicative weight identifications. -/
def FiniteSmoothEulerMoments (B : PrimeBand) : Prop :=
  ∀ N : ℕ, 1 ≤ N →
    (∑ d ∈ Finset.Icc 1 N,
       if bankSmooth B.primes d then (d : ℝ)⁻¹ else 0) ≤
        bankReciprocalWeight B.primes ∧
    (∑ d ∈ Finset.Icc 1 N,
       if bankSmooth B.primes d then
         (Real.sqrt (d : ℝ))⁻¹ else 0) ≤
        bankSquareRootWeight B.primes

/-- Refined rough source envelope: log exponent A is recovered
from an unconditional original Mertens input of exponent 2*A. -/
def nearSquareRootRoughEnvelope
    (B : PrimeBand) (A : ℕ) (C : ℝ) (N : ℕ) : ℝ :=
  C * bankReciprocalWeight B.primes * (N : ℝ) /
      (1 + Real.log (N : ℝ)) ^ A +
    bankSquareRootWeight B.primes * Real.sqrt (N : ℝ) *
      Real.exp (Real.sqrt (Real.log (N : ℝ)))

/-- The original matched tag is ORIGINAL mu minus rough mu. -/
def nearSquareRootMatchedEnvelope
    (B : PrimeBand) (A : ℕ) (C : ℝ) (N : ℕ) : ℝ :=
  C * (1 + bankReciprocalWeight B.primes) * (N : ℝ) /
      (1 + Real.log (N : ℝ)) ^ A +
    bankSquareRootWeight B.primes * Real.sqrt (N : ℝ) *
      Real.exp (Real.sqrt (Real.log (N : ℝ)))

theorem matchedEnvelope_eq_wholeAllowance_add_roughEnvelope
    (B : PrimeBand) (A : ℕ) (C : ℝ) (N : ℕ) :
    nearSquareRootMatchedEnvelope B A C N =
      C * (N : ℝ) / (1 + Real.log (N : ℝ)) ^ A +
        nearSquareRootRoughEnvelope B A C N := by
  unfold nearSquareRootMatchedEnvelope nearSquareRootRoughEnvelope
  ring

/-- Exact still-unproved Lean delivery target. Unlike the earlier
3/4 Euler remainder, the new remainder is sqrt(N)*exp(sqrt(log N)).
The only non-elementary input is the independently classical original
Mertens inequality with exponent 2*A; the finite Euler moments are
standard elementary mathematics but are not Lean-ported yet.
No RH-scale cancellation is assumed. -/
def NearSquareRootEulerFormalizationTarget : Prop :=
  ∀ (B : PrimeBand) (A : ℕ) (C : ℝ),
    QuotientMertensLogPower (2 * A) C →
    FiniteSmoothEulerMoments B →
    ∀ N : ℕ, 1 ≤ N →
      |∑ n ∈ Finset.Icc 1 N, taggedMoebius B.primes true n| ≤
        nearSquareRootRoughEnvelope B A C N ∧
      |∑ n ∈ Finset.Icc 1 N, taggedMoebius B.primes false n| ≤
        nearSquareRootMatchedEnvelope B A C N

end GRWTSK.NumberTheory.Moebius.NearSquareRootEulerPrefix
