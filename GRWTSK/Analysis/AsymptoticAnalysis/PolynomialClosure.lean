/- Copyright (c) 2026 grwtsk contributors. MIT.
Human direction: grwtsk contributors; OpenAI Codex formalization assistance.
Classical implications; imported Mathlib contributions retain their authorship. -/
import GRWTSK.Analysis.AsymptoticAnalysis.PolynomialErrorBound
set_option autoImplicit false
noncomputable section
namespace GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform

theorem p04_conditional {X R e : ℝ → ℝ} {CR Ce r s : ℝ}
    (hCR : 0 ≤ CR) (hCe : 0 ≤ Ce) (hr : 0 ≤ r) (_hs : 0 ≤ s)
    (hid : ∀ T, 0 ≤ T → X T = R T + e T)
    (hR : ∀ T, 0 ≤ T → R T ≤ CR*(1+T)^r)
    (he : ∀ T, 0 ≤ T → |e T| ≤ Ce*(1+T)^s) :
    ∃ C p : ℝ, 0 ≤ C ∧ 0 ≤ p ∧ ∀ T, 0 ≤ T → X T ≤ C*(1+T)^p := by
  exact ⟨CR+Ce,max r s,add_nonneg hCR hCe,(le_max_left r s).trans' hr,
    polynomial_return hCR hCe hid hR he⟩
end GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Waveform
