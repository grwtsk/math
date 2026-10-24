# Complete source: GRWTSK.Interfaces.GoldbachCompositeCoefficientCore

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `79930984a51ad8f2731cf7f39c046ea8ee619049` · SHA-256 `c3effb41e7e873d6fa5b690888f9931eb5ab6780c6fc574a3b42fdec56988c0f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Interfaces.GoldbachFejerCore
import GRWTSK.NumberTheory.Primes.GoldbachCompositeRamanujan
import GRWTSK.NumberTheory.Primes.GoldbachCompositeCoefficient
import GRWTSK.NumberTheory.Primes.GoldbachPrimorialEulerTail
import GRWTSK.NumberTheory.Primes.Checks.GoldbachCompositeCoefficientControls

set_option autoImplicit false

/-!
# Isolated composite-coefficient Goldbach integration root

This source-only root stacks the general Ramanujan divisor formula,
composite-denominator coefficient multiplicativity, the finite primorial
divisor expansion, the explicit denominator tail, and the Fejér Euler-tail
terminal certificate on the inherited Goldbach program.

It is intentionally not imported by `GRWTSK.lean`.

No prime-progression estimate, minor-arc estimate, finite-exception result, or
Goldbach theorem is supplied.
-/
```
