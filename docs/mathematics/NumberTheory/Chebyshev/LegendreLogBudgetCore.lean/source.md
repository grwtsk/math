# Complete source: GRWTSK.Interfaces.LegendreLogBudgetCore

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f4e05fd387a5e1e0e88ec08e3d34eb47520d2cbc` · SHA-256 `ebc80d176469d69fbb0cb3564d7154d4eb3f7dd53a39311682a0c640ab8cce15`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Interfaces.LandauPrimeCounts
import GRWTSK.Interfaces.LegendrePrimePowerBridge
import GRWTSK.NumberTheory.Chebyshev.LegendreLogBudget
import GRWTSK.NumberTheory.Chebyshev.Checks.LogBudgetIntegrationControls

/-!
# Isolated logarithmic correction / prime-witness integration

Both original count and correction controls remain in the import closure.
Five producer modules from PR #256 are retained byte-for-byte at their existing
mathematical paths. This root is not imported by GRWTSK.lean. All inherited and
new source remains NOT_RUN / NOT_KERNEL_AUDITED. No explicit-formula supplier,
zero tail, actual approximation error or every-interval strict margin is created.
-/
```
