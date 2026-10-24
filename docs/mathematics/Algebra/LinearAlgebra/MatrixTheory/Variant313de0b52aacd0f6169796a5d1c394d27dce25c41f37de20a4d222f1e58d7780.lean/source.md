# Complete source: GRWTSK.Algebra.LinearAlgebra.Matrix.Variant313de0b52aacd0f6169796a5d1c394d27dce25c41f37de20a4d222f1e58d7780

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `29782adc4ab78e262033c66c6fbf651e1fa91489` · SHA-256 `313de0b52aacd0f6169796a5d1c394d27dce25c41f37de20a4d222f1e58d7780`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Kakeya.Berkovich.Skeleton

namespace Think.Kakeya.ForceDensity

structure ForceDensityMatrixLayout where
  rowCount : Nat
  columnCount : Nat
  storageFormat : String
deriving Repr, DecidableEq

def defaultBridgeMatrixLayout : ForceDensityMatrixLayout :=
  { rowCount := 2, columnCount := 2, storageFormat := "dense-128" }

def forceDensityEquilibriumLaw : String :=
  "A_fd q = r"

end Think.Kakeya.ForceDensity
```
