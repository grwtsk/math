# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant8783a28a945dd4c60b7ab963aebbd197f5f4d0fa26db737246415be01231b2ce

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6fdf499dd21a3bdb31abb84a9241b675ee68f7a9` · SHA-256 `b7426441d9508c43be3f53e3411c03ca0408c0cf0033d9855b167fc9e47fe4e6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantf81987b4abf2ded8fa62bf01f004caca06e548257182353ae176b41811c44b3f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f81987b4abf2ded8fa62bf01f004caca06e548257182353ae176b41811c44b3f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variantf81987b4abf2ded8fa62bf01f004caca06e548257182353ae176b41811c44b3f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"f81987b4abf2ded8fa62bf01f004caca06e548257182353ae176b41811c44b3f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/c042cba8aec087f80775ec066547207b1b83707d2fd69dc578dcfc6966689fed/lean/sources/f81987b4abf2ded8fa62bf01f004caca06e548257182353ae176b41811c44b3f/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantf81987b4abf2ded8fa62bf01f004caca06e548257182353ae176b41811c44b3f

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
        logInfo m!"CA_DEV_6a2d26fcd4c37bde57899e36_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_6a2d26fcd4c37bde57899e36_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_6a2d26fcd4c37bde57899e36_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_6a2d26fcd4c37bde57899e36_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_6a2d26fcd4c37bde57899e36_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_6a2d26fcd4c37bde57899e36_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
