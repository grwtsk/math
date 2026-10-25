# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant494bf572c320bfec2ce9ef09166b2ef5211420178e479c03a079f7c9b8d841a7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a47cb6ffac14bf739a643787026bd3f756c2c57c` · SHA-256 `077cfa9275752c637c28a34c26c4e883cb9743f092ada43b5eb4b652817b8368`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant7224e972f236c48c10f7ac8d1e163fd9f594fe90a5b0c29d0bfe1537aa1c8d99","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7224e972f236c48c10f7ac8d1e163fd9f594fe90a5b0c29d0bfe1537aa1c8d99","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant7224e972f236c48c10f7ac8d1e163fd9f594fe90a5b0c29d0bfe1537aa1c8d99","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7224e972f236c48c10f7ac8d1e163fd9f594fe90a5b0c29d0bfe1537aa1c8d99","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/bfa8506cee9dd0e4fcec929431f26a350fd7b26d8fedb2247c020847b2e87f54/lean/sources/7224e972f236c48c10f7ac8d1e163fd9f594fe90a5b0c29d0bfe1537aa1c8d99/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant7224e972f236c48c10f7ac8d1e163fd9f594fe90a5b0c29d0bfe1537aa1c8d99

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
        logInfo m!"CA_DEV_5417f5535259879a4dca9448_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_5417f5535259879a4dca9448_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_5417f5535259879a4dca9448_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_5417f5535259879a4dca9448_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_5417f5535259879a4dca9448_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_5417f5535259879a4dca9448_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
