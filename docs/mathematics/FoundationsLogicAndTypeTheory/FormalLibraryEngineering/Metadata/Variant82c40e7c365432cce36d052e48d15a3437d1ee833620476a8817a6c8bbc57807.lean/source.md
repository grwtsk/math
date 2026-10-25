# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant82c40e7c365432cce36d052e48d15a3437d1ee833620476a8817a6c8bbc57807

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0251ad188b8d4093320ea268864da2797e57f3e6` · SHA-256 `f26982bc75ad7c17abad9e61badd4ec959f11d320110e71ac98be744ac756c6a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant4ae344879230e4827a2d1a1833533afe44c6e473ef5dca8b17648ae725bdf718","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4ae344879230e4827a2d1a1833533afe44c6e473ef5dca8b17648ae725bdf718","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant4ae344879230e4827a2d1a1833533afe44c6e473ef5dca8b17648ae725bdf718","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"4ae344879230e4827a2d1a1833533afe44c6e473ef5dca8b17648ae725bdf718","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/a4a86b986d731ad1407cedc6fff00d5dcb21b8c04795ed6a6aba0f89905b0f83/lean/sources/4ae344879230e4827a2d1a1833533afe44c6e473ef5dca8b17648ae725bdf718/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant4ae344879230e4827a2d1a1833533afe44c6e473ef5dca8b17648ae725bdf718

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
        logInfo m!"CA_DEV_bf91dbb9c021731e3d4c14ec_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_bf91dbb9c021731e3d4c14ec_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_bf91dbb9c021731e3d4c14ec_AXIOM:{dependency}"
        | _ => pure ()
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_bf91dbb9c021731e3d4c14ec_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_bf91dbb9c021731e3d4c14ec_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_bf91dbb9c021731e3d4c14ec_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
