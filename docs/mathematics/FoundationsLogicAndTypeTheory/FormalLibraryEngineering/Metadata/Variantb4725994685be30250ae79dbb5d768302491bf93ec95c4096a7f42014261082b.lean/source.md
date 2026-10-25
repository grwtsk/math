# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variantb4725994685be30250ae79dbb5d768302491bf93ec95c4096a7f42014261082b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `747e63f3fa68c7c47ceef82d4adf70f3e2302275` · SHA-256 `f3b79350305258e7de8a60924ff77366191e9af3413c2b5964e5ad2b108653f5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantf7615e0ec303c076549cf72fe26e450af3a26ce732f9c815084a5df54ab0c89a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f7615e0ec303c076549cf72fe26e450af3a26ce732f9c815084a5df54ab0c89a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variantf7615e0ec303c076549cf72fe26e450af3a26ce732f9c815084a5df54ab0c89a","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"f7615e0ec303c076549cf72fe26e450af3a26ce732f9c815084a5df54ab0c89a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/117fd1848d07ae0eda922e6b8833c32873af6807334f4061cda0569e74d45af2/lean/sources/f7615e0ec303c076549cf72fe26e450af3a26ce732f9c815084a5df54ab0c89a/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantf7615e0ec303c076549cf72fe26e450af3a26ce732f9c815084a5df54ab0c89a

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
        logInfo m!"CA_DEV_0975ca3c7221f59b57b5092f_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_0975ca3c7221f59b57b5092f_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_0975ca3c7221f59b57b5092f_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_0975ca3c7221f59b57b5092f_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_0975ca3c7221f59b57b5092f_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_0975ca3c7221f59b57b5092f_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
