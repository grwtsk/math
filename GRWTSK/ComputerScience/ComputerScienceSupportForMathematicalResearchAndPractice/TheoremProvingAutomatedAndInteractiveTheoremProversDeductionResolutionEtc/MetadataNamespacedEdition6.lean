-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantfd917ad1d9f53f89d3e2ba137fe1588e228dd6be29e61a062fe87cb7a79fed8c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fd917ad1d9f53f89d3e2ba137fe1588e228dd6be29e61a062fe87cb7a79fed8c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variantfd917ad1d9f53f89d3e2ba137fe1588e228dd6be29e61a062fe87cb7a79fed8c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"fd917ad1d9f53f89d3e2ba137fe1588e228dd6be29e61a062fe87cb7a79fed8c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/32012d114a2e26085b8d3466632d1b0d0e8a68a545d8a1aa22754341db01626f/lean/sources/fd917ad1d9f53f89d3e2ba137fe1588e228dd6be29e61a062fe87cb7a79fed8c/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantfd917ad1d9f53f89d3e2ba137fe1588e228dd6be29e61a062fe87cb7a79fed8c

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
        logInfo m!"CA_DEV_a233fc4b59d5408766117b15_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_a233fc4b59d5408766117b15_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_a233fc4b59d5408766117b15_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_a233fc4b59d5408766117b15_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_a233fc4b59d5408766117b15_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_a233fc4b59d5408766117b15_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
