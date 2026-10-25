# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant504ca312695666077410ac0abefbfcab9eaa28f1c5f7ba63daa59efae09ffb1b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ef1e095b53446109f339da48041cd6f8acebb09c` · SHA-256 `14f13e4b72f3ff02a3b8bd46a083779db46366570869932577fd1a5d2ee69e4f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant1cd971f1ef8f8a9aa5ef06e1e4c5e42ac55141784f26d3a4b9b95bbe53ad3e4f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1cd971f1ef8f8a9aa5ef06e1e4c5e42ac55141784f26d3a4b9b95bbe53ad3e4f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant1cd971f1ef8f8a9aa5ef06e1e4c5e42ac55141784f26d3a4b9b95bbe53ad3e4f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1cd971f1ef8f8a9aa5ef06e1e4c5e42ac55141784f26d3a4b9b95bbe53ad3e4f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/53b03731ec4142fded63c89eb662c9cdaee59d1ded63dc5da2926c73e2e856f5/lean/sources/1cd971f1ef8f8a9aa5ef06e1e4c5e42ac55141784f26d3a4b9b95bbe53ad3e4f/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant1cd971f1ef8f8a9aa5ef06e1e4c5e42ac55141784f26d3a4b9b95bbe53ad3e4f

open Lean

namespace Surface.ContinuousAssurance

run_cmd Elab.Command.liftTermElabM do
  let expectedType ← Lean.Elab.Term.elabType (← `(True))
  let candidate ← Lean.Elab.Term.elabTermEnsuringType (← `(by exact False.elim (by exact True.intro)) ) (some expectedType)
  Lean.Elab.Term.synthesizeSyntheticMVarsNoPostponing
  let candidate ← instantiateMVars candidate
  let env ← getEnv
  let mut pending := candidate.getUsedConstants.toList
  let mut visited : NameSet := {}
  while !pending.isEmpty do
    let dependency := pending.head!
    pending := pending.tail!
    if !visited.contains dependency then
      visited := visited.insert dependency
      if let some dependencyInfo := env.find? dependency then
        logInfo m!"CA_DEV_8b9f18d0a18e1d3364a4d2da_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_8b9f18d0a18e1d3364a4d2da_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_8b9f18d0a18e1d3364a4d2da_AXIOM:{dependency}"
        | _ => pure ()
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_8b9f18d0a18e1d3364a4d2da_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_8b9f18d0a18e1d3364a4d2da_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_8b9f18d0a18e1d3364a4d2da_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
