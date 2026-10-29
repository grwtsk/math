-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.RationalPhase.Variant073ba058d49308004948129b34d11501b10b95f1a1dca829e4b0a185745a7c9e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"073ba058d49308004948129b34d11501b10b95f1a1dca829e4b0a185745a7c9e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.RationalPhase.Variant073ba058d49308004948129b34d11501b10b95f1a1dca829e4b0a185745a7c9e","mathematical_subject":"Topology.GeneralTopology","original_sha256":"073ba058d49308004948129b34d11501b10b95f1a1dca829e4b0a185745a7c9e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/reification-phase-20261005/canonical-mapping-review/CanonicalAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.RationalPhase


namespace GRWTSK.Topology.GeneralTopology.RationalPhase.Variant073ba058d49308004948129b34d11501b10b95f1a1dca829e4b0a185745a7c9e

open Lean Elab Command in
run_cmd do
  let env ← getEnv
  let entries := env.constants.toList.filter fun item =>
    (`FormalResearch.PositiveAtlas.RationalPhase).isPrefixOf item.1
  for (name, info) in entries.mergeSort (fun a b => Name.lt a.1 b.1) do
    let axioms ← collectAxioms name
    logInfo m!"AUDIT_NAME {name}"
    logInfo m!"AUDIT_TYPE {info.type}"
    logInfo m!"AUDIT_AXIOMS {axioms.qsort Name.lt |>.toList}"
