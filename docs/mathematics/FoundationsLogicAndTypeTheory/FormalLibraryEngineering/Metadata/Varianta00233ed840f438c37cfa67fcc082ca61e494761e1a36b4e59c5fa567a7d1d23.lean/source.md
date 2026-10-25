# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Varianta00233ed840f438c37cfa67fcc082ca61e494761e1a36b4e59c5fa567a7d1d23

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7bd074d43bef6039c785f0970e5da1c41670150a` · SHA-256 `1b3bc05d7b25ebc670314e9fd680425576473c5f4afdb266c602c5ebac6d25b7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantc4ea240414f9adc38f1486f953e20c8da618e8f2090bde18b84d75f1c7cca7bb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c4ea240414f9adc38f1486f953e20c8da618e8f2090bde18b84d75f1c7cca7bb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variantc4ea240414f9adc38f1486f953e20c8da618e8f2090bde18b84d75f1c7cca7bb","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c4ea240414f9adc38f1486f953e20c8da618e8f2090bde18b84d75f1c7cca7bb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/53b03731ec4142fded63c89eb662c9cdaee59d1ded63dc5da2926c73e2e856f5/lean/sources/c4ea240414f9adc38f1486f953e20c8da618e8f2090bde18b84d75f1c7cca7bb/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantc4ea240414f9adc38f1486f953e20c8da618e8f2090bde18b84d75f1c7cca7bb

open Lean

namespace Surface.ContinuousAssurance

run_cmd Elab.Command.liftTermElabM do
  let expectedType ← Lean.Elab.Term.elabType (← `(True))
  let candidate ← Lean.Elab.Term.elabTermEnsuringType (← `(by exact False.elim (by exact True.intro)) ) (some expectedType)
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
        logInfo m!"CA_DEV_a6395c8824a557c8e78e05f8_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_a6395c8824a557c8e78e05f8_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_a6395c8824a557c8e78e05f8_AXIOM:{dependency}"
        | _ => pure ()
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_a6395c8824a557c8e78e05f8_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_a6395c8824a557c8e78e05f8_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_a6395c8824a557c8e78e05f8_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
