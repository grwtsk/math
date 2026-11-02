/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors.
Source proof drafting assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusDenseCoreRowControlVariate
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusCompleteHighGcdElementaryClosure
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Three independently paid ORIGINAL signed sectors and a smaller dense core

The unchanged ordered, birth-gated original Möbius response Gram
pickupCross T first splits into the already proved Putnam additive-gap,
outside-gap integer-multiple and direct dense-core packets. We now
disjointly split ONLY the surviving direct dense core by the
preexisting fixedGcdCutoff T = max 1 floor(exp(T-sqrt T)).

  original cross = gap + disjoint ratio + disjoint high-gcd + low-gcd dense.

No pair orientation is discarded, the original arithmetic μ and
pickupResponseGram are unchanged, and the old high-gcd POSITIVE
absolute cost is used as a safe upper bound for the high-gcd
SUBPACKET without wrongly bounding it by the signed high-gcd total.

The first two source packets cost 64/r^2 exp(r T). The entirely
independent original positive divisor cover and fixed gcd ratio
supply 32 T exp(sqrt T) for the third (T>=4).
The residual source is more constrained: outside the selected
additive gaps and small integer multiples, with gcd<=fixedGcdCutoff.
No new bound for that true signed residual is claimed.

This script is uncompiled SOURCE proof text. In particular its
upstream Putnam and high-gcd source proofs remain source candidates,
and no RH conclusion is inferred.
-/

namespace GRWTSK.NumberTheory.Moebius.SparseHighGcdDenseCore

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof
open GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting
open GRWTSK.NumberTheory.Moebius.DenseCoreRowControlVariate
open GRWTSK.NumberTheory.Moebius.UnmaskedLowGcdEndpoint
open GRWTSK.NumberTheory.Moebius.FixedSublinearCompensatedEndpoint
open GRWTSK.NumberTheory.Moebius.CompleteHighGcdDivisorCover
open GRWTSK.NumberTheory.Moebius.CompleteHighGcdElementaryClosure
open GRWTSK.NumberTheory.Moebius.OriginalGramRootFloorSuppliers
open GRWTSK.NumberTheory.Moebius.PickupEndpointQuadrature

/-- The surviving ordered pair is also constrained by the EXISTING
fixed gcd cutoff; no source coefficient is changed or resampled. -/
def lowGcdDensePair (Q : Finset ℕ) (T : ℝ) (m n : ℕ) : ℝ :=
  if Nat.gcd m n ≤ fixedGcdCutoff T then
    denseCoreSignedPair Q T m n else 0

/-- The third paid sector is the HIGH-gcd part only of the dense
remainder; it does not include previously paid additive/ratio edges. -/
def highGcdDensePair (Q : Finset ℕ) (T : ℝ) (m n : ℕ) : ℝ :=
  if fixedGcdCutoff T < Nat.gcd m n then
    denseCoreSignedPair Q T m n else 0

def lowGcdDenseCross (Q : Finset ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    lowGcdDensePair Q T m n

def highGcdDenseCross (Q : Finset ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    highGcdDensePair Q T m n

/-- No double counting between the two complementary gcd masks. -/
theorem denseCoreSignedPair_eq_low_add_high
    (Q : Finset ℕ) (T : ℝ) (m n : ℕ) :
    denseCoreSignedPair Q T m n =
      lowGcdDensePair Q T m n + highGcdDensePair Q T m n := by
  by_cases h : Nat.gcd m n ≤ fixedGcdCutoff T
  · have hn : ¬ fixedGcdCutoff T < Nat.gcd m n := not_lt.mpr h
    simp [lowGcdDensePair, highGcdDensePair, h, hn]
  · have hg : fixedGcdCutoff T < Nat.gcd m n := lt_of_not_ge h
    simp [lowGcdDensePair, highGcdDensePair, h, hg]

/-- The ORIGINAL direct signed dense core has an exact disjoint
low/high gcd partition, retaining all original ordered indices. -/
theorem denseCore_eq_lowGcd_add_highGcd (Q : Finset ℕ) (T : ℝ) :
    endpointDenseAddMulCoreCross Q T =
      lowGcdDenseCross Q T + highGcdDenseCross Q T := by
  rw [← sum_denseCoreRow_eq_existingCore]
  unfold denseCoreRow lowGcdDenseCross highGcdDenseCross
  calc
    (∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
      denseCoreSignedPair Q T m n) =
        ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
          (lowGcdDensePair Q T m n + highGcdDensePair Q T m n) := by
            apply Finset.sum_congr rfl
            intro m hm
            apply Finset.sum_congr rfl
            intro n hn
            exact denseCoreSignedPair_eq_low_add_high Q T m n
    _ = (∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
          lowGcdDensePair Q T m n) +
        (∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
          highGcdDensePair Q T m n) := by
            simp only [Finset.sum_add_distrib]

/-- The complete original arithmetic decomposition has precisely
FOUR pairwise-disjoint masks: gap, ratio outside gap, high-gcd
outside both, and the remaining low-gcd dense core. -/
theorem pickupCross_eq_threePaid_add_lowGcdDense
    (Q : Finset ℕ) (T : ℝ) :
    pickupCross T =
      paidSparseSectors Q T + highGcdDenseCross Q T +
        lowGcdDenseCross Q T := by
  have hsplit := pickupCross_eq_gap_ratio_core Q T
  have hgcd := denseCore_eq_lowGcd_add_highGcd Q T
  unfold paidSparseSectors
  rw [hgcd] at hsplit
  linarith

/-- The exact dense-core mask is never larger in absolute value than
the genuine original signed source term; no independence used. -/
theorem denseCorePair_abs_le_sourceKernel (Q : Finset ℕ)
    (T : ℝ) (m n : ℕ) :
    |denseCoreSignedPair Q T m n| ≤ |sourceKernel T m n| := by
  by_cases h : m ≠ n ∧ Nat.dist m n ∉ Q ∧
      ¬ (∃ q ∈ Q, n = q * m ∨ m = q * n)
  · simpa [denseCoreSignedPair, h, sourceKernel]
      using (le_refl (|sourceKernel T m n|))
  · simp only [denseCoreSignedPair, if_neg h, abs_zero]
    exact abs_nonneg _

/-- The actual high-gcd DENSE subpacket fits inside the preexisting
positive complete high-gcd cost. Bounding by the signed total of
all high-gcd pairs would be INVALID because of possible cancellation. -/
theorem highGcdDensePair_abs_le_highCost
    (Q : Finset ℕ) (T : ℝ) (m n : ℕ) :
    |highGcdDensePair Q T m n| ≤
      if m ≠ n ∧ fixedGcdCutoff T < Nat.gcd m n
      then |sourceKernel T m n| else 0 := by
  by_cases hg : fixedGcdCutoff T < Nat.gcd m n
  · by_cases hne : m ≠ n
    · simpa [highGcdDensePair, hg, hne] using
        (denseCorePair_abs_le_sourceKernel Q T m n)
    · simp [highGcdDensePair, denseCoreSignedPair, hg, hne]
  · simp [highGcdDensePair, hg]

/-- Complete original signed high-gcd residual paid through a truly
POSITIVE absolute source cost; cancellation in other high-gcd sectors
cannot spuriously reduce this bill. -/
theorem highGcdDense_abs_le_fullHighGcdAbsoluteCost
    (Q : Finset ℕ) (T : ℝ) :
    |highGcdDenseCross Q T| ≤
      plainHighGcdAbsoluteCost (fixedGcdCutoff T) T := by
  unfold highGcdDenseCross plainHighGcdAbsoluteCost
  calc
    |∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
        highGcdDensePair Q T m n| ≤
      ∑ m ∈ endpointIndex T,
        |∑ n ∈ endpointIndex T, highGcdDensePair Q T m n| :=
          Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
        |highGcdDensePair Q T m n| := by
      apply Finset.sum_le_sum
      intro m hm
      exact Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
      if m ≠ n ∧ fixedGcdCutoff T < Nat.gcd m n
      then |sourceKernel T m n| else 0 := by
      apply Finset.sum_le_sum
      intro m hm
      apply Finset.sum_le_sum
      intro n hn
      exact highGcdDensePair_abs_le_highCost Q T m n

/-- A GENUINE source-specific unconditional high-gcd residual bound,
using the existing proved (source-candidate) divisor-cover ROOT tail
and existing exact fixed gcd ratio floor supplier. -/
theorem highGcdDense_abs_le_scalar
    (Q : Finset ℕ) {T : ℝ} (hT : 4 ≤ T) :
    |highGcdDenseCross Q T| ≤
      32 * T * Real.exp (Real.sqrt T) := by
  have h0 : 0 ≤ T := by linarith
  have htail : CompleteHighGcdAbsoluteRootTailTarget :=
    completeHighGcdRootTail_of_divisorCover divisorCoverRootTail_proof
  have hsum := htail (fixedGcdCutoff T) T h0
    (fixedGcdCutoff_pos T)
  have hratio := fixedGcdRatio_proof T hT
  calc
    _ ≤ plainHighGcdAbsoluteCost (fixedGcdCutoff T) T :=
      highGcdDense_abs_le_fullHighGcdAbsoluteCost Q T
    _ ≤ 16 * T * (⌊Real.exp T⌋₊ : ℝ) /
        (fixedGcdCutoff T : ℝ) := hsum
    _ = (16 * T) *
        ((⌊Real.exp T⌋₊ : ℝ) / (fixedGcdCutoff T : ℝ)) := by ring
    _ ≤ (16 * T) * (2 * Real.exp (Real.sqrt T)) :=
      mul_le_mul_of_nonneg_left hratio (by positivity)
    _ = 32 * T * Real.exp (Real.sqrt T) := by ring

/-- Exact original-index three-sector control variate, paid by
the two preexisting Putnam bounds and the independent high-gcd
divisor cover; the arithmetic low-gcd dense packet is NOT bounded. -/
def threePaidSectors (Q : Finset ℕ) (T : ℝ) : ℝ :=
  paidSparseSectors Q T + highGcdDenseCross Q T

theorem threePaidSectors_abs_le_raw
    (rate : ℝ) (hrate : 0 < rate) {T : ℝ} (hT : 4 ≤ T) :
    |threePaidSectors (putnamRateGapSet rate T) T| ≤
      (64 / rate ^ 2) * Real.exp (rate * T) +
        32 * T * Real.exp (Real.sqrt T) := by
  have h0 : 0 ≤ T := by linarith
  have hp := paidSparseSectors_abs_le rate hrate h0
  have hg := highGcdDense_abs_le_scalar (putnamRateGapSet rate T) hT
  calc
    |threePaidSectors (putnamRateGapSet rate T) T| ≤
      |paidSparseSectors (putnamRateGapSet rate T) T| +
      |highGcdDenseCross (putnamRateGapSet rate T) T| := by
        unfold threePaidSectors
        exact abs_add_le _ _
    _ ≤ (64 / rate ^ 2) * Real.exp (rate * T) +
      32 * T * Real.exp (Real.sqrt T) :=
        add_le_add hp hg

/-- Signed original source minus the genuinely smaller hard packet is
EXACTLY the three disjoint previously paid packets. -/
theorem pickupCross_sub_lowGcdDense_eq_threePaid
    (Q : Finset ℕ) (T : ℝ) :
    pickupCross T - lowGcdDenseCross Q T =
      threePaidSectors Q T := by
  have h := pickupCross_eq_threePaid_add_lowGcdDense Q T
  unfold threePaidSectors
  linarith

theorem pickupCross_sub_lowGcdDense_abs_le
    (rate : ℝ) (hrate : 0 < rate) {T : ℝ} (hT : 4 ≤ T) :
    |pickupCross T -
      lowGcdDenseCross (putnamRateGapSet rate T) T| ≤
      (64 / rate ^ 2) * Real.exp (rate * T) +
      32 * T * Real.exp (Real.sqrt T) := by
  rw [pickupCross_sub_lowGcdDense_eq_threePaid]
  exact threePaidSectors_abs_le_raw rate hrate hT

/-- The original endpoint quadrature has a SEPARATE 1/4 curvature
error and the entire signed low-gcd dense remainder, not an
unsigned or recoded physical source. -/
theorem endpointSum_sub_lowGcdDense_abs_le
    (rate : ℝ) (hrate : 0 < rate) {T : ℝ} (hT : 4 ≤ T) :
    |endpointSum T -
      lowGcdDenseCross (putnamRateGapSet rate T) T| ≤
      (64 / rate ^ 2) * Real.exp (rate * T) +
      32 * T * Real.exp (Real.sqrt T) + (1 / 4 : ℝ) := by
  have h0 : 0 ≤ T := by linarith
  have hendpoint := endpointSum_error h0
  have hcross := pickupCross_sub_lowGcdDense_abs_le rate hrate hT
  have hsum :
      endpointSum T - lowGcdDenseCross (putnamRateGapSet rate T) T =
      (endpointSum T - pickupCross T) +
      (pickupCross T -
        lowGcdDenseCross (putnamRateGapSet rate T) T) := by ring
  rw [hsum]
  calc
    _ ≤ |endpointSum T - pickupCross T| +
      |pickupCross T -
        lowGcdDenseCross (putnamRateGapSet rate T) T| := abs_add_le _ _
    _ ≤ (1 / 4 : ℝ) +
      ((64 / rate ^ 2) * Real.exp (rate * T) +
      32 * T * Real.exp (Real.sqrt T)) :=
        add_le_add hendpoint hcross
    _ = _ := by ring

/-- For every requested eta>0 the ORIGINAL high-gcd ROOT cover
and both sparse Putnam sectors have a common explicit subexponential
payment on the SAME original time scale, with the actual gcd cutoff.
The low-gcd signed core remains an independent arithmetic target. -/
theorem originalCross_lowGcdDense_allRateError
    (eta : ℝ) (heta : 0 < eta) :
    ∃ C R : ℝ, 0 ≤ C ∧ 4 ≤ R ∧
      ∀ T : ℝ, R ≤ T →
        |pickupCross T -
          lowGcdDenseCross (putnamRateGapSet (eta / 2) T) T| ≤
          C * Real.exp (eta * T) := by
  let rate : ℝ := eta / 2
  have hr : 0 < rate := by dsimp [rate]; linarith
  obtain ⟨C0, R0, hC0, hR0, hscalar⟩ :=
    completeHighGcdScalarEveryRate_proof rate hr
  let C : ℝ := 64 / rate ^ 2 + C0
  have h64 : 0 ≤ 64 / rate ^ 2 := by positivity
  have hC : 0 ≤ C := add_nonneg h64 hC0
  refine ⟨C, R0, hC, hR0, ?_⟩
  intro T hRT
  have hT : 4 ≤ T := hR0.trans hRT
  have h0 : 0 ≤ T := by linarith
  have hError := pickupCross_sub_lowGcdDense_abs_le rate hr hT
  have hHigh := hscalar T hRT
  have hhalf : rate * T ≤ eta * T := by
    dsimp [rate]
    nlinarith [mul_nonneg heta.le h0]
  have hExp := Real.exp_le_exp.mpr hhalf
  calc
    _ ≤ (64 / rate ^ 2) * Real.exp (rate * T) +
        32 * T * Real.exp (Real.sqrt T) := hError
    _ ≤ (64 / rate ^ 2) * Real.exp (rate * T) +
        C0 * Real.exp (rate * T) := add_le_add_left hHigh _
    _ = C * Real.exp (rate * T) := by dsimp [C]; ring
    _ ≤ C * Real.exp (eta * T) := mul_le_mul_of_nonneg_left hExp hC

end GRWTSK.NumberTheory.Moebius.SparseHighGcdDenseCore
