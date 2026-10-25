# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant5b36ebd09f4e988c41b6b49628cca08b4e5f45b5a0d1d1182005b5011b4bee45

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `495fdcc0404a8de330843c1b7008bbfe8db478d2` · SHA-256 `e726657f287a51e06b9627ff5a4129a13d969f30cba71c99617b4ca3dd55563b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant1f73db769406fc57e8ac539aa6136df2af8ea9f349d5846868d122b304f9ec22","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1f73db769406fc57e8ac539aa6136df2af8ea9f349d5846868d122b304f9ec22","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant1f73db769406fc57e8ac539aa6136df2af8ea9f349d5846868d122b304f9ec22","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1f73db769406fc57e8ac539aa6136df2af8ea9f349d5846868d122b304f9ec22","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/500ef070be76bfe5a960c089363afb83a814c85d2534462c80b9ce57bd33f219/lean/sources/1f73db769406fc57e8ac539aa6136df2af8ea9f349d5846868d122b304f9ec22/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant1f73db769406fc57e8ac539aa6136df2af8ea9f349d5846868d122b304f9ec22

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
        logInfo m!"CA_DEV_4c16d0cd328e16f75a5a5c36_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_4c16d0cd328e16f75a5a5c36_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_4c16d0cd328e16f75a5a5c36_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_4c16d0cd328e16f75a5a5c36_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_4c16d0cd328e16f75a5a5c36_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_4c16d0cd328e16f75a5a5c36_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
