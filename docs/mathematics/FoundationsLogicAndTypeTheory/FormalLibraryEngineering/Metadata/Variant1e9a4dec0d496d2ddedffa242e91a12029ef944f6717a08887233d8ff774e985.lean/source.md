# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant1e9a4dec0d496d2ddedffa242e91a12029ef944f6717a08887233d8ff774e985

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cb31d56db6fa0313a46009b058b8a212056c9ae4` · SHA-256 `f5cf851b5cab4f7cb5d76a7a76ab595f5dddb98e8aca1123455c840580fd7b1f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant6d847bbba5f80947fe0d97deb5d5419be4142ab17ea624b2f27634617f51f68e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6d847bbba5f80947fe0d97deb5d5419be4142ab17ea624b2f27634617f51f68e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variant6d847bbba5f80947fe0d97deb5d5419be4142ab17ea624b2f27634617f51f68e","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6d847bbba5f80947fe0d97deb5d5419be4142ab17ea624b2f27634617f51f68e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/99d3161c9f8c998ca4d173cbeb01906c375a5621826863d583ca33ff9ee4611f/lean/sources/6d847bbba5f80947fe0d97deb5d5419be4142ab17ea624b2f27634617f51f68e/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variant6d847bbba5f80947fe0d97deb5d5419be4142ab17ea624b2f27634617f51f68e

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
        logInfo m!"CA_DEV_efc21ebcd61e4f902c54ceb6_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_efc21ebcd61e4f902c54ceb6_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_efc21ebcd61e4f902c54ceb6_AXIOM:{dependency}"
        | _ => pure ()
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_efc21ebcd61e4f902c54ceb6_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_efc21ebcd61e4f902c54ceb6_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_efc21ebcd61e4f902c54ceb6_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
