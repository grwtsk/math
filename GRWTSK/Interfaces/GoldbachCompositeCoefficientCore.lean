/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
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
