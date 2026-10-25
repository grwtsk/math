# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variantb813515574baa8440b180576b6e0c565a9ffb20e1adc8d526fcc5c72104cdc24

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a7f71c4b1b01d4282f1cc8acc9bb73b6dbc79f6f` · SHA-256 `9012704fe195c4a7bb441d1c9c2c23c91f3de3db2eb012c951481e1de4495805`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant6c64f1f72eaf1eea2bd1e40827bcf4cfdd6337c58fac7b375e715ab04944c4f6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6c64f1f72eaf1eea2bd1e40827bcf4cfdd6337c58fac7b375e715ab04944c4f6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant6c64f1f72eaf1eea2bd1e40827bcf4cfdd6337c58fac7b375e715ab04944c4f6","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6c64f1f72eaf1eea2bd1e40827bcf4cfdd6337c58fac7b375e715ab04944c4f6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/67cc59b7ed27fd4050d223c3648eb8641b5c9b8b834d4fab6223705f42f1308a/lean/sources/6c64f1f72eaf1eea2bd1e40827bcf4cfdd6337c58fac7b375e715ab04944c4f6/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant6c64f1f72eaf1eea2bd1e40827bcf4cfdd6337c58fac7b375e715ab04944c4f6

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
        logInfo m!"CA_DEV_17c296682e84a5b5c88ba3eb_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_17c296682e84a5b5c88ba3eb_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_17c296682e84a5b5c88ba3eb_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_17c296682e84a5b5c88ba3eb_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_17c296682e84a5b5c88ba3eb_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_17c296682e84a5b5c88ba3eb_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
