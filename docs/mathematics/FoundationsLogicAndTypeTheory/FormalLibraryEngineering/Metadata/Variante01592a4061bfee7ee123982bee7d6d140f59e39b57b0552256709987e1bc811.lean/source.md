# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variante01592a4061bfee7ee123982bee7d6d140f59e39b57b0552256709987e1bc811

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `87bfa3d4f16361ff71a95ca11799b5cf926441e6` · SHA-256 `e7d4d64a65a436a383ff9f5932c69d7446e0c6a9990e610f9cc9d1256496874b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant3ad14adf1c6d3927f08a786c671b2c36c1dd2da36a61848d4f20c45482ec012d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3ad14adf1c6d3927f08a786c671b2c36c1dd2da36a61848d4f20c45482ec012d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant3ad14adf1c6d3927f08a786c671b2c36c1dd2da36a61848d4f20c45482ec012d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3ad14adf1c6d3927f08a786c671b2c36c1dd2da36a61848d4f20c45482ec012d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/32012d114a2e26085b8d3466632d1b0d0e8a68a545d8a1aa22754341db01626f/lean/sources/3ad14adf1c6d3927f08a786c671b2c36c1dd2da36a61848d4f20c45482ec012d/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant3ad14adf1c6d3927f08a786c671b2c36c1dd2da36a61848d4f20c45482ec012d

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
        logInfo m!"CA_DEV_717c95a40f22e433ea620ba7_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_717c95a40f22e433ea620ba7_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_717c95a40f22e433ea620ba7_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_717c95a40f22e433ea620ba7_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_717c95a40f22e433ea620ba7_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_717c95a40f22e433ea620ba7_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
