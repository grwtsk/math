# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant52656e1183a45d4a1e22a2195b9919f352e5e9fcf70978c627483c52cca3f3a8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `18a33ee191f9d62d397f357020b232753d263e41` · SHA-256 `94391189044b95047b208ef3bb358dcdb8630d3c26e58b783bbac16d18a51abc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantc6a2d3799a86fa5cac4d4f1a2f89a6fd29bb3cfb2263babd0a4855a9e0c63e9f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c6a2d3799a86fa5cac4d4f1a2f89a6fd29bb3cfb2263babd0a4855a9e0c63e9f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variantc6a2d3799a86fa5cac4d4f1a2f89a6fd29bb3cfb2263babd0a4855a9e0c63e9f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c6a2d3799a86fa5cac4d4f1a2f89a6fd29bb3cfb2263babd0a4855a9e0c63e9f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/f0375a4191df01806755c6ad0faa67b3409058c51fcd5ea2d41da3372651d64e/lean/sources/c6a2d3799a86fa5cac4d4f1a2f89a6fd29bb3cfb2263babd0a4855a9e0c63e9f/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantc6a2d3799a86fa5cac4d4f1a2f89a6fd29bb3cfb2263babd0a4855a9e0c63e9f

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
        logInfo m!"CA_DEV_ddf1b847741d155797937758_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_ddf1b847741d155797937758_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_ddf1b847741d155797937758_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_ddf1b847741d155797937758_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_ddf1b847741d155797937758_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_ddf1b847741d155797937758_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
