# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variantade4eda472e2f36d4d2644e9d161dc8fe1e77834af5af0ac302ac4f17b0be427

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `30e667485d72f5b07bbb17b8714eb79c58ccb972` · SHA-256 `9f313954efc44190087a183b7bb8425f06e67b1707537741eac3a9c236f75bc8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant58417b7b0d55845440fdba2421941ba1fdcf8eeefc30ca198ea805862a8eeb1d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"58417b7b0d55845440fdba2421941ba1fdcf8eeefc30ca198ea805862a8eeb1d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant58417b7b0d55845440fdba2421941ba1fdcf8eeefc30ca198ea805862a8eeb1d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"58417b7b0d55845440fdba2421941ba1fdcf8eeefc30ca198ea805862a8eeb1d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/1185ee38bd520ef214786ea312b38df4a43291c3683e343fe35773bd95357b26/lean/sources/58417b7b0d55845440fdba2421941ba1fdcf8eeefc30ca198ea805862a8eeb1d/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant58417b7b0d55845440fdba2421941ba1fdcf8eeefc30ca198ea805862a8eeb1d

open Lean

namespace Surface.ContinuousAssurance

run_cmd Elab.Command.liftTermElabM do
  let expectedType ← Lean.Elab.Term.elabType (← `(True))
  let candidate ← Lean.Elab.Term.elabTermEnsuringType (← `(by exact True.intro) ) (some expectedType)
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
        logInfo m!"CA_DEV_03608acf79a4f011ff071d85_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_03608acf79a4f011ff071d85_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_03608acf79a4f011ff071d85_AXIOM:{dependency}"
        | _ => pure ()
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_03608acf79a4f011ff071d85_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_03608acf79a4f011ff071d85_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_03608acf79a4f011ff071d85_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
