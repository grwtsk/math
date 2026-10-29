-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SmoothedTangentReadout.Variant42a6fd57541787a924209b5462d7b2369b424614df1b92b63b61d1a0d5b935bd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"42a6fd57541787a924209b5462d7b2369b424614df1b92b63b61d1a0d5b935bd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SmoothedTangentReadout.Variant42a6fd57541787a924209b5462d7b2369b424614df1b92b63b61d1a0d5b935bd","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"42a6fd57541787a924209b5462d7b2369b424614df1b92b63b61d1a0d5b935bd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/FormalResearch/RiemannHypothesis/ActualSourceConsumer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceCenteredSmoothing
import FormalResearch.RiemannHypothesis.SourceCompensatedFourier
import FormalResearch.RiemannHypothesis.SourceKapitzaSignedReduction

/-!
# Next consumer of the paid centered smoothing errors

Research direction and high-priority emphasis: grwtsk contributors.
Specific theorem selection, source adapter and formal construction: OpenAI Codex.
The unchanged compensated source is retained at every real scale.
The signed principal cap in the last theorem remains an explicit open premise.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SmoothedTangentReadout.Variant42a6fd57541787a924209b5462d7b2369b424614df1b92b63b61d1a0d5b935bd

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceCenteredSmoothing

open MeasureTheory SourcePairing SourceKapitzaSquareShell
open SourceKapitzaCompensatedReadout SourceKapitzaSignedReduction
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization PrimePowerDescent

variable (μ : Measure ℝ) [IsProbabilityMeasure μ]

/-- Both signed tangent channels on the complete natural inventory. -/
def smoothedTangentReadout (A : ℝ) (N : ℕ) : ℝ :=
  ∑ n ∈ Finset.Icc 2 N, (ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n *
    (smoothedCorrelation μ A (Real.log (shellEndpoint N n)) +
      (Real.log n - Real.log (shellEndpoint N n)) *
        smoothedSlope μ A (Real.log (shellEndpoint N n)))

/-- Every source approximation price is retained, including the complete masses. -/
def smoothedTangentPrice (A : ℝ) (N : ℕ) : ℝ :=
  tangentErrorConstant / A ^ 2 +
    ((5 / (2 * A ^ 2)) * (∫ y : ℝ, y ^ 2 ∂μ)) *
      (∑ n ∈ Finset.Icc 2 N, |(ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n|) +
    ((5 / A ^ 2) * (∫ y : ℝ, |y| ∂μ)) *
      ∑ n ∈ Finset.Icc 2 N,
        |(ArithmeticFunction.vonMangoldt n - 1) / Real.sqrt n| *
          |Real.log n - Real.log (shellEndpoint N n)|

/-- Exact source join, with no dropped integer or prime-power coefficient. -/
theorem compensatedSourceSum_eq_finiteCompensatedReadout (A : ℝ) :
    compensatedSourceSum A = finiteCompensatedReadout A ⌊Real.exp (2 * A)⌋₊ := by
  unfold compensatedSourceSum finiteCompensatedReadout primePowerInventory
  apply Finset.sum_congr rfl
  intro n hn
  have hn0 : 0 < n := by have h := (Finset.mem_Icc.mp hn).1; omega
  rw [exponentialTest_log _ n hn0]
  ring

/-- Application to the literal all-real compensated source and its full closed cutoff. -/
theorem compensatedSourceSum_smoothed_tangent_error {A : ℝ} (hA : 200 ≤ A)
    (hy : Integrable (fun y : ℝ => y) μ)
    (hmean : (∫ y : ℝ, y ∂μ) = 0)
    (hy2 : Integrable (fun y : ℝ => y ^ 2) μ) :
    |compensatedSourceSum A - smoothedTangentReadout μ A ⌊Real.exp (2 * A)⌋₊| ≤
      smoothedTangentPrice μ A ⌊Real.exp (2 * A)⌋₊ := by
  rw [compensatedSourceSum_eq_finiteCompensatedReadout]
  exact finite_tangent_smoothed_error μ hA _ hy hmean hy2

/-- Attempting the unchanged next arithmetic consumer exposes its remaining signed cap.
No bound for this premise follows from the analytic smoothing prices alone. -/
theorem estimate_of_smoothed_tangent_cap
    (hy : Integrable (fun y : ℝ => y) μ)
    (hmean : (∫ y : ℝ, y ∂μ) = 0)
    (hy2 : Integrable (fun y : ℝ => y ^ 2) μ)
    (hcap : ∃ R : ℝ, 200 ≤ R ∧ ∃ B : ℝ, ∀ A : ℝ, R ≤ A →
      smoothedTangentReadout μ A ⌊Real.exp (2 * A)⌋₊ +
        smoothedTangentPrice μ A ⌊Real.exp (2 * A)⌋₊ ≤ B) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_compensated_tail
  rcases hcap with ⟨R, hR, B, hB⟩
  refine ⟨R, by linarith, B, ?_⟩
  intro A hRA
  have he := (abs_le.mp
    (compensatedSourceSum_smoothed_tangent_error μ (hR.trans hRA) hy hmean hy2)).2
  linarith [hB A hRA]


end FormalResearch.RiemannHypothesis.SourceCenteredSmoothing
