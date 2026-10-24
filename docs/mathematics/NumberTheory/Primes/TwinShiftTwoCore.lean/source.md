# Complete source: GRWTSK.Interfaces.TwinShiftTwoCore

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `11629a9dee939aad617c694275ac5869211c6110` · SHA-256 `4606ff490e3b26cca59389a791f9bd6859a1fad3434f394c6ccf1619500a08fc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Primes.TwinShiftTwoCRT
import GRWTSK.NumberTheory.Primes.TwinMangoldtExpansion
import GRWTSK.NumberTheory.Primes.TwinPrimePowerBoundary
import GRWTSK.NumberTheory.Primes.Checks.TwinShiftTwoControls

set_option autoImplicit false

/-!
# Isolated twin-prime shift-two arithmetic root

This source-only root collects the exact CRT compatibility and cutoff count,
the finite Möbius-log divisor expansion of the shift-two Mangoldt correlation,
the small-divisor/signed-residual split, and the complete proper-prime-power
correction boundary.

It is intentionally not imported by `GRWTSK.lean`.

No parity-breaking estimate, prime-progression theorem, bilinear residual
bound, finite-exception result, or twin-prime theorem is supplied.
-/
```
