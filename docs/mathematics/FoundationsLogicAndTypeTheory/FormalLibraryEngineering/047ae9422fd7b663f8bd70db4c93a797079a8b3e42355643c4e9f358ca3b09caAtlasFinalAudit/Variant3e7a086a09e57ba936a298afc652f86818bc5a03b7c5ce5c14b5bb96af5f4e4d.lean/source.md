# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.047ae9422fd7b663f8bd70db4c93a797079a8b3e42355643c4e9f358ca3b09caAtlasFinalAudit.Variant3e7a086a09e57ba936a298afc652f86818bc5a03b7c5ce5c14b5bb96af5f4e4d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e16d94eb7688b21b0d520ebf22ae3ef2fdaed7d` · SHA-256 `94fcc19eb1b29464ad96913df24debefb88b6e27996ca6d116fdd5fdfc95cd6a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AllOrdersRawMomentDerivative.Variant047ae9422fd7b663f8bd70db4c93a797079a8b3e42355643c4e9f358ca3b09ca","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"047ae9422fd7b663f8bd70db4c93a797079a8b3e42355643c4e9f358ca3b09ca","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.AllOrdersRawMomentDerivative.Variant047ae9422fd7b663f8bd70db4c93a797079a8b3e42355643c4e9f358ca3b09ca","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"047ae9422fd7b663f8bd70db4c93a797079a8b3e42355643c4e9f358ca3b09ca","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/04/047ae9422fd7b663f8bd70db4c93a797079a8b3e42355643c4e9f358ca3b09ca--AtlasFinalAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.AllOrdersRawMomentDerivative
import FormalResearch.PositiveAtlas.OrderedPartitionBridge
import Lean.Util.CollectAxioms

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AllOrdersRawMomentDerivative.Variant047ae9422fd7b663f8bd70db4c93a797079a8b3e42355643c4e9f358ca3b09ca

open Lean Elab Command
set_option pp.universes true
set_option pp.fullNames true
set_option pp.proofs false
run_cmd do
  let env ← getEnv
  let mods : Array Name := #[`FormalResearch.PositiveAtlas.AllOrdersRawMomentDerivative, `FormalResearch.PositiveAtlas.OrderedPartitionBridge]
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
