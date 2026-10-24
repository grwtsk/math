# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.30c67403bb251bb5f255df67d518cee72e4edb66d91b58056afa5c4a06695840RHLandauBridgeAu.Variantfcd4d7653483dce595c1579acbd987e08312d8948c544a306b73c5d5ae1b7ec7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5f6d853937dddcf2f7cb9f1eba9c506789076976` · SHA-256 `cb59a1c4dfd8d48a184800d88fd1f35658bbe580f8bc530851016bbb9a26b9f0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Bridge.Variant30c67403bb251bb5f255df67d518cee72e4edb66d91b58056afa5c4a06695840","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"30c67403bb251bb5f255df67d518cee72e4edb66d91b58056afa5c4a06695840","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.Bridge.Variant30c67403bb251bb5f255df67d518cee72e4edb66d91b58056afa5c4a06695840","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"30c67403bb251bb5f255df67d518cee72e4edb66d91b58056afa5c4a06695840","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/30/30c67403bb251bb5f255df67d518cee72e4edb66d91b58056afa5c4a06695840--RHLandauBridgeAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.Landau.Bridge
import Lean.Util.CollectAxioms

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Bridge.Variant30c67403bb251bb5f255df67d518cee72e4edb66d91b58056afa5c4a06695840

open Lean Elab Command
set_option pp.universes true
set_option pp.fullNames true
set_option pp.proofs false
run_cmd do
  let env ← getEnv
  let mods : Array Name := #[
    `FormalResearch.RiemannHypothesis.Landau.Bridge]
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
