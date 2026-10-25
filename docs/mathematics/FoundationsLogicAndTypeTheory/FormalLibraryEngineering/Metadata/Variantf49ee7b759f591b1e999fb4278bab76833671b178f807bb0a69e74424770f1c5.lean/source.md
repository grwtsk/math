# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variantf49ee7b759f591b1e999fb4278bab76833671b178f807bb0a69e74424770f1c5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e1b0d3b2e0af0bc0014bcef20ed7c56127732878` · SHA-256 `ff06448a900519959fa9f195f92dc679e0500f799c51151c12ed4f6b20d53846`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant01c25160aa9683cb3890f704b8343110cb27e773447917a36e7db166488ae465","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"01c25160aa9683cb3890f704b8343110cb27e773447917a36e7db166488ae465","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant01c25160aa9683cb3890f704b8343110cb27e773447917a36e7db166488ae465","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"01c25160aa9683cb3890f704b8343110cb27e773447917a36e7db166488ae465","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/412dc91f3aa205c3543ed6f48f1ec52a0ffefca69d44f2713615a80a3f4327b6/lean/sources/01c25160aa9683cb3890f704b8343110cb27e773447917a36e7db166488ae465/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant01c25160aa9683cb3890f704b8343110cb27e773447917a36e7db166488ae465

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
        logInfo m!"CA_DEV_87706fd55a3b00c98359d8d8_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_87706fd55a3b00c98359d8d8_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_87706fd55a3b00c98359d8d8_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_87706fd55a3b00c98359d8d8_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_87706fd55a3b00c98359d8d8_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_87706fd55a3b00c98359d8d8_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
