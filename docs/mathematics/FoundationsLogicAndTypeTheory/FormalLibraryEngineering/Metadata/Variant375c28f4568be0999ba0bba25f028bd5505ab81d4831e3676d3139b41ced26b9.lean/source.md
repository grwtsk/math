# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant375c28f4568be0999ba0bba25f028bd5505ab81d4831e3676d3139b41ced26b9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aa3100529eb1f014f9846ca977cca652d9e0c9e2` · SHA-256 `63f65fd5b4b0606dc4399caa9db0d4c4f04847108a9bbc1cc771e8530c5d53ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant4b596b5e53041f5373f693cff254b582857414ede18406b5a1e842b4cd031eba","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4b596b5e53041f5373f693cff254b582857414ede18406b5a1e842b4cd031eba","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant4b596b5e53041f5373f693cff254b582857414ede18406b5a1e842b4cd031eba","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"4b596b5e53041f5373f693cff254b582857414ede18406b5a1e842b4cd031eba","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/bcc4808fd9b0cc8d740fa06bdae82921d818f2fd9d6db22b79e4e0e46e541244/lean/sources/4b596b5e53041f5373f693cff254b582857414ede18406b5a1e842b4cd031eba/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant4b596b5e53041f5373f693cff254b582857414ede18406b5a1e842b4cd031eba

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
        logInfo m!"CA_DEV_595ffa2ed552f42e6e6beee2_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_595ffa2ed552f42e6e6beee2_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_595ffa2ed552f42e6e6beee2_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_595ffa2ed552f42e6e6beee2_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_595ffa2ed552f42e6e6beee2_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_595ffa2ed552f42e6e6beee2_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
