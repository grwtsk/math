# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variantec6555efda4db6dd9dcf11f31af4ef4afd31c41e939a6e7efcd132607c1f1c58

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6ced5c349fe97e8faec327d5a7a33e3a781df1b3` · SHA-256 `5f1ba4fd69e8b94532a125fc834eb314520f785808f0d3bf9ce77078fa99f267`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant12ab3a82de2ae7133a0af4746dce4d02f65a6943d06f52c08c1672953dfe3aa8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"12ab3a82de2ae7133a0af4746dce4d02f65a6943d06f52c08c1672953dfe3aa8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant12ab3a82de2ae7133a0af4746dce4d02f65a6943d06f52c08c1672953dfe3aa8","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"12ab3a82de2ae7133a0af4746dce4d02f65a6943d06f52c08c1672953dfe3aa8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/1a01980c91f5f1e932699b66e7ec64672f49018848e39d80f26c4ee128bb7041/lean/sources/12ab3a82de2ae7133a0af4746dce4d02f65a6943d06f52c08c1672953dfe3aa8/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant12ab3a82de2ae7133a0af4746dce4d02f65a6943d06f52c08c1672953dfe3aa8

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
        logInfo m!"CA_DEV_827f2591f38fdcf97d802cad_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_827f2591f38fdcf97d802cad_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_827f2591f38fdcf97d802cad_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_827f2591f38fdcf97d802cad_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_827f2591f38fdcf97d802cad_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_827f2591f38fdcf97d802cad_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
