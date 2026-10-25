# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variante5e0b5483a1f8ff6eb14117cce1e5e47f78254f457be98db575c6e7bdfc8543c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a09c2a841dcc1638640b2ee1c9fd6714710e699` · SHA-256 `c98ab3c25b6752b46dc340f30b02e72e36843dd87ced7908f731afbe83d70793`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant8c7fb59de360ca3a8bc7d0fdbb084e7507a25bfc0570c218968e618310335149","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8c7fb59de360ca3a8bc7d0fdbb084e7507a25bfc0570c218968e618310335149","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant8c7fb59de360ca3a8bc7d0fdbb084e7507a25bfc0570c218968e618310335149","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"8c7fb59de360ca3a8bc7d0fdbb084e7507a25bfc0570c218968e618310335149","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/6d267250a84106f058c336a2d33f178576bfcd3e8c480e9fce69ff41a935f137/lean/sources/8c7fb59de360ca3a8bc7d0fdbb084e7507a25bfc0570c218968e618310335149/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant8c7fb59de360ca3a8bc7d0fdbb084e7507a25bfc0570c218968e618310335149

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
        logInfo m!"CA_DEV_7f50f986b589bf6555076259_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_7f50f986b589bf6555076259_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_7f50f986b589bf6555076259_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_7f50f986b589bf6555076259_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_7f50f986b589bf6555076259_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_7f50f986b589bf6555076259_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
