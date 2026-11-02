/- Copyright (c) 2026 grwtsk contributors. MIT.
Local attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusPrimeSmoothFiniteConvolution
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Source-exact quantitative Mertens and finite prime-bank Euler prefix costs

The classical unconditional Mertens log-power inequality is supplied
explicitly at integer quotient cutoffs; no RH-strength estimate is
postulated. The elementary finite prime-smooth Euler split is likewise
an EXPOSED separate hypothesis until its Lean geometric-series proof.
Both weights W_P and V_P remain in every source consumer.
-/

namespace GRWTSK.NumberTheory.Moebius.QuantitativeMertensEulerPrefix

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleFinitePrimeSieveOperator
open GRWTSK.NumberTheory.Moebius.PrimeSmoothFiniteConvolution
open GRWTSK.NumberTheory.Moebius.BalancedTwoSidedPNTDense

/-- Classical Mertens at REAL ratio N/d and the ORIGINAL
integer coefficient prefix with cutoff N/d. Independently
true for each integer A>=1 and some C>=0, but its external
analytic proof is NOT locally formalized as a Lean theorem. -/
def QuotientMertensLogPower (A : ℕ) (C : ℝ) : Prop :=
  ∀ (N d : ℕ), 1 ≤ d → d ≤ N →
    |∑ k ∈ Finset.Icc 1 (N / d), moebiusReal k| ≤
      C * ((N : ℝ) / (d : ℝ)) /
        (1 + Real.log ((N : ℝ) / (d : ℝ))) ^ A

/-- Minimum of the unconditional Mertens allowance and
the trivial signed-source |M(N/d)|<=N/d allowance. -/
def quotientMertensCost (A : ℕ) (C : ℝ) (N d : ℕ) : ℝ :=
  min
    (C * ((N : ℝ) / (d : ℝ)) /
      (1 + Real.log ((N : ℝ) / (d : ℝ))) ^ A)
    ((N : ℝ) / (d : ℝ))

def roughPrimeSmoothMertensCost
    (B : PrimeBand) (A : ℕ) (C : ℝ) (N : ℕ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 N,
    if bankSmooth B.primes d then quotientMertensCost A C N d else 0

/-- Unconditional original Mertens prefix bound, with squareful
zero values and n=1 retained in the count. -/
theorem originalMertensPrefix_abs_le (N : ℕ) :
    |∑ n ∈ Finset.Icc 1 N, moebiusReal n| ≤ (N : ℝ) := by
  calc
    |∑ n ∈ Finset.Icc 1 N, moebiusReal n| ≤
        ∑ n ∈ Finset.Icc 1 N, |moebiusReal n| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ n ∈ Finset.Icc 1 N, (1 : ℝ) := by
      apply Finset.sum_le_sum
      intro n hn
      rcases ArithmeticFunction.moebius_eq_or n with h | h | h <;>
        simp [moebiusReal, h]
    _ = (N : ℝ) := by simp

theorem originalMertensQuotient_abs_le (N d : ℕ) :
    |∑ k ∈ Finset.Icc 1 (N / d), moebiusReal k| ≤
      (N : ℝ) / (d : ℝ) :=
  (originalMertensPrefix_abs_le (N / d)).trans Nat.cast_div_le

theorem originalMertensQuotient_abs_le_min
    (A : ℕ) (C : ℝ)
    (hM : QuotientMertensLogPower A C)
    (N d : ℕ) (hd : 1 ≤ d) (hdN : d ≤ N) :
    |∑ k ∈ Finset.Icc 1 (N / d), moebiusReal k| ≤
      quotientMertensCost A C N d := by
  unfold quotientMertensCost
  exact le_min (hM N d hd hdN)
    (originalMertensQuotient_abs_le N d)

/-- The previous exact prime-smooth divisor convolution now
consumes the genuine quantitative Mertens hypothesis, at
every selected source integer quotient. -/
theorem rough_prefix_abs_le_finiteMertensCost
    (B : PrimeBand) (A : ℕ) (C : ℝ)
    (hM : QuotientMertensLogPower A C) (N : ℕ) :
    |∑ n ∈ Finset.Icc 1 N, taggedMoebius B.primes true n| ≤
      roughPrimeSmoothMertensCost B A C N := by
  rw [original_rough_prefix_eq_primeSmooth_Mertens]
  unfold roughPrimeSmoothMertensCost
  calc
    |∑ d ∈ Finset.Icc 1 N,
      if bankSmooth B.primes d then
        (∑ k ∈ Finset.Icc 1 (N / d), moebiusReal k)
      else 0| ≤
        ∑ d ∈ Finset.Icc 1 N,
          |if bankSmooth B.primes d then
            (∑ k ∈ Finset.Icc 1 (N / d), moebiusReal k)
          else 0| := Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ d ∈ Finset.Icc 1 N,
          if bankSmooth B.primes d then
            quotientMertensCost A C N d else 0 := by
      apply Finset.sum_le_sum
      intro d hd
      by_cases hs : bankSmooth B.primes d
      · simp only [if_pos hs]
        exact originalMertensQuotient_abs_le_min A C hM N d
          (Finset.mem_Icc.mp hd).1 (Finset.mem_Icc.mp hd).2
      · simp [hs]

theorem matched_prefix_abs_le_finiteMertensCost
    (B : PrimeBand) (A : ℕ) (C : ℝ)
    (hM : QuotientMertensLogPower A C)
    (N : ℕ) (hN : 1 ≤ N) :
    |∑ n ∈ Finset.Icc 1 N, taggedMoebius B.primes false n| ≤
      C * (N : ℝ) / (1 + Real.log (N : ℝ)) ^ A +
        roughPrimeSmoothMertensCost B A C N := by
  have hwhole :
      |∑ n ∈ Finset.Icc 1 N, moebiusReal n| ≤
        C * (N : ℝ) / (1 + Real.log (N : ℝ)) ^ A := by
    simpa using hM N 1 (by norm_num) hN
  have hrough := rough_prefix_abs_le_finiteMertensCost B A C hM N
  rw [original_matched_prefix_eq_total_sub_primeSmooth]
  have hright :
      |∑ d ∈ Finset.Icc 1 N,
        if bankSmooth B.primes d then
          (∑ k ∈ Finset.Icc 1 (N / d), moebiusReal k)
        else 0| ≤ roughPrimeSmoothMertensCost B A C N := by
    rw [← original_rough_prefix_eq_primeSmooth_Mertens]
    exact hrough
  exact (abs_sub_le _ _).trans (add_le_add hwhole hright)

/-- The two true finite prime-bank Euler products W_P and V_P.
Their growth with the bank is NEVER discarded. -/
def originalEulerMertensCost
    (B : PrimeBand) (A : ℕ) (C : ℝ) (N : ℕ) : ℝ :=
  (2 : ℝ) ^ A * C * bankReciprocalWeight B.primes *
      (N : ℝ) / (1 + Real.log (N : ℝ)) ^ A +
    bankSquareRootWeight B.primes * (N : ℝ) ^ (3 / 4 : ℝ)

/-- Explicit elementary geometric-Euler supplier, not an
arithmetic cancellation assumption: split smooth divisors
at sqrt N and pay the TWO different min arms.
The complete paper argument is in the review.
LEAN PROOF OF THIS SPECIFIC SUPPLIER: NOT_FORMALIZED. -/
def FiniteSmoothEulerSplit
    (B : PrimeBand) (A : ℕ) (C : ℝ) : Prop :=
  ∀ N : ℕ, 1 ≤ N →
    roughPrimeSmoothMertensCost B A C N ≤
      originalEulerMertensCost B A C N

theorem rough_prefix_abs_le_Euler
    (B : PrimeBand) (A : ℕ) (C : ℝ)
    (hM : QuotientMertensLogPower A C)
    (hEuler : FiniteSmoothEulerSplit B A C)
    (N : ℕ) (hN : 1 ≤ N) :
    |∑ n ∈ Finset.Icc 1 N, taggedMoebius B.primes true n| ≤
      originalEulerMertensCost B A C N :=
  (rough_prefix_abs_le_finiteMertensCost B A C hM N).trans (hEuler N hN)

theorem matched_prefix_abs_le_Euler
    (B : PrimeBand) (A : ℕ) (C : ℝ)
    (hM : QuotientMertensLogPower A C)
    (hEuler : FiniteSmoothEulerSplit B A C)
    (N : ℕ) (hN : 1 ≤ N) :
    |∑ n ∈ Finset.Icc 1 N, taggedMoebius B.primes false n| ≤
      C * (N : ℝ) / (1 + Real.log (N : ℝ)) ^ A +
        originalEulerMertensCost B A C N :=
  (matched_prefix_abs_le_finiteMertensCost B A C hM N hN).trans
    (add_le_add_left (hEuler N hN) _)

/-- A single unchanged ORIGINAL finite interval, with no
lost endpoint or extra unit. -/
theorem sum_Ioc_eq_prefix_difference (c : ℕ → ℝ)
    (X y : ℕ) (hxy : X ≤ y) :
    (∑ n ∈ Finset.Ioc X y, c n) =
      (∑ n ∈ Finset.Icc 1 y, c n) -
        (∑ n ∈ Finset.Icc 1 X, c n) := by
  have hunion :
      Finset.Icc 1 y =
        Finset.Icc 1 X ∪ Finset.Ioc X y := by
    ext n
    simp only [Finset.mem_Icc, Finset.mem_union, Finset.mem_Ioc]
    omega
  have hdisjoint :
      Disjoint (Finset.Icc 1 X) (Finset.Ioc X y) := by
    apply Finset.disjoint_left.mpr
    intro n hnA hnB
    have ha := (Finset.mem_Icc.mp hnA).2
    have hb := (Finset.mem_Ioc.mp hnB).1
    omega
  have hsplit :
      (∑ n ∈ Finset.Icc 1 y, c n) =
        (∑ n ∈ Finset.Icc 1 X, c n) +
          (∑ n ∈ Finset.Ioc X y, c n) := by
    rw [hunion, Finset.sum_union hdisjoint]
  linarith

def taggedEulerCost (B : PrimeBand)
    (A : ℕ) (C : ℝ) (rough : Bool) (N : ℕ) : ℝ :=
  if rough then originalEulerMertensCost B A C N else
    C * (N : ℝ) / (1 + Real.log (N : ℝ)) ^ A +
      originalEulerMertensCost B A C N

theorem tagged_prefix_abs_le_Euler
    (B : PrimeBand) (A : ℕ) (C : ℝ)
    (hM : QuotientMertensLogPower A C)
    (hEuler : FiniteSmoothEulerSplit B A C)
    (rough : Bool) (N : ℕ) (hN : 1 ≤ N) :
    |∑ n ∈ Finset.Icc 1 N, taggedMoebius B.primes rough n| ≤
      taggedEulerCost B A C rough N := by
  cases rough
  · simpa [taggedEulerCost] using
      matched_prefix_abs_le_Euler B A C hM hEuler N hN
  · simpa [taggedEulerCost] using
      rough_prefix_abs_le_Euler B A C hM hEuler N hN

/-- Both original Mertens prefixes on [1,X] and [1,y]
are retained, with no statistical independence assumption. -/
theorem tagged_interval_prefix_abs_le_Euler
    (B : PrimeBand) (A : ℕ) (C : ℝ)
    (hM : QuotientMertensLogPower A C)
    (hEuler : FiniteSmoothEulerSplit B A C)
    (rough : Bool) (X y : ℕ)
    (hX : 1 ≤ X) (hxy : X ≤ y) :
    |∑ n ∈ Finset.Ioc X y, taggedMoebius B.primes rough n| ≤
      taggedEulerCost B A C rough X +
        taggedEulerCost B A C rough y := by
  rw [sum_Ioc_eq_prefix_difference _ X y hxy]
  calc
    |(∑ n ∈ Finset.Icc 1 y, taggedMoebius B.primes rough n) -
        (∑ n ∈ Finset.Icc 1 X, taggedMoebius B.primes rough n)| ≤
      |∑ n ∈ Finset.Icc 1 y, taggedMoebius B.primes rough n| +
        |∑ n ∈ Finset.Icc 1 X, taggedMoebius B.primes rough n| :=
      abs_sub_le _ _
    _ ≤ taggedEulerCost B A C rough y +
        taggedEulerCost B A C rough X := by
      exact add_le_add
        (tagged_prefix_abs_le_Euler B A C hM hEuler rough y (hX.trans hxy))
        (tagged_prefix_abs_le_Euler B A C hM hEuler rough X hX)
    _ = _ := add_comm _ _

end GRWTSK.NumberTheory.Moebius.QuantitativeMertensEulerPrefix
