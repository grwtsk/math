/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Tactic

set_option autoImplicit false

/-! Uniform amplitude separation after physical energy normalization.
All bounds must hold on the full joint regulator/volume tail. No physical
supplier is constructed. SOURCE_PROOF_CANDIDATES / NOT_RUN. -/
namespace GRWTSK.Analysis.OperatorTheory.SpectralTheory.JointVacuumAmplitudeMargin

def physicalMargin (signal leakage loss : ℝ) : ℝ :=
  (max 0 (signal - leakage)) ^ 2 - loss

theorem margin_of_uniform_amplitudes
    (signal leakage loss signalLower leakageUpper lossUpper δ : ℝ)
    (hs : signalLower ≤ signal) (hl : leakage ≤ leakageUpper)
    (hsep : leakageUpper ≤ signalLower) (he : loss ≤ lossUpper)
    (hδ : δ ≤ (signalLower - leakageUpper) ^ 2 - lossUpper) :
    δ ≤ physicalMargin signal leakage loss := by
  have hbase : 0 ≤ signalLower - leakageUpper := sub_nonneg.mpr hsep
  have hact : signalLower - leakageUpper ≤ max 0 (signal - leakage) :=
    (by linarith : signalLower - leakageUpper ≤ signal - leakage).trans (le_max_right _ _)
  have hpos : 0 ≤ max 0 (signal - leakage) := le_max_left _ _
  unfold physicalMargin
  nlinarith

/-- An explicit tolerance budget for a strictly positive limiting margin. -/
theorem epsilon_margin (Δ loss ε : ℝ)
    (hΔ : 0 < Δ) (hε : 0 ≤ ε) (hsmall : ε ≤ Δ / 4)
    (hbudget : (4 * Δ + 1) * ε ≤ (Δ ^ 2 - loss) / 2) :
    (Δ ^ 2 - loss) / 2 ≤ (Δ - 2 * ε) ^ 2 - (loss + ε) := by
  nlinarith [sq_nonneg ε]

end GRWTSK.Analysis.OperatorTheory.SpectralTheory.JointVacuumAmplitudeMargin
