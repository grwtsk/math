/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleCausalEnergyTarget
import GRWTSK.ProbabilityTheoryAndStochasticProcesses.SignedCyclicWalkPacket
import GRWTSK.MeasureAndIntegration.FiniteResponseSum

/-!
# The complete cyclic packet of the ORIGINAL causal Liouville waveform

The cycle is a readout of labels 1,...,N, not a periodicity assumption on lambda.
All offsets are summed with their signs. The causal weights are inside each
coefficient before squaring. An upper bound for the integrated COMPLETE packet
is still an open arithmetic supplier; no fixed-shift limit supplies it here.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
open Set MeasureTheory
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.ProbabilityAndMathematicalStatistics.SignedCyclicWalkPacket
namespace GRWTSK.NumberTheory.LiouvilleCausalEnergy

/-- Exact positive-index readout, retaining the source response at every label. -/
def weightedCycle (N : ℕ) [NeZero N] (u : ℝ) (z : ZMod N) : ℝ :=
  coefficient (z.val + 1) * pickupResponse (z.val + 1) u

theorem sum_cycle_eq_closed_prefix (N : ℕ) [NeZero N] (f : ℕ → ℝ) :
    (∑ z : ZMod N, f (z.val + 1)) = ∑ n ∈ Finset.Icc 1 N, f n := by
  classical
  apply Finset.sum_bij (fun z _ => z.val + 1)
  · intro z _
    exact Finset.mem_Icc.mpr ⟨by omega, by have := ZMod.val_lt z; omega⟩
  · intro a _ b _ hab
    apply ZMod.val_injective N
    omega
  · intro n hn
    have hn' := Finset.mem_Icc.mp hn
    refine ⟨((n - 1 : ℕ) : ZMod N), Finset.mem_univ _, ?_⟩
    rw [ZMod.val_natCast, Nat.mod_eq_of_lt (by omega : n - 1 < N)]
    omega
  · intro z _
    rfl

/-- Final inventory equals the original dynamic cutoff at every earlier time. -/
theorem waveform_eq_fixed_inventory {u T : ℝ} (huT : u ≤ T) :
    waveform u = ∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
      coefficient n * pickupResponse n u := by
  classical
  unfold waveform
  apply Finset.sum_subset
    (Finset.Icc_subset_Icc_right (Nat.floor_mono (Real.exp_le_exp.mpr huT)))
  intro n hn hnot
  have hn1 : 1 ≤ n := (Finset.mem_Icc.mp hn).1
  have hn0 : (0 : ℝ) < n := by exact_mod_cast (show 0 < n by omega)
  have hlog : ¬ Real.log n ≤ u := by
    intro h
    have hnfloor : n ≤ ⌊Real.exp u⌋₊ :=
      (Nat.le_floor_iff (Real.exp_pos u).le).mpr ((Real.log_le_iff_le_exp hn0).mp h)
    exact hnot (Finset.mem_Icc.mpr ⟨hn1, hnfloor⟩)
  simp [pickupResponse, hlog]

/-- The packet is the literal causal square throughout the recording window. -/
theorem weighted_packet_eq_waveform_sq (N : ℕ) [NeZero N]
    {u T : ℝ} (huT : u ≤ T) (hN : ⌊Real.exp T⌋₊ = N) :
    completePacket (weightedCycle N u) = waveform u ^ 2 := by
  rw [completePacket_eq_signedWalk_sq]
  unfold signedWalk weightedCycle
  rw [sum_cycle_eq_closed_prefix]
  rw [waveform_eq_fixed_inventory huT, hN]

def integratedPacket (N : ℕ) [NeZero N] (T : ℝ) : ℝ :=
  ∫ u in (0 : ℝ)..T, completePacket (weightedCycle N u)

/-- Exact integral identity; the signed full packet remains inside the integral. -/
theorem energy_eq_integratedPacket (N : ℕ) [NeZero N]
    {T : ℝ} (hT : 0 ≤ T) (hN : ⌊Real.exp T⌋₊ = N) :
    energy T = integratedPacket N T := by
  unfold energy integratedPacket
  apply intervalIntegral.integral_congr
  intro u hu
  rw [uIcc_of_le hT] at hu
  rw [sq_abs, weighted_packet_eq_waveform_sq N hu.2 hN]

/-- Every offset integrand is continuous from the actual causal response. -/
theorem weightedCorrelation_continuous (N : ℕ) [NeZero N] (h : ZMod N) :
    Continuous (fun u : ℝ => cyclicCorrelation (weightedCycle N u) h) := by
  unfold cyclicCorrelation weightedCycle
  apply continuous_finsetSum
  intro z _
  exact (continuous_const.mul (pickupResponse_continuous (by omega : 1 ≤ z.val + 1))).mul
    (continuous_const.mul (pickupResponse_continuous (by omega : 1 ≤ (z + h).val + 1)))

/-- All shifts integrate with their signs; finite exchange has integrability witnesses. -/
theorem integratedPacket_eq_sum_integrated_correlations (N : ℕ) [NeZero N] (T : ℝ) :
    integratedPacket N T = ∑ h : ZMod N,
      ∫ u in (0 : ℝ)..T, cyclicCorrelation (weightedCycle N u) h := by
  unfold integratedPacket completePacket
  apply intervalIntegral.integral_finsetSum
  intro h _
  exact (weightedCorrelation_continuous N h).intervalIntegrable _ _

/-- Conditional arithmetic consumer. No complete-packet estimate is supplied. -/
theorem energy_le_of_integratedPacket_le (N : ℕ) [NeZero N]
    {T B : ℝ} (hT : 0 ≤ T) (hN : ⌊Real.exp T⌋₊ = N)
    (h : integratedPacket N T ≤ B) : energy T ≤ B := by
  rw [energy_eq_integratedPacket N hT hN]
  exact h

end GRWTSK.NumberTheory.LiouvilleCausalEnergy
