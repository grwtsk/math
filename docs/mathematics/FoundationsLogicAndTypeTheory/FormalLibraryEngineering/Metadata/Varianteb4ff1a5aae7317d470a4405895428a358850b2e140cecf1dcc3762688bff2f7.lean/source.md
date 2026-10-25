# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Varianteb4ff1a5aae7317d470a4405895428a358850b2e140cecf1dcc3762688bff2f7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eac0bfb043b5249dcaed8afdb1c930b5263acbdb` · SHA-256 `00dee6921c0bdafea177a5e9edddab6fae488d9adf97d4c8eab10962e5074ae7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant2eeefee01180bb5168f6612992485ba5c26976783dcb6787c25d40869e5b062d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2eeefee01180bb5168f6612992485ba5c26976783dcb6787c25d40869e5b062d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant2eeefee01180bb5168f6612992485ba5c26976783dcb6787c25d40869e5b062d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"2eeefee01180bb5168f6612992485ba5c26976783dcb6787c25d40869e5b062d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/04c45fae54c0f26a77a5b4c3bdbaf6facba426492699d44964945668f13d650b/lean/sources/2eeefee01180bb5168f6612992485ba5c26976783dcb6787c25d40869e5b062d/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant2eeefee01180bb5168f6612992485ba5c26976783dcb6787c25d40869e5b062d

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
        logInfo m!"CA_DEV_09ad86784ac7ca097abdc295_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_09ad86784ac7ca097abdc295_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_09ad86784ac7ca097abdc295_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_09ad86784ac7ca097abdc295_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_09ad86784ac7ca097abdc295_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_09ad86784ac7ca097abdc295_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
