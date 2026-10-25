# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectSourceMetadataAsProofPositive.Variant4b76eadd278f9f01df9d0bd0ab408bf452cb3f327ed795bcc85e6ad941d697b3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fdde775e96c6bbcc719930a30a1328faaf087e4d` · SHA-256 `4b76eadd278f9f01df9d0bd0ab408bf452cb3f327ed795bcc85e6ad941d697b3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

noncomputable section

open GRWTSK.Geometry.Hodge
example : SourceBoundRationalHodgeTheorem Examples.lineHodgeData :=
  Examples.lineSourceTheorem
example : Examples.lineHodgeData.IsSurjective :=
  Examples.lineSourceTheorem.surjective
```
