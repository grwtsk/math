# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant1af3beda5475e3fb7301e02b71e01a4a3936defe23a62755dded9c43e2f50d2b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2c35492556b1bc1ac8ad13d3b735441e08eb70c7` · SHA-256 `89661a66dd76316226e3cec70451a051a79caecb9617b42f7178fd8d5234d552`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant503a5eabedf2f64e123fb982ff17e952df105310e8b70547da028a0ab72086bd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"503a5eabedf2f64e123fb982ff17e952df105310e8b70547da028a0ab72086bd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant503a5eabedf2f64e123fb982ff17e952df105310e8b70547da028a0ab72086bd","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"503a5eabedf2f64e123fb982ff17e952df105310e8b70547da028a0ab72086bd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/6873b0bcb167aaf0c7ad6eac83d3e487b423993256044b233d3c04cad43a8f76/lean/sources/503a5eabedf2f64e123fb982ff17e952df105310e8b70547da028a0ab72086bd/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant503a5eabedf2f64e123fb982ff17e952df105310e8b70547da028a0ab72086bd

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
        logInfo m!"CA_DEV_dee468e222c1ec2e54a76334_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_dee468e222c1ec2e54a76334_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_dee468e222c1ec2e54a76334_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_dee468e222c1ec2e54a76334_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_dee468e222c1ec2e54a76334_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_dee468e222c1ec2e54a76334_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
