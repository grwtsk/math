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
open GRWTSK.RiemannHypothesis.CCC GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
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

/-- The complete positive critical-line pole cost is a global lower
bound, up to arbitrary slack, for the measured variance of the original
pickup under the same affine-frequent supplier. -/
theorem eventually_pickup_variance_ge_poleSeries
    {s A : ℝ} (hs : 0 < s) (hζ : riemannZeta (1 / 2 : ℂ) ≠ 0) (hA : 0 ≤ A)
    {G : Set ℝ} {U : ℝ → ℝ} (hG : AffineFrequent G)
    (hmajorant : ∀ᶠ T in atTop ⊓ 𝓟 G, residualEnergy s T ≤ U T)
    (hbudget : ∀ ε : ℝ, 0 < ε →
      ∀ᶠ T in atTop ⊓ 𝓟 G, U T ≤ (A + ε) * T)
    {ε : ℝ} (hε : 0 < ε) :
    ∀ᶠ T : ℝ in atTop, 2 * (∑' ρ, positiveCriticalPoleSquare ρ) - ε ≤
      pickupHorizonVariance T := by
  let m := (2 / riemannZeta (1 / 2 : ℂ)).re
  let S := 2 * (∑' ρ, positiveCriticalPoleSquare ρ)
  have hbudget₁ : ∀ᶠ T in atTop ⊓ 𝓟 G, U T ≤ (A + 1) * T ^ (1 : ℕ) + 0 := by
    simpa only [pow_one, add_zero] using hbudget 1 one_pos
  obtain ⟨C, hC, hE⟩ := global_residualEnergy_poly_of_affine_envelope hG
    (add_nonneg hA zero_le_one) (le_refl (0 : ℝ)) hmajorant hbudget₁
  have hm : Tendsto pickupHorizonMean atTop (𝓝 m) :=
    tendsto_pickupHorizonMean_at_stationary hs hζ hC (by simpa only [pow_one] using hE)
  have hsum := (tendsto_normalized_heatMaskDeviation_add_measured_variance_and_mean_sq hs).sub
    (hm.pow 2)
  have hsmall : 0 < ε / 2 := by linarith
  have hceil := eventually_signed_mask_le_settled_sub_stationary_sq_sub_poleSeries
    hs hζ hA hG hmajorant hbudget hsmall
  have hlow := (tendsto_order.mp hsum).1
    (settledHeatedPickup s - m ^ 2 - ε / 2) (by linarith)
  filter_upwards [hceil, hlow] with T hceilT hlowT
  change _ ≤ settledHeatedPickup s - m ^ 2 - S + ε / 2 at hceilT
  change S - ε ≤ _
  linarith

/-- Positive pole mass excludes tangency of two genuine residual
allowance intervals on a common nontrivial horizon filter. -/
theorem abs_settled_gap_lt_add_of_two_allowances_and_positive_poleSeries
    {s t A a b : ℝ} (hs : 0 < s) (ht : 0 < t)
    (hζ : riemannZeta (1 / 2 : ℂ) ≠ 0) (hA : 0 ≤ A)
    {G : Set ℝ} {U : ℝ → ℝ} (hG : AffineFrequent G)
    (hmajorant : ∀ᶠ T in atTop ⊓ 𝓟 G, residualEnergy s T ≤ U T)
    (hbudget : ∀ ε : ℝ, 0 < ε →
      ∀ᶠ T in atTop ⊓ 𝓟 G, U T ≤ (A + ε) * T)
    (hS : 0 < ∑' ρ, positiveCriticalPoleSquare ρ)
    (ha : 0 ≤ a) (hb : 0 ≤ b) (hpos : 0 < a + b)
    {l : Filter ℝ} [NeBot l] (hl : l ≤ atTop)
    (haBudget : ∀ ε : ℝ, 0 < ε → ∀ᶠ T in l, residualEnergy s T / T ≤ a ^ 2 + ε)
    (hbBudget : ∀ ε : ℝ, 0 < ε → ∀ᶠ T in l, residualEnergy t T / T ≤ b ^ 2 + ε) :
    |heatedLimit s - heatedLimit t| < a + b := by
  have hle := abs_settled_gap_le_sqrt_add_sqrt_of_two_residual_allowances
    hs ht hl haBudget hbBudget
  rw [Real.sqrt_sq ha, Real.sqrt_sq hb] at hle
  refine lt_of_le_of_ne hle ?_
  intro heq
  obtain ⟨_, hvar⟩ := pickup_mean_and_variance_limits_at_tangent_allowances
    hs ht ha hb hpos hl haBudget hbBudget heq
  let S := ∑' ρ, positiveCriticalPoleSquare ρ
  have hsmall : 0 < S := hS
  have hhigh := (tendsto_order.mp hvar).2 S hsmall
  have hlow := (eventually_pickup_variance_ge_poleSeries
    hs hζ hA hG hmajorant hbudget hsmall).filter_mono hl
  obtain ⟨T, hhighT, hlowT⟩ := (hhigh.and hlow).exists
  change 2 * S - S ≤ pickupHorizonVariance T at hlowT
  linarith

private theorem positive_poleSeries_of_witness
    (ρ : PositiveCriticalLineZero) (hsum : Summable positiveCriticalPoleSquare) :
    0 < ∑' σ, positiveCriticalPoleSquare σ := by
  obtain ⟨g, hg, hgn, hf⟩ := multiplicity_factorization ρ.1
  have hfactor : ∀ᶠ w in 𝓝 ρ.1.val,
      riemannZeta w = (w - ρ.1.val) ^ multiplicity ρ.1 * g w :=
    hf.mono fun _ h => by simpa only [smul_eq_mul] using h
  have hcoeff : zetaPoleCoefficient ρ.1 ≠ 0 := by
    rw [← poleCoefficient_eq_zetaPoleCoefficient ρ.1 hg hfactor]
    exact poleCoefficient_ne_zero ρ.2.1 ρ.2.2.ne' hgn
  have hpos : 0 < positiveCriticalPoleSquare ρ :=
    pow_pos (norm_pos_iff.mpr hcoeff) 2
  have hterm := hsum.sum_le_tsum ({ρ} : Finset PositiveCriticalLineZero)
    (fun σ _ => sq_nonneg ‖zetaPoleCoefficient σ.1‖)
  exact hpos.trans_le (by simpa only [Finset.sum_singleton, positiveCriticalPoleSquare] using hterm)

/-- One actual positive critical-line zero suffices to rule out tangent
allowances under the same genuine affine-frequent supplier. -/
theorem abs_settled_gap_lt_add_of_two_allowances_and_positive_critical_zero
    {s t A a b : ℝ} (hs : 0 < s) (ht : 0 < t)
    (hζ : riemannZeta (1 / 2 : ℂ) ≠ 0) (hA : 0 ≤ A)
    {G : Set ℝ} {U : ℝ → ℝ} (hG : AffineFrequent G)
    (hmajorant : ∀ᶠ T in atTop ⊓ 𝓟 G, residualEnergy s T ≤ U T)
    (hbudget : ∀ ε : ℝ, 0 < ε →
      ∀ᶠ T in atTop ⊓ 𝓟 G, U T ≤ (A + ε) * T)
    (ρ : PositiveCriticalLineZero)
    (ha : 0 ≤ a) (hb : 0 ≤ b) (hpos : 0 < a + b)
    {l : Filter ℝ} [NeBot l] (hl : l ≤ atTop)
    (haBudget : ∀ ε : ℝ, 0 < ε → ∀ᶠ T in l, residualEnergy s T / T ≤ a ^ 2 + ε)
    (hbBudget : ∀ ε : ℝ, 0 < ε → ∀ᶠ T in l, residualEnergy t T / T ≤ b ^ 2 + ε) :
    |heatedLimit s - heatedLimit t| < a + b :=
  abs_settled_gap_lt_add_of_two_allowances_and_positive_poleSeries hs ht hζ hA hG
    hmajorant hbudget
    (positive_poleSeries_of_witness ρ
      (linear_supplier_poleSeries_bound hs hζ hA hG hmajorant hbudget).2.1)
    ha hb hpos hl haBudget hbBudget

end GRWTSK.NumberTheory.Moebius.MoebiusSoficPickupPoleCeiling
