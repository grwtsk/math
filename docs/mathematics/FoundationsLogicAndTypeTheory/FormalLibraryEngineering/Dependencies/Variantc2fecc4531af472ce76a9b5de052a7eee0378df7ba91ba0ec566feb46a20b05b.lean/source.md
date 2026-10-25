# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Dependencies.Variantc2fecc4531af472ce76a9b5de052a7eee0378df7ba91ba0ec566feb46a20b05b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `073aceef1b5dc7f8ac82456ed52091bc9dcd8327` · SHA-256 `88625b218588f3f3db0dce011256703f273bcbfdadd9907fac46b473f69d896b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FutureObservableProvenance.Variant593cee2616a98f8f7b9ec4379ea388ce607675ad167d4a8182072a53282b3399","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"593cee2616a98f8f7b9ec4379ea388ce607675ad167d4a8182072a53282b3399","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.FutureObservableProvenance.Variant593cee2616a98f8f7b9ec4379ea388ce607675ad167d4a8182072a53282b3399","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"593cee2616a98f8f7b9ec4379ea388ce607675ad167d4a8182072a53282b3399","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/future-observable/provenance-reuse/Dependencies.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.FutureObservableProvenance
import Lean.Util.FoldConsts


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FutureObservableProvenance.Variant593cee2616a98f8f7b9ec4379ea388ce607675ad167d4a8182072a53282b3399

open Lean

run_meta do
  let env ← getEnv
  let names : Array Name := #[
    ``FormalResearch.PositiveAtlas.FutureObservableProvenance.matrixWord,
    ``FormalResearch.PositiveAtlas.FutureObservableProvenance.matrixWord_cons,
    ``FormalResearch.PositiveAtlas.FutureObservableProvenance.matrixWord_fold,
    ``FormalResearch.PositiveAtlas.FutureObservableProvenance.matrixWord_execute,
    ``FormalResearch.PositiveAtlas.FutureObservableProvenance.provenance_extension,
    ``FormalResearch.PositiveAtlas.FutureObservableProvenance.quadratic_matrixWord]
  for name in names do
    let some info := env.find? name | throwError "missing declaration {name}"
    let body := match info.value? (allowOpaque := true) with
      | some value => value.getUsedConstants
      | none => #[]
    let record := Json.mkObj [("declaration", toJson name.toString),
      ("type_constants", toJson (info.type.getUsedConstants.map Name.toString)),
      ("proof_or_definition_constants", toJson (body.map Name.toString))]
    logInfo m!"{record.compress}"
```
