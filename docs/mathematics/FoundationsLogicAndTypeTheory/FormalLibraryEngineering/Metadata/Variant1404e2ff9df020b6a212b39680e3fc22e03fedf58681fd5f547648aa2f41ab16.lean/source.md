# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant1404e2ff9df020b6a212b39680e3fc22e03fedf58681fd5f547648aa2f41ab16

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b76d30af09bf55fcbc8906532040936e7827938f` · SHA-256 `46cac9188c90daa27863e97b7b1cb121b7c28a15be0041e8656288c992c3cba9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantf3631655696b86b9fb74143e783d245bb5c520cb133a12f8226f8ca4b70c66b9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f3631655696b86b9fb74143e783d245bb5c520cb133a12f8226f8ca4b70c66b9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variantf3631655696b86b9fb74143e783d245bb5c520cb133a12f8226f8ca4b70c66b9","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"f3631655696b86b9fb74143e783d245bb5c520cb133a12f8226f8ca4b70c66b9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/757762afc14e16d32d6d5a6deb0cec5f900a43820a1bb1e851bf54ff163d74b6/lean/sources/f3631655696b86b9fb74143e783d245bb5c520cb133a12f8226f8ca4b70c66b9/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantf3631655696b86b9fb74143e783d245bb5c520cb133a12f8226f8ca4b70c66b9

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
        logInfo m!"CA_DEV_e438c3768c7ceb9b434b06ac_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_e438c3768c7ceb9b434b06ac_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_e438c3768c7ceb9b434b06ac_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_e438c3768c7ceb9b434b06ac_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_e438c3768c7ceb9b434b06ac_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_e438c3768c7ceb9b434b06ac_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
