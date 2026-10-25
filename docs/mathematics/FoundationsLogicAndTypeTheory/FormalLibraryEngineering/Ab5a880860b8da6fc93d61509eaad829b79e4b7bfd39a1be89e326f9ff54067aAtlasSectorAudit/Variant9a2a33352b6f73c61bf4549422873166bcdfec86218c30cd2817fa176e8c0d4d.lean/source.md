# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ab5a880860b8da6fc93d61509eaad829b79e4b7bfd39a1be89e326f9ff54067aAtlasSectorAudit.Variant9a2a33352b6f73c61bf4549422873166bcdfec86218c30cd2817fa176e8c0d4d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0317cb7caeb057a306054f88fa9d6fd4c85baa6c` · SHA-256 `f9da8ac3d3b9d093ab9585b25d3c065ce6db3d7baccf14ac7b4210f71967e069`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.QuadraticSwapInvolution.Variantab5a880860b8da6fc93d61509eaad829b79e4b7bfd39a1be89e326f9ff54067a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ab5a880860b8da6fc93d61509eaad829b79e4b7bfd39a1be89e326f9ff54067a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.QuadraticSwapInvolution.Variantab5a880860b8da6fc93d61509eaad829b79e4b7bfd39a1be89e326f9ff54067a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ab5a880860b8da6fc93d61509eaad829b79e4b7bfd39a1be89e326f9ff54067a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/ab/ab5a880860b8da6fc93d61509eaad829b79e4b7bfd39a1be89e326f9ff54067a--AtlasSectorAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.QuadraticSwapInvolution
import FormalResearch.PositiveAtlas.CommutingInvolutions
import FormalResearch.PositiveAtlas.PositiveFourSector
import FormalResearch.PositiveAtlas.InterventionDefect
import FormalResearch.PositiveAtlas.ComparatorSeparation
import FormalResearch.PositiveAtlas.ComparatorMargin
import FormalResearch.PositiveAtlas.FourPhaseConvolution
import FormalResearch.PositiveAtlas.AnalyticDispersion
import Lean.Util.CollectAxioms

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.QuadraticSwapInvolution.Variantab5a880860b8da6fc93d61509eaad829b79e4b7bfd39a1be89e326f9ff54067a

open Lean Elab Command
set_option pp.universes true
set_option pp.fullNames true
set_option pp.proofs false
run_cmd do
  let env ← getEnv
  let mods : Array Name := #[`FormalResearch.PositiveAtlas.QuadraticSwapInvolution, `FormalResearch.PositiveAtlas.CommutingInvolutions, `FormalResearch.PositiveAtlas.PositiveFourSector, `FormalResearch.PositiveAtlas.InterventionDefect, `FormalResearch.PositiveAtlas.ComparatorSeparation, `FormalResearch.PositiveAtlas.ComparatorMargin, `FormalResearch.PositiveAtlas.FourPhaseConvolution, `FormalResearch.PositiveAtlas.AnalyticDispersion]
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
