# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant58cc4f65b8266f25ef9434de774a94f3507fcec5448291404ccd03c9320ac7c4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4a2c6db7cfce89500c60d55b6fe091ff27c22267` · SHA-256 `0985f7bc309e54b37a6229bde0d6b4ed3f7fd58e0a486f5bf1d495b270bfb425`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant7283b9e8991be8759d3f7c226ebf5661f04ec9b3063f370b7d0c59e8062ea868","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7283b9e8991be8759d3f7c226ebf5661f04ec9b3063f370b7d0c59e8062ea868","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant7283b9e8991be8759d3f7c226ebf5661f04ec9b3063f370b7d0c59e8062ea868","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7283b9e8991be8759d3f7c226ebf5661f04ec9b3063f370b7d0c59e8062ea868","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/d071954e8c188079b8261f23c6c9cc12876e72614efc9743709993f035e43abc/lean/sources/7283b9e8991be8759d3f7c226ebf5661f04ec9b3063f370b7d0c59e8062ea868/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant7283b9e8991be8759d3f7c226ebf5661f04ec9b3063f370b7d0c59e8062ea868

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
        logInfo m!"CA_DEV_3c9fbbcebadacc002f2b163f_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_3c9fbbcebadacc002f2b163f_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_3c9fbbcebadacc002f2b163f_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_3c9fbbcebadacc002f2b163f_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_3c9fbbcebadacc002f2b163f_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_3c9fbbcebadacc002f2b163f_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
