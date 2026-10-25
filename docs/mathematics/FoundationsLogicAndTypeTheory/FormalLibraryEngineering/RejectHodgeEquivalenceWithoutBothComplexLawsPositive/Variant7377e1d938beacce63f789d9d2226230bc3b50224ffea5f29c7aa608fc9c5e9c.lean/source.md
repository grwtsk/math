# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectHodgeEquivalenceWithoutBothComplexLawsPositive.Variant7377e1d938beacce63f789d9d2226230bc3b50224ffea5f29c7aa608fc9c5e9c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `561cbb6fae9cb2c44954179e3c9409ba90431fbb` · SHA-256 `7377e1d938beacce63f789d9d2226230bc3b50224ffea5f29c7aa608fc9c5e9c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

noncomputable section

open GRWTSK.LinearAlgebra.FramedFiberPort
open GRWTSK.Geometry.Hodge.FiniteEdgeRealization
example : HodgeEquiv edgeHodge edgeHodge := HodgeEquiv.refl edgeHodge
example (x : ℚ × ℚ) : edgeHodge.IsHarmonic0 x ↔
    edgeHodge.IsHarmonic0 ((HodgeEquiv.refl edgeHodge).equiv0 x) :=
  (HodgeEquiv.refl edgeHodge).harmonic0_iff x
```
