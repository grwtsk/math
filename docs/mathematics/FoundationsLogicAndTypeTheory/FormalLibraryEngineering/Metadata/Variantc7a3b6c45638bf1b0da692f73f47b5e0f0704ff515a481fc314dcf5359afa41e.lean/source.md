# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variantc7a3b6c45638bf1b0da692f73f47b5e0f0704ff515a481fc314dcf5359afa41e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3f299e47b9fddcd16fe77253905deb955a3a0513` · SHA-256 `42a3cef6f0d11a15584c910b540034a8b6e699ec3ab279e65495e6bb9a415ad4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantfc2b832fce6fc01e9650ca9953ece59d6b83d205d64c768364b2f44bafb07b9f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fc2b832fce6fc01e9650ca9953ece59d6b83d205d64c768364b2f44bafb07b9f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variantfc2b832fce6fc01e9650ca9953ece59d6b83d205d64c768364b2f44bafb07b9f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"fc2b832fce6fc01e9650ca9953ece59d6b83d205d64c768364b2f44bafb07b9f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/6b21b0fa96b07d5dcf92a356b9bf44f25ab541d05b1ed1c38b98bd5dcc269769/lean/sources/fc2b832fce6fc01e9650ca9953ece59d6b83d205d64c768364b2f44bafb07b9f/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantfc2b832fce6fc01e9650ca9953ece59d6b83d205d64c768364b2f44bafb07b9f

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
        logInfo m!"CA_DEV_28d30b4c4d165063793b51a2_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_28d30b4c4d165063793b51a2_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_28d30b4c4d165063793b51a2_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_28d30b4c4d165063793b51a2_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_28d30b4c4d165063793b51a2_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_28d30b4c4d165063793b51a2_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
