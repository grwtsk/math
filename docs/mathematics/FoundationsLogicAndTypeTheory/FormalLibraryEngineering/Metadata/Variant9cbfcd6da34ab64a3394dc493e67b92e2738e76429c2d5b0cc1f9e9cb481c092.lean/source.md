# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant9cbfcd6da34ab64a3394dc493e67b92e2738e76429c2d5b0cc1f9e9cb481c092

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `735e6f12cda4f88f7d522294be99799c1e72e97a` · SHA-256 `44d790024c8887c5c55e24047d65e43d0e9dcaa422c47b93491a4ccdd79cc89a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant5c830a68c1bd8fdf14a119ddd9d3dfc9cf2b322950afcd28c671db0a5fdf597b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5c830a68c1bd8fdf14a119ddd9d3dfc9cf2b322950afcd28c671db0a5fdf597b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant5c830a68c1bd8fdf14a119ddd9d3dfc9cf2b322950afcd28c671db0a5fdf597b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5c830a68c1bd8fdf14a119ddd9d3dfc9cf2b322950afcd28c671db0a5fdf597b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/7acc47807e2494d1fa493aa744551262c379f65183c385325deb630b2f676f07/lean/sources/5c830a68c1bd8fdf14a119ddd9d3dfc9cf2b322950afcd28c671db0a5fdf597b/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant5c830a68c1bd8fdf14a119ddd9d3dfc9cf2b322950afcd28c671db0a5fdf597b

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
        logInfo m!"CA_DEV_1c1f2b935c2fa47f061734ec_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_1c1f2b935c2fa47f061734ec_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_1c1f2b935c2fa47f061734ec_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_1c1f2b935c2fa47f061734ec_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_1c1f2b935c2fa47f061734ec_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_1c1f2b935c2fa47f061734ec_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
