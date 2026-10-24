# Complete source: GRWTSK.Interfaces.EndpointLogRefinementCore

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `663ae14216a7313a2c903c5b14db15d40c7b952f` · SHA-256 `75b2cdbccd0982ae6befc012888a7f63500287b5cb84e3b9c3861e537cd20f34`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Interfaces.EndpointCorrectedNewtonCandidateCore
import GRWTSK.NumberTheory.Zeta.Riemann.Checks.EndpointLogRefinement
import GRWTSK.Analysis.ErrorBounds.RationalAtanhPower

/-!
# Isolated atanh/rounding refinement for the endpoint-corrected candidate

The prior candidate still requires CenterEstimates. This import supplies neither
its Euler--Maclaurin remainder nor its complete finite zeta jet. Existing targets
and the public root remain unchanged. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
```
