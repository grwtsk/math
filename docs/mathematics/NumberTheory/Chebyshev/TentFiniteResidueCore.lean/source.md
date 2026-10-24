# Complete source: GRWTSK.Interfaces.TentFiniteResidueCore

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cf4bd05b815cacc48317675c76971dc90e772f37` · SHA-256 `38a915c1d013080c0e8cf6a2253e9604a018b07bc8d9f9ea2b5cb150b3298ece`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Interfaces.TentPoleSubtractionCore
import GRWTSK.Analysis.Real.CauchyEdgePrimitives
import GRWTSK.Analysis.Complex.RectangularCauchyKernel
import GRWTSK.NumberTheory.Chebyshev.TentFiniteResidues
import GRWTSK.NumberTheory.Chebyshev.Checks.RectangularResidueControls

/-! Isolated finite rectangular residue target. Not imported by GRWTSK.lean.
Finite normalization does not discharge the remaining infinite boundary limits,
actual zero-count bound, certified finite evaluation or prime margins.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. -/
```
