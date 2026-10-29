-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant5105c7e2592011e828ca7c3a794c162a4991e96ea8577455acaeb202913fe285","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5105c7e2592011e828ca7c3a794c162a4991e96ea8577455acaeb202913fe285","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant5105c7e2592011e828ca7c3a794c162a4991e96ea8577455acaeb202913fe285","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5105c7e2592011e828ca7c3a794c162a4991e96ea8577455acaeb202913fe285","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/cf3cd5cf9da69800915944b2f506a89c52b1e9d6ed90422a812a07703701c7d2/lean/sources/5105c7e2592011e828ca7c3a794c162a4991e96ea8577455acaeb202913fe285/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant5105c7e2592011e828ca7c3a794c162a4991e96ea8577455acaeb202913fe285

open Lean

namespace Surface.ContinuousAssurance

run_cmd Elab.Command.liftTermElabM do
  let expectedType ← Lean.Elab.Term.elabType (← `(True))
  let candidate ← Lean.Elab.Term.elabTermEnsuringType (← `(by exact False.elim (by exact True.intro)) ) (some expectedType)
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
        logInfo m!"CA_DEV_e927a7985997793371e2f457_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_e927a7985997793371e2f457_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_e927a7985997793371e2f457_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_e927a7985997793371e2f457_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_e927a7985997793371e2f457_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_e927a7985997793371e2f457_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
