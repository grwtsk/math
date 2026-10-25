# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Metadata.Variant989be0fd0dc3213b7007e81916c600eddc159838f442de15e565913b0a0b7bcc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cf58461cbeebbc15719de95a65c5640cc53f53de` · SHA-256 `03f0f576cb825ad0e012af45d802b413206fb70e5d3e8cadca23b9ccf03a3789`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantdb5f5c120c1562f10135f5e981a72051ad790e3594d986c6a331edb3058f199b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"db5f5c120c1562f10135f5e981a72051ad790e3594d986c6a331edb3058f199b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Command.Variantdb5f5c120c1562f10135f5e981a72051ad790e3594d986c6a331edb3058f199b","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"db5f5c120c1562f10135f5e981a72051ad790e3594d986c6a331edb3058f199b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Native/continuous-assurance/.dev-sessions/review-checks/3dc909b4d5118a5c260948f55cb2e7134350b2703efa44beecf6a93ea090eb7c/lean/sources/db5f5c120c1562f10135f5e981a72051ad790e3594d986c6a331edb3058f199b/Metadata.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Command
import Candidate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Command.Variantdb5f5c120c1562f10135f5e981a72051ad790e3594d986c6a331edb3058f199b

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
        logInfo m!"CA_DEV_991275dabbf9146d4c660f44_USED_CONSTANT:{dependency}"
        logInfo m!"CA_DEV_991275dabbf9146d4c660f44_USED_TYPE:{dependency}:{repr dependencyInfo.type}"
        match dependencyInfo with
        | .axiomInfo _ => logInfo m!"CA_DEV_991275dabbf9146d4c660f44_AXIOM:{dependency}"
        | _ => pure ()
        pending := dependencyInfo.type.getUsedConstants.toList ++ pending
        if let some body := dependencyInfo.value? true then
          pending := body.getUsedConstants.toList ++ pending
  logInfo "CA_DEV_991275dabbf9146d4c660f44_DEPENDENCY_SCAN_COMPLETE"
  logInfo "CA_DEV_991275dabbf9146d4c660f44_AXIOM_SCAN_COMPLETE"
  logInfo "CA_DEV_991275dabbf9146d4c660f44_TARGET_DIGEST:3cbc87c7681f34db4617feaa2c8801931bc5e42d8d0f560e756dd4cd92885f18"

end Surface.ContinuousAssurance
```
