# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variante668272bff75cf7e1252a4ea1221a747de0f6b33d0fdfe7cdf503a074a82812c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `61a0b0f1ed294086c9daa4cf1ae88f5baa5decc7` · SHA-256 `b6b62ea44134ba6a813a0e29f3219c38e2d3940e3c60b18f09e9f546ef2c0ffc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant6a1fb31bbe7520f3f4bcb273ef3b7044dd274d62918673086c8361534053c297","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6a1fb31bbe7520f3f4bcb273ef3b7044dd274d62918673086c8361534053c297","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant6a1fb31bbe7520f3f4bcb273ef3b7044dd274d62918673086c8361534053c297","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6a1fb31bbe7520f3f4bcb273ef3b7044dd274d62918673086c8361534053c297","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/17357b0207abd2837be6d6bfbd51b9677b72314eb41d14a9fee5650a6e47b138/lean/sources/6a1fb31bbe7520f3f4bcb273ef3b7044dd274d62918673086c8361534053c297/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant6a1fb31bbe7520f3f4bcb273ef3b7044dd274d62918673086c8361534053c297

open Lean

namespace Surface.ContinuousAssurance

run_cmd Elab.Command.liftTermElabM do
  let expectedType ← Lean.Elab.Term.elabType (← `(True))
  let candidate ← Lean.Elab.Term.elabTermEnsuringType (← `(by exact False.elim (by exact True.intro)) ) (some expectedType)
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
        logInfo m!"CA_DEV_ce553663a6b6a4ffd25d3b26_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_ce553663a6b6a4ffd25d3b26_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_ce553663a6b6a4ffd25d3b26_AXIOM:{dependency}"
        | _ => pure ()
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_ce553663a6b6a4ffd25d3b26_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_ce553663a6b6a4ffd25d3b26_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_ce553663a6b6a4ffd25d3b26_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
