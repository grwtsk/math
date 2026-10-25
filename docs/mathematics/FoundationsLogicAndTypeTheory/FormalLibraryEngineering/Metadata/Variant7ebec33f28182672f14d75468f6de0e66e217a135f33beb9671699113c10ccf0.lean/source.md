# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant7ebec33f28182672f14d75468f6de0e66e217a135f33beb9671699113c10ccf0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `503120d059b1693d836db5ba57bd28590c16cc5d` · SHA-256 `821cd2db8505b99b268c159ae754eb9db04d81e74fb76254158e2ccab1c55b6f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant5091528e1874215eb29a568765351d89c888219183ee76d42882d6bff3e4354c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5091528e1874215eb29a568765351d89c888219183ee76d42882d6bff3e4354c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant5091528e1874215eb29a568765351d89c888219183ee76d42882d6bff3e4354c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5091528e1874215eb29a568765351d89c888219183ee76d42882d6bff3e4354c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/8e069b21136634997d9772e643ae07549818a76b5c25aa2aff11623fea8151f6/lean/sources/5091528e1874215eb29a568765351d89c888219183ee76d42882d6bff3e4354c/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant5091528e1874215eb29a568765351d89c888219183ee76d42882d6bff3e4354c

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
        logInfo m!"CA_DEV_ba09898c5f129d42d69a88cd_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_ba09898c5f129d42d69a88cd_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_ba09898c5f129d42d69a88cd_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_ba09898c5f129d42d69a88cd_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_ba09898c5f129d42d69a88cd_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_ba09898c5f129d42d69a88cd_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
