# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectUnboundedCycleWithoutDomainInvarianceNegative.Variant9f094d7bec9572b0b9c726d94f143ba04e3417d84188209e76ed734f1b65cab4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e2a62e4957cd1596182ddc1f36a8a98b24211811` · SHA-256 `9f094d7bec9572b0b9c726d94f143ba04e3417d84188209e76ed734f1b65cab4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

open GRWTSK.Analysis.Operator.UnboundedPort
open GRWTSK.Algebra.KTheory.UnboundedKasparovCycle
universe u v
variable {A : Type u} [Semiring A]
variable {H : Type v} [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]
-- Hostile mutation: all other fields are retained, but domain invariance is omitted.
example (X : Cycle A H) : Cycle A H where
  representation := X.representation
  operator := X.operator
  parity := X.parity
  denseDomain := X.denseDomain
  closedGraph := X.closedGraph
  symmetric := X.symmetric
  boundedCommutator := X.boundedCommutator
  boundedCommutator_agrees := X.boundedCommutator_agrees
  resolventParameter := X.resolventParameter
  compactResolvent := X.compactResolvent
```
