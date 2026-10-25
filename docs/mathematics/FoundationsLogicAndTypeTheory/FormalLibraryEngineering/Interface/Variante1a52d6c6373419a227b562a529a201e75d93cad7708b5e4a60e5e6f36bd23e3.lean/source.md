# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Interface.Variante1a52d6c6373419a227b562a529a201e75d93cad7708b5e4a60e5e6f36bd23e3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8373f9b87079b6ec93b6463773206d1eafb80dab` · SHA-256 `e1a52d6c6373419a227b562a529a201e75d93cad7708b5e4a60e5e6f36bd23e3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean
import Mathematics.Extractor.Module

/-!
# Version-adapter interface

Internal Lean APIs are confined behind executable adapters.  The stable ledger
schema does not depend on the representation chosen by one Lean release.
-/

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
