# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant7614af60b7eed7d6e1a787f454ac04e028091a3c1afe7c0fcced5d769e4d6058

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5eb6e6ba0f3bd36c398ec187dd41cb309b6e7696` · SHA-256 `faaf1d4a15445989a39314c7a95a944280bea1f64510cf88e832021f8699eaaa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant85b8231e8267c84912d3233039b67785ac06244dd0366a57d9c9d8faf675e6a8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"85b8231e8267c84912d3233039b67785ac06244dd0366a57d9c9d8faf675e6a8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant85b8231e8267c84912d3233039b67785ac06244dd0366a57d9c9d8faf675e6a8","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"85b8231e8267c84912d3233039b67785ac06244dd0366a57d9c9d8faf675e6a8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/45476d57aa50285a97d0ec4de3e90f7f9537ba6e6179205acf12dbd65a087d75/lean/sources/85b8231e8267c84912d3233039b67785ac06244dd0366a57d9c9d8faf675e6a8/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant85b8231e8267c84912d3233039b67785ac06244dd0366a57d9c9d8faf675e6a8

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
        logInfo m!"CA_DEV_6e877696bf2341f3187d73c6_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_6e877696bf2341f3187d73c6_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_6e877696bf2341f3187d73c6_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_6e877696bf2341f3187d73c6_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_6e877696bf2341f3187d73c6_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_6e877696bf2341f3187d73c6_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
