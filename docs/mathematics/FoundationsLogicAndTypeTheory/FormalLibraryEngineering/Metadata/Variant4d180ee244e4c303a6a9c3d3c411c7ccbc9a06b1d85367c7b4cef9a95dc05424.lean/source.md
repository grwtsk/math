# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant4d180ee244e4c303a6a9c3d3c411c7ccbc9a06b1d85367c7b4cef9a95dc05424

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6bbd63dd56c1eb0b3b14851721a9fd048faabbd3` · SHA-256 `1638d8f9b7fd138531b02a6d26bcf3c357f170524733f057f0c004785b0167f5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant9e222cad38e118ffb155199ac4eb7cd4faa439a5a0e07307e6dee707e8a68364","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9e222cad38e118ffb155199ac4eb7cd4faa439a5a0e07307e6dee707e8a68364","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant9e222cad38e118ffb155199ac4eb7cd4faa439a5a0e07307e6dee707e8a68364","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"9e222cad38e118ffb155199ac4eb7cd4faa439a5a0e07307e6dee707e8a68364","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/4fb20875de60b6c128b0ff6bc548774b48e8f3c164acfdbb915b193d0ac368a9/lean/sources/9e222cad38e118ffb155199ac4eb7cd4faa439a5a0e07307e6dee707e8a68364/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant9e222cad38e118ffb155199ac4eb7cd4faa439a5a0e07307e6dee707e8a68364

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
        logInfo m!"CA_DEV_551ef1f45a1943aaee0e1597_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_551ef1f45a1943aaee0e1597_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_551ef1f45a1943aaee0e1597_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_551ef1f45a1943aaee0e1597_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_551ef1f45a1943aaee0e1597_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_551ef1f45a1943aaee0e1597_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
