# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectCompactProfileWithoutCompactDefectsPositive.Variant856773b71017de160a412c16e6abe10e4f62eec79b6a4cd4934d0a6d144ef294

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5d6e7160f92b46a67bfdd66f7e025131f41e4aed` · SHA-256 `856773b71017de160a412c16e6abe10e4f62eec79b6a4cd4934d0a6d144ef294`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

open GRWTSK.Algebra.KTheory.BoundedKasparovCycle
universe u v
variable {A : Type u} [Semiring A]
variable {H : Type v} [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]
-- Exact operator laws supply genuine compact defect proofs.
example (X : ExactCycle A H) : Cycle A H := X.toCycle
```
