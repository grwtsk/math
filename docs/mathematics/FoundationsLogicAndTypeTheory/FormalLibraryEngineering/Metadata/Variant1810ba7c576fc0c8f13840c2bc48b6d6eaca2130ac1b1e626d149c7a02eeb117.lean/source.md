# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant1810ba7c576fc0c8f13840c2bc48b6d6eaca2130ac1b1e626d149c7a02eeb117

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8d2df017c383edba0a992a8be52d773556b8d4b8` · SHA-256 `7e1bf0254ae5e03c5078511f618a623804e0588c53bc46af8c5681cc7e320942`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant32f52d448a50d1364ef6eca4dbaf162e0163a89cedec277bcb308d89dd7cf63e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"32f52d448a50d1364ef6eca4dbaf162e0163a89cedec277bcb308d89dd7cf63e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant32f52d448a50d1364ef6eca4dbaf162e0163a89cedec277bcb308d89dd7cf63e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"32f52d448a50d1364ef6eca4dbaf162e0163a89cedec277bcb308d89dd7cf63e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/67235a5ac3536a1d75640d857ca93a154e20bd6b5e934566504f0dfa5a100bce/lean/sources/32f52d448a50d1364ef6eca4dbaf162e0163a89cedec277bcb308d89dd7cf63e/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant32f52d448a50d1364ef6eca4dbaf162e0163a89cedec277bcb308d89dd7cf63e

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
        logInfo m!"CA_DEV_e24d50dcfafd4331ca04aa55_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_e24d50dcfafd4331ca04aa55_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_e24d50dcfafd4331ca04aa55_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_e24d50dcfafd4331ca04aa55_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_e24d50dcfafd4331ca04aa55_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_e24d50dcfafd4331ca04aa55_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
