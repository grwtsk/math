# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Interface.Variant49fab7b4a9f3b70745542beb47fc4e3d84b1c0d504e04f8df047fdc8f3b34b09

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ffcc938783f54d1e8dc0fda5ca06da643f7d12bc` · SHA-256 `49fab7b4a9f3b70745542beb47fc4e3d84b1c0d504e04f8df047fdc8f3b34b09`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean
import MathDiscovery.Extractor.Module

/-!
# Version-adapter interface

Internal Lean APIs are confined behind executable adapters.  The stable ledger
schema does not depend on the representation chosen by one Lean release.
-/

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
