# Mirrored prime heat semigroup and source-bounded signed arithmetic

Source: [MirroredPrimeHeatAndSignedReturn.lean](MirroredPrimeHeatAndSignedReturn.lean).
Issue: [math #1845](https://github.com/grwtsk/math/issues/1845).

## Two-sided heat semantics

The requested mirrored heat construction is expressed as two
different mathematical objects. A `TimeSemigroup` is a time-indexed
action with `T(0)=id` and `T(t+s)=T(t)∘T(s)`. It is not
automatically the heat kernel of a positive self-adjoint generator:
generator identification, self-adjointness, strong continuity,
smoothing, and contractivity require their own evidence.

A `MirroredFlow` also has an involutive equivalence J.
The reflected semigroup is defined, not postulated, by
`Tminus(t) = J ∘ Tplus(t) ∘ J`. The source proves the exact
semigroup composition, zero-time identity and intertwining.
An automorphism requires separate proofs that it commutes with
Tplus and with J; only then does the backward intertwining
follow. This avoids inferring an automorphism merely from a
geometric permutation of prime locations.

`SignedKnot PrimeId = Bool × PrimeId` is a formal doubled
orientation. The involution swaps its Boolean sheets, preserving
the **positive prime identity**. It is not an assertion that
negative natural numbers are primes.

## Source-faithful signed Weil comparisons

Suzuki, *Aspects of the screw function corresponding to the
Riemann zeta-function* (2023), Theorem 1.2 and Section 3.2,
https://doi.org/10.1112/jlms.12785, and Suzuki,
*Weil's quadratic form via the screw function*,
arXiv:2606.09096 (2026), Section 1.1, describe the
actual arithmetic signed Weil functional through the source
explicit formula and associated screw-function kernel.
The 2026 work proposes a limiting self-adjoint realization;
its proposed limit must not be treated as a proved operator
identification.

`SignedSourceApproximation` is only a typed *comparison
obligation*. It requires the original source functional,
finite approximation and a certified absolute error bound.
Theorems return BOTH upper and lower bounds to the original
signed source, preserve negative witnesses, and identify exact
source return when the error vanishes. There is **no invented
positive quadratic form** and no claim of signed Weil positivity
from a finite graph Laplacian.

A concrete specialization to `grwtsk/math` source-exact
`WeilZetaOddCriterion.lean` and complete conductor-three
gamma/pole/prime data is an explicit future proof obligation.
The signed form can be indefinite on unrestricted finite tests;
subspace restrictions must be kept in the source.

This module makes no independent claim concerning RH, universal
automorphic/motivic GRH, P=NP, prime-number distribution, or
physical CPU/SSD optimality.

Root toolchain: Lean v4.34.1, Mathlib
d13f23b723b8a846827a245b89c10fc7d3f11612.
New elaboration, kernel replay, axiom audit, independent
review: **NOT_RUN**. Previously checked 59-declaration suite
is separate from this candidate.
