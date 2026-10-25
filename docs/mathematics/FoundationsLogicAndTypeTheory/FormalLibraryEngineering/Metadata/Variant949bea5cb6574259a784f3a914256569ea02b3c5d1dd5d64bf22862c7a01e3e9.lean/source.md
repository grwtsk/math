# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant949bea5cb6574259a784f3a914256569ea02b3c5d1dd5d64bf22862c7a01e3e9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `abc155b32c6254b5f49db283a6e8ead4e304f561` · SHA-256 `4e6054c244712c47120a09de2499bd983e564bb9f662cd7b27cdfa973d049eb4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant8519113d76d6ae9d6378490be5f32b7445c3ccbcd6271e2303ad708ba23740db","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8519113d76d6ae9d6378490be5f32b7445c3ccbcd6271e2303ad708ba23740db","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant8519113d76d6ae9d6378490be5f32b7445c3ccbcd6271e2303ad708ba23740db","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"8519113d76d6ae9d6378490be5f32b7445c3ccbcd6271e2303ad708ba23740db","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/5ecb6a93a36bf773039880268b772d7d208b13ba3e5385f3c090fa9a5a345e9d/lean/sources/8519113d76d6ae9d6378490be5f32b7445c3ccbcd6271e2303ad708ba23740db/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant8519113d76d6ae9d6378490be5f32b7445c3ccbcd6271e2303ad708ba23740db

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
        logInfo m!"CA_DEV_a26890553816b3e27627fab5_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_a26890553816b3e27627fab5_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_a26890553816b3e27627fab5_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_a26890553816b3e27627fab5_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_a26890553816b3e27627fab5_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_a26890553816b3e27627fab5_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
