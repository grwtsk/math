# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectUnboundedCommutatorWithoutBoundedExtensionNegative.Variantd8493d22958405f3089b372dfb1c0e31fd4f3821acbe267cf4b6effa0d61dd47

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b1062f1f7ba656625c8696ad6a108d5be8b64d19` · SHA-256 `d8493d22958405f3089b372dfb1c0e31fd4f3821acbe267cf4b6effa0d61dd47`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

open GRWTSK.Analysis.Operator.UnboundedPort
open GRWTSK.Algebra.KTheory.UnboundedKasparovCycle
universe u v
variable {A : Type u} [Semiring A]
variable {H : Type v} [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]
-- Hostile mutation: a selected bounded operator alone does not prove agreement.
example (X : Cycle A H) : Cycle A H where
  representation := X.representation
  operator := X.operator
  parity := X.parity
  denseDomain := X.denseDomain
  closedGraph := X.closedGraph
  symmetric := X.symmetric
  domainInvariant := X.domainInvariant
  boundedCommutator := X.boundedCommutator
  resolventParameter := X.resolventParameter
  compactResolvent := X.compactResolvent
```
