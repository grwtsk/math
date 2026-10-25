# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variantd5f827dd5b4c6fc66829626107ec5e10194e4a141d5b1461bd7fd4ce0a6e48e9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9245b5ffc9ece75bf1a61ad44a1d41d61349f63c` · SHA-256 `f8cfed490f8790f358322da696eba7ce48c28471a48ba5267f04f85347574cbd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant99958e7f038d8845505b79d9f3349224f496c4d78a5658ee4b79095045cab1a4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"99958e7f038d8845505b79d9f3349224f496c4d78a5658ee4b79095045cab1a4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant99958e7f038d8845505b79d9f3349224f496c4d78a5658ee4b79095045cab1a4","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"99958e7f038d8845505b79d9f3349224f496c4d78a5658ee4b79095045cab1a4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/b1b9a6051b8f8100689f5e20fe2be09c01914bb758db48af9e592ec1ebf28b09/lean/sources/99958e7f038d8845505b79d9f3349224f496c4d78a5658ee4b79095045cab1a4/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant99958e7f038d8845505b79d9f3349224f496c4d78a5658ee4b79095045cab1a4

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
        logInfo m!"CA_DEV_000e93903c9526a18a8717b3_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_000e93903c9526a18a8717b3_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_000e93903c9526a18a8717b3_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_000e93903c9526a18a8717b3_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_000e93903c9526a18a8717b3_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_000e93903c9526a18a8717b3_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
