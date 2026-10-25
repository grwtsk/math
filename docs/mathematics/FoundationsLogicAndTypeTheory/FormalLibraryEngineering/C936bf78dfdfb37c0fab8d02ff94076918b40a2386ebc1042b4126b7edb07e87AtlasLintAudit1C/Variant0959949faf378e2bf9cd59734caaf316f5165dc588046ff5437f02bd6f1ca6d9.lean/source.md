# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.C936bf78dfdfb37c0fab8d02ff94076918b40a2386ebc1042b4126b7edb07e87AtlasLintAudit1C.Variant0959949faf378e2bf9cd59734caaf316f5165dc588046ff5437f02bd6f1ca6d9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1030b6198d6b7e8cd80cc070e46846be81ae4bcb` · SHA-256 `c7f35b345939aa362a1cca2acf466ea5da92fb89fa85fb5dc1e1f5b19fe93a18`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ComparatorMargin.Variantc936bf78dfdfb37c0fab8d02ff94076918b40a2386ebc1042b4126b7edb07e87","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c936bf78dfdfb37c0fab8d02ff94076918b40a2386ebc1042b4126b7edb07e87","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ComparatorMargin.Variantc936bf78dfdfb37c0fab8d02ff94076918b40a2386ebc1042b4126b7edb07e87","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c936bf78dfdfb37c0fab8d02ff94076918b40a2386ebc1042b4126b7edb07e87","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/c9/c936bf78dfdfb37c0fab8d02ff94076918b40a2386ebc1042b4126b7edb07e87--AtlasLintAudit1CachedNames.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.ComparatorMargin
import FormalResearch.PositiveAtlas.ScalarSchur
import FormalResearch.PositiveAtlas.QuadraticSwapInvolution
import FormalResearch.PositiveAtlas.BlockDirectionReindexing
import FormalResearch.PositiveAtlas.AnalyticDispersion
import FormalResearch.PositiveAtlas.CommutingInvolutions
import FormalResearch.PositiveAtlas.Certification
import FormalResearch.PositiveAtlas.OrderedPartitionBridge
import Lean.Util.CollectAxioms

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ComparatorMargin.Variantc936bf78dfdfb37c0fab8d02ff94076918b40a2386ebc1042b4126b7edb07e87

open Lean Elab Command
set_option pp.universes true
set_option pp.fullNames true
set_option pp.proofs false
run_cmd do
  let env ← getEnv
  let mods : Array Name := #[`FormalResearch.PositiveAtlas.ComparatorMargin, `FormalResearch.PositiveAtlas.ScalarSchur, `FormalResearch.PositiveAtlas.QuadraticSwapInvolution, `FormalResearch.PositiveAtlas.BlockDirectionReindexing, `FormalResearch.PositiveAtlas.AnalyticDispersion, `FormalResearch.PositiveAtlas.CommutingInvolutions, `FormalResearch.PositiveAtlas.Certification, `FormalResearch.PositiveAtlas.OrderedPartitionBridge]
  let moduleNames := env.allImportedModuleNames
  let names := env.const2ModIdx.fold (fun acc n idx =>
    if mods.contains moduleNames[idx]! then n :: acc else acc) []
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
