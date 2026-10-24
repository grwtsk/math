# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualRieszFutureAreaEstimate.Variant1d0d1f46a635b56eba529f338c4687c263148cd50d74ac2a3251328ca55f47f7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e65a2e3776bc42c31621f81ef5a106f19ecfac90` · SHA-256 `1d0d1f46a635b56eba529f338c4687c263148cd50d74ac2a3251328ca55f47f7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualRieszQuadraticLaplace
import SourceActualRieszFixedAreaEstimate

/-!
The supplied future quadratic absolute area of the literal actual fixed-centered
H yields an explicit one-sided residual tail budget. The existing genuine
compact-prefix transfer then returns the unchanged all-real Estimate.
No area witness or unconditional signed estimate is supplied.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualRieszFutureAreaEstimate
open MeasureTheory Set
open SourcePairing SourceActualRieszCenteredReconstruction SourceActualRieszCriticalCenter
open SourceActualRieszRealConstantCenter SourceActualRieszFixedCenterTransfer
open SourceActualRieszFixedAreaEstimate SourceActualRieszQuadraticLaplace
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual

/-- The exact residual has this uniform quantitative tail cap under the supplied area. -/
theorem actualResidual_future_quadratic_area_tail {M R : ℝ}
    (harea : ∀ A : ℝ, R ≤ A → actualRieszAbsoluteCumulative (2 * A) ≤ M * A ^ 2)
    {A : ℝ} (hA : max 91 R ≤ A) :
    mertensResidual A ≤ archimedeanMultiplier 0 / 2 + 5 * M + 56 / (91 : ℝ) ^ 2 := by
  have hA91 : 91 ≤ A := (le_max_left _ _).trans hA
  have hAR : R ≤ A := (le_max_right _ _).trans hA
  have hpaid := actualResidual_fixed_center_quadratic_area_bound hA91
    actualRieszRealConstantCenter (by
      have hh := harea A hAR
      change (∫ t in 0..2 * A,
        |actualFixedCenteredMangoldtRieszPrimitive actualRieszRealConstantCenter t|) ≤
          M * A ^ 2 at hh
      exact hh)
  have hsq : (91 : ℝ) ^ 2 ≤ A ^ 2 := by nlinarith
  have hden : 0 < (91 : ℝ) ^ 2 := by norm_num
  have hfrac : 56 / A ^ 2 ≤ 56 / (91 : ℝ) ^ 2 :=
    div_le_div_of_nonneg_left (by norm_num) hden hsq
  linarith

/-- The supplied actual full-area route returns the original ALLREAL Estimate. -/
theorem estimate_of_actual_future_quadratic_area {M R : ℝ}
    (hR : 1 ≤ R)
    (harea : ∀ A : ℝ, R ≤ A → actualRieszAbsoluteCumulative (2 * A) ≤ M * A ^ 2) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_mertens_residual_tail
  refine ⟨max 0 (archimedeanMultiplier 0 / 2 + 5 * M + 56 / (91 : ℝ) ^ 2),
    le_max_left _ _, max 91 R, hR.trans (le_max_right _ _), ?_⟩
  intro A hA
  exact (actualResidual_future_quadratic_area_tail harea hA).trans (le_max_right _ _)

end FormalResearch.RiemannHypothesis.SourceActualRieszFutureAreaEstimate
```
