# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceCompensatedBilinearConsumer.Variant4df9084e6944b3b45761bdcf252b7f956e365b2f24dfb7bfce6b5018ffbfd7d4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cdcc17d44aac80fdfdfba9f94b6deaa21fdc0dfb` · SHA-256 `4df9084e6944b3b45761bdcf252b7f956e365b2f24dfb7bfce6b5018ffbfd7d4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceJointWorkConsumer
import SourceActualMixedWorkFubini

/-!
Substitute the freshly checked actual-W finite-box Fubini identity before the
source-exact endpoint and bounded-ledger consumers. The two rows are independent;
their cross pairing is signed. No signed tail estimate is supplied here.
Research direction: grwtsk contributors. Construction: OpenAI Codex.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceCompensatedBilinearConsumer

open MeasureTheory
open scoped BigOperators Interval
open SourcePairing SourceJointMangoldtWork SourceJointWorkConsumer
open SourceVaughanHankel SourceSamplingLedger
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimateBetaCentering
open Realization EstimateMertensResidual

noncomputable section

/-- The actual arithmetic time row of a supplied source profile. -/
def timeRow (A : ℝ) (r : ℝ → ℝ) (v : ℝ) : ℝ :=
  ∫ t in Real.log (vaughanCutoff A : ℝ)..Real.log (sourceKernelCutoff A : ℝ),
    SourceMangoldtAbel.mangoldtLogError t * Real.exp (t / 2) * r (v - t)

/-- The original strict signed column cells, with natural-number cutoffs. -/
def columnRow (A : ℝ) (r : ℝ → ℝ) (v : ℝ) : ℝ :=
  let U := vaughanCutoff A
  let K := sourceKernelCutoff A / (U + 1)
  let B : ℕ → ℝ := fun k => ∑ n ∈ Finset.Ioc U k, centeredBeta U n
  ∑ k ∈ Finset.Ico (U + 1) K,
    B k * (∫ u in (k : ℝ)..((k : ℝ) + 1), r (v + Real.log u) / (u * Real.sqrt u))

/-- Plus cross interactions of independently integrated q and q' rows. -/
def actualBilinearWork (A : ℝ) : ℝ :=
  let q := normalizedTest explicitSecondDerivative A
  (∫ v : ℝ, timeRow A (deriv q) v * columnRow A (deriv q) v) +
    (1 / 4 : ℝ) * (∫ v : ℝ, timeRow A q v * columnRow A q v)

theorem actualBilinearWork_eq_jointMangoldtErrorWork (A : ℝ) (hA : 1 ≤ A) :
    actualBilinearWork A = jointMangoldtErrorWork A := by
  exact (SourceActualMixedWorkFubini.jointMangoldtErrorWork_eq_actual_bilinear_profiles
    A hA).symm

/-- Baseline and original compensation remain together with the signed cross work. -/
def compensatedBilinearWork (A : ℝ) : ℝ :=
  (∫ t in Real.log (vaughanCutoff A : ℝ)..Real.log (sourceKernelCutoff A : ℝ),
    jointMangoldtTestProfile A t) -
  SourceMangoldtAbel.mangoldtLogError (Real.log (vaughanCutoff A : ℝ)) *
    jointMangoldtTestProfile A (Real.log (vaughanCutoff A : ℝ)) -
  actualBilinearWork A - centeredDeletedDiagonal A - independentMainTerm A

theorem compensatedBilinearWork_eq_compensatedJointWork (A : ℝ) (hA : 1 ≤ A) :
    compensatedBilinearWork A = compensatedJointWork A := by
  unfold compensatedBilinearWork compensatedJointWork
  rw [actualBilinearWork_eq_jointMangoldtErrorWork A hA]

/-- All quantitative costs are inherited once, at the same radius. -/
theorem residual_tail_of_compensatedBilinearWork_tail
    (D R : ℝ) (hD : 0 ≤ D) (hR : 1 ≤ R)
    (hwork : ∀ A : ℝ, R ≤ A → compensatedBilinearWork A ≤ D) :
    ∃ C_F : ℝ, 0 ≤ C_F ∧
      ∀ A : ℝ, R ≤ A → mertensResidual A ≤ D + 3 + C_F := by
  apply residual_tail_of_compensatedJointWork_tail D R hD hR
  intro A hRA
  rw [← compensatedBilinearWork_eq_compensatedJointWork A (hR.trans hRA)]
  exact hwork A hRA

/-- A literal signed bilinear bound would discharge the unchanged original estimate. -/
theorem estimate_of_compensatedBilinearWork_tail
    (D R : ℝ) (hD : 0 ≤ D) (hR : 1 ≤ R)
    (hwork : ∀ A : ℝ, R ≤ A → compensatedBilinearWork A ≤ D) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_compensatedJointWork_tail D R hD hR
  intro A hRA
  rw [← compensatedBilinearWork_eq_compensatedJointWork A (hR.trans hRA)]
  exact hwork A hRA

end
end FormalResearch.RiemannHypothesis.SourceCompensatedBilinearConsumer
```
