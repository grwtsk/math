# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant09c9305b831d1970eccc69cfa4f420242eaaa9b25b70116b36cbd288d43517c8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f9caa8618e3b4f75365329a64605e4e19db9b3c2` · SHA-256 `ab426a6b5c1e84fde97a60a793170a554fa5d795640fdcf4d849cced3a857b3a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantc98a78c264b393c4fa380c60a8a7891881cb8f6ce55f00c306a97958919392ef","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c98a78c264b393c4fa380c60a8a7891881cb8f6ce55f00c306a97958919392ef","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variantc98a78c264b393c4fa380c60a8a7891881cb8f6ce55f00c306a97958919392ef","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"c98a78c264b393c4fa380c60a8a7891881cb8f6ce55f00c306a97958919392ef","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/93064fe5ab887107ecfb7e577950a8de70f4420af6a57c381f4231ee7f45904e/lean/sources/c98a78c264b393c4fa380c60a8a7891881cb8f6ce55f00c306a97958919392ef/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantc98a78c264b393c4fa380c60a8a7891881cb8f6ce55f00c306a97958919392ef

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
        logInfo m!"CA_DEV_50b0c29341afe210a07f69b2_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_50b0c29341afe210a07f69b2_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_50b0c29341afe210a07f69b2_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_50b0c29341afe210a07f69b2_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_50b0c29341afe210a07f69b2_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_50b0c29341afe210a07f69b2_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
