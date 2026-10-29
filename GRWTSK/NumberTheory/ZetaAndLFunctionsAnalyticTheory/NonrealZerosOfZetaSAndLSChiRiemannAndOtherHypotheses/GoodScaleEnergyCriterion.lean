/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib retains its upstream authorship and Apache-2.0 license. -/
import GRWTSK.SequencesSeriesSummability.ConvergenceAndDivergenceOfInfiniteLimitingProcesses.GoodScaleSubexponential
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses.EnergyAbscissa

/-!
# RH from affinely frequent bounds on the actual signed pickup

Only the existing pickup, complete ordered cross sum, diagonal, and canonical
RH target are used. The cross sum is NOT assumed monotone. It first pays the
actual monotone energy through the exact diagonal/cross identity.
No good-scale arithmetic supplier or entropy theorem is constructed.
SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion

open MeasureTheory Set
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential

/-- Monotonicity of the unchanged cumulative square energy on nonnegative times. -/
theorem pickupEnergy_monotoneOn_nonnegative : MonotoneOn pickupEnergy (Ici 0) := by
  intro T hT S hS hTS
  rw [pickupEnergy, pickupEnergy, intervalIntegral.integral_of_le hT,
    intervalIntegral.integral_of_le hS]
  have hi : IntegrableOn (fun u => wholePickup u ^ 2) (Ioc 0 S) :=
    (wholePickup_continuous.pow 2).integrableOn_Icc.mono_set Ioc_subset_Icc_self
  apply setIntegral_mono_set hi (ae_of_all _ (fun u => sq_nonneg (wholePickup u)))
  exact ae_of_all _ (fun u hu => ⟨hu.1, hu.2.trans hTS⟩)

/-- The already proved quadratic diagonal estimate pays every positive rate. -/
theorem pickupDiagonal_subexponential : SubexponentialUpper pickupDiagonal := by
  have hquadratic : SubexponentialUpper (fun T : ℝ => 2 * T ^ 2) := by
    apply subexponentialUpper_of_polynomial (C := 2) (q := 2) (by norm_num)
    intro T hT
    rw [Real.rpow_two]
    nlinarith
  exact hquadratic.mono (fun T hT => (pickupDiagonal_quadratic_bound hT).2)

/-- Signed cross bounds on good scales control total energy on those same scales. -/
theorem energy_on_of_cross_on {G : Set ℝ}
    (hcross : SubexponentialOn pickupCross G) : SubexponentialOn pickupEnergy G := by
  have hsum := add_global hcross pickupDiagonal_subexponential
  intro ε hε
  obtain ⟨C, T₁, hC, hT₁, hb⟩ := hsum ε hε
  refine ⟨C, T₁, hC, hT₁, ?_⟩
  intro T hG hT
  rw [pickupEnergy_eq_diagonal_add_cross (hT₁.trans hT), add_comm]
  exact hb T hG hT

/-- Good-scale energy is equivalent to the existing global growth premise. -/
theorem pickupEnergySubexp_iff_good_scales {G : Set ℝ}
    (hcover : AffineFrequent G) :
    PickupEnergySubexp ↔ SubexponentialOn pickupEnergy G := by
  exact global_iff_on pickupEnergy_monotoneOn_nonnegative hcover

/-- Exact existing energy-abscissa endpoint; no zero-rate integrability is inferred. -/
theorem energyAbscissa_zero_of_cross_good_scales {G : Set ℝ}
    (hcover : AffineFrequent G) (hcross : SubexponentialOn pickupCross G) :
    pickupEnergyAbscissa = 0 := by
  apply pickupEnergyAbscissa_zero_iff_weightedEnergyAll.mpr
  apply pickupWeightedEnergyAll_of_subexp
  exact global_of_monotoneOn pickupEnergy_monotoneOn_nonnegative hcover
    (energy_on_of_cross_on hcross)

/-- Canonical RH from the exact signed cross sum at affinely frequent good scales. -/
theorem riemannHypothesis_of_cross_good_scales {G : Set ℝ}
    (hcover : AffineFrequent G) (hcross : SubexponentialOn pickupCross G) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_pickupEnergyAbscissa_zero
    (energyAbscissa_zero_of_cross_good_scales hcover hcross)

/-- The corresponding direct-energy consumer. -/
theorem riemannHypothesis_of_energy_good_scales {G : Set ℝ}
    (hcover : AffineFrequent G) (henergy : SubexponentialOn pickupEnergy G) :
    _root_.RiemannHypothesis :=
  riemannHypothesis_of_pickupEnergySubexp
    (global_of_monotoneOn pickupEnergy_monotoneOn_nonnegative hcover henergy)

end GRWTSK.NumberTheory.Moebius.GoodScaleEnergyCriterion
