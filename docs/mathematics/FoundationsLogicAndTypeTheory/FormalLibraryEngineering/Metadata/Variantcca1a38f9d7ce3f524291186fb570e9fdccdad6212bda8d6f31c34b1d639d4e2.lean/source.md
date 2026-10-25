# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variantcca1a38f9d7ce3f524291186fb570e9fdccdad6212bda8d6f31c34b1d639d4e2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9c67fbf1cd0011a37cadeda0972f6a438d39486f` · SHA-256 `37f00e90842213a031e7968d15ffd72eeef36f6657df118606672527d4a9b160`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant857a0653c40190845f81b6d4533e191880fceecee36a807a305d6253e14f6573","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"857a0653c40190845f81b6d4533e191880fceecee36a807a305d6253e14f6573","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant857a0653c40190845f81b6d4533e191880fceecee36a807a305d6253e14f6573","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"857a0653c40190845f81b6d4533e191880fceecee36a807a305d6253e14f6573","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/fddcbc5dee22be95e2ebd4883a96dadbe18a551492cc6280fcbf3dd508fcbc4c/lean/sources/857a0653c40190845f81b6d4533e191880fceecee36a807a305d6253e14f6573/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant857a0653c40190845f81b6d4533e191880fceecee36a807a305d6253e14f6573

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
        logInfo m!"CA_DEV_78b9c888afc328bdd9a17715_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_78b9c888afc328bdd9a17715_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_78b9c888afc328bdd9a17715_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_78b9c888afc328bdd9a17715_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_78b9c888afc328bdd9a17715_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_78b9c888afc328bdd9a17715_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
