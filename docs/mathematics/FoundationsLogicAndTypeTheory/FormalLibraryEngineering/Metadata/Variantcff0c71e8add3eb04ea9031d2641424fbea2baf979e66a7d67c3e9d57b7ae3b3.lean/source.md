# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variantcff0c71e8add3eb04ea9031d2641424fbea2baf979e66a7d67c3e9d57b7ae3b3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `58d4ac06ff06256c13790da1ec43c52b1c8df606` · SHA-256 `5156ad383f520226e706910bb7b5c556d848341524eca8818ed30009c747c9fd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantdf426f7e79227fd9890066faa946e18799bf7fcb1e60ad55100151030f3cf1b5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"df426f7e79227fd9890066faa946e18799bf7fcb1e60ad55100151030f3cf1b5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variantdf426f7e79227fd9890066faa946e18799bf7fcb1e60ad55100151030f3cf1b5","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"df426f7e79227fd9890066faa946e18799bf7fcb1e60ad55100151030f3cf1b5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/757762afc14e16d32d6d5a6deb0cec5f900a43820a1bb1e851bf54ff163d74b6/lean/sources/df426f7e79227fd9890066faa946e18799bf7fcb1e60ad55100151030f3cf1b5/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantdf426f7e79227fd9890066faa946e18799bf7fcb1e60ad55100151030f3cf1b5

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
        logInfo m!"CA_DEV_5f1cfaf38dc952426104d49d_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_5f1cfaf38dc952426104d49d_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_5f1cfaf38dc952426104d49d_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_5f1cfaf38dc952426104d49d_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_5f1cfaf38dc952426104d49d_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_5f1cfaf38dc952426104d49d_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
