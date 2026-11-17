/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusSoficPickupStationaryRate

/-! The exact high-heat correction bounds how far the weighted allowance can
fall below its limiting stationary floor. -/

set_option autoImplicit false
noncomputable section
open Filter Set
open scoped Topology

namespace GRWTSK.NumberTheory.Moebius.MoebiusSoficPickupBudgetRate

open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential
open GaussianSignedResidualLaplace GaussianSignedResidualPoleSeries
  MoebiusSoficPickupPoleCeiling MoebiusSoficPickupStationarySign MoebiusSoficPickupStationaryRate

local notation "stationaryMean" => Complex.re (2 / riemannZeta (1 / 2 : ℂ))

/-- For a fixed heat shift, weight, and positive slack, the same heat
threshold works for all qualifying suppliers, filters and upper budgets. -/
theorem eventually_poleSeries_add_corrected_floor_lt_two_residual_allowances
    (d : ℝ) {w ε : ℝ} (hw₀ : 0 ≤ w) (hw₁ : w ≤ 1) (hε : 0 < ε) :
    ∀ᶠ s : ℝ in atTop,
      ∀ {A Aₛ Aₜ : ℝ}, 0 ≤ A →
      ∀ {G : Set ℝ} {U : ℝ → ℝ}, AffineFrequent G →
      (∀ᶠ T in atTop ⊓ 𝓟 G, residualEnergy s T ≤ U T) →
      (∀ δ : ℝ, 0 < δ → ∀ᶠ T in atTop ⊓ 𝓟 G, U T ≤ (A + δ) * T) →
      ∀ {l : Filter ℝ} [NeBot l], l ≤ atTop →
      (∀ δ : ℝ, 0 < δ → ∀ᶠ T in l, residualEnergy s T / T ≤ Aₛ + δ) →
      (∀ δ : ℝ, 0 < δ → ∀ᶠ T in l, residualEnergy (s + d) T / T ≤ Aₜ + δ) →
      2 * (∑' ρ, positiveCriticalPoleSquare ρ) + (2 - stationaryMean) ^ 2 -
        ((2 * (Real.sqrt 2)⁻¹) * (4 - 2 * stationaryMean) *
          (w + (1 - w) * Real.exp (-d * Real.log 2 ^ 2)) + ε) *
          Real.exp (-s * Real.log 2 ^ 2) < w * Aₛ + (1 - w) * Aₜ := by
  have hz : riemannZeta (1 / 2 : ℂ) ≠ 0 := by
    intro h
    have hm := stationary_pickup_mean_neg
    rw [h, div_zero, Complex.zero_re] at hm
    exact (lt_irrefl _) hm
  let K := (2 * (Real.sqrt 2)⁻¹) * (4 - 2 * stationaryMean) *
    (w + (1 - w) * Real.exp (-d * Real.log 2 ^ 2))
  have hrate := tendsto_weighted_stationary_cost_deficit_div_prime_two_weight d w
  have hnear := (tendsto_order.mp hrate).2 (K + ε) (lt_add_of_pos_right K hε)
  filter_upwards [hnear, eventually_gt_atTop (0 : ℝ), eventually_gt_atTop (-d)] with s hnear hs ht
  intro A Aₛ Aₜ hA G U hG hmajorant hbudget l _ hl hₛ hₜ
  have hfloor := poleSeries_add_weighted_stationary_cost_le_two_residual_allowances
    hs (by linarith : 0 < s + d) hz hA hG hmajorant hbudget hw₀ hw₁ hl hₛ hₜ
  have herror := (div_lt_iff₀ (Real.exp_pos _)).mp hnear
  change _ < (K + ε) * Real.exp (-s * Real.log 2 ^ 2) at herror
  change _ - (K + ε) * Real.exp (-s * Real.log 2 ^ 2) < _
  linarith only [hfloor, herror]

end GRWTSK.NumberTheory.Moebius.MoebiusSoficPickupBudgetRate
