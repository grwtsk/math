# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectCompactProfileWithoutCompactDefectsNegative.Variant753c115fa60c6ba8e06c77b7aa374086fdd3bbce99fc1fe935f158292e21e1f0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `409916fbcf4867b54dc2eaa61ffb5ca22cfe9c43` · SHA-256 `753c115fa60c6ba8e06c77b7aa374086fdd3bbce99fc1fe935f158292e21e1f0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

open GRWTSK.Algebra.KTheory.BoundedKasparovCycle
universe u v
variable {A : Type u} [Semiring A]
variable {H : Type v} [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]
-- A profile records intended analytic data; it cannot provide compactness.
example (X : ExactCycle A H) : Cycle A H where
  representation := X.representation
  operator := X.operator
  parity := X.parity
  adjointDefectCompact := GRWTSK.Algebra.KTheory.FormalKK.analyticKasparovProfile
  squareDefectCompact := X.toCycle.squareDefectCompact
  commutatorCompact := X.toCycle.commutatorCompact

-- Each defect has its own proof boundary; neither remaining field accepts the profile either.
example (X : ExactCycle A H) : Cycle A H where
  representation := X.representation
  operator := X.operator
  parity := X.parity
  adjointDefectCompact := X.toCycle.adjointDefectCompact
  squareDefectCompact := GRWTSK.Algebra.KTheory.FormalKK.analyticKasparovProfile
  commutatorCompact := X.toCycle.commutatorCompact

example (X : ExactCycle A H) : Cycle A H where
  representation := X.representation
  operator := X.operator
  parity := X.parity
  adjointDefectCompact := X.toCycle.adjointDefectCompact
  squareDefectCompact := X.toCycle.squareDefectCompact
  commutatorCompact := GRWTSK.Algebra.KTheory.FormalKK.analyticKasparovProfile
```
