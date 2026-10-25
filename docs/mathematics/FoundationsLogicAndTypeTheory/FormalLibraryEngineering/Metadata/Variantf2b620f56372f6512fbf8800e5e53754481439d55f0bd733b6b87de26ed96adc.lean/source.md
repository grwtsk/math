# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variantf2b620f56372f6512fbf8800e5e53754481439d55f0bd733b6b87de26ed96adc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `076b31af960a22d55d53c2c568da1fadb6b2781b` · SHA-256 `cad57de63a98e73cecd6171c0b3bc860f7f49b14594cbda611d333e426766fd6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant672c19cc928a0e69c741eb0f7ed6637ce7a7d4fb354642a23426be5b86e4bfdb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"672c19cc928a0e69c741eb0f7ed6637ce7a7d4fb354642a23426be5b86e4bfdb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant672c19cc928a0e69c741eb0f7ed6637ce7a7d4fb354642a23426be5b86e4bfdb","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"672c19cc928a0e69c741eb0f7ed6637ce7a7d4fb354642a23426be5b86e4bfdb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/c8f664e2bd1913c4af72e88102fefe64c3dd82143eba3c00a5a96d98f1d614d3/lean/sources/672c19cc928a0e69c741eb0f7ed6637ce7a7d4fb354642a23426be5b86e4bfdb/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant672c19cc928a0e69c741eb0f7ed6637ce7a7d4fb354642a23426be5b86e4bfdb

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
        logInfo m!"CA_DEV_137ce0df181bc0bc6dc41f1b_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_137ce0df181bc0bc6dc41f1b_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_137ce0df181bc0bc6dc41f1b_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_137ce0df181bc0bc6dc41f1b_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_137ce0df181bc0bc6dc41f1b_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_137ce0df181bc0bc6dc41f1b_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
