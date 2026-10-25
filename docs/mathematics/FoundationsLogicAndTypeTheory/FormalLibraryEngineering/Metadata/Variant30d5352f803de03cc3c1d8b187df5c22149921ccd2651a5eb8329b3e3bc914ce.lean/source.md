# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant30d5352f803de03cc3c1d8b187df5c22149921ccd2651a5eb8329b3e3bc914ce

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d5b704b9783d829e41653a71a81f22ba0332c705` · SHA-256 `8a5440f23b2c8f0c69d603f2781f92f086bb67627d7de091ef228eb077caf4ad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant76eb859b6dce5463e610825ba8e553f5be4821da46059e03dc924a0731261a31","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"76eb859b6dce5463e610825ba8e553f5be4821da46059e03dc924a0731261a31","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant76eb859b6dce5463e610825ba8e553f5be4821da46059e03dc924a0731261a31","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"76eb859b6dce5463e610825ba8e553f5be4821da46059e03dc924a0731261a31","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/0ff39b2f83d545b1f1612cbbb61e5d0a5a2778ddfb0cc297831a2eadfd5cbae2/lean/sources/76eb859b6dce5463e610825ba8e553f5be4821da46059e03dc924a0731261a31/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant76eb859b6dce5463e610825ba8e553f5be4821da46059e03dc924a0731261a31

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
        logInfo m!"CA_DEV_5aac6ee7a65fa4447a9f82e4_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_5aac6ee7a65fa4447a9f82e4_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_5aac6ee7a65fa4447a9f82e4_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_5aac6ee7a65fa4447a9f82e4_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_5aac6ee7a65fa4447a9f82e4_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_5aac6ee7a65fa4447a9f82e4_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
