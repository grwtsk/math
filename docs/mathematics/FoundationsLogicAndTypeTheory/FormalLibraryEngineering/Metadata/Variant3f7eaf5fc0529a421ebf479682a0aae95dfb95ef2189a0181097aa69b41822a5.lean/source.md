# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant3f7eaf5fc0529a421ebf479682a0aae95dfb95ef2189a0181097aa69b41822a5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b8309223df06ad6ed7fa665633d2855f1880312` · SHA-256 `a1c589683f5bcda138f8d3b73b1c5e19e0fdc682b08d1440d55a06d2ee65004e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant0820d665bac6aaaa105a11bb79aa9ab4a0514aa34059d894eb41fe179394f3a2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0820d665bac6aaaa105a11bb79aa9ab4a0514aa34059d894eb41fe179394f3a2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant0820d665bac6aaaa105a11bb79aa9ab4a0514aa34059d894eb41fe179394f3a2","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"0820d665bac6aaaa105a11bb79aa9ab4a0514aa34059d894eb41fe179394f3a2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/0f0f811162f689ed9fd06e1c217475ae19d340fc5cae2a0488c84dba664f770d/lean/sources/0820d665bac6aaaa105a11bb79aa9ab4a0514aa34059d894eb41fe179394f3a2/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant0820d665bac6aaaa105a11bb79aa9ab4a0514aa34059d894eb41fe179394f3a2

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
        logInfo m!"CA_DEV_bb05143a81e221226f598258_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_bb05143a81e221226f598258_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_bb05143a81e221226f598258_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_bb05143a81e221226f598258_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_bb05143a81e221226f598258_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_bb05143a81e221226f598258_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
