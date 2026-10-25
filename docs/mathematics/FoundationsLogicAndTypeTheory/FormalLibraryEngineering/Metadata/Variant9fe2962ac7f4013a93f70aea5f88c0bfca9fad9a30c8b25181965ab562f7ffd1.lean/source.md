# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant9fe2962ac7f4013a93f70aea5f88c0bfca9fad9a30c8b25181965ab562f7ffd1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e4d41c56dd34571e389022ec99a1bbb8dffdf0f5` · SHA-256 `14686740c3fc8838467e74371f458bf01a20bccf4faf292afca727ad6e559cea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant464892ad62f7f6f8ae04b780ca17e6bb2a8b0ae9071a53f5504386339428a995","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"464892ad62f7f6f8ae04b780ca17e6bb2a8b0ae9071a53f5504386339428a995","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant464892ad62f7f6f8ae04b780ca17e6bb2a8b0ae9071a53f5504386339428a995","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"464892ad62f7f6f8ae04b780ca17e6bb2a8b0ae9071a53f5504386339428a995","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/1caa396bad73d2faacba6a9bcc76278d3829551e4c3e5bc9d50ea3ec784f7f46/lean/sources/464892ad62f7f6f8ae04b780ca17e6bb2a8b0ae9071a53f5504386339428a995/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant464892ad62f7f6f8ae04b780ca17e6bb2a8b0ae9071a53f5504386339428a995

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
        logInfo m!"CA_DEV_bfb0f57eb331a9f6ce6cf359_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_bfb0f57eb331a9f6ce6cf359_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_bfb0f57eb331a9f6ce6cf359_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_bfb0f57eb331a9f6ce6cf359_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_bfb0f57eb331a9f6ce6cf359_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_bfb0f57eb331a9f6ce6cf359_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
