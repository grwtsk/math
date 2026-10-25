# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variantcb8b386fd657c4eb45056582c63bb3fb372c818e93165cd9a17c13d4236a3380

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c89540da06450e4901d69c6fe858e440d28d154e` · SHA-256 `5aeb4359c36cbac4e1936e00042e948d4b98ed9288224c09043a81f04a063540`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant77140594876fd107f7abb84fb1bb351c6eba8824a16c659e3e297a5a122da2ea","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"77140594876fd107f7abb84fb1bb351c6eba8824a16c659e3e297a5a122da2ea","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant77140594876fd107f7abb84fb1bb351c6eba8824a16c659e3e297a5a122da2ea","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"77140594876fd107f7abb84fb1bb351c6eba8824a16c659e3e297a5a122da2ea","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/117fd1848d07ae0eda922e6b8833c32873af6807334f4061cda0569e74d45af2/lean/sources/77140594876fd107f7abb84fb1bb351c6eba8824a16c659e3e297a5a122da2ea/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant77140594876fd107f7abb84fb1bb351c6eba8824a16c659e3e297a5a122da2ea

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
        logInfo m!"CA_DEV_0f0deb8c49794d8dc6187398_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_0f0deb8c49794d8dc6187398_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_0f0deb8c49794d8dc6187398_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_0f0deb8c49794d8dc6187398_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_0f0deb8c49794d8dc6187398_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_0f0deb8c49794d8dc6187398_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
