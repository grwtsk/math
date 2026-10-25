# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variante21b5a9f7568894865e42fb954f01fe0405b8677b4a3543c8b4be9994fb69d6a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e92baf8fe78c6f7185436d2bc0cf3d0b856699cf` · SHA-256 `e057de9b3eaf77265232716d64e6b579d1459f1c77d03af2f697848351a51279`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantc74c3e809228b64c279757daecd0bdb2e60a225ae8d30ba02c9559879b463953","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c74c3e809228b64c279757daecd0bdb2e60a225ae8d30ba02c9559879b463953","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variantc74c3e809228b64c279757daecd0bdb2e60a225ae8d30ba02c9559879b463953","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c74c3e809228b64c279757daecd0bdb2e60a225ae8d30ba02c9559879b463953","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/aac54873ba585cf804843741e70133500a1ac9ddfb6dd5191c792a291eed3249/lean/sources/c74c3e809228b64c279757daecd0bdb2e60a225ae8d30ba02c9559879b463953/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantc74c3e809228b64c279757daecd0bdb2e60a225ae8d30ba02c9559879b463953

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
        logInfo m!"CA_DEV_d19f8d83ff45fa471c464511_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_d19f8d83ff45fa471c464511_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_d19f8d83ff45fa471c464511_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_d19f8d83ff45fa471c464511_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_d19f8d83ff45fa471c464511_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_d19f8d83ff45fa471c464511_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
