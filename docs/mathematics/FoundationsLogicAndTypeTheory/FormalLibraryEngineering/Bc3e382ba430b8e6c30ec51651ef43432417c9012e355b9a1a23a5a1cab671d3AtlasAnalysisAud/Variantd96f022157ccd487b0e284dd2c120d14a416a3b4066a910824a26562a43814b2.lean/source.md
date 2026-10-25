# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Bc3e382ba430b8e6c30ec51651ef43432417c9012e355b9a1a23a5a1cab671d3AtlasAnalysisAud.Variantd96f022157ccd487b0e284dd2c120d14a416a3b4066a910824a26562a43814b2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `12b55b2b2f189cec5011682a043be5bc593e9c37` · SHA-256 `8670a8e54d6ededaa8e3940cb8858b8110087dc58f90c4195229c9358dc66ebd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AffineGauge.Variantbc3e382ba430b8e6c30ec51651ef43432417c9012e355b9a1a23a5a1cab671d3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bc3e382ba430b8e6c30ec51651ef43432417c9012e355b9a1a23a5a1cab671d3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.AffineGauge.Variantbc3e382ba430b8e6c30ec51651ef43432417c9012e355b9a1a23a5a1cab671d3","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"bc3e382ba430b8e6c30ec51651ef43432417c9012e355b9a1a23a5a1cab671d3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/bc/bc3e382ba430b8e6c30ec51651ef43432417c9012e355b9a1a23a5a1cab671d3--AtlasAnalysisAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.AffineGauge
import FormalResearch.PositiveAtlas.AffineReconstruction
import FormalResearch.PositiveAtlas.FiniteLogAffineCovariance
import FormalResearch.PositiveAtlas.FiniteLogAffineFirstDerivative
import Lean.Util.CollectAxioms

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AffineGauge.Variantbc3e382ba430b8e6c30ec51651ef43432417c9012e355b9a1a23a5a1cab671d3

open Lean Elab Command
set_option pp.universes true
set_option pp.fullNames true
set_option pp.proofs false
run_cmd do
  let env ← getEnv
  let mods : Array Name := #[`FormalResearch.PositiveAtlas.AffineGauge, `FormalResearch.PositiveAtlas.AffineReconstruction, `FormalResearch.PositiveAtlas.FiniteLogAffineCovariance, `FormalResearch.PositiveAtlas.FiniteLogAffineFirstDerivative]
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
