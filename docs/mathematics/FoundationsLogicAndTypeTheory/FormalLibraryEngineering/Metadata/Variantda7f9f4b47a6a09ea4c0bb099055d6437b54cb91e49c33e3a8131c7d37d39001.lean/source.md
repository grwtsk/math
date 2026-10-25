# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variantda7f9f4b47a6a09ea4c0bb099055d6437b54cb91e49c33e3a8131c7d37d39001

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e2aa874b1d27dcb9833c5c9951400c0e15661168` · SHA-256 `d70949e17035fc5fba1f12a368f9858175678f334347cf53bbf5b2eea829d0e5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantf2af022069d297c5601c2e380dacb9eaaa728c1901b35fb371d9ab6729b1e8c3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f2af022069d297c5601c2e380dacb9eaaa728c1901b35fb371d9ab6729b1e8c3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variantf2af022069d297c5601c2e380dacb9eaaa728c1901b35fb371d9ab6729b1e8c3","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"f2af022069d297c5601c2e380dacb9eaaa728c1901b35fb371d9ab6729b1e8c3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/8bb234ca330f34f24ecf7d556231175fc0005946e0852980261539f90fa0daa2/lean/sources/f2af022069d297c5601c2e380dacb9eaaa728c1901b35fb371d9ab6729b1e8c3/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantf2af022069d297c5601c2e380dacb9eaaa728c1901b35fb371d9ab6729b1e8c3

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
        logInfo m!"CA_DEV_078c46e0badefd924a3a49b6_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_078c46e0badefd924a3a49b6_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_078c46e0badefd924a3a49b6_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_078c46e0badefd924a3a49b6_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_078c46e0badefd924a3a49b6_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_078c46e0badefd924a3a49b6_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
