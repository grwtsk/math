# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant8d6285d1d002fba3933efc2fcf52190d05b80a97672bcf2440cdb10cbc377b92

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `45690246052395500492856a030fce4dc77ff50f` · SHA-256 `9cd2097aaf2777329ae74d7c18e6a9f1f6f5e8eba540649aff82af7f19e79dbe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant0ea8d16503a9d8cae4d864ac1391f2e58dbd98048a7e4fb556295876e207ffff","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0ea8d16503a9d8cae4d864ac1391f2e58dbd98048a7e4fb556295876e207ffff","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant0ea8d16503a9d8cae4d864ac1391f2e58dbd98048a7e4fb556295876e207ffff","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"0ea8d16503a9d8cae4d864ac1391f2e58dbd98048a7e4fb556295876e207ffff","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/1e7a8fecbd1ec3a361421476eda9be3f9b1fd04011dc7d5b0dede4cef3b789d5/lean/sources/0ea8d16503a9d8cae4d864ac1391f2e58dbd98048a7e4fb556295876e207ffff/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant0ea8d16503a9d8cae4d864ac1391f2e58dbd98048a7e4fb556295876e207ffff

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
        logInfo m!"CA_DEV_e3f400f4df34be001cdef7a5_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_e3f400f4df34be001cdef7a5_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_e3f400f4df34be001cdef7a5_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_e3f400f4df34be001cdef7a5_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_e3f400f4df34be001cdef7a5_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_e3f400f4df34be001cdef7a5_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
