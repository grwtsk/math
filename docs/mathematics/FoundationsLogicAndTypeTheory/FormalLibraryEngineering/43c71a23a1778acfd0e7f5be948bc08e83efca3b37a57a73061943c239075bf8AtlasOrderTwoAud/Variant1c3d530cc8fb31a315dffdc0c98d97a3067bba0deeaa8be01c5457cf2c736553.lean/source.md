# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.43c71a23a1778acfd0e7f5be948bc08e83efca3b37a57a73061943c239075bf8AtlasOrderTwoAud.Variant1c3d530cc8fb31a315dffdc0c98d97a3067bba0deeaa8be01c5457cf2c736553

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dbe87c69c8fa08414f16917b6d478f246f3648e6` · SHA-256 `f77e5cfcb07d40cdc18bbb01d2ee938fce38c5c8ee9b0c4cc3051634bc4bf316`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OrderTwoRecursiveCumulant.Variant43c71a23a1778acfd0e7f5be948bc08e83efca3b37a57a73061943c239075bf8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"43c71a23a1778acfd0e7f5be948bc08e83efca3b37a57a73061943c239075bf8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.OrderTwoRecursiveCumulant.Variant43c71a23a1778acfd0e7f5be948bc08e83efca3b37a57a73061943c239075bf8","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"43c71a23a1778acfd0e7f5be948bc08e83efca3b37a57a73061943c239075bf8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/43/43c71a23a1778acfd0e7f5be948bc08e83efca3b37a57a73061943c239075bf8--AtlasOrderTwoAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.OrderTwoRecursiveCumulant
import Lean.Util.CollectAxioms

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OrderTwoRecursiveCumulant.Variant43c71a23a1778acfd0e7f5be948bc08e83efca3b37a57a73061943c239075bf8

open Lean Elab Command
set_option pp.universes true
set_option pp.fullNames true
set_option pp.proofs false
run_cmd do
  let env ← getEnv
  let mods : Array Name := #[`FormalResearch.PositiveAtlas.OrderTwoRecursiveCumulant]
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
