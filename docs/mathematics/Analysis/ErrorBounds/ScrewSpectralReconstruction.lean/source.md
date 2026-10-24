# Complete source: GRWTSK.Analysis.ErrorBounds.ScrewSpectralReconstruction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd22cac855e24a9d3c9f2d37831e6e55eb812e49` · SHA-256 `5cf6fee1c24c9d3c382c9ef653259cf8586154d153945571acff84d1d5987c22`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
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
```
