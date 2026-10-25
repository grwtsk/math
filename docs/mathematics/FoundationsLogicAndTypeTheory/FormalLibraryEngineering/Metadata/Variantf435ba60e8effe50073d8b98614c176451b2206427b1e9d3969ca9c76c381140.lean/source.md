# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variantf435ba60e8effe50073d8b98614c176451b2206427b1e9d3969ca9c76c381140

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ea689c289bb0502e3190e58fc0947e556b3fc43b` · SHA-256 `c3237cc3119a380e88a3b903ab6d4b77b5a2e04157361a363cbb8e993413bb15`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantc9a6e1947131168e9d2be77130243b54db196ddcad551e9cd0131d350192de20","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c9a6e1947131168e9d2be77130243b54db196ddcad551e9cd0131d350192de20","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variantc9a6e1947131168e9d2be77130243b54db196ddcad551e9cd0131d350192de20","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c9a6e1947131168e9d2be77130243b54db196ddcad551e9cd0131d350192de20","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/c6eb28f1366e302bd5e7804f2b18e38d9a240d8aa5e98932ac1c93bb689171e9/lean/sources/c9a6e1947131168e9d2be77130243b54db196ddcad551e9cd0131d350192de20/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantc9a6e1947131168e9d2be77130243b54db196ddcad551e9cd0131d350192de20

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
        logInfo m!"CA_DEV_c6bab731473904028b05e443_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_c6bab731473904028b05e443_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_c6bab731473904028b05e443_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_c6bab731473904028b05e443_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_c6bab731473904028b05e443_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_c6bab731473904028b05e443_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
