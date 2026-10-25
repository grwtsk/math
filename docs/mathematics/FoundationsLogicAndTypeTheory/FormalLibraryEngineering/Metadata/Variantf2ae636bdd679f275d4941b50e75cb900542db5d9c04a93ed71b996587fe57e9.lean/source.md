# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variantf2ae636bdd679f275d4941b50e75cb900542db5d9c04a93ed71b996587fe57e9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9df3835b9b5126771b20aaa5f4e3bea534e0ee3a` · SHA-256 `506d12704ec575e3d8a7bb928b1a3612675b33096b3a773b60ab9a6603ac142a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantefd82c3835dc0d4d3b169dbfc4bcaf7b9821fd5b066f1475f2623007460ebfb1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"efd82c3835dc0d4d3b169dbfc4bcaf7b9821fd5b066f1475f2623007460ebfb1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variantefd82c3835dc0d4d3b169dbfc4bcaf7b9821fd5b066f1475f2623007460ebfb1","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"efd82c3835dc0d4d3b169dbfc4bcaf7b9821fd5b066f1475f2623007460ebfb1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/fc088336d1410a17d4ef2d1e6fa5043fd3e5603c45d66e1f3fac86cdc7529f8f/lean/sources/efd82c3835dc0d4d3b169dbfc4bcaf7b9821fd5b066f1475f2623007460ebfb1/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantefd82c3835dc0d4d3b169dbfc4bcaf7b9821fd5b066f1475f2623007460ebfb1

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
        logInfo m!"CA_DEV_87cddb49fddb54faa8656ce3_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_87cddb49fddb54faa8656ce3_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_87cddb49fddb54faa8656ce3_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_87cddb49fddb54faa8656ce3_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_87cddb49fddb54faa8656ce3_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_87cddb49fddb54faa8656ce3_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
