import FormalResearch.RiemannHypothesis.SourceHeatPacketSelection

/-!
# Certified packet budgets at the actual compensated cap

A schedule may choose its finite degree and its exact rational key subsets anew
at each real source scale. The heat time remains common to every scale. Omitted
grouped packets, the complete Taylor tail, and any evaluation error are all
charged before the signed upper bound reaches the existing estimate consumer.

The all-scale supplier below is an open proposition, not an asserted witness.
Research direction: grwtsk contributors. This particular conditional budget
adapter and its formal implementation: OpenAI Codex, 7 October 2026.
-/

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceHeatPacketConsumer

open SourceHeatPacketSelection SourceSignedHeat SourceCompensatedFourier
open SourceKapitzaCompensatedReadout
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

/-- A certified observation of the selected packets pays its absolute evaluation
error in addition to the omitted profile and the full heat Taylor tail. -/
theorem sourceHeatRemainder_le_certified_packet_readout
    (A : ℝ) (hA : 1 ≤ A) (N : ℕ) {tau : ℝ} (htau : 0 ≤ tau)
    (selected : ℕ → Finset ℚ)
    (hselected : ∀ j ∈ Finset.range (N + 1),
      selected j ⊆ sourceGroupedKeyInventory A (2 * j + 3))
    (readout error : ℝ)
    (hreadout : |sourceHeatSelectionApproximation A tau N selected - readout| ≤ error) :
    sourceHeatRemainder A tau ≤ readout + error +
      (sourceHeatTaylorBudget A tau N + sourceHeatSelectionProfileBudget A tau N selected) := by
  have hpacket := sourceHeatRemainder_le_selected_add_error A hA N htau selected hselected
  have heval := (abs_le.mp hreadout).2
  linarith

/-- The actual terminal heat cap completes the fixed-scale source budget. -/
theorem compensatedSourceSum_le_certified_packet_readout
    (A : ℝ) (hA : 1 ≤ A) (N : ℕ) {tau : ℝ} (htau : 0 < tau)
    (selected : ℕ → Finset ℚ)
    (hselected : ∀ j ∈ Finset.range (N + 1),
      selected j ⊆ sourceGroupedKeyInventory A (2 * j + 3))
    (readout error : ℝ)
    (hreadout : |sourceHeatSelectionApproximation A tau N selected - readout| ≤ error) :
    compensatedSourceSum A ≤ readout + error +
      (sourceHeatTaylorBudget A tau N + sourceHeatSelectionProfileBudget A tau N selected) +
        terminalCap tau := by
  rw [compensatedSourceSum_eq_signedHeat_add_remainder A hA htau.le]
  have hterminal := (abs_le.mp (sourceSignedHeat_terminal_bound A hA htau)).2
  have hpacket := sourceHeatRemainder_le_certified_packet_readout A hA N htau.le
    selected hselected readout error hreadout
  linarith

/-- Exact uniform supplier, with one common positive heat time and possibly
scale-dependent degrees, key selections, and certified evaluation errors.
No inhabitant of this arithmetic proposition is constructed here. -/
def UniformCertifiedHeatPacketBudget : Prop :=
  ∃ R : ℝ, 1 ≤ R ∧ ∃ tau : ℝ, 0 < tau ∧
    ∃ degree : ℝ → ℕ, ∃ selected : ℝ → ℕ → Finset ℚ,
    ∃ readout error : ℝ → ℝ, ∃ C : ℝ,
      ∀ A : ℝ, R ≤ A →
        (∀ j ∈ Finset.range (degree A + 1),
          selected A j ⊆ sourceGroupedKeyInventory A (2 * j + 3)) ∧
        |sourceHeatSelectionApproximation A tau (degree A) (selected A) - readout A| ≤ error A ∧
        readout A + error A +
          (sourceHeatTaylorBudget A tau (degree A) +
            sourceHeatSelectionProfileBudget A tau (degree A) (selected A)) ≤ C

/-- Exact symbolic packet observations are the zero evaluation-error case.
Both omitted-packet and Taylor costs are still present in the uniform supplier. -/
theorem certified_packet_budget_of_exact_readout
    (R tau C : ℝ) (hR : 1 ≤ R) (htau : 0 < tau)
    (degree : ℝ → ℕ) (selected : ℝ → ℕ → Finset ℚ)
    (hselected : ∀ A : ℝ, R ≤ A → ∀ j ∈ Finset.range (degree A + 1),
      selected A j ⊆ sourceGroupedKeyInventory A (2 * j + 3))
    (hbudget : ∀ A : ℝ, R ≤ A →
      sourceHeatSelectionApproximation A tau (degree A) (selected A) +
        (sourceHeatTaylorBudget A tau (degree A) +
          sourceHeatSelectionProfileBudget A tau (degree A) (selected A)) ≤ C) :
    UniformCertifiedHeatPacketBudget := by
  refine ⟨R, hR, tau, htau, degree, selected,
    (fun A => sourceHeatSelectionApproximation A tau (degree A) (selected A)),
    (fun _ => 0), C, ?_⟩
  intro A hRA
  exact ⟨hselected A hRA, by simp, by simpa only [add_zero] using hbudget A hRA⟩

/-- A complete certified packet budget supplies the exact signed heat obligation. -/
theorem uniform_signedHeat_of_certified_packet_budget
    (h : UniformCertifiedHeatPacketBudget) : UniformSignedHeatRemainderUpperBound := by
  rcases h with ⟨R, hR, tau, htau, degree, selected, readout, error, C, hbudget⟩
  refine ⟨R, hR, tau, htau, C, ?_⟩
  intro A hRA
  rcases hbudget A hRA with ⟨hselected, hreadout, hcost⟩
  exact (sourceHeatRemainder_le_certified_packet_readout A (hR.trans hRA)
    (degree A) htau.le (selected A) hselected (readout A) (error A) hreadout).trans hcost

/-- The budget enters the existing compensated tail consumer with the terminal
constant paid explicitly. -/
theorem compensated_tail_of_certified_packet_budget
    (h : UniformCertifiedHeatPacketBudget) :
    SourceKapitzaSignedReduction.CompensatedTailUpperBound :=
  compensated_tail_of_uniform_signedHeat (uniform_signedHeat_of_certified_packet_budget h)

/-- Conditional downstream estimate transport preserves the existing finite
prefix and comparison payments. -/
theorem estimate_of_certified_packet_budget
    (h : UniformCertifiedHeatPacketBudget) : CorrelationAssembly.EstimateObligation :=
  estimate_of_uniform_signedHeat (uniform_signedHeat_of_certified_packet_budget h)

end FormalResearch.RiemannHypothesis.SourceHeatPacketConsumer
