# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.7c5413b3ce4e2add8ec87ab6ead6405f822f0669c8c6514d68c5f609dc6c705eAtlasHierarchyAu.Variant1ace5462a24f7ead33bac7a363d796643c1cda580e6243ef4f727178a707f470

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ea0bd964c7c2e196bbff5e5aeb5672de1bb47d7c` · SHA-256 `e967fbd0f928b37258b457402bf8de4aaa9def20d656d9f0b541f632125107bf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BlockDirectionReindexing.Variant7c5413b3ce4e2add8ec87ab6ead6405f822f0669c8c6514d68c5f609dc6c705e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7c5413b3ce4e2add8ec87ab6ead6405f822f0669c8c6514d68c5f609dc6c705e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.BlockDirectionReindexing.Variant7c5413b3ce4e2add8ec87ab6ead6405f822f0669c8c6514d68c5f609dc6c705e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7c5413b3ce4e2add8ec87ab6ead6405f822f0669c8c6514d68c5f609dc6c705e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/7c/7c5413b3ce4e2add8ec87ab6ead6405f822f0669c8c6514d68c5f609dc6c705e--AtlasHierarchyAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.BlockDirectionReindexing
import FormalResearch.PositiveAtlas.FiniteCumulantPrefix
import FormalResearch.PositiveAtlas.RecursiveCumulantHierarchy
import FormalResearch.PositiveAtlas.FiniteRawMomentHierarchy
import Lean.Util.CollectAxioms

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BlockDirectionReindexing.Variant7c5413b3ce4e2add8ec87ab6ead6405f822f0669c8c6514d68c5f609dc6c705e

open Lean Elab Command
set_option pp.universes true
set_option pp.fullNames true
set_option pp.proofs false
run_cmd do
  let env ← getEnv
  let mods : Array Name := #[`FormalResearch.PositiveAtlas.BlockDirectionReindexing, `FormalResearch.PositiveAtlas.FiniteCumulantPrefix, `FormalResearch.PositiveAtlas.RecursiveCumulantHierarchy, `FormalResearch.PositiveAtlas.FiniteRawMomentHierarchy]
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
