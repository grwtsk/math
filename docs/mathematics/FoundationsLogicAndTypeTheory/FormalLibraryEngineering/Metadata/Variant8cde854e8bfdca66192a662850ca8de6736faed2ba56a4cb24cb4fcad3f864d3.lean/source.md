# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant8cde854e8bfdca66192a662850ca8de6736faed2ba56a4cb24cb4fcad3f864d3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `de51f6b0f11e4964e456fdc51c5375ef2b966f58` · SHA-256 `8bcacdfad6a825bb21845ed389ad7cbe059a04d49cb4340a2f3810d99baac93f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantab4911f302e05a29552f6961477dc37efe9e5182aacf935bc2350652adb32f93","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ab4911f302e05a29552f6961477dc37efe9e5182aacf935bc2350652adb32f93","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variantab4911f302e05a29552f6961477dc37efe9e5182aacf935bc2350652adb32f93","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"ab4911f302e05a29552f6961477dc37efe9e5182aacf935bc2350652adb32f93","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/b888939b309d752e2a573df1ee77fa612539ed44df0e8b227866811c20be438b/lean/sources/ab4911f302e05a29552f6961477dc37efe9e5182aacf935bc2350652adb32f93/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantab4911f302e05a29552f6961477dc37efe9e5182aacf935bc2350652adb32f93

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
        logInfo m!"CA_DEV_b16d644543bb53f6929fd6cd_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_b16d644543bb53f6929fd6cd_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_b16d644543bb53f6929fd6cd_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_b16d644543bb53f6929fd6cd_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_b16d644543bb53f6929fd6cd_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_b16d644543bb53f6929fd6cd_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
