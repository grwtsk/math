# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectUnboundedCycleWithoutDomainInvariancePositive.Variant74943e974eacfe0b527281ce7b9ff10a687e99aadd9f5b181aa562420ded3280

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f2f7b0e8dc0a4ca779789860bad3dae0c1745457` · SHA-256 `74943e974eacfe0b527281ce7b9ff10a687e99aadd9f5b181aa562420ded3280`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

open GRWTSK.Analysis.Operator.UnboundedPort
open GRWTSK.Algebra.KTheory.UnboundedKasparovCycle
universe u v
variable {A : Type u} [Semiring A]
variable {H : Type v} [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]
-- Complete reconstruction preserves every exact domain obligation.
example (X : Cycle A H) : Cycle A H where
  representation := X.representation
  operator := X.operator
  parity := X.parity
  denseDomain := X.denseDomain
  closedGraph := X.closedGraph
  symmetric := X.symmetric
  domainInvariant := X.domainInvariant
  boundedCommutator := X.boundedCommutator
  boundedCommutator_agrees := X.boundedCommutator_agrees
  resolventParameter := X.resolventParameter
  compactResolvent := X.compactResolvent
```
