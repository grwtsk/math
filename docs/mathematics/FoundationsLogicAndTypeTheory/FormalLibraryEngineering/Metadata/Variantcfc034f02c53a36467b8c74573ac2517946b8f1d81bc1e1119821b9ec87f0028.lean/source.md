# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variantcfc034f02c53a36467b8c74573ac2517946b8f1d81bc1e1119821b9ec87f0028

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `faf59c3fcbfd50e6637e6cb37c7eb265656af3d7` · SHA-256 `728ea8340637d4e25e984204ede37d85b1af88e9888885943f58f8ededff0461`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Varianta3aa94b9f04f34404d9b30f8d5a81882b07786794d858655da77e911d928f5f2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a3aa94b9f04f34404d9b30f8d5a81882b07786794d858655da77e911d928f5f2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Varianta3aa94b9f04f34404d9b30f8d5a81882b07786794d858655da77e911d928f5f2","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a3aa94b9f04f34404d9b30f8d5a81882b07786794d858655da77e911d928f5f2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/f467bb45e6a11fcf352a1ebc186d0ea7b6b2c070d729584586cc4d6c103c1213/lean/sources/a3aa94b9f04f34404d9b30f8d5a81882b07786794d858655da77e911d928f5f2/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Varianta3aa94b9f04f34404d9b30f8d5a81882b07786794d858655da77e911d928f5f2

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
        logInfo m!"CA_DEV_0ff15957c1cc1582e0e55b7d_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_0ff15957c1cc1582e0e55b7d_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_0ff15957c1cc1582e0e55b7d_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_0ff15957c1cc1582e0e55b7d_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_0ff15957c1cc1582e0e55b7d_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_0ff15957c1cc1582e0e55b7d_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
