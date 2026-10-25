# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant41a0113022af2c54beb3ac42a2be290396cf2cf1ad09b166c05ce1a0d11cfeec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8005f235d4c9c58feae0da84e53d83e47998ba92` · SHA-256 `56123fa7c8c978b85fae53345205ac873e203ed09b7f84f00d636f7be582a9b7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant27c359494087dca27ab95a4b6f6046e426b36fa2844bbc847a8cc86841902069","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"27c359494087dca27ab95a4b6f6046e426b36fa2844bbc847a8cc86841902069","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant27c359494087dca27ab95a4b6f6046e426b36fa2844bbc847a8cc86841902069","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"27c359494087dca27ab95a4b6f6046e426b36fa2844bbc847a8cc86841902069","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/5fccd13f7f86fdd356221a2bab101cfa9c61114c2ba632aaeefb807871ad0fba/lean/sources/27c359494087dca27ab95a4b6f6046e426b36fa2844bbc847a8cc86841902069/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant27c359494087dca27ab95a4b6f6046e426b36fa2844bbc847a8cc86841902069

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
        logInfo m!"CA_DEV_40b5d2dce8c7e9c7df0391e7_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_40b5d2dce8c7e9c7df0391e7_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_40b5d2dce8c7e9c7df0391e7_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_40b5d2dce8c7e9c7df0391e7_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_40b5d2dce8c7e9c7df0391e7_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_40b5d2dce8c7e9c7df0391e7_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
