# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceJointWorkConsumer12.Variantbce34cfd2c3b82dd032bbfe4dbbd54861ad41309bb8ca21967540b7db9dd8b1f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `77f26a70e86dc11a9ca6f5ffe7a01edff0821432` · SHA-256 `bce34cfd2c3b82dd032bbfe4dbbd54861ad41309bb8ca21967540b7db9dd8b1f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceJointMangoldtWork
import SourceSamplingLedger

/-!
Actual-source composition of the reviewed combined Abel identity, endpoint
transfer, independently proved ledger error, and the original tail/prefix consumer.
This supplies conditional consumers only, not a signed bound witness.
Research direction: grwtsk contributors. Construction: OpenAI Codex.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceJointWorkConsumer

open MeasureTheory
open scoped Interval
open SourceJointMangoldtWork SourceStrictColumnInterior SourceVaughanHankel
open SourceSamplingLedger
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimateMertensResidual

noncomputable section

/-- All original signed compensation terms remain in the combined Abel block. -/
def compensatedJointWork (A : ℝ) : ℝ :=
  (∫ t in Real.log (vaughanCutoff A : ℝ)..Real.log (sourceKernelCutoff A : ℝ),
    jointMangoldtTestProfile A t) -
  SourceMangoldtAbel.mangoldtLogError (Real.log (vaughanCutoff A : ℝ)) *
    jointMangoldtTestProfile A (Real.log (vaughanCutoff A : ℝ)) -
  jointMangoldtErrorWork A - centeredDeletedDiagonal A - independentMainTerm A

theorem compensatedJointWork_eq_strictColumnInterior (A : ℝ) (hA : 1 ≤ A) :
    compensatedJointWork A = strictColumnInterior A :=
  (strictColumnInterior_eq_joint_mangoldt_error_work A hA).symm

/-- The endpoint and ledger error retain separate, scale-independent costs. -/
theorem residual_upper_of_compensatedJointWork_upper
    (A D C_F : ℝ) (hA : 1 ≤ A)
    (hwork : compensatedJointWork A ≤ D)
    (hledger : |EstimateBetaSourceRecombination.betaMainLedger A +
      independentMainTerm A| ≤ C_F) :
    mertensResidual A ≤ D + 12 + C_F := by
  have hs : strictColumnInterior A ≤ D := by
    rwa [compensatedJointWork_eq_strictColumnInterior A hA] at hwork
  have ht := (strictColumnInterior_pointwise_upper_transfers A D hA).2 hs
  have hr := actual_residual_decomposition A hA
  have hf := (abs_le.mp hledger).2
  linarith

/-- A future literal signed witness propagates at its original radius. -/
theorem residual_tail_of_compensatedJointWork_tail
    (D R : ℝ) (_hD : 0 ≤ D) (hR : 1 ≤ R)
    (hwork : ∀ A : ℝ, R ≤ A → compensatedJointWork A ≤ D) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧
      ∀ A : ℝ, R ≤ A → mertensResidual A ≤ D + 12 + C_F := by
  obtain ⟨C_F, hF0, hF⟩ := actual_ledger_uniform_error
  refine ⟨C_F, hF0, ?_⟩
  intro A hRA
  exact residual_upper_of_compensatedJointWork_upper A D C_F
    (hR.trans hRA) (hwork A hRA) (hF A (hR.trans hRA))

/-- The existing finite-prefix theorem covers every remaining real scale. -/
theorem estimate_of_compensatedJointWork_tail
    (D R : ℝ) (hD : 0 ≤ D) (hR : 1 ≤ R)
    (hwork : ∀ A : ℝ, R ≤ A → compensatedJointWork A ≤ D) :
    CorrelationAssembly.EstimateObligation := by
  obtain ⟨C_F, hF0, hF⟩ :=
    residual_tail_of_compensatedJointWork_tail D R hD hR hwork
  apply estimate_of_mertens_residual_tail
  exact ⟨D + 12 + C_F, by linarith, R, hR, hF⟩

end
end FormalResearch.RiemannHypothesis.SourceJointWorkConsumer
```
