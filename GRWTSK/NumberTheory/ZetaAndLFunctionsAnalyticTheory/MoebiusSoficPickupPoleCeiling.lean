/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusSoficPickupStationaryMean
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianSignedResidualPoleSeries

/-!
# The critical pole cost in the original signed mask deviation

A supplied affine-frequent residual allowance gives a global lower energy
cost from the genuine critical-line pole series. The original signed
mask then pays that cost in addition to the stationary mean square.
-/

set_option autoImplicit false
noncomputable section
open Filter Set
open scoped Topology

namespace GRWTSK.NumberTheory.Moebius.MoebiusSoficPickupPoleCeiling

open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential
open GRWTSK.RiemannHypothesis.CCC
open GaussianSignedResidualLaplace GaussianSignedResidualAffineEnvelope
  GaussianSignedResidualPole GaussianSignedResidualPoleSeries
  MoebiusSoficPickupHeatComparison MoebiusSoficPickupStationaryMean
  MoebiusSoficBlockObstruction MoebiusSoficIndependentThinning

/-- Under a genuine affine-frequent linear supplier, the signed deviation
relative to the original diagonal pays both stationary and pole costs at
all sufficiently large horizons. -/
theorem eventually_signed_mask_le_settled_sub_stationary_sq_sub_poleSeries
    {s A : ℝ} (hs : 0 < s) (hζ : riemannZeta (1 / 2 : ℂ) ≠ 0) (hA : 0 ≤ A)
    {G : Set ℝ} {U : ℝ → ℝ} (hG : AffineFrequent G)
    (hmajorant : ∀ᶠ T in atTop ⊓ 𝓟 G, residualEnergy s T ≤ U T)
    (hbudget : ∀ ε : ℝ, 0 < ε →
      ∀ᶠ T in atTop ⊓ 𝓟 G, U T ≤ (A + ε) * T)
    {ε : ℝ} (hε : 0 < ε) :
    ∀ᶠ T : ℝ in atTop,
      (weightedPickupDeviation T Finset.univ (heatMaskWeight s T) (heatMaskCoeff T) -
        pickupDiagonal T) / T ≤
      settledHeatedPickup s - ((2 / riemannZeta (1 / 2 : ℂ)).re) ^ 2 -
        2 * (∑' ρ, positiveCriticalPoleSquare ρ) + ε := by
  let m := (2 / riemannZeta (1 / 2 : ℂ)).re
  let S := 2 * (∑' ρ, positiveCriticalPoleSquare ρ)
  let Q := S + ‖stationaryCoefficient s‖ ^ 2
  have hbudget₁ : ∀ᶠ T in atTop ⊓ 𝓟 G, U T ≤ (A + 1) * T ^ (1 : ℕ) + 0 := by
    simpa only [pow_one, add_zero] using hbudget 1 one_pos
  obtain ⟨C, hC, hE⟩ := global_residualEnergy_poly_of_affine_envelope hG
    (add_nonneg hA zero_le_one) (le_refl (0 : ℝ)) hmajorant hbudget₁
  have hsum := tendsto_signed_mask_and_residual_at_stationary hs hζ hC
    (by simpa only [pow_one] using hE)
  have hhigh := (tendsto_order.mp hsum).2
    (settledHeatedPickup s + heatedLimit s ^ 2 - 2 * heatedLimit s * m + ε / 2) (by linarith)
  have hliminf : (Q : EReal) ≤
      liminf (fun T : ℝ => ((residualEnergy s T / T : ℝ) : EReal)) atTop :=
    (linear_supplier_poleSeries_bound hs hζ hA hG hmajorant hbudget).2.2.1
  have hstrict : ((Q - ε / 2 : ℝ) : EReal) <
      liminf (fun T : ℝ => ((residualEnergy s T / T : ℝ) : EReal)) atTop :=
    lt_of_lt_of_le (EReal.coe_lt_coe_iff.2 (by linarith)) hliminf
  have hlow := eventually_lt_of_lt_liminf hstrict
  have hre : (stationaryCoefficient s).re = m - heatedLimit s := by
    simp [stationaryCoefficient, m, Complex.sub_re]
  have hstat : (m - heatedLimit s) ^ 2 ≤ ‖stationaryCoefficient s‖ ^ 2 := by
    rw [← hre]
    exact sq_le_sq.mpr (by simpa only [abs_of_nonneg (norm_nonneg _)] using
      Complex.abs_re_le_norm (stationaryCoefficient s))
  filter_upwards [hhigh, hlow] with T hhigh hlow
  rw [add_div] at hhigh
  have henergy : Q - ε / 2 < residualEnergy s T / T := EReal.coe_lt_coe_iff.1 hlow
  change _ ≤ settledHeatedPickup s - m ^ 2 - S + ε
  dsimp only [Q] at henergy
  nlinarith

end GRWTSK.NumberTheory.Moebius.MoebiusSoficPickupPoleCeiling
