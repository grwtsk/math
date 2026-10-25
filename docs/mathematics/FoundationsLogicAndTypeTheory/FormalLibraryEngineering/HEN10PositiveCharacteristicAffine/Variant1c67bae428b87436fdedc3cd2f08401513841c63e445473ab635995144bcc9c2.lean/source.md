# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HEN10PositiveCharacteristicAffine.Variant1c67bae428b87436fdedc3cd2f08401513841c63e445473ab635995144bcc9c2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9e5d9620a9d68bbe31137376dbc1998eda78a728` · SHA-256 `1c67bae428b87436fdedc3cd2f08401513841c63e445473ab635995144bcc9c2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Algebraization.Foundations

namespace FCRS.Algebraization.Theorems

/-- HEN-5 in the proposal: the established positive-characteristic affine input. -/
theorem hen10_positiveCharacteristicAffine
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S) :
    HEN10Claim S :=
  registry.hen10

end FCRS.Algebraization.Theorems
```
