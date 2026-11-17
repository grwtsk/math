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

/-- A convex combination of the two genuine allowances must pay the full
common pole cost and the weighted squared gap of the settled heats. -/
theorem poleSeries_add_weighted_gap_le_two_residual_allowances
    {s t A Aₛ Aₜ w : ℝ} (hs : 0 < s) (ht : 0 < t)
    (hζ : riemannZeta (1 / 2 : ℂ) ≠ 0) (hA : 0 ≤ A)
    {G : Set ℝ} {U : ℝ → ℝ} (hG : AffineFrequent G)
    (hmajorant : ∀ᶠ T in atTop ⊓ 𝓟 G, residualEnergy s T ≤ U T)
    (hbudget : ∀ ε : ℝ, 0 < ε →
      ∀ᶠ T in atTop ⊓ 𝓟 G, U T ≤ (A + ε) * T)
    (hw₀ : 0 ≤ w) (hw₁ : w ≤ 1) {l : Filter ℝ} [NeBot l] (hl : l ≤ atTop)
    (hₛ : ∀ ε : ℝ, 0 < ε → ∀ᶠ T in l, residualEnergy s T / T ≤ Aₛ + ε)
    (hₜ : ∀ ε : ℝ, 0 < ε → ∀ᶠ T in l, residualEnergy t T / T ≤ Aₜ + ε) :
    2 * (∑' ρ, positiveCriticalPoleSquare ρ) +
        w * (1 - w) * (heatedLimit s - heatedLimit t) ^ 2 ≤ w * Aₛ + (1 - w) * Aₜ := by
  by_contra! hbad
  let δ := (2 * (∑' ρ, positiveCriticalPoleSquare ρ) +
    w * (1 - w) * (heatedLimit s - heatedLimit t) ^ 2 - (w * Aₛ + (1 - w) * Aₜ)) / 3
  have hδ : 0 < δ := by dsimp only [δ]; linarith
  have hfloor := (eventually_pickup_variance_ge_poleSeries
    hs hζ hA hG hmajorant hbudget hδ).filter_mono hl
  have hceil := eventually_variance_add_weighted_cost_le_of_two_residual_allowances
    hs ht hw₀ hw₁ hl hₛ hₜ hδ
  obtain ⟨T, hfloorT, hceilT⟩ := (hfloor.and hceil).exists
  dsimp only [δ] at hfloorT hceilT
  linarith [sq_nonneg (pickupHorizonMean T - (w * heatedLimit s + (1 - w) * heatedLimit t))]

/-- The two settled heats must fit within the square-root radii of the
allowances after subtracting the common critical-line pole cost. -/
theorem abs_settled_gap_le_sqrt_sub_poleSeries_add_sqrt_sub_poleSeries
    {s t A Aₛ Aₜ : ℝ} (hs : 0 < s) (ht : 0 < t)
    (hζ : riemannZeta (1 / 2 : ℂ) ≠ 0) (hA : 0 ≤ A)
    {G : Set ℝ} {U : ℝ → ℝ} (hG : AffineFrequent G)
    (hmajorant : ∀ᶠ T in atTop ⊓ 𝓟 G, residualEnergy s T ≤ U T)
    (hbudget : ∀ ε : ℝ, 0 < ε →
      ∀ᶠ T in atTop ⊓ 𝓟 G, U T ≤ (A + ε) * T)
    {l : Filter ℝ} [NeBot l] (hl : l ≤ atTop)
    (hₛ : ∀ ε : ℝ, 0 < ε → ∀ᶠ T in l, residualEnergy s T / T ≤ Aₛ + ε)
    (hₜ : ∀ ε : ℝ, 0 < ε → ∀ᶠ T in l, residualEnergy t T / T ≤ Aₜ + ε) :
    let S := 2 * (∑' ρ, positiveCriticalPoleSquare ρ)
    |heatedLimit s - heatedLimit t| ≤ Real.sqrt (Aₛ - S) + Real.sqrt (Aₜ - S) := by
  let S := 2 * (∑' ρ, positiveCriticalPoleSquare ρ)
  let g := heatedLimit s - heatedLimit t
  have hweighted (w : ℝ) (hw₀ : 0 ≤ w) (hw₁ : w ≤ 1) :
      w * (1 - w) * g ^ 2 ≤ w * (Aₛ - S) + (1 - w) * (Aₜ - S) := by
    have h := poleSeries_add_weighted_gap_le_two_residual_allowances
      hs ht hζ hA hG hmajorant hbudget hw₀ hw₁ hl hₛ hₜ
    change S + w * (1 - w) * g ^ 2 ≤ w * Aₛ + (1 - w) * Aₜ at h
    linarith
  have hleft : 0 ≤ Aₛ - S := by simpa using hweighted 1 zero_le_one le_rfl
  have hright : 0 ≤ Aₜ - S := by simpa using hweighted 0 le_rfl zero_le_one
  have hslack (δ : ℝ) (hδ : 0 < δ) :
      |g| ≤ Real.sqrt (Aₛ - S + δ) + Real.sqrt (Aₜ - S + δ) := by
    let a := Real.sqrt (Aₛ - S + δ)
    let b := Real.sqrt (Aₜ - S + δ)
    have ha : 0 < a := Real.sqrt_pos.2 (by linarith)
    have hb : 0 < b := Real.sqrt_pos.2 (by linarith)
    have hab : 0 < a + b := add_pos ha hb
    have haSq : a ^ 2 = Aₛ - S + δ := Real.sq_sqrt (by linarith)
    have hbSq : b ^ 2 = Aₜ - S + δ := Real.sq_sqrt (by linarith)
    let w := b / (a + b)
    have hw₀ : 0 < w := div_pos hb hab
    have hw₁ : w < 1 := (div_lt_iff₀ hab).mpr (by linarith)
    have hsum := hweighted w hw₀.le hw₁.le
    have hcost : w * a ^ 2 + (1 - w) * b ^ 2 = w * (1 - w) * (a + b) ^ 2 := by
      dsimp [w]
      field_simp
      ring
    have hgap : w * (1 - w) * g ^ 2 ≤ w * (1 - w) * (a + b) ^ 2 := by
      rw [← hcost, haSq, hbSq]
      linarith
    have hsq := le_of_mul_le_mul_left hgap (mul_pos hw₀ (sub_pos.mpr hw₁))
    exact (sq_le_sq.mp hsq).trans_eq (abs_of_nonneg hab.le)
  have hc : Continuous (fun δ : ℝ => Real.sqrt (Aₛ - S + δ) + Real.sqrt (Aₜ - S + δ)) := by
    fun_prop
  have hlim : Tendsto (fun δ : ℝ => Real.sqrt (Aₛ - S + δ) + Real.sqrt (Aₜ - S + δ))
      (𝓝[>] (0 : ℝ)) (𝓝 (Real.sqrt (Aₛ - S) + Real.sqrt (Aₜ - S))) := by
    have h := (hc.continuousAt (x := (0 : ℝ))).continuousWithinAt (s := Ioi 0)
    simpa only [ContinuousWithinAt, add_zero] using h
  change |g| ≤ Real.sqrt (Aₛ - S) + Real.sqrt (Aₜ - S)
  apply ge_of_tendsto hlim
  filter_upwards [(self_mem_nhdsWithin : Ioi (0 : ℝ) ∈ 𝓝[>] (0 : ℝ))] with δ hδ
  exact hslack δ hδ

/-- Equality in the weighted pole obstruction pins the original measured
variance to the full pole cost and the mean to the weighted settled heat. -/
theorem tendsto_pickup_variance_at_weighted_pole_saturation
    {s t A Aₛ Aₜ w : ℝ} (hs : 0 < s) (ht : 0 < t)
    (hζ : riemannZeta (1 / 2 : ℂ) ≠ 0) (hA : 0 ≤ A)
    {G : Set ℝ} {U : ℝ → ℝ} (hG : AffineFrequent G)
    (hmajorant : ∀ᶠ T in atTop ⊓ 𝓟 G, residualEnergy s T ≤ U T)
    (hbudget : ∀ ε : ℝ, 0 < ε →
      ∀ᶠ T in atTop ⊓ 𝓟 G, U T ≤ (A + ε) * T)
    (hw₀ : 0 ≤ w) (hw₁ : w ≤ 1) {l : Filter ℝ} (hl : l ≤ atTop)
    (hₛ : ∀ ε : ℝ, 0 < ε → ∀ᶠ T in l, residualEnergy s T / T ≤ Aₛ + ε)
    (hₜ : ∀ ε : ℝ, 0 < ε → ∀ᶠ T in l, residualEnergy t T / T ≤ Aₜ + ε)
    (heq : w * Aₛ + (1 - w) * Aₜ - w * (1 - w) * (heatedLimit s - heatedLimit t) ^ 2 =
      2 * (∑' ρ, positiveCriticalPoleSquare ρ)) :
    Tendsto pickupHorizonVariance l (𝓝 (2 * (∑' ρ, positiveCriticalPoleSquare ρ))) ∧
      Tendsto pickupHorizonMean l (𝓝 (w * heatedLimit s + (1 - w) * heatedLimit t)) := by
  let S := 2 * (∑' ρ, positiveCriticalPoleSquare ρ)
  let m := w * heatedLimit s + (1 - w) * heatedLimit t
  have hfloor {δ : ℝ} (hδ : 0 < δ) : ∀ᶠ T in l, S - δ ≤ pickupHorizonVariance T :=
    (eventually_pickup_variance_ge_poleSeries hs hζ hA hG hmajorant hbudget hδ).filter_mono hl
  have hceil {δ : ℝ} (hδ : 0 < δ) :
      ∀ᶠ T in l, pickupHorizonVariance T + (pickupHorizonMean T - m) ^ 2 ≤ S + δ := by
    have h := eventually_variance_add_weighted_cost_le_of_two_residual_allowances
      hs ht hw₀ hw₁ hl hₛ hₜ hδ
    rw [heq] at h
    exact h
  constructor
  · apply tendsto_order.mpr
    constructor
    · intro b hb
      filter_upwards [hfloor (show 0 < (S - b) / 2 by linarith)] with T hT
      linarith
    · intro b hb
      filter_upwards [hceil (show 0 < (b - S) / 2 by linarith)] with T hT
      linarith [sq_nonneg (pickupHorizonMean T - m)]
  · apply Metric.tendsto_nhds.mpr
    intro ε hε
    have hδ : 0 < ε ^ 2 / 4 := by positivity
    filter_upwards [hfloor hδ, hceil hδ] with T h₁ h₂
    rw [Real.dist_eq]
    have hsq : (pickupHorizonMean T - m) ^ 2 < ε ^ 2 := by
      linarith [sq_pos_of_pos hε]
    simpa only [abs_of_pos hε] using (sq_lt_sq.mp hsq)

/-- At equality in the weighted pole bound, every fixed positive mask
heat reaches its pole-adjusted deviation ceiling on the same scales. -/
theorem tendsto_signed_mask_at_weighted_pole_saturation
    {s t u A Aₛ Aₜ w : ℝ} (hs : 0 < s) (ht : 0 < t) (hu : 0 < u)
    (hζ : riemannZeta (1 / 2 : ℂ) ≠ 0) (hA : 0 ≤ A)
    {G : Set ℝ} {U : ℝ → ℝ} (hG : AffineFrequent G)
    (hmajorant : ∀ᶠ T in atTop ⊓ 𝓟 G, residualEnergy s T ≤ U T)
    (hbudget : ∀ ε : ℝ, 0 < ε →
      ∀ᶠ T in atTop ⊓ 𝓟 G, U T ≤ (A + ε) * T)
    (hw₀ : 0 ≤ w) (hw₁ : w ≤ 1) {l : Filter ℝ} (hl : l ≤ atTop)
    (hₛ : ∀ ε : ℝ, 0 < ε → ∀ᶠ T in l, residualEnergy s T / T ≤ Aₛ + ε)
    (hₜ : ∀ ε : ℝ, 0 < ε → ∀ᶠ T in l, residualEnergy t T / T ≤ Aₜ + ε)
    (heq : w * Aₛ + (1 - w) * Aₜ - w * (1 - w) * (heatedLimit s - heatedLimit t) ^ 2 =
      2 * (∑' ρ, positiveCriticalPoleSquare ρ)) :
    Tendsto (fun T : ℝ =>
      (weightedPickupDeviation T Finset.univ (heatMaskWeight u T) (heatMaskCoeff T) -
        pickupDiagonal T) / T) l
      (𝓝 (settledHeatedPickup u - (w * heatedLimit s + (1 - w) * heatedLimit t) ^ 2 -
        2 * (∑' ρ, positiveCriticalPoleSquare ρ))) := by
  obtain ⟨hvar, hmean⟩ := tendsto_pickup_variance_at_weighted_pole_saturation
    hs ht hζ hA hG hmajorant hbudget hw₀ hw₁ hl hₛ hₜ heq
  have h := (tendsto_normalized_heatMaskDeviation_add_measured_variance_and_mean_sq hu).mono_left hl
  exact ((h.sub (hmean.pow 2)).sub hvar).congr'
    (Eventually.of_forall fun T => by ring)

/-- A supplier at one heat forces a global energy floor at every fixed
positive heat, with the common pole cost and that heat's stationary cost. -/
theorem eventually_residualEnergy_div_ge_poleSeries_add_stationary_cost
    {s u A : ℝ} (hs : 0 < s) (hu : 0 < u)
    (hζ : riemannZeta (1 / 2 : ℂ) ≠ 0) (hA : 0 ≤ A)
    {G : Set ℝ} {U : ℝ → ℝ} (hG : AffineFrequent G)
    (hmajorant : ∀ᶠ T in atTop ⊓ 𝓟 G, residualEnergy s T ≤ U T)
    (hbudget : ∀ ε : ℝ, 0 < ε →
      ∀ᶠ T in atTop ⊓ 𝓟 G, U T ≤ (A + ε) * T)
    {ε : ℝ} (hε : 0 < ε) :
    ∀ᶠ T : ℝ in atTop,
      2 * (∑' ρ, positiveCriticalPoleSquare ρ) +
        ((2 / riemannZeta (1 / 2 : ℂ)).re - heatedLimit u) ^ 2 - ε ≤ residualEnergy u T / T := by
  let m := (2 / riemannZeta (1 / 2 : ℂ)).re
  let S := 2 * (∑' ρ, positiveCriticalPoleSquare ρ)
  have hbudget₁ : ∀ᶠ T in atTop ⊓ 𝓟 G, U T ≤ (A + 1) * T ^ (1 : ℕ) + 0 := by
    simpa only [pow_one, add_zero] using hbudget 1 one_pos
  obtain ⟨C, hC, hE⟩ := global_residualEnergy_poly_of_affine_envelope hG
    (add_nonneg hA zero_le_one) (le_refl (0 : ℝ)) hmajorant hbudget₁
  have hm : Tendsto pickupHorizonMean atTop (𝓝 m) :=
    tendsto_pickupHorizonMean_at_stationary hs hζ hC (by simpa only [pow_one] using hE)
  have hcost := (hm.sub_const (heatedLimit u)).pow 2
  have herr := tendsto_residualEnergy_div_sub_measured_variance_and_mean_cost hu
  have hsmall : 0 < ε / 3 := by linarith
  have h₁ := eventually_pickup_variance_ge_poleSeries hs hζ hA hG hmajorant hbudget hsmall
  have h₂ := (tendsto_order.mp hcost).1 ((m - heatedLimit u) ^ 2 - ε / 3) (by linarith)
  have h₃ := (tendsto_order.mp herr).1 (-(ε / 3)) (by linarith)
  filter_upwards [h₁, h₂, h₃] with T h₁ h₂ h₃
  change S - ε / 3 ≤ pickupHorizonVariance T at h₁
  change S + (m - heatedLimit u) ^ 2 - ε ≤ residualEnergy u T / T
  linarith

/-- The original signed mask reaches its pole-adjusted ceiling exactly
when the actual normalized residual reaches its pole and stationary floor. -/
theorem tendsto_signed_mask_ceiling_iff_tendsto_residual_pole_floor
    {s u A : ℝ} (hs : 0 < s) (hu : 0 < u)
    (hζ : riemannZeta (1 / 2 : ℂ) ≠ 0) (hA : 0 ≤ A)
    {G : Set ℝ} {U : ℝ → ℝ} (hG : AffineFrequent G)
    (hmajorant : ∀ᶠ T in atTop ⊓ 𝓟 G, residualEnergy s T ≤ U T)
    (hbudget : ∀ ε : ℝ, 0 < ε →
      ∀ᶠ T in atTop ⊓ 𝓟 G, U T ≤ (A + ε) * T)
    {l : Filter ℝ} (hl : l ≤ atTop) :
    let m := (2 / riemannZeta (1 / 2 : ℂ)).re
    let S := 2 * (∑' ρ, positiveCriticalPoleSquare ρ)
    Tendsto (fun T : ℝ =>
      (weightedPickupDeviation T Finset.univ (heatMaskWeight u T) (heatMaskCoeff T) -
        pickupDiagonal T) / T) l (𝓝 (settledHeatedPickup u - m ^ 2 - S)) ↔
      Tendsto (fun T : ℝ => residualEnergy u T / T) l (𝓝 (S + (m - heatedLimit u) ^ 2)) := by
  let m := (2 / riemannZeta (1 / 2 : ℂ)).re
  let S := 2 * (∑' ρ, positiveCriticalPoleSquare ρ)
  let D (T : ℝ) := (weightedPickupDeviation T Finset.univ (heatMaskWeight u T)
    (heatMaskCoeff T) - pickupDiagonal T) / T
  let E (T : ℝ) := residualEnergy u T / T
  let B := settledHeatedPickup u - m ^ 2 - S
  let F := S + (m - heatedLimit u) ^ 2
  change Tendsto D l (𝓝 B) ↔ Tendsto E l (𝓝 F)
  have hbudget₁ : ∀ᶠ T in atTop ⊓ 𝓟 G, U T ≤ (A + 1) * T ^ (1 : ℕ) + 0 := by
    simpa only [pow_one, add_zero] using hbudget 1 one_pos
  obtain ⟨C, hC, hE⟩ := global_residualEnergy_poly_of_affine_envelope hG
    (add_nonneg hA zero_le_one) (le_refl (0 : ℝ)) hmajorant hbudget₁
  have hm := (tendsto_pickupHorizonMean_at_stationary hs hζ hC
    (by simpa only [pow_one] using hE)).mono_left hl
  have hsum : Tendsto (fun T => D T + E T) l (𝓝 (B + F)) := by
    rw [show B + F = settledHeatedPickup u + heatedLimit u ^ 2 - 2 * heatedLimit u * m
      by dsimp [B, F]; ring]
    simpa only [D, E, add_div] using
      tendsto_normalized_heatMaskDeviation_add_residual_of_source_mean hu hl hm
  constructor
  · intro hD
    have h := hsum.sub hD
    rw [show B + F - B = F by ring] at h
    exact h.congr' (Eventually.of_forall fun T => by show D T + E T - D T = E T; ring)
  · intro hE
    have h := hsum.sub hE
    rw [add_sub_cancel_right] at h
    exact h.congr' (Eventually.of_forall fun T => add_sub_cancel_right (D T) (E T))

end GRWTSK.NumberTheory.Moebius.MoebiusSoficPickupPoleCeiling
