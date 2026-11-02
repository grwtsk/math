/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusEnergyMatchedWeakResidual
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusEndpointPutnamSparseGapAllRate
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.GoodScaleEnergyCriterion
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Exact strong-overlap original Möbius packet and energy return

This file does not assume RH, a geometric positivity-to-arithmetic
cancellation theorem, or a free signed strong-packet bound. It
consumes the EXACT original causal pickupEnergy, original signed
pickupCross, source diagonal, unchanged Putnam gap packet, and the
energy-matched genuine 2D Euclidean tube/physical-overlap family.

The source identity, with all ordered signs and both orientations:
  X(T) = G_H(T) + Near_H(T) + Weak_H(T) + Strong_H(T).
The near-angle packet is zero for the original integer stereographic
directions. The weak physical-overlap packet already has a
Cauchy-derived finite source bound. The COMPLETE Gram identity gives
  pickupEnergy(T) = pickupDiagonal(T) + pickupCross(T).

Since the unchanged diagonal is nonnegative, the actual signed
strong packet obeys
  Strong_H(T) <= pickupEnergy(T) + |G_H(T)| + |Weak_H(T)|.

This is useful because known classical PNT/Mertens estimates bound
the actual cumulative Möbius waveform at a strictly weaker exponent-
one level, without RH. An external PNT theorem must still be linked
to its EXACT source; merely writing this return does not prove it,
nor the RH-strength every-positive-rate target.
-/

namespace GRWTSK.NumberTheory.Moebius.StrongPacketEnergyReturn

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.MoebiusEndpointPutnamEnergyCounting
open GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof
open GRWTSK.NumberTheory.Moebius.FareyFaryKakeyaIncidence
open GRWTSK.NumberTheory.Moebius.PutnamKakeyaAngularCollar
open GRWTSK.NumberTheory.Moebius.PutnamKakeyaSignedResidual
open GRWTSK.NumberTheory.Moebius.StereographicTubeResidual
open GRWTSK.NumberTheory.Moebius.EnergyMatchedArithmeticTube
open GRWTSK.NumberTheory.Moebius.EnergyMatchedWeakResidual

/-- The genuine signed strong physical overlap on the EXACT
original endpoint inventory, with the same Möbius response Gram.
No positivity is assigned to this source packet. -/
def originalEnergyStrongCross (H : ℕ) (T : ℝ) : ℝ :=
  angularFarCross (shortGapSet H) (originalEnergyFamily T)
    (sourceCollarSigma H T) (weakPhysicalThreshold T)

/-- Exact identity with the original WHOLE signed off-diagonal
response Gram, not a redefined positive source. -/
theorem strong_add_gap_add_weak_eq_cross (H : ℕ) (T : ℝ) :
    endpointGapSetCross (shortGapSet H) T +
      weakOverlapCross (shortGapSet H) (originalEnergyFamily T)
        (sourceCollarSigma H T) (weakPhysicalThreshold T) +
      originalEnergyStrongCross H T = pickupCross T := by
  have hparts := pickupCross_eq_four_packets
    (shortGapSet H) (originalEnergyFamily T)
    (sourceCollarSigma H T) (weakPhysicalThreshold T)
    (weakPhysicalThreshold_pos T)
  rw [energyNearCross_zero T H] at hparts
  unfold originalEnergyStrongCross
  linarith

/-- Source-exact positive-energy control of the COMPLETE signed
strong packet. This is a ONE-SIDED UPPER bound only; the input
energy is not replaced by a favorable, independently assumed
geometric cost or by the RH conclusion. -/
theorem originalEnergyStrongCross_le_energy_gap_weak
    {T : ℝ} (hT : 0 ≤ T) (H : ℕ) :
    originalEnergyStrongCross H T ≤
      pickupEnergy T +
      |endpointGapSetCross (shortGapSet H) T| +
      |weakOverlapCross (shortGapSet H) (originalEnergyFamily T)
        (sourceCollarSigma H T) (weakPhysicalThreshold T)| := by
  have hs := strong_add_gap_add_weak_eq_cross H T
  have hgram := pickupEnergy_eq_diagonal_add_cross hT
  have hd := (pickupDiagonal_quadratic_bound hT).1
  linarith [le_abs_self (endpointGapSetCross (shortGapSet H) T),
    neg_le_abs (endpointGapSetCross (shortGapSet H) T),
    neg_le_abs
      (weakOverlapCross (shortGapSet H) (originalEnergyFamily T)
        (sourceCollarSigma H T) (weakPhysicalThreshold T))]

/-- The quantified strong packet bound, with the actual two
unconditional paid sectors, and NO arithmetic energy bound assumed.
This is source-bound at EVERY nonnegative T and every H. -/
theorem originalEnergyStrongCross_le_energy_plus_paid
    {T : ℝ} (hT : 0 ≤ T) (H : ℕ) :
    originalEnergyStrongCross H T ≤
      pickupEnergy T +
      4 * ((shortGapSet H).card : ℝ) * T ^ 2 +
      ((endpointIndex T).card : ℝ) ^ 2 *
        Real.sqrt (weakEnergyThreshold T * pickupDiagonal T) := by
  have he := originalEnergyStrongCross_le_energy_gap_weak hT H
  have hg := original_sparse_gap_quadratic (shortGapSet H) hT
  have hw := energyWeakCross_abs_le_card_sqrt hT H
  linarith

/-- The canonical Putnam exponential cutoff is the actual original
gap set, not an epsilon-dependent artificial index inventory. -/
def rateGapHeight (ε T : ℝ) : ℕ :=
  ⌊Real.exp ((ε / 2) * T)⌋₊

theorem shortGapSet_rate_eq_putnamRateGapSet (ε T : ℝ) :
    shortGapSet (rateGapHeight ε T) = putnamRateGapSet ε T := rfl

/-- The arithmetic strong packet at an arbitrary user-supplied
positive rate. PNT-level input may replace pickupEnergy(T) by
a source-certified o(exp T) envelope; this theorem itself assumes
NO such replacement and thus makes no RH assertion. -/
theorem originalEnergyStrongCross_le_energy_rate_gap
    {T ε : ℝ} (hT : 0 ≤ T) (hε : 0 < ε) :
    originalEnergyStrongCross (rateGapHeight ε T) T ≤
      pickupEnergy T +
        (32 / ε ^ 2) * Real.exp (ε * T) +
      ((endpointIndex T).card : ℝ) ^ 2 *
        Real.sqrt (weakEnergyThreshold T * pickupDiagonal T) := by
  have he := originalEnergyStrongCross_le_energy_gap_weak
    hT (rateGapHeight ε T)
  have hg := putnam_sparse_gap_all_rate ε hε hT
  rw [← shortGapSet_rate_eq_putnamRateGapSet ε T] at hg
  have hw := energyWeakCross_abs_le_card_sqrt
    hT (rateGapHeight ε T)
  linarith


/-- The COMPLETE original strong packet is controlled IN ABSOLUTE
VALUE by the positive original pickup energy, its already harmless
original diagonal, and the two individually source-paid sectors.
This retains both signed orientations; no favorable sign is assumed
for the strong packet. -/
theorem originalEnergyStrongCross_abs_le_energy_paid
    {T : ℝ} (hT : 0 ≤ T) (H : ℕ) :
    |originalEnergyStrongCross H T| ≤
      pickupEnergy T + pickupDiagonal T +
      |endpointGapSetCross (shortGapSet H) T| +
      |weakOverlapCross (shortGapSet H) (originalEnergyFamily T)
        (sourceCollarSigma H T) (weakPhysicalThreshold T)| := by
  let G : ℝ := endpointGapSetCross (shortGapSet H) T
  let W : ℝ :=
    weakOverlapCross (shortGapSet H) (originalEnergyFamily T)
      (sourceCollarSigma H T) (weakPhysicalThreshold T)
  let S : ℝ := originalEnergyStrongCross H T
  let E : ℝ := pickupEnergy T
  let D : ℝ := pickupDiagonal T
  have hsource : S = E - D - G - W := by
    have hsum := strong_add_gap_add_weak_eq_cross H T
    have henergy := pickupEnergy_eq_diagonal_add_cross hT
    dsimp [S,E,D,G,W]
    linarith
  have hE : 0 ≤ E := by
    dsimp [E, pickupEnergy]
    exact intervalIntegral.integral_nonneg hT (fun u => sq_nonneg (wholePickup u))
  have hD : 0 ≤ D := (pickupDiagonal_quadratic_bound hT).1
  have hbound : |S| ≤ E + D + |G| + |W| := by
    apply abs_le.mpr
    constructor
    · rw [hsource]
      linarith [le_abs_self G, le_abs_self W]
    · rw [hsource]
      linarith [neg_le_abs G, neg_le_abs W]
  exact hbound

/-- All signed strong orientations, now with only the genuine
ORIGINAL total square energy and PREVIOUSLY proved numeric
positive diagonal/gap/weak costs. -/
theorem originalEnergyStrongCross_abs_le_energy_rate
    {ε T : ℝ} (hε : 0 < ε) (hT : 0 ≤ T) :
    |originalEnergyStrongCross (rateGapHeight ε T) T| ≤
      pickupEnergy T + 2 * T^2 +
        (32 / ε^2) * Real.exp (ε * T) +
      ((endpointIndex T).card : ℝ)^2 *
        Real.sqrt (weakEnergyThreshold T * pickupDiagonal T) := by
  have hstrong := originalEnergyStrongCross_abs_le_energy_paid
    hT (rateGapHeight ε T)
  have hd := (pickupDiagonal_quadratic_bound hT).2
  have hg := putnam_sparse_gap_all_rate ε hε hT
  rw [← shortGapSet_rate_eq_putnamRateGapSet ε T] at hg
  have hw := energyWeakCross_abs_le_card_sqrt
    hT (rateGapHeight ε T)
  linarith

end GRWTSK.NumberTheory.Moebius.StrongPacketEnergyReturn
