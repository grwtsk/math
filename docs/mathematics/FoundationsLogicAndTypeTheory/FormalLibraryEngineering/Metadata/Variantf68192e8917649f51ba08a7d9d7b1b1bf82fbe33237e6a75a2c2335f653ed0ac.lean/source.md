# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variantf68192e8917649f51ba08a7d9d7b1b1bf82fbe33237e6a75a2c2335f653ed0ac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c1999a05410898bdca0625b35a6a8bb31235422a` · SHA-256 `fd8b10d9386baaceddc2d17891f46e5acdeae8719b85d58ae1f5b361ceb49868`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantaa0fb2e87938c7ac1ef679f6acc8df96a65aaf0fe2a609d96793e2a230572372","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aa0fb2e87938c7ac1ef679f6acc8df96a65aaf0fe2a609d96793e2a230572372","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variantaa0fb2e87938c7ac1ef679f6acc8df96a65aaf0fe2a609d96793e2a230572372","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"aa0fb2e87938c7ac1ef679f6acc8df96a65aaf0fe2a609d96793e2a230572372","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/9dc192dc539a304727eb50ca6b5ab1357dd0ceedd08f11daea523b570506402e/lean/sources/aa0fb2e87938c7ac1ef679f6acc8df96a65aaf0fe2a609d96793e2a230572372/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantaa0fb2e87938c7ac1ef679f6acc8df96a65aaf0fe2a609d96793e2a230572372

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
        logInfo m!"CA_DEV_930d3d29834fa24cd22d2b68_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_930d3d29834fa24cd22d2b68_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_930d3d29834fa24cd22d2b68_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_930d3d29834fa24cd22d2b68_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_930d3d29834fa24cd22d2b68_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_930d3d29834fa24cd22d2b68_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
