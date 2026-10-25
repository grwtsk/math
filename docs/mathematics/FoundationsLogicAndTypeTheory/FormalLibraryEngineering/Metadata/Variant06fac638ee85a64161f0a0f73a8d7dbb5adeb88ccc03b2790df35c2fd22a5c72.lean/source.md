# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant06fac638ee85a64161f0a0f73a8d7dbb5adeb88ccc03b2790df35c2fd22a5c72

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b3879d7a54fd3bde7adf9609d10a7ce6597d8cb9` · SHA-256 `fdee32da49abe8cb1d135f5eb8dc06f4481b7816b06897a1618c618db4080771`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantcb6f50258dd327e0ca8849c38227be3c3b6410df039691b950ec5a8882940605","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cb6f50258dd327e0ca8849c38227be3c3b6410df039691b950ec5a8882940605","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variantcb6f50258dd327e0ca8849c38227be3c3b6410df039691b950ec5a8882940605","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"cb6f50258dd327e0ca8849c38227be3c3b6410df039691b950ec5a8882940605","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/faf0ad7e921f2c72afaa583bc179f9baa6d0f090e5fc5366db113fbb56168b2d/lean/sources/cb6f50258dd327e0ca8849c38227be3c3b6410df039691b950ec5a8882940605/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantcb6f50258dd327e0ca8849c38227be3c3b6410df039691b950ec5a8882940605

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
        logInfo m!"CA_DEV_cd8bf27263331b2e7574d6b9_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_cd8bf27263331b2e7574d6b9_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_cd8bf27263331b2e7574d6b9_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_cd8bf27263331b2e7574d6b9_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_cd8bf27263331b2e7574d6b9_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_cd8bf27263331b2e7574d6b9_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
