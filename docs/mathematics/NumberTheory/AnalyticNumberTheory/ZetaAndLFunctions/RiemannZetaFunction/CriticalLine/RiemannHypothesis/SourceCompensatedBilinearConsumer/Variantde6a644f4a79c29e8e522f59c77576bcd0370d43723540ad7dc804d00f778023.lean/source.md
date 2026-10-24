# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceCompensatedBilinearConsumer.Variantde6a644f4a79c29e8e522f59c77576bcd0370d43723540ad7dc804d00f778023

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a8e5aff7262f4e73e6ecefa2f1868a5d6098f8ce` · SHA-256 `4acaf2ff50e005e3260cd2d5bea77f9313257caf99892938dc72d67d412d2bb0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TimeRow.Variante569b4d0ff88b3d99bfbd14022a99cfed5b043d3674c8a7881b9d72c143f51b2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e569b4d0ff88b3d99bfbd14022a99cfed5b043d3674c8a7881b9d72c143f51b2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.TimeRow.Variante569b4d0ff88b3d99bfbd14022a99cfed5b043d3674c8a7881b9d72c143f51b2","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"e569b4d0ff88b3d99bfbd14022a99cfed5b043d3674c8a7881b9d72c143f51b2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-hilbert-cycle-20261006/finite-energy-replays/SourceCompensatedBilinearConsumer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceJointWorkConsumer
import SourceActualMixedWorkFubini

/-!
Substitute the freshly checked actual-W finite-box Fubini identity before the
source-exact endpoint and bounded-ledger consumers. The two rows are independent;
their cross pairing is signed. No signed tail estimate is supplied here.
Research direction: grwtsk contributors. Construction: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.TimeRow.Variante569b4d0ff88b3d99bfbd14022a99cfed5b043d3674c8a7881b9d72c143f51b2

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
