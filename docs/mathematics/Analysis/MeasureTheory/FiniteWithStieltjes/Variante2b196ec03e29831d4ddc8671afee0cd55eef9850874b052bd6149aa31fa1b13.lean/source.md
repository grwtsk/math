# Complete source: GRWTSK.Analysis.MeasureTheory.FiniteWithStieltjes.Variante2b196ec03e29831d4ddc8671afee0cd55eef9850874b052bd6149aa31fa1b13

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `89952cc8741101c8ea96f526070786a6fdb2659b` · SHA-256 `e2b196ec03e29831d4ddc8671afee0cd55eef9850874b052bd6149aa31fa1b13`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import scratch.common_mean_stieltjes_20261004.ActualStieltjes
import scratch.common_mean_20261004.FiveModeFiniteExternal

/-!
Finite literal-source theorem after proving the actual strict Stieltjes adapter.
The complete verified-height and corrected count representations remain named
external hypotheses. The corrected count-to-integral budget remains an explicit
calculus obligation; it is not asserted by naming the paper. No all-scale
arithmetic witness, RH theorem, or downstream readiness is claimed.
Originating direction, theorem selection, corrections and evaluation:
grwtsk contributors. Lean proof assistance: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace CommonMeanStieltjes
open MeasureTheory CommonMeanScratch
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

theorem actual_finite_bounds_with_proved_stieltjes
    (hverified : CompletePositiveVerifiedHeight 3000175332800)
    (hBW : CorrectedBellottiWongCount)
    (hcountBudget : CorrectedBellottiWongCount →
      -actualPositiveZeroCount 3000000000000/(3000000000000 : ℝ)^6 +
        6*(∫ t : ℝ in Set.Ioi 3000000000000, actualPositiveZeroCount t/t^7) ≤
          positiveSixthPowerCountEnvelope 3000000000000) :
    (∀ A : ℝ, 1 ≤ A → A ≤ 160 →
      -(1/500000 : ℝ) ≤ dotProduct (alpha A) ((sourceMatrix A).mulVec (alpha A)) ∧
      EstimateMertensResidual.mertensResidual A ≤
        sourceA0/2 + 195/A^2 + (1/1000000 : ℝ)) ∧
    (∀ A : ℝ, 10 ≤ A → A ≤ 160 →
      EstimateMertensResidual.mertensResidual A < 0) := by
  exact actual_finite_bounds_of_external_zero_inputs hverified hBW
    (actual_positive_sixth_stieltjes 3000000000000 (by norm_num)) hcountBudget

end CommonMeanStieltjes
```
