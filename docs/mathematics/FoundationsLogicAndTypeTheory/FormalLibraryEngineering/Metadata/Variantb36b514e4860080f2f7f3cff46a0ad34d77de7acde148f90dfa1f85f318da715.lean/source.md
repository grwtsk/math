# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variantb36b514e4860080f2f7f3cff46a0ad34d77de7acde148f90dfa1f85f318da715

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f8a9dcd246a0e4d9558f5983cf45ab8ff640820b` · SHA-256 `c6e341a1dc2e2096159ab4e8fd162aa79cb3777f60b7ada59d22cc3f1bfd031a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant9bb1d121d306eba9fd5fc2bbe1f6cb1218fb82aad17631870556e4ecfa7d7b8f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9bb1d121d306eba9fd5fc2bbe1f6cb1218fb82aad17631870556e4ecfa7d7b8f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant9bb1d121d306eba9fd5fc2bbe1f6cb1218fb82aad17631870556e4ecfa7d7b8f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"9bb1d121d306eba9fd5fc2bbe1f6cb1218fb82aad17631870556e4ecfa7d7b8f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/93a886e2ec4ca0f1a26d4dcf3bddfc43d86510778e6bd286ebbfa4e29b17faf4/lean/sources/9bb1d121d306eba9fd5fc2bbe1f6cb1218fb82aad17631870556e4ecfa7d7b8f/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant9bb1d121d306eba9fd5fc2bbe1f6cb1218fb82aad17631870556e4ecfa7d7b8f

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
        logInfo m!"CA_DEV_8adff39738466262cc0ec202_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_8adff39738466262cc0ec202_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_8adff39738466262cc0ec202_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_8adff39738466262cc0ec202_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_8adff39738466262cc0ec202_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_8adff39738466262cc0ec202_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
