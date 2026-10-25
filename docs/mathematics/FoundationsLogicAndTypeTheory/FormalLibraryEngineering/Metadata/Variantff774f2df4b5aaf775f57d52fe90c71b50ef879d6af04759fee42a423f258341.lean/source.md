# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variantff774f2df4b5aaf775f57d52fe90c71b50ef879d6af04759fee42a423f258341

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6b14fb034d5ca464366aa1032a156df04d362990` · SHA-256 `88d721086eba1f872a87899d6441157ae240b69e663f626a369577429702d54f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant0aebaf7286e1bb43bc49d3cf31651489a58c2e4ddb6b8684cd80f633a74ee1b7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0aebaf7286e1bb43bc49d3cf31651489a58c2e4ddb6b8684cd80f633a74ee1b7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant0aebaf7286e1bb43bc49d3cf31651489a58c2e4ddb6b8684cd80f633a74ee1b7","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"0aebaf7286e1bb43bc49d3cf31651489a58c2e4ddb6b8684cd80f633a74ee1b7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/27b83b528357a2b3093bcacffe522110f2d752b737aefdf404167b3688eeaf03/lean/sources/0aebaf7286e1bb43bc49d3cf31651489a58c2e4ddb6b8684cd80f633a74ee1b7/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant0aebaf7286e1bb43bc49d3cf31651489a58c2e4ddb6b8684cd80f633a74ee1b7

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
        logInfo m!"CA_DEV_010be25df8e6f37aa9243809_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_010be25df8e6f37aa9243809_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_010be25df8e6f37aa9243809_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_010be25df8e6f37aa9243809_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_010be25df8e6f37aa9243809_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_010be25df8e6f37aa9243809_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
