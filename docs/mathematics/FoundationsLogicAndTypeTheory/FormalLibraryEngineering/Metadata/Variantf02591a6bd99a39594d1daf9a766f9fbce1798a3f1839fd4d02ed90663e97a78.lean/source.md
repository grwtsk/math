# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variantf02591a6bd99a39594d1daf9a766f9fbce1798a3f1839fd4d02ed90663e97a78

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5a7ec2ee3aac629834f838515fda9b156bc86fdf` · SHA-256 `f23a92a7565b1ae0f36f765bb4fddb8452bfa14e396095daf79e691a4c8e6b5e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant710d14bb3477d4a3b99b3680e31bfd64ca315f5c55db8959d3f769d6134649a4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"710d14bb3477d4a3b99b3680e31bfd64ca315f5c55db8959d3f769d6134649a4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant710d14bb3477d4a3b99b3680e31bfd64ca315f5c55db8959d3f769d6134649a4","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"710d14bb3477d4a3b99b3680e31bfd64ca315f5c55db8959d3f769d6134649a4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/985a4fd714c6183c4345b0bf0ee2725ea5a68330a5ebce4aababecceb005e1dc/lean/sources/710d14bb3477d4a3b99b3680e31bfd64ca315f5c55db8959d3f769d6134649a4/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant710d14bb3477d4a3b99b3680e31bfd64ca315f5c55db8959d3f769d6134649a4

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
        logInfo m!"CA_DEV_dcceb0ea2c780609f98d7455_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_dcceb0ea2c780609f98d7455_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_dcceb0ea2c780609f98d7455_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_dcceb0ea2c780609f98d7455_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_dcceb0ea2c780609f98d7455_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_dcceb0ea2c780609f98d7455_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
