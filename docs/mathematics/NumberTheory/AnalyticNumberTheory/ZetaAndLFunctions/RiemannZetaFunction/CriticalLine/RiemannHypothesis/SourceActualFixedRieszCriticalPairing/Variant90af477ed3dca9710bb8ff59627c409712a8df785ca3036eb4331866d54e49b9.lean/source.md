# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualFixedRieszCriticalPairing.Variant90af477ed3dca9710bb8ff59627c409712a8df785ca3036eb4331866d54e49b9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fcae1105b4164baa1d5f6fe90919e6e88e4af4b5` · SHA-256 `1392215df8639da802588a2b9248d2a8655eae941243b22d486e0a34c362d13f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualFixedCenteredMangoldtRieszEqCriticalRelativePairing.Variant911026a1d764b577a8a7d1021c23ea5f0bc5ff094f30c4640d2cb5173344c7ed","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"911026a1d764b577a8a7d1021c23ea5f0bc5ff094f30c4640d2cb5173344c7ed","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualFixedCenteredMangoldtRieszEqCriticalRelativePairing.Variant911026a1d764b577a8a7d1021c23ea5f0bc5ff094f30c4640d2cb5173344c7ed","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"911026a1d764b577a8a7d1021c23ea5f0bc5ff094f30c4640d2cb5173344c7ed","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261007T094555Z-1791366355592950000/SourceActualFixedRieszCriticalPairing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualRieszFixedCenterTransfer
import SourceCriticalRelativeCompensation

/-!
The complete fixed-center Riesz readout is the actual closed Chebyshev pairing
with its retained unit and archimedean anchor. The finite rational center payment
cancels exactly. No uniform arithmetic pairing bound is supplied.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualFixedCenteredMangoldtRieszEqCriticalRelativePairing.Variant911026a1d764b577a8a7d1021c23ea5f0bc5ff094f30c4640d2cb5173344c7ed

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceActualFixedRieszCriticalPairing

open MeasureTheory
open SourcePairing SourceActualRieszFixedCenterTransfer SourceActualRieszCriticalCenter
open SourceActualRieszCenteredReconstruction SourceCriticalRelativeCompensation
open OmegaResearch.CriticalRelativePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization

/-- Exact cancellation preserves all real scales, arbitrary real constant, and both source seams. -/
theorem actualFixedCenteredMangoldtRiesz_eq_criticalRelativePairing {A : ℝ}
    (hA : 1 ≤ A) (b : ℝ) :
    (∫ t in 0..2 * A, deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
      actualFixedCenteredMangoldtRieszPrimitive b t) =
        criticalRelativePairing A - 1 - archimedeanMultiplier 0 / 2 := by
  rw [actualFixedCenteredMangoldtRiesz_readout hA b,
    mertensResidual_eq_criticalRelative_add_baseline hA,
    actualRiesz_finite_center_payment, actualRiesz_continuousMoment_eq_neg_magnitude hA]
  ring

end FormalResearch.RiemannHypothesis.SourceActualFixedRieszCriticalPairing
```
