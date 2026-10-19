import SourceActualPoleMomentAnnihilation
import ActualSignedStieltjes

/-!
Direct closed signed Abel identification of the unchanged Psi-floor pairing
with the original independent integerJ inventory at EVERY real A >= 1.
The arithmetic unit, all prime powers, real cutoff and touching endpoint remain.
The original 260/A^2 calibration and same-radius finite-prefix consumer follow.
No arithmetic upper witness is supplied.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualPsiIntegerExact
open MeasureTheory Set Filter
open scoped Topology
open SourceActualPoleMomentAnnihilation SourcePairing SourcePositiveSampling
open ContinuousResearch.ActualSignedStieltjes ContinuousResearch.ActualIntegerInventory
open ContinuousResearch.ActualArithmeticCalibration ContinuousResearch.IntegerWitnessTransfer
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual
noncomputable section

/-- The original signed closed unit is recorded before integral seam transport. -/
theorem actual_signed_unit_retained (A : ℝ) (hA : 1 ≤ A) :
    signedCoefficient 1 * plainProfile A 1 1 = -1 := by
  rw [signedCoefficient_one]
  simpa only [ArithmeticFunction.vonMangoldt_apply_one, zero_sub] using
    (integer_unit_atom hA)

/-- Actual closed Psi-floor vanishes strictly below the first positive integer. -/
theorem actualPsiFloorDensity_zero_below_one (A x : ℝ) (hx : x < 1) :
    actualPsiFloorDensity A x = 0 := by
  have hf : ⌊x⌋₊ = 0 := Nat.floor_eq_zero.mpr hx
  have hp : Chebyshev.psi x = 0 := by
    rw [Chebyshev.psi_eq_sum_Icc, hf]
    simp
  simp [actualPsiFloorDensity, hf, hp]

private theorem actualPsiFloorDensity_lower_ae_zero (A : ℝ) :
    actualPsiFloorDensity A =ᵐ[volume.restrict (Ioc (0 : ℝ) 1)] 0 := by
  filter_upwards [ae_restrict_mem measurableSet_Ioc,
    (volume.restrict (Ioc (0 : ℝ) 1)).ae_ne (1 : ℝ)] with x hx hne
  exact actualPsiFloorDensity_zero_below_one A x (lt_of_le_of_ne hx.2 hne)

/-- Original signed Abel L1 transports through the true natural-floor equality. -/
theorem actualPsiFloorDensity_integrable_upper (A : ℝ) (hA : 1 ≤ A) :
    IntegrableOn (actualPsiFloorDensity A) (Ioi (1 : ℝ)) := by
  apply (actual_signed_integrable hA).congr_fun
  · intro x hx
    unfold actualPsiFloorDensity
    rw [natCast_floor_eq_intCast_floor (by linarith [mem_Ioi.mp hx] : 0 ≤ x)]
  · exact measurableSet_Ioi

/-- Genuine all-positive-axis L1 holds on the original complete real scale domain. -/
theorem actualPsiFloorDensity_integrable_one (A : ℝ) (hA : 1 ≤ A) :
    IntegrableOn (actualPsiFloorDensity A) (Ioi (0 : ℝ)) := by
  have hl : IntegrableOn (actualPsiFloorDensity A) (Ioc (0 : ℝ) 1) :=
    integrableOn_zero.congr (actualPsiFloorDensity_lower_ae_zero A).symm
  simpa only [Ioc_union_Ioi_eq_Ioi (by norm_num : (0 : ℝ) ≤ 1)] using
    hl.union (actualPsiFloorDensity_integrable_upper A hA)

/-- Exact direct source identification, with complete lower compensation and closed atoms. -/
theorem actualPsiFloorPairing_eq_integerJ (A : ℝ) (hA : 1 ≤ A) :
    actualPsiFloorPairing A = integerJ A := by
  rw [actual_full_stieltjes hA]
  unfold actualPsiFloorPairing
  congr 1
  have he : (∫ x in Ioi (1 : ℝ), actualPsiFloorDensity A x) =
      ∫ x in Ioi (1 : ℝ),
        (Chebyshev.psi x - (⌊x⌋ : ℝ)) * deriv (plainProfile A 1) x := by
    apply setIntegral_congr_fun measurableSet_Ioi
    intro x hx
    unfold actualPsiFloorDensity
    rw [natCast_floor_eq_intCast_floor (by linarith [mem_Ioi.mp hx] : 0 ≤ x)]
  rw [← he, ← Ioc_union_Ioi_eq_Ioi (by norm_num : (0 : ℝ) ≤ 1),
    setIntegral_union (Ioc_disjoint_Ioi le_rfl) measurableSet_Ioi
      (integrableOn_zero.congr (actualPsiFloorDensity_lower_ae_zero A).symm)
        (actualPsiFloorDensity_integrable_upper A hA),
    integral_eq_zero_of_ae (actualPsiFloorDensity_lower_ae_zero A), zero_add]

/-- The unchanged original all-real calibration now has only its original analytic cost. -/
theorem actual_residual_sub_psi_floor_calibration (A : ℝ) (hA : 1 ≤ A) :
    |mertensResidual A - actualPsiFloorPairing A -
      (riemannZeta (1 / 2 : ℂ)).re| ≤ 260 / A ^ 2 := by
  rw [actualPsiFloorPairing_eq_integerJ A hA]
  exact actual_calibration_260 hA

/-- The direct calibrated discrepancy vanishes along REAL atTop. -/
theorem actual_residual_sub_psi_floor_zeta_tendsto_zero :
    Tendsto (fun A : ℝ => mertensResidual A - actualPsiFloorPairing A -
      (riemannZeta (1 / 2 : ℂ)).re) atTop (𝓝 (0 : ℝ)) := by
  have ht : Tendsto (fun A : ℝ => 260 / A ^ 2) atTop (𝓝 (0 : ℝ)) := by
    have hi : Tendsto (fun A : ℝ => 1 / A) atTop (𝓝 (0 : ℝ)) := by
      simpa only [one_div] using tendsto_inv_atTop_zero
    simpa [div_eq_mul_inv, one_div, inv_pow] using (hi.pow 2).const_mul 260
  apply tendsto_zero_iff_norm_tendsto_zero.2
  simp only [Real.norm_eq_abs]
  apply squeeze_zero' (Eventually.of_forall fun _ => abs_nonneg _) _ ht
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  exact actual_residual_sub_psi_floor_calibration A hA

/-- Same radius and every real scale preserve the original finite-prefix estimate consumer. -/
theorem original_estimate_of_actual_psi_floor_upper {K R : ℝ} (hR : 1 ≤ R)
    (hpsi : ∀ A : ℝ, R ≤ A → actualPsiFloorPairing A ≤ K) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_integer_bound_at_radius (K := K) hR
  intro A hRA
  rw [← actualPsiFloorPairing_eq_integerJ A (hR.trans hRA)]
  exact hpsi A hRA

/-- The retained quantitative residual tail has the same radius and literal zeta constant. -/
theorem actual_residual_upper_of_psi_floor {K R : ℝ} (hR : 1 ≤ R)
    (hpsi : ∀ A : ℝ, R ≤ A → actualPsiFloorPairing A ≤ K) :
    ∀ A : ℝ, R ≤ A →
      mertensResidual A ≤ K + (riemannZeta (1 / 2 : ℂ)).re + 260 / R ^ 2 := by
  apply residual_bound_at_radius (K := K) hR
  intro A hRA
  rw [← actualPsiFloorPairing_eq_integerJ A (hR.trans hRA)]
  exact hpsi A hRA

end
end FormalResearch.RiemannHypothesis.SourceActualPsiIntegerExact
