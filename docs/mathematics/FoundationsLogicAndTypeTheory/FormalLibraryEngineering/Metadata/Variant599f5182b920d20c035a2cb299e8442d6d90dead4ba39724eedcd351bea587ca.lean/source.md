# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant599f5182b920d20c035a2cb299e8442d6d90dead4ba39724eedcd351bea587ca

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `af96c01df2fc4edeec8d041a5e1b1f0a2a48877b` · SHA-256 `43e7c51939dfb608afb3b9de95e8b92c78f6b1bee331d8ca32cf7ea70296f381`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant97d263c5e072dadd5642473b1d271e008216f731b9bb333f387ab00164f1bcbf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"97d263c5e072dadd5642473b1d271e008216f731b9bb333f387ab00164f1bcbf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant97d263c5e072dadd5642473b1d271e008216f731b9bb333f387ab00164f1bcbf","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"97d263c5e072dadd5642473b1d271e008216f731b9bb333f387ab00164f1bcbf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/d61c0009cf006bfc4d3c5068068598854aff6f0f464a5c569f375c3856ce1c72/lean/sources/97d263c5e072dadd5642473b1d271e008216f731b9bb333f387ab00164f1bcbf/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant97d263c5e072dadd5642473b1d271e008216f731b9bb333f387ab00164f1bcbf

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
        logInfo m!"CA_DEV_48de142cebbf4ebf90149547_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_48de142cebbf4ebf90149547_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_48de142cebbf4ebf90149547_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_48de142cebbf4ebf90149547_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_48de142cebbf4ebf90149547_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_48de142cebbf4ebf90149547_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
