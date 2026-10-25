# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant85981bc88fa681da2a2383763c3a13a5d96491fd26a4c565a571b1f2d2aa57ef

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4bbd19101d3ba03e523a3f60473402f2aa26e188` · SHA-256 `820e738aace75b1cc8ed96cd3abcbe2339497b96283e957f82bd614bd3e649bf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantef7fe611c34cef482ceb88a6d061b4bb7343077f05b650bb9da9474fd87d885a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ef7fe611c34cef482ceb88a6d061b4bb7343077f05b650bb9da9474fd87d885a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variantef7fe611c34cef482ceb88a6d061b4bb7343077f05b650bb9da9474fd87d885a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ef7fe611c34cef482ceb88a6d061b4bb7343077f05b650bb9da9474fd87d885a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/7fffd25afdc1e07fb2fc38ab84e549cd8753c83e5c02f3566f4f205cb83794b3/lean/sources/ef7fe611c34cef482ceb88a6d061b4bb7343077f05b650bb9da9474fd87d885a/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantef7fe611c34cef482ceb88a6d061b4bb7343077f05b650bb9da9474fd87d885a

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
        logInfo m!"CA_DEV_c014a1078cef4b54cbab1837_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_c014a1078cef4b54cbab1837_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_c014a1078cef4b54cbab1837_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_c014a1078cef4b54cbab1837_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_c014a1078cef4b54cbab1837_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_c014a1078cef4b54cbab1837_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
