-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteLogAffineSecondDerivative.Variant41cf2051b6a0dff3ae02133580228506881b4efbdcb5b04f72c08aea34bf9f7f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"41cf2051b6a0dff3ae02133580228506881b4efbdcb5b04f72c08aea34bf9f7f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.FiniteLogAffineSecondDerivative.Variant41cf2051b6a0dff3ae02133580228506881b4efbdcb5b04f72c08aea34bf9f7f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"41cf2051b6a0dff3ae02133580228506881b4efbdcb5b04f72c08aea34bf9f7f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/41/41cf2051b6a0dff3ae02133580228506881b4efbdcb5b04f72c08aea34bf9f7f--AtlasCumulantAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.FiniteLogAffineSecondDerivative
import FormalResearch.PositiveAtlas.FiniteThirdCumulant
import FormalResearch.PositiveAtlas.FiniteFourthCumulant
import FormalResearch.PositiveAtlas.MomentCumulantPartitions
import Lean.Util.CollectAxioms

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteLogAffineSecondDerivative.Variant41cf2051b6a0dff3ae02133580228506881b4efbdcb5b04f72c08aea34bf9f7f

open Lean Elab Command
set_option pp.universes true
set_option pp.fullNames true
set_option pp.proofs false
run_cmd do
  let env ← getEnv
  let mods : Array Name := #[`FormalResearch.PositiveAtlas.FiniteLogAffineSecondDerivative, `FormalResearch.PositiveAtlas.FiniteThirdCumulant, `FormalResearch.PositiveAtlas.FiniteFourthCumulant, `FormalResearch.PositiveAtlas.MomentCumulantPartitions]
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
