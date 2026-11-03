/- Copyright (c) 2026 grwtsk contributors. MIT.
Original source and mathematical direction: grwtsk contributors.
Source formalization assistance: OpenAI.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusRationalSlopeSignRigidity
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusPrimeFreeExactTripleReindex
import Mathlib.Tactic

/-!
# The ORIGINAL prime-free low-gcd source splits into signed PRIMITIVE slopes

The original double sum is at ORIGINAL endpointIndex T and uses the
EXACT IsOtherLowGcdPair Q T (m,n) including:
- prime-dilation exclusion,
- fixed original gcd cutoff,
- full additive-gap and integer-ratio masks,
- both orientations and original diagonal exclusion.

The previously published exact gcd bijection converts this ordered
double source to primitive coprime slope (a,b) and common multiplier g.
For each fixed reduced slope, ALL surviving common-dilation terms have
one and the same sign mu(a)*mu(b), with a positive (possibly zero)
causal mass. Non-coprime g is paid by the genuine zero of mu(ga)
or mu(gb), not by deleting nonzero source terms.

Therefore the entire prime-free low-gcd cross has the exact finite form
  Σ_(a,b coprime) mu(a)*mu(b)*M_(Q,T)(a,b), M>=0.
Every negative-sign primitive slope is an independent nonpositive
ORIGINAL packet. Incomparable opposite-parity slopes are INCLUDED:
this is strictly broader than the previously excluded ONE-PRIME
dilations, which remain forbidden by the original mask.

This is a NONCIRCULAR one-sided pruning result, NOT a new estimate
on the remaining positive-slope mass. A bound on only the latter
would be a stronger arithmetic premise, still independently OPEN.
Full native Lean acceptance/axiom replay NOT_RUN; no RH claim.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.PrimeFreeSlopeSignLedger

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.LowGcdPrimeDilationNegative
open GRWTSK.NumberTheory.Moebius.LowGcdPrimeFreePrimitiveBridge
open GRWTSK.NumberTheory.Moebius.PrimeFreeExactTripleReindex
open GRWTSK.NumberTheory.Moebius.RationalSlopeCausalDilation
open GRWTSK.NumberTheory.Moebius.RationalSlopeSignRigidity

/-- All original index, gap, gcd, ratio and prime-free masks remain
evaluated at the ORIGINAL pair (g*a,g*b) and original horizon T. -/
def sourceSlopeMask (Q : Finset ℕ) (T : ℝ)
    (g a b : ℕ) : Prop :=
  g * a ∈ endpointIndex T ∧
  g * b ∈ endpointIndex T ∧
  IsOtherLowGcdPair Q T (g * a) (g * b)

/-- Actual original signed, ordered source grouped at one primitive
slope without forcing a positivity sign or modifying Q. -/
def signedSourceSlopePacket (Q : Finset ℕ) (T : ℝ) (a b : ℕ) : ℝ :=
  ∑ g ∈ endpointIndex T,
    if sourceSlopeMask Q T g a b then
      sourceKernel T (g * a) (g * b)
    else 0

/-- Positive common-dilation mass of the VERY SAME source terms.
The guard inside sourceSlopeMass drops only squareful mu-zero terms. -/
def nonnegativeSourceSlopeMass
    (Q : Finset ℕ) (T : ℝ) (a b : ℕ) : ℝ :=
  ∑ g ∈ endpointIndex T,
    if sourceSlopeMask Q T g a b then
      sourceSlopeMass T g a b
    else 0

/-- Original source masked at one original multiplier equals the
reduced-slope sign times its EXACT nonnegative causal mass. -/
theorem sourceSlopeMask_term_eq_sign_mass
    (Q : Finset ℕ) (T : ℝ) (g a b : ℕ) :
    (if sourceSlopeMask Q T g a b then
      sourceKernel T (g * a) (g * b) else 0) =
    (moebiusReal a * moebiusReal b) *
      (if sourceSlopeMask Q T g a b then
        sourceSlopeMass T g a b else 0) := by
  by_cases hm : sourceSlopeMask Q T g a b
  · have hsource : sourceKernel T (g * a) (g * b) =
        (moebiusReal a * moebiusReal b) *
          sourceSlopeMass T g a b := by
      simpa only [sourceKernel, dilatedSignedPair] using
        (dilatedSignedPair_eq_slopeSign_mul_mass T g a b)
    simp [hm, hsource]
  · simp [hm]

theorem signedSourceSlopePacket_eq_sign_mass
    (Q : Finset ℕ) (T : ℝ) (a b : ℕ) :
    signedSourceSlopePacket Q T a b =
      (moebiusReal a * moebiusReal b) *
        nonnegativeSourceSlopeMass Q T a b := by
  unfold signedSourceSlopePacket nonnegativeSourceSlopeMass
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro g hg
  exact sourceSlopeMask_term_eq_sign_mass Q T g a b

theorem nonnegativeSourceSlopeMass_nonneg
    (Q : Finset ℕ) (T : ℝ) (hT : 0 ≤ T)
    (a b : ℕ) (ha : 1 ≤ a) (hb : 1 ≤ b) :
    0 ≤ nonnegativeSourceSlopeMass Q T a b := by
  unfold nonnegativeSourceSlopeMass
  apply Finset.sum_nonneg
  intro g hg
  by_cases hm : sourceSlopeMask Q T g a b
  · have hg : 1 ≤ g := (Finset.mem_Icc.mp hg).1
    simpa [hm] using sourceSlopeMass_nonneg T hT g a b hg ha hb
  · simp [hm]

/-- Exact no-internal-cancellation principle for an ENTIRE authentic
primitive slope fiber with ALL original Q,T masks: absolute value of
the signed total equals the sum of absolute original masked terms.
This is deliberately NOT true when different primitive slopes are
combined, which is where RH-strength cancellation remains open. -/
theorem signedSourceSlopePacket_abs_eq_sum_abs
    (Q : Finset ℕ) (T : ℝ) (hT : 0 ≤ T)
    (a b : ℕ) (ha : 1 ≤ a) (hb : 1 ≤ b) :
    |signedSourceSlopePacket Q T a b| =
      ∑ g ∈ endpointIndex T,
        |if sourceSlopeMask Q T g a b then
          sourceKernel T (g * a) (g * b) else 0| := by
  have hmass := nonnegativeSourceSlopeMass_nonneg Q T hT a b ha hb
  calc
    |signedSourceSlopePacket Q T a b| =
        |moebiusReal a * moebiusReal b| *
          nonnegativeSourceSlopeMass Q T a b := by
            rw [signedSourceSlopePacket_eq_sign_mass, abs_mul,
              abs_of_nonneg hmass]
    _ = ∑ g ∈ endpointIndex T,
        |if sourceSlopeMask Q T g a b then
          sourceKernel T (g * a) (g * b) else 0| := by
      unfold nonnegativeSourceSlopeMass
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro g hg
      have hgn : 1 ≤ g := (Finset.mem_Icc.mp hg).1
      have hp : 0 ≤ (if sourceSlopeMask Q T g a b then
          sourceSlopeMass T g a b else 0) := by
        by_cases hm : sourceSlopeMask Q T g a b
        · simpa [hm] using sourceSlopeMass_nonneg T hT g a b hgn ha hb
        · simp [hm]
      rw [sourceSlopeMask_term_eq_sign_mass, abs_mul, abs_of_nonneg hp]

/-- NEGATIVE primitive slopes contribute genuinely NONPOSITIVE original
source, even with all the original g-dependent low-gcd masks. -/
theorem signedSourceSlopePacket_nonpos_of_opposite_sign
    (Q : Finset ℕ) (T : ℝ) (hT : 0 ≤ T)
    (a b : ℕ) (ha : 1 ≤ a) (hb : 1 ≤ b)
    (hsign : moebiusReal a * moebiusReal b ≤ 0) :
    signedSourceSlopePacket Q T a b ≤ 0 := by
  rw [signedSourceSlopePacket_eq_sign_mass]
  exact mul_nonpos_of_nonpos_of_nonneg hsign
    (nonnegativeSourceSlopeMass_nonneg Q T hT a b ha hb)

/-- Exact finite ordered-pair to primitive-slope grouping of the
ORIGINAL surviving prime-free low-gcd cross. No source signed term
or original orientation has been removed. -/
theorem originalOtherLowGcdCross_eq_signedSlopePackets
    (Q : Finset ℕ) (T : ℝ) :
    otherLowGcdCross Q T =
      ∑ a ∈ endpointIndex T, ∑ b ∈ endpointIndex T,
        if Nat.Coprime a b then signedSourceSlopePacket Q T a b
        else 0 := by
  classical
  let S : Finset ℕ := endpointIndex T
  have hraw := original_primeFree_raw_gcd_reindex Q T
  have hsummand (g a b : ℕ) :
      (if Nat.Coprime a b ∧
          g * a ∈ S ∧ g * b ∈ S
        then otherLowGcdPair Q T (g * a) (g * b) else 0) =
      if Nat.Coprime a b then
        (if sourceSlopeMask Q T g a b then
          sourceKernel T (g * a) (g * b) else 0)
      else 0 := by
    by_cases hab : Nat.Coprime a b
    · by_cases hga : g * a ∈ S
      · by_cases hgb : g * b ∈ S
        · rw [otherLowGcdPair_eq_originalMask]
          simp [hab, hga, hgb, sourceSlopeMask, S]
        · simp [hab, hga, hgb, sourceSlopeMask, S]
      · simp [hab, hga, sourceSlopeMask, S]
    · simp [hab]
  have hsum :
      (∑ g ∈ S, ∑ a ∈ S, ∑ b ∈ S,
        if Nat.Coprime a b then
          (if sourceSlopeMask Q T g a b then
            sourceKernel T (g * a) (g * b) else 0)
        else 0) =
      ∑ a ∈ S, ∑ b ∈ S, ∑ g ∈ S,
        if Nat.Coprime a b then
          (if sourceSlopeMask Q T g a b then
            sourceKernel T (g * a) (g * b) else 0)
        else 0 := by
    rw [Finset.sum_comm]
    apply Finset.sum_congr rfl
    intro a ha
    rw [Finset.sum_comm]
  calc
    otherLowGcdCross Q T =
        ∑ g ∈ S, ∑ a ∈ S, ∑ b ∈ S,
          if Nat.Coprime a b ∧
              g * a ∈ S ∧ g * b ∈ S
          then otherLowGcdPair Q T (g * a) (g * b)
          else 0 := by simpa only [S] using hraw
    _ = ∑ g ∈ S, ∑ a ∈ S, ∑ b ∈ S,
          if Nat.Coprime a b then
            (if sourceSlopeMask Q T g a b then
              sourceKernel T (g * a) (g * b) else 0)
          else 0 := by
      apply Finset.sum_congr rfl
      intro g hg
      apply Finset.sum_congr rfl
      intro a ha
      apply Finset.sum_congr rfl
      intro b hb
      exact hsummand g a b
    _ = ∑ a ∈ S, ∑ b ∈ S, ∑ g ∈ S,
          if Nat.Coprime a b then
            (if sourceSlopeMask Q T g a b then
              sourceKernel T (g * a) (g * b) else 0)
          else 0 := hsum
    _ = ∑ a ∈ endpointIndex T, ∑ b ∈ endpointIndex T,
          if Nat.Coprime a b then signedSourceSlopePacket Q T a b
          else 0 := by
      dsimp [S]
      apply Finset.sum_congr rfl
      intro a ha
      apply Finset.sum_congr rfl
      intro b hb
      by_cases hab : Nat.Coprime a b
      · simp only [hab, if_pos]
        rfl
      · simp [hab]

/-- The source cross is the signed sum over reduced coprime slopes,
with the ENTIRE common-dilation mass nonnegative at each slope. -/
theorem originalOtherLowGcdCross_eq_signedSlopeMasses
    (Q : Finset ℕ) (T : ℝ) :
    otherLowGcdCross Q T =
      ∑ a ∈ endpointIndex T, ∑ b ∈ endpointIndex T,
        if Nat.Coprime a b then
          (moebiusReal a * moebiusReal b) *
            nonnegativeSourceSlopeMass Q T a b
        else 0 := by
  rw [originalOtherLowGcdCross_eq_signedSlopePackets]
  apply Finset.sum_congr rfl
  intro a ha
  apply Finset.sum_congr rfl
  intro b hb
  by_cases hab : Nat.Coprime a b
  · simp only [hab, if_pos]
    exact signedSourceSlopePacket_eq_sign_mass Q T a b
  · simp [hab]

/-- The same true original index set, now only the nonnegative-sign
slopes. This is the positive residual after dropping all negative
primitive-slope contributions; it remains arithmetically OPEN. -/
def nonnegativeSignSlopeCross (Q : Finset ℕ) (T : ℝ) : ℝ :=
  ∑ a ∈ endpointIndex T, ∑ b ∈ endpointIndex T,
    if Nat.Coprime a b ∧
        0 ≤ moebiusReal a * moebiusReal b then
      (moebiusReal a * moebiusReal b) *
        nonnegativeSourceSlopeMass Q T a b
    else 0

/-- Unconditional upper control by the positive-slope packet. The
negative slopes are an honest NEW nonpositive original sector,
not a second subtraction of the already excluded prime-dilation
source, which is forbidden inside IsOtherLowGcdPair. -/
theorem originalOtherLowGcdCross_le_nonnegativeSignSlopes
    (Q : Finset ℕ) (T : ℝ) (hT : 0 ≤ T) :
    otherLowGcdCross Q T ≤ nonnegativeSignSlopeCross Q T := by
  rw [originalOtherLowGcdCross_eq_signedSlopeMasses]
  unfold nonnegativeSignSlopeCross
  apply Finset.sum_le_sum
  intro a ha
  apply Finset.sum_le_sum
  intro b hb
  by_cases hab : Nat.Coprime a b
  · have ha1 : 1 ≤ a := (Finset.mem_Icc.mp ha).1
    have hb1 : 1 ≤ b := (Finset.mem_Icc.mp hb).1
    have hmass :=
      nonnegativeSourceSlopeMass_nonneg Q T hT a b ha1 hb1
    by_cases hsign : 0 ≤ moebiusReal a * moebiusReal b
    · simp [hab, hsign]
    · have hneg : moebiusReal a * moebiusReal b ≤ 0 := by
        linarith
      have hmul : (moebiusReal a * moebiusReal b) *
          nonnegativeSourceSlopeMass Q T a b ≤ 0 :=
        mul_nonpos_of_nonpos_of_nonneg hneg hmass
      simpa [hab, hsign] using hmul
  · simp [hab]

end GRWTSK.NumberTheory.Moebius.PrimeFreeSlopeSignLedger
