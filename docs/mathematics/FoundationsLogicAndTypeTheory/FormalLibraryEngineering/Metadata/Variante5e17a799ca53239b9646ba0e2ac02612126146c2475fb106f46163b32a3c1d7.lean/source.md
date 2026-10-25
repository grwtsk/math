# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variante5e17a799ca53239b9646ba0e2ac02612126146c2475fb106f46163b32a3c1d7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d09b263b5bf5f3975a2d74f9a741bc8b3fd1cb54` · SHA-256 `58dd11729fbf24277aa59925cc7904f4d6fe5841d0b170b4e35a8cb49064db66`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant1af24f44febb1956735f8fe3c27d948bcb0d2b29c4f0e822b16a40dad3f997f4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1af24f44febb1956735f8fe3c27d948bcb0d2b29c4f0e822b16a40dad3f997f4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant1af24f44febb1956735f8fe3c27d948bcb0d2b29c4f0e822b16a40dad3f997f4","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1af24f44febb1956735f8fe3c27d948bcb0d2b29c4f0e822b16a40dad3f997f4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/079f76ef40ce73e06fcd3b9b713107b1de83784eb455b8689f4a786ad7ca624b/lean/sources/1af24f44febb1956735f8fe3c27d948bcb0d2b29c4f0e822b16a40dad3f997f4/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant1af24f44febb1956735f8fe3c27d948bcb0d2b29c4f0e822b16a40dad3f997f4

open Lean

namespace Surface.ContinuousAssurance

run_cmd Elab.Command.liftTermElabM do
  let expectedType ← Lean.Elab.Term.elabType (← `(True))
  let candidate ← Lean.Elab.Term.elabTermEnsuringType (← `(by exact True.intro) ) (some expectedType)
  Lean.Elab.Term.synthesizeSyntheticMVarsNoPostponing
  let candidate ← instantiateMVars candidate
  let env ← getEnv
  let mut pending := candidate.getUsedConstants.toList
  let mut visited : NameSet := {}
  while !pending.isEmpty do
    let dependency := pending.head!
    pending := pending.tail!
    if !visited.contains dependency then
      visited := visited.insert dependency
      if let some dependencyInfo := env.find? dependency then
        logInfo m!"CA_DEV_34afe0e93cba975bd1184f57_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_34afe0e93cba975bd1184f57_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_34afe0e93cba975bd1184f57_AXIOM:{dependency}"
        | _ => pure ()
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_34afe0e93cba975bd1184f57_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_34afe0e93cba975bd1184f57_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_34afe0e93cba975bd1184f57_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
