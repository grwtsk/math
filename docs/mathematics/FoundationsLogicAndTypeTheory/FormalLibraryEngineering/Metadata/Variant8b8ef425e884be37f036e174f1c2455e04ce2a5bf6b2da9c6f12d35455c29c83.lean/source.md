# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant8b8ef425e884be37f036e174f1c2455e04ce2a5bf6b2da9c6f12d35455c29c83

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dc4309ad64d151f571a396b7531b73502ec56a13` · SHA-256 `b3147c9a55cdfa15a2b635e8c215e203a6302f3063784ced354ec04e23610e84`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant25b2f378ca38eee8b0e6e66aa8c2305c9a0df9c30cb210f3bdd58c642690d6df","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"25b2f378ca38eee8b0e6e66aa8c2305c9a0df9c30cb210f3bdd58c642690d6df","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant25b2f378ca38eee8b0e6e66aa8c2305c9a0df9c30cb210f3bdd58c642690d6df","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"25b2f378ca38eee8b0e6e66aa8c2305c9a0df9c30cb210f3bdd58c642690d6df","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/89761a5e96ff47be5e576d2f8eb96e64b40bafd18e3b85bdb141c1fdef100f28/lean/sources/25b2f378ca38eee8b0e6e66aa8c2305c9a0df9c30cb210f3bdd58c642690d6df/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant25b2f378ca38eee8b0e6e66aa8c2305c9a0df9c30cb210f3bdd58c642690d6df

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
        logInfo m!"CA_DEV_3281b8fab74acd9b63d0c6ea_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_3281b8fab74acd9b63d0c6ea_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_3281b8fab74acd9b63d0c6ea_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_3281b8fab74acd9b63d0c6ea_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_3281b8fab74acd9b63d0c6ea_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_3281b8fab74acd9b63d0c6ea_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
