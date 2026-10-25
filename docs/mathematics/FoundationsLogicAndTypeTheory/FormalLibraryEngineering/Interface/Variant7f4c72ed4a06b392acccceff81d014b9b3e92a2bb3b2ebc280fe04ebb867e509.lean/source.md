# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Interface.Variant7f4c72ed4a06b392acccceff81d014b9b3e92a2bb3b2ebc280fe04ebb867e509

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `841d7749a110a44b03fd0d4944d008483b61ad62` · SHA-256 `9ff2a4e72a1c5d62ca4eb3b65397ede835c95988dc2870d5fb8cc8d3e242fef9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LoadedEnvironment.Variant49fab7b4a9f3b70745542beb47fc4e3d84b1c0d504e04f8df047fdc8f3b34b09","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"49fab7b4a9f3b70745542beb47fc4e3d84b1c0d504e04f8df047fdc8f3b34b09","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.LoadedEnvironment.Variant49fab7b4a9f3b70745542beb47fc4e3d84b1c0d504e04f8df047fdc8f3b34b09","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"49fab7b4a9f3b70745542beb47fc4e3d84b1c0d504e04f8df047fdc8f3b34b09","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/Extractor/Adapter/Interface.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean
import MathDiscovery.Extractor.Module

/-!
# Version-adapter interface

Internal Lean APIs are confined behind executable adapters.  The stable ledger
schema does not depend on the representation chosen by one Lean release.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LoadedEnvironment.Variant49fab7b4a9f3b70745542beb47fc4e3d84b1c0d504e04f8df047fdc8f3b34b09

namespace MathDiscovery.Extractor

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

end MathDiscovery.Extractor
```
