-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PoleCertificate.Variantfe8e2ddb793f2905e580cd714094f263fcbeb3d4aee42c774cb27f7dcd4a1a2a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fe8e2ddb793f2905e580cd714094f263fcbeb3d4aee42c774cb27f7dcd4a1a2a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.PoleCertificate.Variantfe8e2ddb793f2905e580cd714094f263fcbeb3d4aee42c774cb27f7dcd4a1a2a","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"fe8e2ddb793f2905e580cd714094f263fcbeb3d4aee42c774cb27f7dcd4a1a2a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/fe/fe8e2ddb793f2905e580cd714094f263fcbeb3d4aee42c774cb27f7dcd4a1a2a--RHPoleCorrectionAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.Laplace.PoleCertificate
import FormalResearch.RiemannHypothesis.Laplace.Assembly
import FormalResearch.RiemannHypothesis.Landau.Correction
import Lean.Util.CollectAxioms

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PoleCertificate.Variantfe8e2ddb793f2905e580cd714094f263fcbeb3d4aee42c774cb27f7dcd4a1a2a

open Lean Elab Command
set_option pp.universes true
set_option pp.fullNames true
set_option pp.proofs false
run_cmd do
  let env ← getEnv
  let mods : Array Name := #[
    `FormalResearch.RiemannHypothesis.Laplace.PoleCertificate,
    `FormalResearch.RiemannHypothesis.Laplace.Assembly,
    `FormalResearch.RiemannHypothesis.Landau.Correction]
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
