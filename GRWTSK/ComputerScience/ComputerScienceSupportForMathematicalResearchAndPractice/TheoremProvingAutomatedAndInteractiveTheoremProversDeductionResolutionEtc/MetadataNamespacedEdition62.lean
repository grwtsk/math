-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant1ee5df1a602a34f530492ef5368af9cb0682872781208c784480c06a991a52e0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1ee5df1a602a34f530492ef5368af9cb0682872781208c784480c06a991a52e0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant1ee5df1a602a34f530492ef5368af9cb0682872781208c784480c06a991a52e0","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1ee5df1a602a34f530492ef5368af9cb0682872781208c784480c06a991a52e0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/1072732c8e16dbe0d440646181948f60d0984f586b01a6d24dddd2b175a30ca8/lean/sources/1ee5df1a602a34f530492ef5368af9cb0682872781208c784480c06a991a52e0/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant1ee5df1a602a34f530492ef5368af9cb0682872781208c784480c06a991a52e0

open Lean

namespace Surface.ContinuousAssurance

run_cmd Elab.Command.liftTermElabM do
  let expectedType ← Lean.Elab.Term.elabType (← `(True))
  let candidate ← Lean.Elab.Term.elabTermEnsuringType (← `(by exact True.intro) ) (some expectedType)
  Lean.Elab.Term.synthesizeSyntheticMVarsNoPostponing
  let candidate ← instantiateMVars candidate
  let expectedType ← instantiateMVars expectedType
  let env ← getEnv
  let mut pending := candidate.getUsedConstants.toList ++ expectedType.getUsedConstants.toList
  let mut visited : NameSet := {}
  while !pending.isEmpty do
    let dependency := pending.head!
    pending := pending.tail!
    if !visited.contains dependency then
      visited := visited.insert dependency
      if let some dependencyInfo := env.find? dependency then
        logInfo m!"CA_DEV_bb2364e774ba5c4bdb43acd7_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_bb2364e774ba5c4bdb43acd7_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_bb2364e774ba5c4bdb43acd7_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_bb2364e774ba5c4bdb43acd7_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_bb2364e774ba5c4bdb43acd7_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_bb2364e774ba5c4bdb43acd7_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
