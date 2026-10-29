-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EstimateLogSampling.Variantc4b572448b94dc2cf0aad47d360ddd6f941118a5397d8c731d0fcd613ae387f5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c4b572448b94dc2cf0aad47d360ddd6f941118a5397d8c731d0fcd613ae387f5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.EstimateLogSampling.Variantc4b572448b94dc2cf0aad47d360ddd6f941118a5397d8c731d0fcd613ae387f5","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"c4b572448b94dc2cf0aad47d360ddd6f941118a5397d8c731d0fcd613ae387f5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/c4/c4b572448b94dc2cf0aad47d360ddd6f941118a5397d8c731d0fcd613ae387f5--RHContinuationIntegralsAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogSampling
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogSamplingIntegrals
import FormalResearch.RiemannHypothesis.Laplace.Expansion
import FormalResearch.RiemannHypothesis.Laplace.InitialFormula
import Lean.Util.CollectAxioms

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.EstimateLogSampling.Variantc4b572448b94dc2cf0aad47d360ddd6f941118a5397d8c731d0fcd613ae387f5

open Lean Elab Command
set_option pp.universes true
set_option pp.fullNames true
set_option pp.proofs false
run_cmd do
  let env ← getEnv
  let mods : Array Name := #[
    `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogSampling,
    `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogSamplingIntegrals,
    `FormalResearch.RiemannHypothesis.Laplace.Expansion,
    `FormalResearch.RiemannHypothesis.Laplace.InitialFormula]
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
