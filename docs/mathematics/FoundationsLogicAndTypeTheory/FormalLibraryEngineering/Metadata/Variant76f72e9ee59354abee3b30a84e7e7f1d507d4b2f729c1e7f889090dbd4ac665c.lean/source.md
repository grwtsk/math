# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant76f72e9ee59354abee3b30a84e7e7f1d507d4b2f729c1e7f889090dbd4ac665c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `238538d26f27691a7fbe4c6651da722889122bbf` · SHA-256 `43523b4e5326bc0e801bef34cdce8e9eac0480b44eecee3dcc6ea5af4c5b17df`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Varianta67ce9682f16e407e7d4a46095ccd860fd34c10c09dbc8626d1ee462725e91a5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a67ce9682f16e407e7d4a46095ccd860fd34c10c09dbc8626d1ee462725e91a5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Varianta67ce9682f16e407e7d4a46095ccd860fd34c10c09dbc8626d1ee462725e91a5","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a67ce9682f16e407e7d4a46095ccd860fd34c10c09dbc8626d1ee462725e91a5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/c9ad682a568891483c6d7c0d8612864b5613d86c087058c91b915355af440850/lean/sources/a67ce9682f16e407e7d4a46095ccd860fd34c10c09dbc8626d1ee462725e91a5/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Varianta67ce9682f16e407e7d4a46095ccd860fd34c10c09dbc8626d1ee462725e91a5

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
        logInfo m!"CA_DEV_fe1b789dd188af3ed66696f6_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_fe1b789dd188af3ed66696f6_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_fe1b789dd188af3ed66696f6_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_fe1b789dd188af3ed66696f6_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_fe1b789dd188af3ed66696f6_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_fe1b789dd188af3ed66696f6_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
