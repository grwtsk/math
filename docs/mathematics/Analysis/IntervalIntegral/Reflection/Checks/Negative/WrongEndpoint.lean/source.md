# Complete source: GRWTSK.Analysis.IntervalIntegral.Reflection.Checks.Negative.WrongEndpoint

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ea769d3ae0ff47ab602cb76cad6bb5f019cac609` · SHA-256 `27f32fc29af16254507a249a5a6e6abec5ba921d592d9cdf849878dd1fbb87a5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Analysis.IntervalReflection
open GRWTSK.Analysis.IntervalReflection MeasureTheory
example (a b t : ℝ) : intervalReflection a b t = a - t := by rfl
```
