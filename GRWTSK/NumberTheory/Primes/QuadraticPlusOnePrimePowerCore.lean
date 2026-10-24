/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Primes.QuadraticPlusOneCore
import GRWTSK.NumberTheory.Primes.QuadraticPlusOnePrimePowerLift
import GRWTSK.NumberTheory.Primes.QuadraticPlusOnePrimePowerCounts
import GRWTSK.NumberTheory.Primes.Checks.QuadraticPlusOnePrimePowerControls

set_option autoImplicit false

/-!
# Isolated prime-power lifting root for `n^2+1`

This source-only root extends the local-root and Gaussian-line packet with
the direct odd-prime Hensel step, exact prime-power counts, and the exceptional
2-adic branch.

It is intentionally not imported by `GRWTSK.lean`.

No sieve estimate, thin-family bilinear bound, prime-detection correction,
finite-exception theorem, or quadratic-prime theorem is supplied.
-/
