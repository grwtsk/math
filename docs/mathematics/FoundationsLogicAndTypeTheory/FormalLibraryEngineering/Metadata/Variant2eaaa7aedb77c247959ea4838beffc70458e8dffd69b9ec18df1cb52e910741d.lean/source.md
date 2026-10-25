# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant2eaaa7aedb77c247959ea4838beffc70458e8dffd69b9ec18df1cb52e910741d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6756109423a90d0a8fd90b8183d24aea10ea1f4c` · SHA-256 `cb9c68f3f0cd6eb40d25d36c73c6b5a9e104f7d1924f8f0c5abff6a8c127e85d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant41dc209a95a5eb54ba4e8d94e00237f9faeab71ab051c5b16a39e7f8b075b832","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"41dc209a95a5eb54ba4e8d94e00237f9faeab71ab051c5b16a39e7f8b075b832","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant41dc209a95a5eb54ba4e8d94e00237f9faeab71ab051c5b16a39e7f8b075b832","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"41dc209a95a5eb54ba4e8d94e00237f9faeab71ab051c5b16a39e7f8b075b832","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/d928c2c832fc382229ad2efbd9a8f00f9a752ad3323fbab1fb45068b77adf2ce/lean/sources/41dc209a95a5eb54ba4e8d94e00237f9faeab71ab051c5b16a39e7f8b075b832/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant41dc209a95a5eb54ba4e8d94e00237f9faeab71ab051c5b16a39e7f8b075b832

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
        logInfo m!"CA_DEV_e06dbbe321cfe0ea7a254d54_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_e06dbbe321cfe0ea7a254d54_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_e06dbbe321cfe0ea7a254d54_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_e06dbbe321cfe0ea7a254d54_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_e06dbbe321cfe0ea7a254d54_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_e06dbbe321cfe0ea7a254d54_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
