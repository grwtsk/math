# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.B062f7264aff7431ab61c5ca491372dea37b8dde0a0891d7aea7227bc158b4aaOrderFourAudit.Variant6617b7ec66b0ff21bac1d8b95d21943bf1e6cb6fced7676ee21f3200a68eda4c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6393c117a0393ed84d514598ac1c9197cf5695ac` · SHA-256 `ee84d39516354d9dc5184c3be4c106ec7966ba79c2bf1f9b9fc8df9d5cbd8ccb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OrderFourRecursiveCumulant.Variantb062f7264aff7431ab61c5ca491372dea37b8dde0a0891d7aea7227bc158b4aa","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b062f7264aff7431ab61c5ca491372dea37b8dde0a0891d7aea7227bc158b4aa","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.OrderFourRecursiveCumulant.Variantb062f7264aff7431ab61c5ca491372dea37b8dde0a0891d7aea7227bc158b4aa","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b062f7264aff7431ab61c5ca491372dea37b8dde0a0891d7aea7227bc158b4aa","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/b0/b062f7264aff7431ab61c5ca491372dea37b8dde0a0891d7aea7227bc158b4aa--OrderFourAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.OrderFourRecursiveCumulant
import Lean.Util.CollectAxioms

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OrderFourRecursiveCumulant.Variantb062f7264aff7431ab61c5ca491372dea37b8dde0a0891d7aea7227bc158b4aa

open Lean Elab Command
set_option pp.universes true
set_option pp.fullNames true
set_option pp.proofs false
run_cmd do
  let env ← getEnv
  let mods : Array Name := #[`FormalResearch.PositiveAtlas.OrderFourRecursiveCumulant]
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
