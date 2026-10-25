# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variantcf038aa3a40cc7aa2d54417adc6245c7e8b7c32836a79ac4fa411a7c1f60c671

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ffcfe91e23e529a70a8170a126e84980303a17ed` · SHA-256 `05c899e611d7d6645f67b555a507dbf0cb87258f6d76628bf88868228a02ea54`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Varianta206bf087462513ad6fa2e0f1164a95838708fd3310fe5227c5efbe681bdedf3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a206bf087462513ad6fa2e0f1164a95838708fd3310fe5227c5efbe681bdedf3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Varianta206bf087462513ad6fa2e0f1164a95838708fd3310fe5227c5efbe681bdedf3","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a206bf087462513ad6fa2e0f1164a95838708fd3310fe5227c5efbe681bdedf3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/12a7e23117b1d71e7d5610dd8cfd0f486c4e7e236e76dff539760e1828494c26/lean/sources/a206bf087462513ad6fa2e0f1164a95838708fd3310fe5227c5efbe681bdedf3/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Varianta206bf087462513ad6fa2e0f1164a95838708fd3310fe5227c5efbe681bdedf3

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
        logInfo m!"CA_DEV_19b12a560c6489a3d6dabd3a_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_19b12a560c6489a3d6dabd3a_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_19b12a560c6489a3d6dabd3a_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_19b12a560c6489a3d6dabd3a_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_19b12a560c6489a3d6dabd3a_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_19b12a560c6489a3d6dabd3a_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
