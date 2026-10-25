# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variantc36cea75dc91a682628d7e93dd8aacad2751a99055dada7f22940937065ce2ef

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b5a099814c69bfef5a48ad19986cbf76f5967752` · SHA-256 `e6203f8bb5ec9e0a2d8fb301c8468d10dcab9ac4fd6716493312dc20aa2fbdd6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant625da3ef313ef734bbc8df286fa0d7436b4a4d48a0c8f8558a06627004c9ff9e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"625da3ef313ef734bbc8df286fa0d7436b4a4d48a0c8f8558a06627004c9ff9e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant625da3ef313ef734bbc8df286fa0d7436b4a4d48a0c8f8558a06627004c9ff9e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"625da3ef313ef734bbc8df286fa0d7436b4a4d48a0c8f8558a06627004c9ff9e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/ac630a853e17230107decc5b1f913f4a7cd9b14b4e6e710410c981da621ef31b/lean/sources/625da3ef313ef734bbc8df286fa0d7436b4a4d48a0c8f8558a06627004c9ff9e/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant625da3ef313ef734bbc8df286fa0d7436b4a4d48a0c8f8558a06627004c9ff9e

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
        logInfo m!"CA_DEV_6fd28cbfcaabeb97bb214e73_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_6fd28cbfcaabeb97bb214e73_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_6fd28cbfcaabeb97bb214e73_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_6fd28cbfcaabeb97bb214e73_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_6fd28cbfcaabeb97bb214e73_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_6fd28cbfcaabeb97bb214e73_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
