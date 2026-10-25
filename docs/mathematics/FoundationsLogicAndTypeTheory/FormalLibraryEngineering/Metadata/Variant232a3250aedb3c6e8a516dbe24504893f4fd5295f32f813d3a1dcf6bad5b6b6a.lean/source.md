# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant232a3250aedb3c6e8a516dbe24504893f4fd5295f32f813d3a1dcf6bad5b6b6a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe5298c0032aee4b7d2b39eebf5b63dd585b655c` · SHA-256 `b3df35b42772d9322cd658ba0479b4a8653964b4a3e6dd87f7be9e7e84a87d05`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant5216313c437a6a8ec2279b0ad1c543f367bf8a9f74dbd895059fd715285d395f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5216313c437a6a8ec2279b0ad1c543f367bf8a9f74dbd895059fd715285d395f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant5216313c437a6a8ec2279b0ad1c543f367bf8a9f74dbd895059fd715285d395f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5216313c437a6a8ec2279b0ad1c543f367bf8a9f74dbd895059fd715285d395f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/6873b0bcb167aaf0c7ad6eac83d3e487b423993256044b233d3c04cad43a8f76/lean/sources/5216313c437a6a8ec2279b0ad1c543f367bf8a9f74dbd895059fd715285d395f/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant5216313c437a6a8ec2279b0ad1c543f367bf8a9f74dbd895059fd715285d395f

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
        logInfo m!"CA_DEV_dc513ced415f6667f3e2b861_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_dc513ced415f6667f3e2b861_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_dc513ced415f6667f3e2b861_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_dc513ced415f6667f3e2b861_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_dc513ced415f6667f3e2b861_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_dc513ced415f6667f3e2b861_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
