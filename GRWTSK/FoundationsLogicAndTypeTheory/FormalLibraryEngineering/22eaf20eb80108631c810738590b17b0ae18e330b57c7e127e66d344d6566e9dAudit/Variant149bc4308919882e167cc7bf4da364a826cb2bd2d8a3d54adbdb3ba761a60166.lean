-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteAtlasTransport.Variant22eaf20eb80108631c810738590b17b0ae18e330b57c7e127e66d344d6566e9d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"22eaf20eb80108631c810738590b17b0ae18e330b57c7e127e66d344d6566e9d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.FiniteAtlasTransport.Variant22eaf20eb80108631c810738590b17b0ae18e330b57c7e127e66d344d6566e9d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"22eaf20eb80108631c810738590b17b0ae18e330b57c7e127e66d344d6566e9d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/22/22eaf20eb80108631c810738590b17b0ae18e330b57c7e127e66d344d6566e9d--Audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.FiniteAtlasTransport
import Lean.Util.CollectAxioms

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteAtlasTransport.Variant22eaf20eb80108631c810738590b17b0ae18e330b57c7e127e66d344d6566e9d

open Lean Elab Command
set_option pp.universes true
set_option pp.fullNames true
set_option pp.proofs false
set_option pp.maxSteps 1000000
run_cmd do
  let env ← getEnv
  let modules := env.allImportedModuleNames
  let names := env.const2ModIdx.fold (fun acc n idx =>
    if modules[idx]! == `FormalResearch.PositiveAtlas.FiniteAtlasTransport then n :: acc else acc) []
  let present := names.filter fun n => (env.find? n).isSome
  for n in names.filter (fun n => (env.find? n).isNone) do
    unless (n.toString.splitOn ".").any (fun p => p.startsWith "_") do
      throwError "Missing public declaration {n}"
    logInfo m!"COMPILER_METADATA_ONLY {n}"
  for n in present.toArray.qsort Name.quickLt do
    let ci ← getConstInfo n
    logInfo m!"TYPE {n} levels {ci.levelParams}: {ci.type}"
    let axioms ← collectAxioms n
    logInfo m!"AXIOMS {n}: {axioms}"
    for ax in axioms do
      unless #[`propext, `Classical.choice, `Quot.sound].contains ax do
        throwError "Unexpected axiom {ax} for {n}"
  logInfo m!"AUDITED {present.length} declarations, including generated/private declarations"
