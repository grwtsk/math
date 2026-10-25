# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variantd5a667b48590548046b2030072209b95fa5009c3bc08b186cd869644da075c1e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `97efc35b729deafcf0f23125313470beb3a50c91` · SHA-256 `4bc8f32a6cf9406c10f1eac1c1b6274bfe0b70769eb912ce8f12cdf6081c5e3b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant4c2ae376b165749baf4c386dc04dab0f8061ac4def9d525522bbf366c9046643","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4c2ae376b165749baf4c386dc04dab0f8061ac4def9d525522bbf366c9046643","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant4c2ae376b165749baf4c386dc04dab0f8061ac4def9d525522bbf366c9046643","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"4c2ae376b165749baf4c386dc04dab0f8061ac4def9d525522bbf366c9046643","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/13a19ca59d3ed00bd55b071286fc14f98754d5344465548874dcdcdfd4a69b8d/lean/sources/4c2ae376b165749baf4c386dc04dab0f8061ac4def9d525522bbf366c9046643/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant4c2ae376b165749baf4c386dc04dab0f8061ac4def9d525522bbf366c9046643

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
        logInfo m!"CA_DEV_171d71d7981e5ea57c478930_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_171d71d7981e5ea57c478930_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_171d71d7981e5ea57c478930_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_171d71d7981e5ea57c478930_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_171d71d7981e5ea57c478930_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_171d71d7981e5ea57c478930_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
