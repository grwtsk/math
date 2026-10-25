# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant60fb5c144d5b30a337af424a0d10b0b030624332097532f2da6f82dd8b4822d1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `74efe0d5fa32c21baf4d72976ffddd3be768fda3` · SHA-256 `9cdb4d9cd6501874ab56a85b1940666f27c57297cec604412dca454d09d626df`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant17918d987ea18a49c7f8d4bb937a99894daba7dd6253b44ad9b392cc9d1d6878","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"17918d987ea18a49c7f8d4bb937a99894daba7dd6253b44ad9b392cc9d1d6878","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant17918d987ea18a49c7f8d4bb937a99894daba7dd6253b44ad9b392cc9d1d6878","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"17918d987ea18a49c7f8d4bb937a99894daba7dd6253b44ad9b392cc9d1d6878","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/1a944b53e0b5bfa88b41459aa7b24b2fbc70a264f614b5f9b7808421bb970fc8/lean/sources/17918d987ea18a49c7f8d4bb937a99894daba7dd6253b44ad9b392cc9d1d6878/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant17918d987ea18a49c7f8d4bb937a99894daba7dd6253b44ad9b392cc9d1d6878

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
        logInfo m!"CA_DEV_49c75483b48e073bb8af5170_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_49c75483b48e073bb8af5170_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_49c75483b48e073bb8af5170_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_49c75483b48e073bb8af5170_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_49c75483b48e073bb8af5170_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_49c75483b48e073bb8af5170_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
