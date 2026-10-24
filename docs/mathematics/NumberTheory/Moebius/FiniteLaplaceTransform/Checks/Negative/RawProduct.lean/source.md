# Complete source: GRWTSK.NumberTheory.Moebius.FiniteLaplaceTransform.Checks.Negative.RawProduct

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6c0001d07aa566e374035f9c117556b49a2d0474` · SHA-256 `c9562ad4c53e5d88d319ce6ae42e1dbfd323c15a91dbbd338aa75f80ccb69cff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.NumberTheory.Moebius.FiniteLaplaceTransform
open GRWTSK.RiemannHypothesis.CCC
example (s : ℂ) : pickupDirichletPrefix 3 s =
    (1-Complex.exp (-s*Real.log 2))*(1-Complex.exp (-s*Real.log 3)) := by
  exact cutoff_three_not_raw_product s
```
