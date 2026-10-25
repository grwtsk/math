# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Interface.Variant4527cf46ff29e7bde4ea2ea9ceadadd5c042397414d9b5dd05a5a8e3a52ade93

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `763ab2a7674383dc912efc8c5e99254df0861c56` · SHA-256 `917a85829625d2b89cd7999caf763a1bc022b347da44efd674f39436d0fc5ea1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LoadedEnvironment.Variante1a52d6c6373419a227b562a529a201e75d93cad7708b5e4a60e5e6f36bd23e3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e1a52d6c6373419a227b562a529a201e75d93cad7708b5e4a60e5e6f36bd23e3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LoadedEnvironment.Variante1a52d6c6373419a227b562a529a201e75d93cad7708b5e4a60e5e6f36bd23e3","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e1a52d6c6373419a227b562a529a201e75d93cad7708b5e4a60e5e6f36bd23e3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Extractor/Adapter/Interface.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean
import Mathematics.Extractor.Module

/-!
# Version-adapter interface

Internal Lean APIs are confined behind executable adapters.  The stable ledger
schema does not depend on the representation chosen by one Lean release.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LoadedEnvironment.Variante1a52d6c6373419a227b562a529a201e75d93cad7708b5e4a60e5e6f36bd23e3

namespace Mathematics.Extractor

structure LoadedEnvironment where
  environment : Lean.Environment
  selectedModule : Lean.Name

structure AdaptedConstant where
  info : Lean.ConstantInfo
  ownerModule : Option Lean.Name
  visibility : Option VisibilityClass
  sourceRange : Option SourceRange

structure AdaptedModule where
  name : Lean.Name
  directImports : Array ImportRecord
  effectiveImports : Array EffectiveImportRecord

structure LeanVersionAdapter where
  version : Version
  loadModule : Lean.Name → IO LoadedEnvironment
  constants : LoadedEnvironment → IO (Array AdaptedConstant)
  modules : LoadedEnvironment → IO (Array AdaptedModule)
  ownerModule? : LoadedEnvironment → Lean.Name → IO (Option Lean.Name)
  visibility? : LoadedEnvironment → Lean.Name → IO (Option VisibilityClass)
  sourceRange? : LoadedEnvironment → Lean.Name → IO (Option SourceRange)
  attributes : LoadedEnvironment → Lean.Name → IO (Array AttributeRecord)

end Mathematics.Extractor
```
