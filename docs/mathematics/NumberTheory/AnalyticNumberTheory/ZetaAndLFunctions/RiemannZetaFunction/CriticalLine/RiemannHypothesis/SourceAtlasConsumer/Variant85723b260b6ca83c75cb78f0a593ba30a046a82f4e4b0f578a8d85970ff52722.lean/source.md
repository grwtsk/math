# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceAtlasConsumer.Variant85723b260b6ca83c75cb78f0a593ba30a046a82f4e4b0f578a8d85970ff52722

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `870f4b9014e302dc19b1d52c73a74d75156ef60f` · SHA-256 `85723b260b6ca83c75cb78f0a593ba30a046a82f4e4b0f578a8d85970ff52722`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.CertificationSourceScale
import FormalResearch.PositiveAtlas.SourceProfileAtlas
import FormalResearch.PositiveAtlas.SourceStorageDescent

/-!
# The actual source-chart terminal budget feeds the unchanged estimate

Finite physical reconstruction, conic coefficients, signed terminal storage,
and the original real-parameter estimate are composed here. The chart budget
on `0 < s ≤ R⁻²` remains the arithmetic hypothesis that must still be proved.

Direction and evaluation: grwtsk contributors. Formalization: OpenAI Codex.
-/

namespace FormalResearch.PositiveAtlas.SourceAtlasConsumer

noncomputable section

open CertificationSourceScale SourceStorageDescent
open FormalResearch.RiemannHypothesis
open SourceKapitzaEventBalance SourceKapitzaCompensatedReadout
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

theorem certificate_coordinate_is_source (A : Scale) :
    (smallRepresentation.compress A).1 = SourceProfileAtlas.sourceCoordinate A.1 := rfl

theorem certificate_decoder_is_source (s : SmallCoordinate) :
    (smallScaleEquiv.symm s).1 = SourceProfileAtlas.sDecoder s.1 :=
  smallScaleEquiv_reconstruct_value s

/-- The full signed certificate is exactly the corrected physical terminal expression. -/
theorem terminal_decoder_is_corrected (s : SmallCoordinate) :
    smallRepresentation.recover .fullTerminal s = terminalCost (smallScaleEquiv.symm s).1 :=
  combinedTerminal_eq_corrected (smallScaleEquiv.symm s).1 (smallScaleEquiv.symm s).2

/-- The finite-radius chart cap retains the native prefix floor and every real scale. -/
theorem original_lower_of_chart_terminal (R B : ℝ) (hR : 1 ≤ R)
    (hchart : ∀ s : SmallCoordinate, s.1 ≤ (R ^ 2)⁻¹ →
      smallRepresentation.recover .fullTerminal s ≤ B) :
    ∀ A : ℝ, 1 ≤ A →
      min (SourceKapitzaReconstruction.originalPrefixFloor R)
        (SourcePairing.archimedeanMultiplier 0 + 2 - 2 * B -
          2 * SourceKapitzaReconstruction.continuousDefect R) ≤
        SourcePairing.sourceQuadraticValue Realization.explicitSecondDerivative A := by
  apply original_lower_of_corrected_terminal R B hR
  intro A hRA
  have hA : 1 ≤ A := hR.trans hRA
  have ht := (native_full_terminal_tail_budget_iff R B hR).mpr hchart A hRA
  have he : combinedTerminalWork A + totalQuadraticWork A = terminalCost A :=
    combinedTerminal_eq_corrected A hA
  rwa [← he]

/-- No target estimate, source profile or cutoff is changed by this consumer. -/
theorem estimate_of_chart_terminal (R B : ℝ) (hR : 1 ≤ R)
    (hchart : ∀ s : SmallCoordinate, s.1 ≤ (R ^ 2)⁻¹ →
      smallRepresentation.recover .fullTerminal s ≤ B) :
    CorrelationAssembly.EstimateObligation :=
  ⟨_, original_lower_of_chart_terminal R B hR hchart⟩

end
end FormalResearch.PositiveAtlas.SourceAtlasConsumer
```
