# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HEN16PositiveCharacteristicRoute.Variant03ec5c65e3e0b48acdee4bbbae34f578f446f27df20a2568c44185cc2ec4d700

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2ae599b6c992cf9e7a692228d9048889b13e90b0` · SHA-256 `03ec5c65e3e0b48acdee4bbbae34f578f446f27df20a2568c44185cc2ec4d700`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/--
Conditional positive-characteristic globalization: the established affine
input plus P1--P4 route evidence produces HSG.
-/
theorem hen16_positiveCharacteristicRoute
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S) :
    HEN16Claim S :=
  registry.hen16

end FCRS.Algebraization.Theorems
```
