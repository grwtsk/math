# Complete source: GRWTSK.Analysis.Energy.Checks.Negative.WrongPhase

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6c0e143ea1e692d33d3f01d4a490fbb9f1455c87` · SHA-256 `bf13ad1ddc0561fca9b54c9b4a34a129dac97ba1f6d0f7c403fdcf51a736c6f7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.AlmostMathieu
open GRWTSK.LinearAlgebra.AlmostMathieu

-- Must fail: multiplying the unscaled phase by 2π changes equation (1.1).
example (α coupling θ : ℝ) (n : ℤ) :
    potential α coupling θ n =
      2 * coupling * Real.cos (2 * Real.pi * (α * n + θ)) := rfl
```
