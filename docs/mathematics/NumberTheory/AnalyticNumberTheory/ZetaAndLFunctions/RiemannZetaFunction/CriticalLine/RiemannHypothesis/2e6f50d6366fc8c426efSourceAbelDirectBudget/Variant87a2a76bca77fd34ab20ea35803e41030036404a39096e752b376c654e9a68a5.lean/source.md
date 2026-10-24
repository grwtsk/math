# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.2e6f50d6366fc8c426efSourceAbelDirectBudget.Variant87a2a76bca77fd34ab20ea35803e41030036404a39096e752b376c654e9a68a5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5b6836feb3ce30c8e0810c54a8074a51f1fedd99` · SHA-256 `87a2a76bca77fd34ab20ea35803e41030036404a39096e752b376c654e9a68a5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceResidualBudget
import SourceLocalizedSignedConsumer

/-!
Exact conditional lower budgets for the full source Abel block, endpoint three,
and independently bounded ledger. D and R remain explicit open witness premises.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

set_option autoImplicit false

namespace RH16ResumeBudget

open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceJointWorkConsumer
open FormalResearch.RiemannHypothesis.SourceLocalizedSignedConsumer
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual

noncomputable section

theorem all_real_source_lower_of_compensatedJointWork_tail
    (D R : ℝ) (hD : 0 ≤ D) (hR : 1 ≤ R)
    (hwork : ∀ A : ℝ, R ≤ A → compensatedJointWork A ≤ D) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower R) (archimedeanMultiplier 0 - 2 * (D + 3 + C_F)) ≤
        sourceQuadraticValue explicitSecondDerivative A := by
  obtain ⟨C_F, hF0, hF⟩ := residual_tail_of_compensatedJointWork_tail D R hD hR hwork
  exact ⟨C_F, hF0, all_real_source_lower_of_residual_tail (D + 3 + C_F) R hR hF⟩

theorem all_real_source_lower_of_compensatedLocalizedWork_tail
    (D R : ℝ) (hD : 0 ≤ D) (hR : 1 ≤ R)
    (hwork : ∀ A : ℝ, R ≤ A → compensatedLocalizedWork A ≤ D) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower R) (archimedeanMultiplier 0 - 2 * (D + 3 + C_F)) ≤
        sourceQuadraticValue explicitSecondDerivative A := by
  obtain ⟨C_F, hF0, hF⟩ := residual_tail_of_compensatedLocalizedWork_tail D R hD hR hwork
  exact ⟨C_F, hF0, all_real_source_lower_of_residual_tail (D + 3 + C_F) R hR hF⟩

end
end RH16ResumeBudget
```
