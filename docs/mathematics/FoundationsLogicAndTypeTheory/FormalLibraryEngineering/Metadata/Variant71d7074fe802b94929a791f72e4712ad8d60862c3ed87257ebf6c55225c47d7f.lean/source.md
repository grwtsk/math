# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant71d7074fe802b94929a791f72e4712ad8d60862c3ed87257ebf6c55225c47d7f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `53957bad69b6628c135910d358a089bd5a4ea076` · SHA-256 `9c8d75647f7aa796849c1e6b2b4dedd705f2d5e86bf2e48d09986d5d1cc6a781`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant63c6e164d0754767f89254eb65da594a3fd30ac858fb43db7020616b2b0ec48e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"63c6e164d0754767f89254eb65da594a3fd30ac858fb43db7020616b2b0ec48e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant63c6e164d0754767f89254eb65da594a3fd30ac858fb43db7020616b2b0ec48e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"63c6e164d0754767f89254eb65da594a3fd30ac858fb43db7020616b2b0ec48e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/a9506fc4b8a8bd07d5f8be7f1850cd17da2781506789b67c2fa6904172e63bb8/lean/sources/63c6e164d0754767f89254eb65da594a3fd30ac858fb43db7020616b2b0ec48e/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant63c6e164d0754767f89254eb65da594a3fd30ac858fb43db7020616b2b0ec48e

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
        logInfo m!"CA_DEV_204eb3186f59ac70c3fe7d1a_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_204eb3186f59ac70c3fe7d1a_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_204eb3186f59ac70c3fe7d1a_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_204eb3186f59ac70c3fe7d1a_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_204eb3186f59ac70c3fe7d1a_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_204eb3186f59ac70c3fe7d1a_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
