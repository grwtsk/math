# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceDiagonalMainTermReview.Variant61d054569fbcb43a70c2c8a5842bfdc4174f58b0e03606900a3cc5dd769099e9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a89787c52b7974a747b27af3fa675ceafb4547b0` · SHA-256 `61d054569fbcb43a70c2c8a5842bfdc4174f58b0e03606900a3cc5dd769099e9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceDiagonalAbelReview
import FormalResearch.RiemannHypothesis.SourceDiagonalMainTerm
import FormalResearch.RiemannHypothesis.SourceDiagonalShortWindow

/-!
# Review-only evaluated main term of the literal retained Vaughan diagonal

The underlying Vaughan identity remains authored review source. This adapter
combines its checked integral replacement with the fully evaluated, unchanged
polynomial source normalization and the uniform lower-window correction. The
actual short cutoff is `floor(A^2)` throughout. This is a diagonal estimate;
neither full ledger error nor signed covariance control is inferred.

AI attribution: developed with OpenAI Codex; the proof terms are checked by Lean.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.VaughanDiagonalMainTermReview

open MeasureTheory Set
open scoped Interval
open SourcePairing SourceDiagonalPrimeAbel SourceDiagonalMainTerm SourceDiagonalShortWindow
open VaughanDiagonalAbelReview
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateVaughanSource EstimateVaughanTranslationGate

noncomputable section

/-- The original diagonal has its exact normalized main term with one all-scale error budget. -/
theorem actual_diagonal_main_term_error :
    ∃ C_D : ℝ, 0 ≤ C_D ∧ ∀ A : ℝ, 1 ≤ A →
      |typeTwoDiagonal A + 1024 / (99225 * sourceNormalization A) * A -
        Real.log (vaughanCutoff A : ℝ)| ≤ C_D := by
  obtain ⟨C, hC0, hC⟩ := actual_diagonal_integral_error
  refine ⟨C + 80, by positivity, ?_⟩
  intro A hA
  have hp : 0 < A := by linarith
  have hi := (diagonalCorrelation_contDiff A hp).continuous
  have hadd := intervalIntegral.integral_add_adjacent_intervals
    (hi.intervalIntegrable (μ := volume) 0 (Real.log (vaughanCutoff A : ℝ)))
    (hi.intervalIntegrable (μ := volume) (Real.log (vaughanCutoff A : ℝ)) A)
  rw [diagonalCorrelation_integral A hA] at hadd
  have he := hC A hA
  have hl := floor_square_short_integral_error A hA
  change |(∫ t in 0..Real.log (vaughanCutoff A : ℝ), diagonalCorrelation A t) -
    Real.log (vaughanCutoff A : ℝ)| ≤ 80 at hl
  change |typeTwoDiagonal A +
    (∫ t in Real.log (vaughanCutoff A : ℝ)..A, diagonalCorrelation A t)| ≤ C at he
  change |typeTwoDiagonal A + diagonalMainCoefficient A * A -
    Real.log (vaughanCutoff A : ℝ)| ≤ C + 80
  calc
    _ = |(typeTwoDiagonal A +
          (∫ t in Real.log (vaughanCutoff A : ℝ)..A, diagonalCorrelation A t)) +
        ((∫ t in 0..Real.log (vaughanCutoff A : ℝ), diagonalCorrelation A t) -
          Real.log (vaughanCutoff A : ℝ))| := by congr 1; linarith [hadd]
    _ ≤ _ := abs_add_le _ _
    _ ≤ C + 80 := add_le_add he hl

end
end FormalResearch.RiemannHypothesis.VaughanDiagonalMainTermReview
```
