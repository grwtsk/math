/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.SignedWaveformEnergyTarget
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.DyadicSignedResidueWaveform

/-!
# Exact integration of the local energy target with the published residue source

The upstream development is pinned for review at
 e637be1a51a18d4b7e1d74f8b7aa56e60972c94d.
No cancellation theorem is asserted. The RH return retains the exact open
all-positive-rate energy hypothesis. Both mixed sectors remain inside the
published complete residue waveform before squaring.
-/
set_option autoImplicit false
noncomputable section
open Set
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.NumberTheory.Moebius.DyadicSignedResidueWaveform

namespace GRWTSK.NumberTheory.SignedWaveformEnergy

/-- The literal causal sum equals the original pickup, without changing coefficients. -/
theorem waveform_eq_wholePickup {u : ℝ} (hu : 0 ≤ u) :
    waveform u = wholePickup u := by
  exact (wholePickup_fixed_inventory hu (le_refl u)).symm

/-- The energy target uses the same nonnegative source energy at every time. -/
theorem energy_eq_pickupEnergy {T : ℝ} (hT : 0 ≤ T) :
    energy T = pickupEnergy T := by
  unfold energy pickupEnergy
  apply intervalIntegral.integral_congr
  intro u hu
  rw [uIcc_of_le hT] at hu
  rw [sq_abs, waveform_eq_wholePickup hu.1]

/-- Exact equality for every square modulus, not a positive classwise majorant. -/
theorem energy_dyadic_eq_completeResidueEnergy (j d : ℕ) [NeZero d] :
    energy ((j : ℝ) * Real.log 2) = completeResidueEnergy j d := by
  change energy (dyadicTime j) = completeResidueEnergy j d
  rw [energy_eq_pickupEnergy (dyadicTime_nonnegative j),
    completeResidueEnergy_eq_pickupEnergy]

/-- The two all-positive-rate propositions have exactly the same source and rates. -/
theorem uniformBudget_iff_allRateResidueEnergy (d : ℕ) [NeZero d] :
    UniformSignedWaveformEnergyBudget ↔ AllRateResidueEnergy d := by
  constructor
  · intro h ε hε
    obtain ⟨C, hC, hb⟩ := h ε hε
    refine ⟨C, hC, ?_⟩
    intro j
    rw [dyadic_rate, ← energy_dyadic_eq_completeResidueEnergy]
    exact hb j
  · intro h δ hδ
    obtain ⟨C, hC, hb⟩ := h δ hδ
    refine ⟨C, hC, ?_⟩
    intro j
    have hj := hb j
    rw [dyadic_rate, ← energy_dyadic_eq_completeResidueEnergy] at hj
    exact hj

/-- Conditional return only: the missing arithmetic estimate remains a premise. -/
theorem riemannHypothesis_of_uniformSignedWaveformEnergyBudget
    (h : UniformSignedWaveformEnergyBudget) : _root_.RiemannHypothesis := by
  exact riemannHypothesis_of_allRateResidueEnergy 1
    ((uniformBudget_iff_allRateResidueEnergy 1).mp h)

end GRWTSK.NumberTheory.SignedWaveformEnergy
