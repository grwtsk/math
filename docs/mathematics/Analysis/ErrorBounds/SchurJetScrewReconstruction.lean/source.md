# Complete source: GRWTSK.Analysis.ErrorBounds.SchurJetScrewReconstruction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a001a80bc07ecdb853b9210affcbc784ac154048` · SHA-256 `9bf47f791e196a6d9fc2fd99b78f975b887a017d041889a84017596f749773c0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.ScrewSpectralReconstruction

set_option autoImplicit false

/-!
# Schur-jet error returned to the signed screw consumer

This specialization renames the local reconstruction term to the Schur-jet budget while
retaining the complete five-part error accounting. It assumes no cancellation between
source, Schur-jet, transport, spectral, and tail errors.
-/

namespace GRWTSK.Analysis.ErrorBounds.SchurJetScrewReconstruction

/-- The five named budgets for Schur-jet reconstruction. -/
structure Budget where
  source : ℝ
  schurJet : ℝ
  transport : ℝ
  spectral : ℝ
  tail : ℝ

/-- Total certified Schur-jet budget. -/
def Budget.total (budget : Budget) : ℝ :=
  budget.source + budget.schurJet + budget.transport + budget.spectral + budget.tail

/-- Convert to the existing five-part reconstruction interface. -/
def Budget.toScrewSpectral (budget : Budget) :
    GRWTSK.Analysis.ErrorBounds.ScrewSpectralReconstruction.Budget where
  source := budget.source
  hermite := budget.schurJet
  transport := budget.transport
  spectral := budget.spectral
  tail := budget.tail

@[simp]
theorem Budget.toScrewSpectral_total (budget : Budget) :
    budget.toScrewSpectral.total = budget.total :=
  rfl

/-- The complete Schur-jet approximation error is returned through the actual bounded
linear consumer. -/
theorem reconstruction_error_bound
    {X Y : Type*}
    [NormedAddCommGroup X] [NormedSpace ℝ X]
    [NormedAddCommGroup Y] [NormedSpace ℝ Y]
    (consumer : X →L[ℝ] Y) (actual reconstructed : X)
    (sourceError schurJetError transportError spectralError tailError : Y)
    (budget : Budget)
    (decomposition :
      consumer actual - consumer reconstructed =
        sourceError + schurJetError + transportError + spectralError + tailError)
    (sourceBound : ‖sourceError‖ ≤ budget.source)
    (schurJetBound : ‖schurJetError‖ ≤ budget.schurJet)
    (transportBound : ‖transportError‖ ≤ budget.transport)
    (spectralBound : ‖spectralError‖ ≤ budget.spectral)
    (tailBound : ‖tailError‖ ≤ budget.tail) :
    ‖consumer actual - consumer reconstructed‖ ≤ budget.total := by
  simpa [Budget.total, Budget.toScrewSpectral,
    GRWTSK.Analysis.ErrorBounds.ScrewSpectralReconstruction.Budget.total] using
    GRWTSK.Analysis.ErrorBounds.ScrewSpectralReconstruction.reconstruction_error_bound
      consumer actual reconstructed sourceError schurJetError transportError spectralError
      tailError budget.toScrewSpectral decomposition sourceBound schurJetBound
      transportBound spectralBound tailBound

end GRWTSK.Analysis.ErrorBounds.SchurJetScrewReconstruction
```
