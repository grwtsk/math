/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusSoficPickupHeatComparison

/-! Exact transport of lower budgets for the original signed mask. -/

set_option autoImplicit false
noncomputable section
open Filter
open scoped Topology

namespace GRWTSK.NumberTheory.Moebius.MoebiusSoficPickupMaskTransport

open GRWTSK.RiemannHypothesis.CCC
open MoebiusSoficBlockObstruction MoebiusSoficHeatedResidualBridge
  MoebiusSoficIndependentThinning MoebiusSoficPickupHeatComparison

local notation "signedMask(" s "," T ")" =>
  (weightedPickupDeviation T Finset.univ (heatMaskWeight s T) (heatMaskCoeff T) -
    pickupDiagonal T) / T

/-- The original signed mask lower budget translates exactly by the settled
ordered pickup difference. This statement needs only positive fixed heats
and the same horizon filter below `atTop`. -/
theorem signed_mask_lower_budget_iff_shifted_heat {s t B : ℝ}
    (hs : 0 < s) (ht : 0 < t) {l : Filter ℝ} (hl : l ≤ atTop) :
    (∀ ε : ℝ, 0 < ε → ∀ᶠ T in l, B - ε ≤ signedMask(s, T)) ↔
      (∀ ε : ℝ, 0 < ε → ∀ᶠ T in l,
        B + (settledHeatedPickup t - settledHeatedPickup s) - ε ≤ signedMask(t, T)) := by
  let D := settledHeatedPickup t - settledHeatedPickup s
  have hdrift : Tendsto (fun T : ℝ => signedMask(t, T) - signedMask(s, T)) l (𝓝 D) := by
    refine ((tendsto_normalized_heatMaskDeviation_sub hs ht).mono_left hl).congr'
      (Eventually.of_forall fun T => ?_)
    simp only [← sub_div, sub_sub_sub_cancel_right]
  constructor
  · intro h ε hε
    have hd := (tendsto_order.mp hdrift).1 (D - ε / 2) (by linarith)
    filter_upwards [h (ε / 2) (by positivity), hd] with T hT hDT
    change B + D - ε ≤ signedMask(t, T)
    linarith only [hT, hDT]
  · intro h ε hε
    have hd := (tendsto_order.mp hdrift).2 (D + ε / 2) (by linarith)
    filter_upwards [h (ε / 2) (by positivity), hd] with T hT hDT
    change B + D - ε / 2 ≤ signedMask(t, T) at hT
    linarith only [hT, hDT]

end GRWTSK.NumberTheory.Moebius.MoebiusSoficPickupMaskTransport
