# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.1b965de6697541890dccSourceFirstAtomDirectConsumer.Variant5171f7aa528d31ace928ce000bb4838c048a48728040b6b5eb94520e0c1eca19

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `54540ce4a114a2828aeddc9f7afe971b66ff24ca` · SHA-256 `5171f7aa528d31ace928ce000bb4838c048a48728040b6b5eb94520e0c1eca19`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceMangoldtDirectBudget
import SourceFirstAtomSignedWork

/-!
Exact return of the newly checked signed first-atom estimate to the original
all-real source. The remaining full-Mangoldt integral is an explicit open premise.
Research direction: grwtsk contributors. AI construction: OpenAI Codex.
-/

set_option autoImplicit false

namespace RH16ResumeApplication

open RH16ResumeBudget
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceMangoldtAbel
open FormalResearch.RiemannHypothesis.SourceFirstAtomSignedWork
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual

noncomputable section

theorem residual_upper_of_remaining_signed_lower (D R A : ℝ) (hR : 40 ≤ R)
    (hRA : R ≤ A) (htail : -D ≤ remainingAtomWork A) :
    mertensResidual A ≤ D - 3 / 8 + criticalBaselineCorrection R := by
  have hw := criticalMangoldtWork_lower_of_remaining_lower A D (hR.trans hRA) htail
  have hr := residual_upper_of_original_Mangoldt_work_lower (D + 5 / 8) R A
    (by linarith) hRA hw
  linarith only [hr]

theorem all_real_source_lower_of_remaining_signed_tail
    (D R : ℝ) (hR : 40 ≤ R)
    (htail : ∀ A : ℝ, R ≤ A → -D ≤ remainingAtomWork A) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower R)
        (archimedeanMultiplier 0 - 2 * (D - 3 / 8 + criticalBaselineCorrection R)) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  apply all_real_source_lower_of_residual_tail
    (D - 3 / 8 + criticalBaselineCorrection R) R (by linarith)
  intro A hRA
  exact residual_upper_of_remaining_signed_lower D R A hR hRA (htail A hRA)

theorem estimate_of_remaining_signed_tail
    (D R : ℝ) (hR : 40 ≤ R)
    (htail : ∀ A : ℝ, R ≤ A → -D ≤ remainingAtomWork A) :
    CorrelationAssembly.EstimateObligation :=
  ⟨min (originalPrefixLower R)
      (archimedeanMultiplier 0 - 2 * (D - 3 / 8 + criticalBaselineCorrection R)),
    all_real_source_lower_of_remaining_signed_tail D R hR htail⟩

end
end RH16ResumeApplication
```
