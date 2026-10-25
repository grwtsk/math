# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variantaec9e62b97c935f6003d71b247fe2e7f4b04a8b79accc487ebc2f6df5030fe79

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `03604abc9f76642377ba7e7b8de13b53645e962d` · SHA-256 `dd645febeb95a143ced8d143dc2aed472c4cc7129aff0cc19c01ad019f354645`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantaa7183dbd167be6a24f8424c6ad05a0220dde0e20776813778803bfc39bdbb2e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aa7183dbd167be6a24f8424c6ad05a0220dde0e20776813778803bfc39bdbb2e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variantaa7183dbd167be6a24f8424c6ad05a0220dde0e20776813778803bfc39bdbb2e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"aa7183dbd167be6a24f8424c6ad05a0220dde0e20776813778803bfc39bdbb2e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/3e17080e74143eedc0c5b3f05712bedcddc4078dc7c923e18c39671c3f8e4874/lean/sources/aa7183dbd167be6a24f8424c6ad05a0220dde0e20776813778803bfc39bdbb2e/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantaa7183dbd167be6a24f8424c6ad05a0220dde0e20776813778803bfc39bdbb2e

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
        logInfo m!"CA_DEV_0e7185d64ae09ccdc57ad0ad_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_0e7185d64ae09ccdc57ad0ad_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_0e7185d64ae09ccdc57ad0ad_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_0e7185d64ae09ccdc57ad0ad_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_0e7185d64ae09ccdc57ad0ad_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_0e7185d64ae09ccdc57ad0ad_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
