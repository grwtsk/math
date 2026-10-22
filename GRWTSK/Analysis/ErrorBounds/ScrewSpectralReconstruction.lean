/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.Normed.Operator.Basic
import Mathlib.Tactic.Linarith

set_option autoImplicit false

/-!
# Complete source-to-screw spectral reconstruction budget

The signed terminal discrepancy is decomposed into five independently certified errors:
source enclosure, Hermite value-and-jet reconstruction, graph transport, finite spectral
computation, and omitted-tail error. The theorem returns their sum to the actual bounded
linear consumer.

No cancellation between these terms is assumed. A stronger estimate must supply its own
signed identity or orthogonality argument.
-/

namespace GRWTSK.Analysis.ErrorBounds.ScrewSpectralReconstruction

/-- The five named reconstruction budgets. -/
structure Budget where
  source : ℝ
  hermite : ℝ
  transport : ℝ
  spectral : ℝ
  tail : ℝ

/-- Total certified budget. -/
def Budget.total (budget : Budget) : ℝ :=
  budget.source + budget.hermite + budget.transport + budget.spectral + budget.tail

/-- Every complete error decomposition is bounded by the sum of its five certified parts. -/
theorem reconstruction_error_bound
    {X Y : Type*}
    [NormedAddCommGroup X] [NormedSpace ℝ X]
    [NormedAddCommGroup Y] [NormedSpace ℝ Y]
    (consumer : X →L[ℝ] Y) (actual reconstructed : X)
    (sourceError hermiteError transportError spectralError tailError : Y)
    (budget : Budget)
    (decomposition :
      consumer actual - consumer reconstructed =
        sourceError + hermiteError + transportError + spectralError + tailError)
    (sourceBound : ‖sourceError‖ ≤ budget.source)
    (hermiteBound : ‖hermiteError‖ ≤ budget.hermite)
    (transportBound : ‖transportError‖ ≤ budget.transport)
    (spectralBound : ‖spectralError‖ ≤ budget.spectral)
    (tailBound : ‖tailError‖ ≤ budget.tail) :
    ‖consumer actual - consumer reconstructed‖ ≤ budget.total := by
  have triangle :
      ‖sourceError + hermiteError + transportError + spectralError + tailError‖ ≤
        ‖sourceError‖ + ‖hermiteError‖ + ‖transportError‖ +
          ‖spectralError‖ + ‖tailError‖ := by
    have h₁ := norm_add_le sourceError hermiteError
    have h₂ := norm_add_le (sourceError + hermiteError) transportError
    have h₃ := norm_add_le (sourceError + hermiteError + transportError) spectralError
    have h₄ := norm_add_le (sourceError + hermiteError + transportError + spectralError) tailError
    linarith
  rw [decomposition]
  apply triangle.trans
  unfold Budget.total
  linarith

end GRWTSK.Analysis.ErrorBounds.ScrewSpectralReconstruction
