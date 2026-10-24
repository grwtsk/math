# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.381e1ecf0a5cc515d07629b4bd113032006ecc3e35722486998309dd62e44ba9RHContinuationSa.Variant62e6206ce45312f3979d43223e93e6f99185c82b5949fd006abe4da9b946b1a0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e91461fb0b3e786be1324e0edfb2d3a6eeefef5e` · SHA-256 `ef8527c23cc5bdaab324e6b8ab77143ddf4f220f42146a7122ca14125d2cbc3e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EstimateTwoMomentSamplingBound.Variant381e1ecf0a5cc515d07629b4bd113032006ecc3e35722486998309dd62e44ba9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"381e1ecf0a5cc515d07629b4bd113032006ecc3e35722486998309dd62e44ba9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.EstimateTwoMomentSamplingBound.Variant381e1ecf0a5cc515d07629b4bd113032006ecc3e35722486998309dd62e44ba9","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"381e1ecf0a5cc515d07629b4bd113032006ecc3e35722486998309dd62e44ba9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/38/381e1ecf0a5cc515d07629b4bd113032006ecc3e35722486998309dd62e44ba9--RHContinuationSamplingAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTwoMomentSamplingBound
import FormalResearch.RiemannHypothesis.Laplace.Continuation
import Lean.Util.CollectAxioms

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EstimateTwoMomentSamplingBound.Variant381e1ecf0a5cc515d07629b4bd113032006ecc3e35722486998309dd62e44ba9

open Lean Elab Command
set_option pp.universes true
set_option pp.fullNames true
set_option pp.proofs false
run_cmd do
  let env ← getEnv
  let mods : Array Name := #[
    `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTwoMomentSamplingBound,
    `FormalResearch.RiemannHypothesis.Laplace.Continuation]
  let names := env.const2ModIdx.fold (fun acc n idx =>
    if mods.contains env.allImportedModuleNames[idx]! then n :: acc else acc) []
  let present := names.filter fun n => (env.find? n).isSome
  let metadataOnly := names.filter fun n => (env.find? n).isNone
  for n in metadataOnly do
    unless (n.toString.splitOn ".").any (fun p => p.startsWith "_") do
      throwError "Missing public declaration {n}"
    logInfo m!"COMPILER_METADATA_ONLY {n}"
  for n in present.toArray.qsort Name.quickLt do
    let ci ← getConstInfo n
    logInfo m!"TYPE {n} levels {ci.levelParams}: {ci.type}"
    let axs ← collectAxioms n
    logInfo m!"AXIOMS {n}: {axs}"
    for ax in axs do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "Unexpected axiom {ax} for {n}"
  logInfo m!"AUDITED {present.length} declarations, including generated/private declarations"
```
