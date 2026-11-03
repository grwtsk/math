/- Copyright (c) 2026 grwtsk contributors. MIT.
Original arithmetic mathematical direction: grwtsk contributors.
Source formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusPrimeFreeSlopeSignLedger
import Mathlib.Tactic

/-!
# Exact source-preserving positive primitive-slope count with a NEGATIVE CREDIT

The original prime-free low-GCD packet is an ordered sum over the exact
source-index inventory, with the original mu(n), birth-gated Gram, fixed
GCD cutoff, selected Putnam gap and ratio exclusions, and forbidden
prime-dilation packet. These masks are unchanged in the imported
`nonnegativeSourceSlopeMass` and `nonnegativeSignSlopeCross`.

The preceding source proved only the one-sided inequality
  otherLowGcdCross Q T <= nonnegativeSignSlopeCross Q T.
This module proves the stronger exact signed accounting equation
  otherLowGcdCross Q T + oppositeSignSlopeCredit Q T
    = nonnegativeSignSlopeCross Q T,
where the credit is a sum of authentic OPPOSITE-SIGN primitive-slope
packets and is nonnegative for T>=0. No cross terms, sign modes or
source marks are silently deleted. Both orientations are counted in
exactly the same way as the original source.

On any ONE fixed affine-frequent set of scales, the exact RH-facing
original signed arithmetic target is EQUIVALENT to the positive
balance criterion: the positive mass must be no larger than the
opposite-sign credit plus an all-positive-rate allowance. This is
not the stronger and generally unnecessary request that the positive
mass alone be subexponential.

This produces a source-faithful positive counting interface, but DOES
NOT construct the required arithmetic positive-versus-credit balance.
It is not an unconditional RH/GRH proof, Hodge metric theorem or
verified Lean compilation receipt.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.PrimeFreeSlopeCreditBalance

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting
open GRWTSK.NumberTheory.Moebius.PrimeFreeSlopeSignLedger
open GRWTSK.NumberTheory.Moebius.LowGcdPrimeDilationNegative
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential

/-- Exactly the opposite-sign primitive-slope mass that was discarded
in the one-sided positive upper majorant. It is a POSITIVE credit,
not an adjustable error or independent source count. -/
def oppositeSignSlopeCredit (Q : Finset ℕ) (T : ℝ) : ℝ :=
  ∑ a ∈ endpointIndex T, ∑ b ∈ endpointIndex T,
    if Nat.Coprime a b ∧
        ¬ (0 ≤ moebiusReal a * moebiusReal b) then
      -(moebiusReal a * moebiusReal b) *
        nonnegativeSourceSlopeMass Q T a b
    else 0

/-- Elementary identity for ONE literal source slope. Each surviving
signed packet either belongs to the positive sector or is paid into
the negative credit; squareful-zero signs belong to the nonnegative
sector with numerical weight zero. -/
private theorem slope_term_add_credit_eq_positive
    (Q : Finset ℕ) (T : ℝ) (a b : ℕ) :
    (if Nat.Coprime a b then
      (moebiusReal a * moebiusReal b) *
        nonnegativeSourceSlopeMass Q T a b else 0) +
    (if Nat.Coprime a b ∧
        ¬ (0 ≤ moebiusReal a * moebiusReal b) then
      -(moebiusReal a * moebiusReal b) *
        nonnegativeSourceSlopeMass Q T a b else 0) =
    (if Nat.Coprime a b ∧
        0 ≤ moebiusReal a * moebiusReal b then
      (moebiusReal a * moebiusReal b) *
        nonnegativeSourceSlopeMass Q T a b else 0) := by
  by_cases hab : Nat.Coprime a b
  · by_cases hs : 0 ≤ moebiusReal a * moebiusReal b
    · simp [hab, hs]
    · simp [hab, hs] <;> ring
  · simp [hab]

/-- THE EXACT SOURCE BALANCE. No nonnegative-slope majorant can be
called source-equivalent unless this opposite-sign credit is retained.
The identity is valid for any T and Q; T>=0 is used only below for
positivity of the authentic Gram-based slope masses. -/
theorem otherLowGcd_add_credit_eq_positive
    (Q : Finset ℕ) (T : ℝ) :
    otherLowGcdCross Q T + oppositeSignSlopeCredit Q T =
      nonnegativeSignSlopeCross Q T := by
  rw [originalOtherLowGcdCross_eq_signedSlopeMasses]
  unfold oppositeSignSlopeCredit nonnegativeSignSlopeCross
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro a ha
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro b hb
  exact slope_term_add_credit_eq_positive Q T a b

/-- The CREDIT is genuinely nonnegative at physical time T>=0,
because the retained sign factor is negative and the complete original
masked mass is nonnegative. -/
theorem oppositeSignSlopeCredit_nonneg
    (Q : Finset ℕ) (T : ℝ) (hT : 0 ≤ T) :
    0 ≤ oppositeSignSlopeCredit Q T := by
  unfold oppositeSignSlopeCredit
  apply Finset.sum_nonneg
  intro a ha
  apply Finset.sum_nonneg
  intro b hb
  by_cases hab : Nat.Coprime a b
  · by_cases hs : 0 ≤ moebiusReal a * moebiusReal b
    · simp [hab, hs]
    · have ha1 : 1 ≤ a := (Finset.mem_Icc.mp ha).1
      have hb1 : 1 ≤ b := (Finset.mem_Icc.mp hb).1
      have hmass := nonnegativeSourceSlopeMass_nonneg Q T hT a b ha1 hb1
      have hsign : moebiusReal a * moebiusReal b ≤ 0 :=
        (lt_of_not_ge hs).le
      have hmul : 0 ≤ -(moebiusReal a * moebiusReal b) *
          nonnegativeSourceSlopeMass Q T a b :=
        mul_nonneg (neg_nonneg.mpr hsign) hmass
      simpa [hab, hs] using hmul
  · simp [hab]

/-- The full positive slope count is nonnegative; squareful zero
source coefficients remain zero in their actual original classes. -/
theorem nonnegativeSignSlopeCross_nonneg
    (Q : Finset ℕ) (T : ℝ) (hT : 0 ≤ T) :
    0 ≤ nonnegativeSignSlopeCross Q T := by
  unfold nonnegativeSignSlopeCross
  apply Finset.sum_nonneg
  intro a ha
  apply Finset.sum_nonneg
  intro b hb
  by_cases hab : Nat.Coprime a b
  · by_cases hs : 0 ≤ moebiusReal a * moebiusReal b
    · have ha1 : 1 ≤ a := (Finset.mem_Icc.mp ha).1
      have hb1 : 1 ≤ b := (Finset.mem_Icc.mp hb).1
      have hmass := nonnegativeSourceSlopeMass_nonneg Q T hT a b ha1 hb1
      have hmul : 0 ≤ (moebiusReal a * moebiusReal b) *
          nonnegativeSourceSlopeMass Q T a b := mul_nonneg hs hmass
      simpa [hab, hs] using hmul
    · simp [hab, hs]
  · simp [hab]

/-- Exact positive-versus-credit arithmetic target on one FIXED
scale set. For every requested rate the same original selection
`putnamRateGapSet (rate/2) T` is used in ALL THREE quantities.
No credit from a previously paid prime-dilation sector is reused. -/
def PositiveSlopeCreditEveryRateOn (G : Set ℝ) : Prop :=
  ∀ rate : ℝ, 0 < rate →
    ∃ C R : ℝ, 0 ≤ C ∧ 0 ≤ R ∧
      ∀ T : ℝ, T ∈ G → R ≤ T →
        nonnegativeSignSlopeCross
            (putnamRateGapSet (rate / 2) T) T ≤
          oppositeSignSlopeCredit
            (putnamRateGapSet (rate / 2) T) T +
              C * Real.exp (rate * T)

/-- Source-faithful EQUIVALENCE, not an implication with an extra
strengthened positive-count assumption. Both directions use the
exact original signed source-return identity. -/
theorem positiveSlopeCreditEveryRateOn_iff_otherLowGcd
    (G : Set ℝ) :
    PositiveSlopeCreditEveryRateOn G ↔ OtherLowGcdEveryRateOn G := by
  constructor
  · intro h rate hr
    obtain ⟨C, R, hC, hR, hb⟩ := h rate hr
    refine ⟨C, R, hC, hR, ?_⟩
    intro T hG hRT
    have heq := otherLowGcd_add_credit_eq_positive
      (putnamRateGapSet (rate / 2) T) T
    linarith [hb T hG hRT]
  · intro h rate hr
    obtain ⟨C, R, hC, hR, hb⟩ := h rate hr
    refine ⟨C, R, hC, hR, ?_⟩
    intro T hG hRT
    have heq := otherLowGcd_add_credit_eq_positive
      (putnamRateGapSet (rate / 2) T) T
    linarith [hb T hG hRT]

/-- The existing paid-gap, paid-ratio, paid-high-gcd, and nonpositive
prime-dilation source reductions are reused without changing their
coefficients or discarding either orientation. The new OPEN arithmetic
condition is a POSITIVE mass covered by an actual NEGATIVE credit. -/
theorem riemannHypothesis_of_positiveSlopeCredit_goodScales
    {G : Set ℝ} (hcover : AffineFrequent G)
    (hcredit : PositiveSlopeCreditEveryRateOn G) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_otherLowGcd_goodScales hcover
    ((positiveSlopeCreditEveryRateOn_iff_otherLowGcd G).mp hcredit)

/-- A stronger positive-only estimate is SUFFICIENT, but not claimed
necessary: it intentionally discards the legitimate negative credit.
Use the exact balance proposition above for a faithful RH search. -/
def PositiveSlopeOnlyEveryRateOn (G : Set ℝ) : Prop :=
  ∀ rate : ℝ, 0 < rate →
    ∃ C R : ℝ, 0 ≤ C ∧ 0 ≤ R ∧
      ∀ T : ℝ, T ∈ G → R ≤ T →
        nonnegativeSignSlopeCross
            (putnamRateGapSet (rate / 2) T) T ≤
          C * Real.exp (rate * T)

/-- One-sided: positive-only control implies the exact source balance,
but the reverse is not valid for arbitrary sign-split scalar families. -/
theorem positiveSlopeCredit_of_positiveOnly
    {G : Set ℝ} (hpositive : PositiveSlopeOnlyEveryRateOn G) :
    PositiveSlopeCreditEveryRateOn G := by
  intro rate hr
  obtain ⟨C, R, hC, hR, hb⟩ := hpositive rate hr
  refine ⟨C, R, hC, hR, ?_⟩
  intro T hG hRT
  have hT : 0 ≤ T := hR.trans hRT
  have hcredit := oppositeSignSlopeCredit_nonneg
    (putnamRateGapSet (rate / 2) T) T hT
  linarith [hb T hG hRT]

/-- An exact, independently certified positive-only upper bound is a
valid stronger RH supplier; it is NOT presently proved for the
actual source. -/
theorem riemannHypothesis_of_positiveSlopeOnly_goodScales
    {G : Set ℝ} (hcover : AffineFrequent G)
    (hpositive : PositiveSlopeOnlyEveryRateOn G) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_positiveSlopeCredit_goodScales hcover
    (positiveSlopeCredit_of_positiveOnly hpositive)

end GRWTSK.NumberTheory.Moebius.PrimeFreeSlopeCreditBalance
