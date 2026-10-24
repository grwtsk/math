# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.67998fa9b97a69b9b8abSourceMangoldtDirectBudget.Variant3832e9f78fc79dd880021662bfcae6972d39f28dadfd2bc6fe6266f87768de8b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e168972a7b95587ac415083813b1e70ff6581e2f` · SHA-256 `3832e9f78fc79dd880021662bfcae6972d39f28dadfd2bc6fe6266f87768de8b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceCriticalDirectBudget
import FormalResearch.RiemannHypothesis.SourceMangoldtAbel

/-!
The literal full-Mangoldt lower-work premise feeds the same original source
through its genuine signed source-half correction. No work witness is supplied.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

set_option autoImplicit false

namespace RH16ResumeBudget

open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceMangoldtAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual

noncomputable section

theorem residual_upper_of_original_Mangoldt_work_lower (C R A : ℝ) (hR : 1 ≤ R)
    (hRA : R ≤ A) (hwork : -C ≤ criticalMangoldtWork A) :
    mertensResidual A ≤ C - 1 + criticalBaselineCorrection R := by
  have hA : 1 ≤ A := hR.trans hRA
  have hw := mertensResidual_eq_continuous_sub_Mangoldt_work A hA
  have hb := criticalBaselineCorrection_antitone R A (by linarith) hRA
  rw [criticalBaselineCorrection_eq_actual A hA] at hb
  linarith only [hw, hb, hwork]

theorem all_real_source_lower_of_original_Mangoldt_work_tail
    (C R : ℝ) (hR : 1 ≤ R)
    (hwork : ∀ A : ℝ, R ≤ A → -C ≤ criticalMangoldtWork A) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower R)
        (archimedeanMultiplier 0 - 2 * (C - 1 + criticalBaselineCorrection R)) ≤
          sourceQuadraticValue explicitSecondDerivative A := by
  apply all_real_source_lower_of_residual_tail (C - 1 + criticalBaselineCorrection R) R hR
  intro A hRA
  exact residual_upper_of_original_Mangoldt_work_lower C R A hR hRA (hwork A hRA)

end
end RH16ResumeBudget
```
