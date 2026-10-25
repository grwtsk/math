# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Navigation.Variantb0bd3f0d3ee72779a183fca17bd107dad89b71652089136c502dcee9eb261bf5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `459f3468d2128213422736aa4888666cb5688087` · SHA-256 `b0bd3f0d3ee72779a183fca17bd107dad89b71652089136c502dcee9eb261bf5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Oracle.ConceptIR
import Mathematics.Concept.Authority

/-! # Concept navigation, residue, search, and recommendations -/

namespace Mathematics.Oracle

inductive NavigationAuthority
  | navigationOnly
  | candidate
  deriving DecidableEq, Repr

/-- Residual channels are never collapsed into a single untyped score. -/
structure ResidualChannels where
  localResidual : Nat
  coverage : Nat
  sparseSynthesis : Nat
  basisSpan : Nat
  deriving DecidableEq, Repr

structure SearchQuery where
  text : String
  conceptIndexVersion : Digest
  encoderProfile : Digest
  metricProfile : Digest
  deriving DecidableEq, Repr

structure SearchHit where
  concept : ConceptId
  scoreNumerator : Int
  scoreDenominator : Nat
  residuals : ResidualChannels
  authority : NavigationAuthority := .navigationOnly
  deriving DecidableEq, Repr

structure Recommendation where
  concept : ConceptId
  reason : String
  expectedResidualReduction : ResidualChannels
  authority : NavigationAuthority := .navigationOnly
  deriving DecidableEq, Repr

structure InventionProposal where
  candidate : ConceptIR
  admissionStatus : String := "not-reviewed"
  authority : NavigationAuthority := .candidate
  deriving DecidableEq, Repr

end Mathematics.Oracle
```
