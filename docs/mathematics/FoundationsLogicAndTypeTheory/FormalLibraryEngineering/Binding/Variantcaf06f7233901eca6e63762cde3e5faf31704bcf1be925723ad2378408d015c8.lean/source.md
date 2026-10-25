# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Binding.Variantcaf06f7233901eca6e63762cde3e5faf31704bcf1be925723ad2378408d015c8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f35126f2400d3f925f554edff86196f60ddc83f6` · SHA-256 `caf06f7233901eca6e63762cde3e5faf31704bcf1be925723ad2378408d015c8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import MathDiscovery.SourceAnalysis.Context

/-! # Exact source/compiled alignment records -/

namespace MathDiscovery.SourceAnalysis

open MathDiscovery

inductive BindingClassification
  | direct
  | generated
  | external
  | sourceOnly
  | ambiguous
  deriving DecidableEq, Repr, Inhabited

structure CommandDeclarationBinding where
  commandId : SourceCommandId
  declarationId : Option ExtractorDeclarationId
  classification : BindingClassification
  evidenceDigest : Digest
  exact : Bool
  deriving DecidableEq, Repr

end MathDiscovery.SourceAnalysis
```
