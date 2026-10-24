# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EndpointPositivityStatements.Variant4cc0885efb1faa8790c1babab6e3739410db29419ec06e590023abc7d628f3af

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d866abcf2af6a6d726316ca70484b7fc13aab05d` · SHA-256 `b546e405855c98722cf99f00cb6a8b7f76caf14669731db2868182d80ed18800`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EndpointPositivity.Variante2f79ac8f25da84280e14329530bb25d5193e11e35199ebd23ab4975ed883dcc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e2f79ac8f25da84280e14329530bb25d5193e11e35199ebd23ab4975ed883dcc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.EndpointPositivity.Variante2f79ac8f25da84280e14329530bb25d5193e11e35199ebd23ab4975ed883dcc","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"e2f79ac8f25da84280e14329530bb25d5193e11e35199ebd23ab4975ed883dcc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/mertens/EndpointPositivityStatements.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import scratch.mertens.EndpointPositivity

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EndpointPositivity.Variante2f79ac8f25da84280e14329530bb25d5193e11e35199ebd23ab4975ed883dcc

set_option autoImplicit false
namespace EndpointPositivityExactStatements
open Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
noncomputable section

example (A x : ℝ) (hA : 3 ≤ A) (hx : x ∈ Ico (A - 3 / 4) A) :
    0 < normalizedTest explicitSecondDerivative A x :=
  EndpointPositivityScratch.normalizedTest_endpoint_pos A x hA hx

example (A t : ℝ) (hA : 3 ≤ A) (ht : t ∈ Ico (2 * A - 3 / 4) (2 * A)) :
    0 < sourceCorrelation explicitSecondDerivative A t :=
  EndpointPositivityScratch.sourceCorrelation_endpoint_pos A t hA ht

example (A q : ℝ) (hA : 3 ≤ A)
    (hq : q ∈ Ico (Real.exp (2 * A) / 4) (Real.exp (2 * A) / 2)) :
    0 < SourceSampling.sourceSamplingKernel A q :=
  EndpointPositivityScratch.sourceSamplingKernel_upper_pos A q hA hq

end
end EndpointPositivityExactStatements
```
