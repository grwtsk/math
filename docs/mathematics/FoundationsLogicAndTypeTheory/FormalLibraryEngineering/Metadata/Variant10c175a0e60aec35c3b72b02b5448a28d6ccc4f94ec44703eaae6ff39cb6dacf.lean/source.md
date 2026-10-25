# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant10c175a0e60aec35c3b72b02b5448a28d6ccc4f94ec44703eaae6ff39cb6dacf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `04896e8c2248163f59f5870c66d1f605c872246d` · SHA-256 `8e600cf9cbd8aabe1b22180d0ce8691a94ca3e0eb6ad09764783f807912c8d63`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant262f6e79e6706b9b0e1b5a7bf361391703f0906cc08ea2e40a395baad9e47e4d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"262f6e79e6706b9b0e1b5a7bf361391703f0906cc08ea2e40a395baad9e47e4d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant262f6e79e6706b9b0e1b5a7bf361391703f0906cc08ea2e40a395baad9e47e4d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"262f6e79e6706b9b0e1b5a7bf361391703f0906cc08ea2e40a395baad9e47e4d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/af1270c6139671dc9d281bd45eeac035ad28beb86ec48ba77368ada696b271c9/lean/sources/262f6e79e6706b9b0e1b5a7bf361391703f0906cc08ea2e40a395baad9e47e4d/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant262f6e79e6706b9b0e1b5a7bf361391703f0906cc08ea2e40a395baad9e47e4d

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
        logInfo m!"CA_DEV_9c0a3b0230ab2d2e62b853d8_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_9c0a3b0230ab2d2e62b853d8_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_9c0a3b0230ab2d2e62b853d8_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_9c0a3b0230ab2d2e62b853d8_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_9c0a3b0230ab2d2e62b853d8_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_9c0a3b0230ab2d2e62b853d8_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
