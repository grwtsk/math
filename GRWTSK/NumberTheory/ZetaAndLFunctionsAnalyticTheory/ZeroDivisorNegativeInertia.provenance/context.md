# Source-bound finite Hermite negative-inertia increment

Local mathematical attribution: grwtsk contributors.

Canonical source: [../ZeroDivisorNegativeInertia.lean](../ZeroDivisorNegativeInertia.lean). Namespace `GRWTSK.ZeroCountCertificates.FiniteDivisor`. 4 theorem declarations; every declaration has its own adjacent record. Exact UTF-8 source: Git blob `d35946b47da0ce3e92274048f30445cfc1f7a86d`, SHA-256 `f82b8c20cf4563fe7f84c572ebbb6b9f063a52ec811bdc1774ffbfdc24273ac6`.

## Pinned inputs and source ownership

Inspection and cross-program comparison: `grwtsk/math@8d7c8b8084caa6ff3cf6b254da449042617519f8` (2026-11-11). The final publication commit and complete-tree comparison are recorded in math issue #1808. No existing source file is replaced, no default import is promoted, and no dependency pin is changed.

- `HermiteRealRootCriterion.lean`: Git blob `dfdecb18ca898fa46e22e7745826fb4d56cee204`; `exists_real_interpolant`, `evaluation`, `evaluation_re`, `evaluation_im`, and `supportMatrix`.
- `HermiteMomentCertificates.lean`: unchanged complete finite moment identity, real/imaginary evaluation, and real-node evaluation theorem.
- `NegativeIndexBounds.lean`: Git blob `99f3b23af092dc3d74b6f2e55b5dcf66f3c51211`; strict-negative-frame and matching finite-observation bounds. The original scalar-explicit `negativeIndex` is unchanged.
- `ZeroDivisorHermiteReturn.lean`: Git blob `3db00cc8c884acfe5ce8db3d8d79ceaf05fcfac0`; the original divisor matrix and `support_card_le_totalCount`.
- Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Pinned finite-basis coordinates and finite-dimensional injection APIs are reused, with upstream authorship/license unchanged.
- Existing program source: *Typed Mathematical Architecture and Zero-Distribution-Dependent Continuity*, grwtsk contributors, Edition 1.0 (2026-11-10), RP-OC-03. Research issue #43; no Lean source is mirrored into the research repository.

## Mathematical argument and comparison

This module consumes the new generic finite negative-inertia theorem with the existing Program 6 `FiniteDivisor`, `divisorMatrix`, positive natural multiplicities, and support-cardinality bound. It proves the REAL negative index equals the number of DISTINCT upper support locations even when the matrix size is the larger total multiplicity count. The second source result rewrites the upper-support membership using the exact `IdentifiesZeros` equivalence. The source-return result packages that finite set together with the index equality, giving all and only the source zeros in D with positive imaginary part. Two positive divisors with identical support have equal negative index even when their matrix dimensions differ.

This is a local consequence of the finite Hermite formula, not a new arithmetic source construction or an independent proof of interpolation. Program 8 now separately retains actual analytic multiplicities of finite real spectral products (`FiniteSpectralProductMultiplicity.lean`); it is not legitimate to confuse that multiplicity count with negative index. This module preserves that distinction without depending on or promoting Program 8's verification status.

## Source-return boundaries and hostile cases

`IdentifiesZeros` identifies support only. The theorem does not assert multiplicities equal `analyticOrderAt`, that a contour avoids zeros or poles, that all arithmetic zeros are captured by one finite window, or that the divisor came from a certified evaluator. Conjugation closure of the actual transformed source/domain remains explicit; it is not inferred for an arbitrary complex L-function or arbitrary window. In spectral coordinates, positive imaginary part is a specified side of the critical-line displacement, not the ordinary arithmetic zero height.

The result is the real index of the finite real-part Hermite matrix. It is NOT the complex index of the infinite signed Weil form. No pole, conductor, gamma/parity or prime-power term is replaced or discarded because no arithmetic Weil-form identification is asserted. The principal source and all-character/all-window quantifiers remain outside this finite result. Novelty UNASSESSED; no novelty claim, RH/GRH theorem or claim-status promotion.

## Clean-checkout reproduction and evidence

At the published commit recorded in math#1808, obtain the pinned dependencies using the repository's supported setup. With the current applicable canonical proof-execution skill and execution authorization available, check the module explicitly (it is intentionally not added to root imports):

```sh
lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.ZeroDivisorNegativeInertia
lake env lean GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/ZeroDivisorNegativeInertia.lean
```

Then import the module in an audit file and request `#print axioms` for each of:

```lean
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.ZeroDivisorNegativeInertia
#print axioms GRWTSK.ZeroCountCertificates.FiniteDivisor.divisorMatrix_negativeIndex
#print axioms GRWTSK.ZeroCountCertificates.FiniteDivisor.mem_upperSupport_iff_source_zero
#print axioms GRWTSK.ZeroCountCertificates.FiniteDivisor.negativeIndex_counts_source_upper_zeros
#print axioms GRWTSK.ZeroCountCertificates.FiniteDivisor.divisorMatrix_index_eq_of_support_eq
```

Bind any eventual receipt to exact source/toolchain/dependency identities and exit codes. Fresh replay and a transitive dependency/axiom audit require their own evidence; an import or static scan is not a substitute. No generated evaluator, floating-point result, proof certificate, seed or runtime lockfile is claimed by this pure-source increment.

At authoring, no local Lean/Lake executable or verified canonical local skill checkout was found. The prescribed proof-automation skill returned 404 at Noe main `0126ba445446dea25047a89884df1adf6b10251a`; dependent automation was not dispatched. Elaboration/build, fresh kernel replay, transitive axiom audit, independent analytical review, hosted CI and arithmetic numerical certification remain NOT_RUN. Text, source hashes, record coverage and relative links are static publication checks only; their actual outcomes and final branch/commit readback are in math#1808. Existing imported evidence statuses are not promoted.
