# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestExpFail.Variant2770d0d299fe7ea69400bd04ac7f6ed4e497a7e3a5d04385b6529454bae61683

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cf8997e5e202d6a696e5bef5c53b91735e1f63fe` · SHA-256 `2770d0d299fe7ea69400bd04ac7f6ed4e497a7e3a5d04385b6529454bae61683`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import LeanCert

open LeanCert.Core
open LeanCert.Validity

-- e ≈ 2.7182818284590452...
-- This bound is below e; the checker should reject it even at high Taylor depth.
def I01 : IntervalRat := ⟨0, 1, by norm_num⟩
def exprExp : Expr := Expr.exp (Expr.var 0)

example :
    checkUpperBound exprExp I01 (679570457 / 250000000) { taylorDepth := 50 } = false := by
  native_decide
```
