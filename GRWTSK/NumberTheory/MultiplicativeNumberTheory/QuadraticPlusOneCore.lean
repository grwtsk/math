/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.QuadraticPlusOneLocalRoots
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.QuadraticPlusOneResidueCounting
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.QuadraticGaussianLine
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.QuadraticPrimeBoundary
import GRWTSK.NumberTheory.MultiplicativeNumberTheory.QuadraticPlusOneControls

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
