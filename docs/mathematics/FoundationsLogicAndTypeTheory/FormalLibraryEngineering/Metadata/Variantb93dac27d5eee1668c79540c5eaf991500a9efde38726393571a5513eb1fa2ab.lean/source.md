# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variantb93dac27d5eee1668c79540c5eaf991500a9efde38726393571a5513eb1fa2ab

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a0c02854cce78a6f978c4112db88f196977ae0a1` · SHA-256 `2395bd88753da5454dc25b8f98f6b50f426b0200c6f23e1e03ae5023690b95ac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variante92ab01ab6834c984e7e388501773e6577e30839f8556be3fbd93ef828570eea","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e92ab01ab6834c984e7e388501773e6577e30839f8556be3fbd93ef828570eea","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variante92ab01ab6834c984e7e388501773e6577e30839f8556be3fbd93ef828570eea","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e92ab01ab6834c984e7e388501773e6577e30839f8556be3fbd93ef828570eea","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/a20861dcdf0aea8cc6e218c09b222482cbb5933ca59fd846d679f43ad5ec35a2/lean/sources/e92ab01ab6834c984e7e388501773e6577e30839f8556be3fbd93ef828570eea/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variante92ab01ab6834c984e7e388501773e6577e30839f8556be3fbd93ef828570eea

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
        logInfo m!"CA_DEV_963e09a630c696a56a085f0c_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_963e09a630c696a56a085f0c_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_963e09a630c696a56a085f0c_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_963e09a630c696a56a085f0c_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_963e09a630c696a56a085f0c_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_963e09a630c696a56a085f0c_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
