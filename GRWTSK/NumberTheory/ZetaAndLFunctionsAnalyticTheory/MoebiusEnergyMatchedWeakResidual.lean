/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / LEAN_BUILD_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusEnergyMatchedArithmeticTube
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusCausalGramCauchy
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusStereographicTubeResidual
import GRWTSK.Combinatorics.GraphTheory.FiniteWeakGramPairs
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory

/-!
# Actual energy-matched tubes: zero near-angle and decaying weak signed residual

The original integer n in endpointIndex T is mapped to the REAL
GRWTSK Euclidean straight Tube 2 with rational stereographic direction
u_n and genuine shading the disk of radius sqrt(d_n(T)), where
d_n(T) is the ORIGINAL mu(n)^2 causal-response Gram diagonal.
No n is removed, nor is the signed kernel replaced by a geometric mass.

The true Lebesgue intersection mass is exactly pi*min(d_m,d_n).
Thus, with eta=pi*q(T), q(T)=(floor(exp T)+1)^(-6), a weak-overlap
pair has min(d_m,d_n)<q(T).

The existing genuine causal-response Gram is Cauchy-Schwarz:
|k_mn|^2<=d_m*d_n. The original diagonal sum D(T)<=2*T^2.
Therefore the ENTIRE signed weak-overlap packet is bounded by
N^2 sqrt(q(T)*D(T)), which is at most sqrt(2)*T/(N+1).
The near-angular packet vanishes by the deterministic integer
stereographic projective gap, with sigma=2(H+1)/(N^2+1).

This is a noncircular, quantitative genuinely original-source result
about the selected weak residual only, not a proof of the RH-strength
all-rate bound for the remaining DENSE STRONG-overlap packet. Shrinking
eta can make weak overlap tiny while keeping the strong sector huge.
-/

namespace GRWTSK.NumberTheory.Moebius.EnergyMatchedWeakResidual

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.PutnamSparseGapProof
open GRWTSK.NumberTheory.Moebius.FareyFaryKakeyaIncidence
open GRWTSK.NumberTheory.Moebius.PutnamKakeyaAngularCollar
open GRWTSK.NumberTheory.Moebius.PutnamKakeyaSignedResidual
open GRWTSK.NumberTheory.Moebius.StereographicTubeResidual
open GRWTSK.NumberTheory.Moebius.CausalGramCauchy
open GRWTSK.NumberTheory.Moebius.EnergyMatchedArithmeticTube
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FiniteWeakGramPairs
open GRWTSK.Analysis.Geometry.FiniteStraightTubeFamily

classical

/-- The physical weak-energy threshold is chosen before observing any
sign of the original Möbius source. This is a rational scale in N. -/
def weakEnergyThreshold (T : ℝ) : ℝ :=
  1 / (((⌊Real.exp T⌋₊ : ℝ) + 1) ^ 6)

def weakPhysicalThreshold (T : ℝ) : ℝ :=
  Real.pi * weakEnergyThreshold T

theorem weakEnergyThreshold_pos (T : ℝ) :
    0 < weakEnergyThreshold T := by
  unfold weakEnergyThreshold
  positivity

theorem weakPhysicalThreshold_pos (T : ℝ) :
    0 < weakPhysicalThreshold T :=
  mul_pos Real.pi_pos (weakEnergyThreshold_pos T)

/-- The energy-matched source direction is literally the same
integer-indexed rational stereographic direction as the canonical
constant-shading source. Physical shading size does not affect it. -/
theorem energyOriginalGap_eq_canonical (T : ℝ) (m n : ℕ) :
    originalProjectiveGap (originalEnergyFamily T) m n =
      originalProjectiveGap (originalStereographicFamily T) m n := by
  by_cases hm : m ∈ endpointIndex T
  · by_cases hn : n ∈ endpointIndex T
    · simp only [originalProjectiveGap, dif_pos hm, dif_pos hn]
      rfl
    · simp [originalProjectiveGap, hm, hn]
  · by_cases hn : n ∈ endpointIndex T
    · simp [originalProjectiveGap, hm, hn]
    · simp [originalProjectiveGap, hm, hn]

/-- Every positive original source pair with distance > H remains
genuinely projectively separated for this new energy-matched family.
The same exact source integer n still determines its direction. -/
theorem energyLongGap_separated (T : ℝ) (H m n : ℕ)
    (hm : m ∈ endpointIndex T) (hn : n ∈ endpointIndex T)
    (hfar : H < Nat.dist m n) :
    sourceCollarSigma H T ≤
      originalProjectiveGap (originalEnergyFamily T) m n := by
  rw [energyOriginalGap_eq_canonical]
  exact canonical_long_gap_separated T H m n hm hn hfar

theorem energyNearRelation_false (T : ℝ) (H m n : ℕ)
    (hm : m ∈ endpointIndex T) (hn : n ∈ endpointIndex T)
    (hmn : m ≠ n) :
    ¬ nearRelation (shortGapSet H) (originalEnergyFamily T)
        (sourceCollarSigma H T) m n := by
  intro h
  apply canonical_not_near T H m n hm hn hmn
  exact ⟨h.1, by
    simpa only [energyOriginalGap_eq_canonical T m n] using h.2⟩

/-- Exact zero near-angular LONG-GAP signed original packet.
Only the original distance cutoff H and original projective geometry
are used; no weak-overlap or arithmetic-cancellation estimate. -/
theorem energyNearCross_zero (T : ℝ) (H : ℕ) :
    nearAngularCross (shortGapSet H)
      (originalEnergyFamily T) (sourceCollarSigma H T) = 0 := by
  unfold nearAngularCross originalIncidenceCross orderedCross
  apply Finset.sum_eq_zero
  intro m hm
  apply Finset.sum_eq_zero
  intro n hn
  by_cases hmn : m = n
  · simp [hmn]
  · have hfalse := energyNearRelation_false T H m n hm hn hmn
    simp [hmn, hfalse]

/-- A REAL weak physical intersection has an actual small minimum
SOURCE DIAGONAL, with pi>0 paid exactly, not an assumed relation. -/
theorem weakRelation_implies_min_energy_lt
    {T : ℝ} (hT : 0 ≤ T) (H m n : ℕ)
    (hm : m ∈ endpointIndex T) (hn : n ∈ endpointIndex T)
    (hw : weakRelation (shortGapSet H) (originalEnergyFamily T)
      (sourceCollarSigma H T) (weakPhysicalThreshold T) m n) :
    min (sourceDiagonal T m) (sourceDiagonal T n) <
      weakEnergyThreshold T := by
  have hmass :=
    originalEnergyFamily_pair_mass hT m n hm hn
  have hweak : Real.pi * min (sourceDiagonal T m) (sourceDiagonal T n) <
      Real.pi * weakEnergyThreshold T := by
    simpa only [hmass, weakPhysicalThreshold] using hw.2.2
  exact (mul_lt_mul_left Real.pi_pos).mp hweak

/-- Source diagonal is a NONNEGATIVE summand of the old full
pickupDiagonal. The full original bound D(T)<=2T^2 is available
independently of RH and of the geometric visualization. -/
theorem sourceDiagonal_le_complete_diagonal
    {T : ℝ} (hT : 0 ≤ T) (m : ℕ)
    (hm : m ∈ endpointIndex T) :
    sourceDiagonal T m ≤ pickupDiagonal T := by
  have h : sourceDiagonal T m ≤
      ∑ n ∈ endpointIndex T, sourceDiagonal T n :=
    Finset.single_le_sum
      (fun n hn hnm => sourceDiagonal_nonneg hT n hn) hm
  simpa only [sourceDiagonal, pickupDiagonal, endpointIndex] using h

/-- The source-derived bound holds for the ACTUAL full original
signed continuous causal-response Gram, not a freely supplied matrix. -/
theorem energyWeakCross_abs_le_card_sqrt
    {T : ℝ} (hT : 0 ≤ T) (H : ℕ) :
    |weakOverlapCross (shortGapSet H) (originalEnergyFamily T)
      (sourceCollarSigma H T) (weakPhysicalThreshold T)| ≤
      (((endpointIndex T).card : ℝ) ^ 2) *
        Real.sqrt (weakEnergyThreshold T * pickupDiagonal T) := by
  have hD : 0 ≤ pickupDiagonal T :=
    (pickupDiagonal_quadratic_bound hT).1
  have hd : ∀ m ∈ endpointIndex T,
      0 ≤ sourceDiagonal T m ∧
      sourceDiagonal T m ≤ pickupDiagonal T := by
    intro m hm
    exact ⟨sourceDiagonal_nonneg hT m hm,
      sourceDiagonal_le_complete_diagonal hT m hm⟩
  have hCS : ∀ m ∈ endpointIndex T, ∀ n ∈ endpointIndex T,
      (sourceKernel T m n)^2 ≤
        sourceDiagonal T m * sourceDiagonal T n := by
    intro m hm n hn
    exact sourceKernel_sq_le_diagonal hT hm hn
  have hsel : ∀ m ∈ endpointIndex T, ∀ n ∈ endpointIndex T,
      weakRelation (shortGapSet H) (originalEnergyFamily T)
        (sourceCollarSigma H T) (weakPhysicalThreshold T) m n →
      min (sourceDiagonal T m) (sourceDiagonal T n) <
        weakEnergyThreshold T := by
    intro m hm n hn h
    exact weakRelation_implies_min_energy_lt hT H m n hm hn h
  change |∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
      if m ≠ n ∧
        weakRelation (shortGapSet H) (originalEnergyFamily T)
          (sourceCollarSigma H T) (weakPhysicalThreshold T) m n
      then sourceKernel T m n else 0| ≤ _
  exact selectedWeakCross_abs_le_card_sq_sqrt
    (endpointIndex T)
    (weakRelation (shortGapSet H) (originalEnergyFamily T)
      (sourceCollarSigma H T) (weakPhysicalThreshold T))
    (sourceDiagonal T) (sourceKernel T)
    (weakEnergyThreshold T) (pickupDiagonal T)
    (weakEnergyThreshold_pos T).le hD hd hCS hsel

/-- An explicit small positive geometric weak-overlap threshold
removes the near-angular source completely and controls the FULL
remaining signed near+weak residual by actual source energies.
No RH-strength estimate is asserted for the strong pair packet. -/
theorem energyCompleteSignedRemainder_abs_le_card_sqrt
    {T : ℝ} (hT : 0 ≤ T) (H : ℕ) :
    |angularFarSignedRemainder (shortGapSet H)
      (originalEnergyFamily T) (sourceCollarSigma H T)
      (weakPhysicalThreshold T)| ≤
      (((endpointIndex T).card : ℝ) ^ 2) *
        Real.sqrt (weakEnergyThreshold T * pickupDiagonal T) := by
  rw [signedRemainder_eq_near_add_weak
      (shortGapSet H) (originalEnergyFamily T)
      (sourceCollarSigma H T) (weakPhysicalThreshold T)
      (weakPhysicalThreshold_pos T)]
  rw [energyNearCross_zero T H, zero_add]
  exact energyWeakCross_abs_le_card_sqrt hT H

end GRWTSK.NumberTheory.Moebius.EnergyMatchedWeakResidual
