# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Varianta1d0273b2a66c9898d951bc2bd2fafce6ccf6a69f3da5d6c9ffd354e748a1e3a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd8d5b55e32136518f7f7ce1b881ca54c6a19286` · SHA-256 `eb76da955257ae9442e15fee079b3e9e027e2866e398a73dad2a14fa9030c4ce`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant97b31f3beba7f6a9310660440a4844fa326ea0a0ea86678dadb84319719bde47","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"97b31f3beba7f6a9310660440a4844fa326ea0a0ea86678dadb84319719bde47","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant97b31f3beba7f6a9310660440a4844fa326ea0a0ea86678dadb84319719bde47","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"97b31f3beba7f6a9310660440a4844fa326ea0a0ea86678dadb84319719bde47","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/f0375a4191df01806755c6ad0faa67b3409058c51fcd5ea2d41da3372651d64e/lean/sources/97b31f3beba7f6a9310660440a4844fa326ea0a0ea86678dadb84319719bde47/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant97b31f3beba7f6a9310660440a4844fa326ea0a0ea86678dadb84319719bde47

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
        logInfo m!"CA_DEV_d6900550ab0cc8bd78f7f41e_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_d6900550ab0cc8bd78f7f41e_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_d6900550ab0cc8bd78f7f41e_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_d6900550ab0cc8bd78f7f41e_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_d6900550ab0cc8bd78f7f41e_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_d6900550ab0cc8bd78f7f41e_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
