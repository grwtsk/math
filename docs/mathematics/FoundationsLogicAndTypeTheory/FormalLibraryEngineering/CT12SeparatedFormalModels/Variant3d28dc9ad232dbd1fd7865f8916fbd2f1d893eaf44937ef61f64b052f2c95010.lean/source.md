# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CT12SeparatedFormalModels.Variant3d28dc9ad232dbd1fd7865f8916fbd2f1d893eaf44937ef61f64b052f2c95010

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bceef60c92e3fec90cc9e3091e123da72c3402ec` · SHA-256 `3d28dc9ad232dbd1fd7865f8916fbd2f1d893eaf44937ef61f64b052f2c95010`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FCRS.Foundations

namespace FCRS.Theorems

/--
CT-12: separated formal models.

This theorem is a proof-producing projection from the explicit external
`TheoremRegistry`; it introduces no global axiom.
-/
theorem ct12_separatedFormalModels
    (S : RealizationSystem) (registry : TheoremRegistry S) :
    CT12Claim S :=
  registry.ct12

end FCRS.Theorems
```
