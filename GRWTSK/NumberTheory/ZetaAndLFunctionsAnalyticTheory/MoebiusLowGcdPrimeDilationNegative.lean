/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction and original definitions: grwtsk contributors.
Lean source-proof-candidate integration assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusSparseHighGcdDenseCoreReturn
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDenseReducedPrimeDilationCancellation
import Mathlib

/-!
# A nonpositive prime-dilation packet inside the ORIGINAL low-GCD dense core

The genuine ordered arithmetic source is the SAME original Möbius
mu(m)*mu(n)*pickupResponseGram(T,m,n), with all birth gates, both
orientations, the literal endpointIndex T, and the original fixed
gcd cutoff. From the pre-existing four-way disjoint partition, only
the remaining lowGcdDensePair Q T m n is split further by the actual
IsPrimeDilation predicate:
  m=q, n=p*q or n=q, m=p*q, with p prime and p not dividing q.

The already published independent ORIGINAL arithmetic theorem
primeDilation_source_nonpos (T>=0) says
 mu(q)*mu(p*q)*Gram(T,q,p*q) = -mu(q)^2*Gram(T,q,p*q) <= 0.
It applies without a random-sign model, even when mu(q)=0.

The selected prime packet is therefore nonpositive. Removing it
gives a zero-cost ONE-SIDED UPPER transfer for the arithmetic core
and the original endpoint, *not* an equivalence: the negative packet
might be large. The older high-GCD and sparse packets remain exactly
the same. No bound on the remaining signed complement is claimed,
and no independent analytic or RH premise is discharged.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.LowGcdPrimeDilationNegative

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting
open GRWTSK.NumberTheory.Moebius.SparseHighGcdDenseCore
open GRWTSK.NumberTheory.Moebius.SparseHighGcdDenseCoreReturn
open GRWTSK.NumberTheory.Moebius.DenseReducedPrimeDilationCancellation
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature
open GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential

/-- Selected original ordered pair from the already-unpaid low-GCD
dense core, additionally satisfying a genuine prime dilation. -/
def lowGcdPrimeDilationPair (Q : Finset ℕ) (T : ℝ)
    (m n : ℕ) : ℝ :=
  if IsPrimeDilation m n then lowGcdDensePair Q T m n else 0

/-- The exact complement among the SAME hard original ordered pairs. -/
def otherLowGcdPair (Q : Finset ℕ) (T : ℝ)
    (m n : ℕ) : ℝ :=
  if ¬ IsPrimeDilation m n then lowGcdDensePair Q T m n else 0

def lowGcdPrimeDilationCross (Q : Finset ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    lowGcdPrimeDilationPair Q T m n

def otherLowGcdCross (Q : Finset ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    otherLowGcdPair Q T m n

/-- The prime packet and its complement exactly partition each
original signed low-GCD dense pair, including original zeros. -/
theorem lowGcdPair_eq_prime_add_other
    (Q : Finset ℕ) (T : ℝ) (m n : ℕ) :
    lowGcdDensePair Q T m n =
      lowGcdPrimeDilationPair Q T m n +
        otherLowGcdPair Q T m n := by
  by_cases hp : IsPrimeDilation m n
  · simp [lowGcdPrimeDilationPair, otherLowGcdPair, hp]
  · simp [lowGcdPrimeDilationPair, otherLowGcdPair, hp]

theorem lowGcdDenseCross_eq_prime_add_other
    (Q : Finset ℕ) (T : ℝ) :
    lowGcdDenseCross Q T =
      lowGcdPrimeDilationCross Q T +
        otherLowGcdCross Q T := by
  unfold lowGcdDenseCross lowGcdPrimeDilationCross otherLowGcdCross
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  exact lowGcdPair_eq_prime_add_other Q T m n

/-- This is a genuinely signed ORIGINAL causal Gram: a real prime
dilation has nonpositive coefficient product times true Gram.
Neither squareful zeros nor either ordered orientation is discarded. -/
theorem lowGcdPrimeDilationPair_nonpos
    (Q : Finset ℕ) (T : ℝ) (hT : 0 ≤ T) (m n : ℕ) :
    lowGcdPrimeDilationPair Q T m n ≤ 0 := by
  by_cases hp : IsPrimeDilation m n
  · by_cases hg : Nat.gcd m n ≤
      GRWTSK.NumberTheory.Moebius.FixedSublinearCompensatedEndpoint.fixedGcdCutoff T
    · by_cases hc : m ≠ n ∧ Nat.dist m n ∉ Q ∧
        ¬ (∃ q ∈ Q, n = q * m ∨ m = q * n)
      · simpa [lowGcdPrimeDilationPair, lowGcdDensePair,
          GRWTSK.NumberTheory.Moebius.DenseCoreRowControlVariate.denseCoreSignedPair,
          hp, hg, hc] using
          (primeDilation_source_nonpos T hT m n hp)
      · simp [lowGcdPrimeDilationPair, lowGcdDensePair,
          GRWTSK.NumberTheory.Moebius.DenseCoreRowControlVariate.denseCoreSignedPair,
          hp, hg, hc]
    · simp [lowGcdPrimeDilationPair, lowGcdDensePair, hp, hg]
  · simp [lowGcdPrimeDilationPair, hp]

/-- Zero unconditional UPPER allowance on the complete actually
retained prime-dilation packet; this is a sign theorem, not a
probabilistic smallness theorem. -/
theorem lowGcdPrimeDilationCross_nonpos
    (Q : Finset ℕ) (T : ℝ) (hT : 0 ≤ T) :
    lowGcdPrimeDilationCross Q T ≤ 0 := by
  unfold lowGcdPrimeDilationCross
  apply Finset.sum_nonpos
  intro m hm
  apply Finset.sum_nonpos
  intro n hn
  exact lowGcdPrimeDilationPair_nonpos Q T hT m n

/-- The original signed core is NO GREATER than its exact
prime-dilation-free complement. This is NOT a two-sided comparison. -/
theorem lowGcdDenseCross_le_other
    (Q : Finset ℕ) (T : ℝ) (hT : 0 ≤ T) :
    lowGcdDenseCross Q T ≤ otherLowGcdCross Q T := by
  rw [lowGcdDenseCross_eq_prime_add_other]
  exact add_le_of_nonpos_left (lowGcdPrimeDilationCross_nonpos Q T hT)

/-- Four existing paid packets plus the surviving prime-dilation-free
original arithmetic source, with all former source weights retained. -/
theorem pickupCross_eq_threePaid_prime_other
    (Q : Finset ℕ) (T : ℝ) :
    pickupCross T =
      threePaidSectors Q T +
        lowGcdPrimeDilationCross Q T +
          otherLowGcdCross Q T := by
  rw [pickupCross_eq_threePaid_add_lowGcdDense,
    lowGcdDenseCross_eq_prime_add_other]
  ring

/-- At T>=4, the ORIGINAL endpoint has a true one-sided upper
reduction to the stricter signed complement. The old three paid
sector bounds and quarter-unit endpoint defect are not removed. -/
theorem endpointSum_le_otherLowGcd_plus_paid
    (rate : ℝ) (hrate : 0 < rate) {T : ℝ} (hT : 4 ≤ T) :
    endpointSum T ≤
      otherLowGcdCross (putnamRateGapSet rate T) T +
        (64 / rate ^ 2) * Real.exp (rate * T) +
          32 * T * Real.exp (Real.sqrt T) + (1 / 4 : ℝ) := by
  have hnonneg : 0 ≤ T := by linarith
  have hnegative := lowGcdDenseCross_le_other
    (putnamRateGapSet rate T) T hnonneg
  have hbound := GRWTSK.NumberTheory.Moebius.SparseHighGcdDenseCore.endpointSum_sub_lowGcdDense_abs_le
    rate hrate hT
  have hup := le_abs_self
    (endpointSum T - lowGcdDenseCross (putnamRateGapSet rate T) T)
  linarith

/-- Stronger one-sided arithmetic supplier on ONE fixed good-scale
population G. This proposition remains OPEN, not an assumption of
the unmodified source theorem. -/
def OtherLowGcdEveryRateOn (G : Set ℝ) : Prop :=
  ∀ rate : ℝ, 0 < rate →
    ∃ C R : ℝ, 0 ≤ C ∧ 0 ≤ R ∧
      ∀ T : ℝ, T ∈ G → R ≤ T →
        otherLowGcdCross (putnamRateGapSet (rate / 2) T) T ≤
          C * Real.exp (rate * T)

/-- A candidate one-sided transfer ONLY. A converse is not justified
without independent control of the removed negative prime packet. -/
theorem lowGcdDenseEveryRateOn_of_other
    (G : Set ℝ) (hother : OtherLowGcdEveryRateOn G) :
    LowGcdDenseEveryRateOn G := by
  intro rate hrate
  obtain ⟨C, R, hC, hR, hbudget⟩ := hother rate hrate
  refine ⟨C, R, hC, hR, ?_⟩
  intro T hG hRT
  have hT : 0 ≤ T := hR.trans hRT
  exact (lowGcdDenseCross_le_other
    (putnamRateGapSet (rate / 2) T) T hT).trans
      (hbudget T hG hRT)

/-- CONDITIONAL RH consumer, explicitly requiring the open stronger
prime-dilation-free source upper bound and a fixed affine coverage.
This lemma does NOT establish its arithmetic hypotheses. -/
theorem riemannHypothesis_of_otherLowGcd_goodScales
    {G : Set ℝ} (hcover : AffineFrequent G)
    (hother : OtherLowGcdEveryRateOn G) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_lowGcdDense_goodScales hcover
    (lowGcdDenseEveryRateOn_of_other G hother)

end GRWTSK.NumberTheory.Moebius.LowGcdPrimeDilationNegative
