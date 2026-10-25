# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Varianta54fa5d05752d611db4ade66eafcdb93255cd5aa677bb59c85a5beef7e3bfdcd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `af5582a566c765ab6d623e9b68f418a38b5ac75b` · SHA-256 `5af4c68300ae1aa4e5d32ef3d779ee4425d573e090b4cbcffed9f4f1a2d4a4a5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant980e9c0b39d7f32318e1b821d18c857cd1d4660fa9310355b464b8088cade7fb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"980e9c0b39d7f32318e1b821d18c857cd1d4660fa9310355b464b8088cade7fb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant980e9c0b39d7f32318e1b821d18c857cd1d4660fa9310355b464b8088cade7fb","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"980e9c0b39d7f32318e1b821d18c857cd1d4660fa9310355b464b8088cade7fb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/ffe83480c9bc8cd8de318fb539bbf7ad3225bfbb6ef638fd9b43ce587abed5aa/lean/sources/980e9c0b39d7f32318e1b821d18c857cd1d4660fa9310355b464b8088cade7fb/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant980e9c0b39d7f32318e1b821d18c857cd1d4660fa9310355b464b8088cade7fb

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
        logInfo m!"CA_DEV_19fe03e121cc3ea368b8d1fb_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_19fe03e121cc3ea368b8d1fb_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_19fe03e121cc3ea368b8d1fb_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_19fe03e121cc3ea368b8d1fb_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_19fe03e121cc3ea368b8d1fb_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_19fe03e121cc3ea368b8d1fb_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
