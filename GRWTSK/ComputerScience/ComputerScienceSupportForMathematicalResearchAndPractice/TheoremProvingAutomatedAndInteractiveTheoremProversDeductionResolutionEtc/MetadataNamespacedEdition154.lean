-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant5720f178243e54634bdb14f7bfa7b3bc790bd2fb3aa0bc1ac6098448bdf5f93a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5720f178243e54634bdb14f7bfa7b3bc790bd2fb3aa0bc1ac6098448bdf5f93a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant5720f178243e54634bdb14f7bfa7b3bc790bd2fb3aa0bc1ac6098448bdf5f93a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5720f178243e54634bdb14f7bfa7b3bc790bd2fb3aa0bc1ac6098448bdf5f93a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/91f97b095ad264a1d64059bdaeb827313d7717f583af36ceb27b48588f6fe02f/lean/sources/5720f178243e54634bdb14f7bfa7b3bc790bd2fb3aa0bc1ac6098448bdf5f93a/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant5720f178243e54634bdb14f7bfa7b3bc790bd2fb3aa0bc1ac6098448bdf5f93a

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
        logInfo m!"CA_DEV_0b76a1cd88012412d536519e_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_0b76a1cd88012412d536519e_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_0b76a1cd88012412d536519e_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_0b76a1cd88012412d536519e_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_0b76a1cd88012412d536519e_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_0b76a1cd88012412d536519e_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
