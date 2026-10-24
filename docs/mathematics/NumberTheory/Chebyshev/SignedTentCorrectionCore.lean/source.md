# Complete source: GRWTSK.Interfaces.SignedTentCorrectionCore

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `47ecbad5da01df56dddc66d139cfb09846974139` · SHA-256 `3535545e54ec3e164d65b5b2bbf704d7a34f91768e4ce8d635f50d3bb4a92048`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Interfaces.CountedTentTailCore
import GRWTSK.Analysis.Real.TentRationalCorrection
import GRWTSK.NumberTheory.Chebyshev.SignedTentCorrection
import GRWTSK.NumberTheory.Chebyshev.Checks.SignedTentCorrectionControls

/-!
# Isolated signed-tent correction target

This root is not imported by GRWTSK.lean. The explicit rational correction
and its lower envelope are supplied; the complete zeta arithmetic identity,
actual divisor count/coverage and strict margins remain separate obligations.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
```
