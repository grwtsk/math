/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Primes.QuadraticPlusOneLocalRoots
import GRWTSK.NumberTheory.Primes.QuadraticPlusOneResidueCounting
import GRWTSK.NumberTheory.Primes.QuadraticGaussianLine
import GRWTSK.NumberTheory.Primes.QuadraticPrimeBoundary
import GRWTSK.NumberTheory.Primes.Checks.QuadraticPlusOneControls

set_option autoImplicit false

/-!
# Isolated `n^2 + 1` local-arithmetic and Gaussian-line root

This source-only root collects local roots and coprime CRT multiplicativity,
exact finite residue-block counts, the thin Gaussian norm and multiplication
constraints, and the strict prime-value correction boundary.

It is intentionally not imported by `GRWTSK.lean`.

No prime-power lifting theorem, polynomial-sieve estimate, thin Gaussian
bilinear bound, finite-exception result, or quadratic-prime theorem is
supplied.
-/
