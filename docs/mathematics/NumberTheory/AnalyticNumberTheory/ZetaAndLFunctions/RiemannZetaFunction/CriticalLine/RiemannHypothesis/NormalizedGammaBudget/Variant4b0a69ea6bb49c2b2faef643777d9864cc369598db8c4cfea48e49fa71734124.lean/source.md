# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.NormalizedGammaBudget.Variant4b0a69ea6bb49c2b2faef643777d9864cc369598db8c4cfea48e49fa71734124

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8636ca2fcb5eb90ac3bdeebd8fb5025edcd85e50` · SHA-256 `208f414d51320608971cc23a2ba4fe029bf0491c3194c6bee700873e4fe6a87b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PaperEndpoint.Varianta306a437df7a34ac4b90d615bc3de902e0a7ff2905da5adaeda887908cd94017","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a306a437df7a34ac4b90d615bc3de902e0a7ff2905da5adaeda887908cd94017","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.PaperEndpoint.Varianta306a437df7a34ac4b90d615bc3de902e0a7ff2905da5adaeda887908cd94017","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"a306a437df7a34ac4b90d615bc3de902e0a7ff2905da5adaeda887908cd94017","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass9/gamma_fourier/NormalizedGammaBudget.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import QuarterDigammaEndpoint
import ActualGammaBudget

/-! Scratch #146/#313: exact paper endpoint, unchanged Fourier G, actual budget.
Neither G nor the independently specified constant is defined by the desired
equality. Direction: grwtsk contributors. Scratch assembly: OpenAI Codex. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PaperEndpoint.Varianta306a437df7a34ac4b90d615bc3de902e0a7ff2905da5adaeda887908cd94017

set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.NormalizedGammaBudget
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization BridgeAdmissibility
open ActualCommonMeanZeroSide

def paperEndpoint : ℝ := -Real.eulerMascheroniConstant -
  3*Real.log 2 - Real.pi/2 - Real.log Real.pi

theorem actual_endpoint_eq_paper : -archimedeanConstant = paperEndpoint := by
  unfold archimedeanConstant paperEndpoint
  rw [QuarterDigammaEndpoint.actual_quarter_real_value]
  ring

theorem sourceGammaValue_identity {A : ℝ} (hA : 1 ≤ A) :
    sourceGammaValue A = paperEndpoint +
      2*(∫ t : ℝ in Set.Ioi 0,
        ArchimedeanKernel.weightedDeficit (sourceCorrelation explicitSecondDerivative A) t) := by
  rw [← actual_endpoint_eq_paper]
  exact ActualGammaBudget.sourceGammaValue_identity hA

/-- Actual Gamma correction budget at the paper's exact normalized endpoint. -/
theorem sourceGammaValue_budget {A : ℝ} (hA : 1 ≤ A) :
    paperEndpoint ≤ sourceGammaValue A ∧ sourceGammaValue A ≤ paperEndpoint+390/A^2 := by
  rw [← actual_endpoint_eq_paper]
  exact ActualGammaBudget.sourceGammaValue_budget hA

#print axioms paperEndpoint
#print axioms actual_endpoint_eq_paper
#print axioms sourceGammaValue_identity
#print axioms sourceGammaValue_budget
end ContinuousResearch.NormalizedGammaBudget
```
