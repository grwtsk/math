# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variante07bebea0e2a21d8dac70bd33b5fa8ff4e0053347826889e9c987b6effe343e5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `13b7bb4c1e096df631d828a1a92d1a92602e8824` · SHA-256 `d8cdf0f78ffaa668a1231f7e171079595d3aef3825aacae7fa405d9452363b62`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant7898d023e29e9695604725a5dc692abb45be3e3b935a284743e11eccd7223d30","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7898d023e29e9695604725a5dc692abb45be3e3b935a284743e11eccd7223d30","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant7898d023e29e9695604725a5dc692abb45be3e3b935a284743e11eccd7223d30","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7898d023e29e9695604725a5dc692abb45be3e3b935a284743e11eccd7223d30","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/e818cb0dd8d67f1bb9d34052c88f69a7fdff4865a8b500a6c54b5d6231e35bca/lean/sources/7898d023e29e9695604725a5dc692abb45be3e3b935a284743e11eccd7223d30/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant7898d023e29e9695604725a5dc692abb45be3e3b935a284743e11eccd7223d30

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
        logInfo m!"CA_DEV_3840a2aef074fcd91c47c804_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_3840a2aef074fcd91c47c804_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_3840a2aef074fcd91c47c804_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_3840a2aef074fcd91c47c804_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_3840a2aef074fcd91c47c804_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_3840a2aef074fcd91c47c804_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
