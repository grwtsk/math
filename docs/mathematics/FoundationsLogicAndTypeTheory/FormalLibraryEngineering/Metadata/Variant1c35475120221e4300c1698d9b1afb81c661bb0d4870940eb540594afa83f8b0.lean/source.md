# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant1c35475120221e4300c1698d9b1afb81c661bb0d4870940eb540594afa83f8b0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b7d7ad1a6d9d6fbf5a4b15181a99ebcc17c87192` · SHA-256 `1c7010efba0eea610f325dfcc47f723b82811428caefdac3efe7666402df279e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant7dd4decc244beed457f9f9a5db1606d73f21ed8e9b5e5312dda18c4ad85450fb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7dd4decc244beed457f9f9a5db1606d73f21ed8e9b5e5312dda18c4ad85450fb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant7dd4decc244beed457f9f9a5db1606d73f21ed8e9b5e5312dda18c4ad85450fb","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"7dd4decc244beed457f9f9a5db1606d73f21ed8e9b5e5312dda18c4ad85450fb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/39b4aee62ad8c18d6595d3ca817d4f7a9e786bff8acbed56b9c0ba4b0b8a7e6c/lean/sources/7dd4decc244beed457f9f9a5db1606d73f21ed8e9b5e5312dda18c4ad85450fb/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant7dd4decc244beed457f9f9a5db1606d73f21ed8e9b5e5312dda18c4ad85450fb

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
        logInfo m!"CA_DEV_12071c674b7dc97aa2fd10d1_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_12071c674b7dc97aa2fd10d1_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_12071c674b7dc97aa2fd10d1_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_12071c674b7dc97aa2fd10d1_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_12071c674b7dc97aa2fd10d1_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_12071c674b7dc97aa2fd10d1_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
