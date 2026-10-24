# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourcePrimitiveBumpProfile.Variant5724a685934d09bf91b5e3f28ab5757abee92a7826ca59542d7f4aafc8b61bd3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d569c6a43529116ddc7d720513b059fb0ec4f6ac` · SHA-256 `5f20795552586764f98d100b4a4a932df36ab9bc791360344a3085cdafa2cc7a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceBumpOverlapIntegrable.Variant9522d749b795d57fe87410fb471acb5526631f220383cb5b8547b267ea7a64ea","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9522d749b795d57fe87410fb471acb5526631f220383cb5b8547b267ea7a64ea","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceBumpOverlapIntegrable.Variant9522d749b795d57fe87410fb471acb5526631f220383cb5b8547b267ea7a64ea","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"9522d749b795d57fe87410fb471acb5526631f220383cb5b8547b267ea7a64ea","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-external-math-scan/working-source-final/primary/FormalResearch/RiemannHypothesis/SourcePrimitiveBumpProfile.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceBumpAutocorrelation
import FormalResearch.RiemannHypothesis.SourcePrimitivePrimeInteraction

/-!
# Exact normalized primitive overlap

The native polynomial overlap is transported to the existing primitive source
with its literal normalization. The shifted derivative correlations and signed
arithmetic readout require their own adapters.

Research direction, source selection and evaluation: grwtsk contributors.
Formal construction: OpenAI Codex, from the attached ChatGPT Peano proof note.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceBumpOverlapIntegrable.Variant9522d749b795d57fe87410fb471acb5526631f220383cb5b8547b267ea7a64ea

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourcePrimitiveBumpProfile

open MeasureTheory Set
open SourcePairing SourceCausalEnergy SourcePrimitivePrimeInteraction SourceBumpAutocorrelation
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization BridgeNormalization

/-- The exact compact bump product has an integrability proof on the half-support. -/
theorem sourceBump_overlap_integrable {u : ℝ} (hu : 0 ≤ u) :
    Integrable (fun x : ℝ => sourceBump x * sourceBump (x-u)) := by
  rw [sourceBump_overlap_eq_indicator hu]
  apply integrable_zeroExtension
  unfold unitBump
  fun_prop

/-- The existing primitive correlation equals the factored profile divided by actual Z_A. -/
theorem primitiveCorrelationZero_eq_profile {A t : ℝ} (hA : 0 < A)
    (ht0 : 0 ≤ t) (ht2 : t ≤ 2 * A) :
    primitiveCorrelationZero A t = overlapProfile (t/A) / sourceNormalization A := by
  have hZ : 0 < sourceNormalization A := by
    unfold sourceNormalization
    positivity
  have he : (fun x : ℝ =>
      normalizedPrimitiveBump A x * normalizedPrimitiveBump A (x-t)) =
      (fun x => (scaledBump A x * scaledBump A (x-t)) / sourceNormalization A) := by
    funext x
    dsimp only [normalizedPrimitiveBump]
    rw [div_mul_div_comm, ← pow_two, Real.sq_sqrt hZ.le]
  rw [primitiveCorrelationZero, he, integral_div,
    scaledBump_autocorrelation_eq_profile hA ht0 ht2]

end FormalResearch.RiemannHypothesis.SourcePrimitiveBumpProfile
```
