# `GRWTSK.ZeroCountCertificates.allZerosReal_iff_cofinal_hermite`

Local attribution: grwtsk contributors. Date: 2026-11-11.

Canonical source: [ZeroDivisorHermiteReturn.lean](../ZeroDivisorHermiteReturn.lean).
Fully qualified declaration: `GRWTSK.ZeroCountCertificates.allZerosReal_iff_cofinal_hermite`.
Module SHA-256: `a66819f6c780c44f3778f688b05a7379d5e043f359849f5d5a68942d49e57fb1`.
Git blob SHA-1: `3db00cc8c884acfe5ce8db3d8d79ceaf05fcfac0`.

## Exact statement

For an arbitrary family `F : kappa -> C -> C`, windows `D : kappa -> N -> Set C` and positive natural finite divisors, suppose: every source zero lies in some window; each divisor support is exactly the zero set of that family member in its window; and every divisor support is conjugation closed. Then all zeros of all family members are real iff all the corresponding complete multiplicity-sized real-part Hermite matrices are nonnegative on every real coefficient vector.

No assumption named Hermite converse is included: the new finite theorem supplies it. Universal matrix positivity and exact zero coverage remain genuine hypotheses of the reverse implication, not consequences of finite samples.

## Primary analytical argument

Global zero reality restricts to each exactly identified support, yielding its matrix nonnegativity. Conversely a nonnegative divisor matrix implies real support by the new interpolation proof. Equivalently it gives the existing exact count-saturation equality. Apply `allZerosReal_of_cofinal_saturation`: put any selected zero in a covered window and conclude that it is real.

Natural positive weights ensure `card support <= totalCount`. Repeated and central zeros remain allowed. `IdentifiesZeros` identifies support locations only; identifying the supplied natural multiplicities with actual analytic orders is still an additional analytic obligation. Matrix moments require all powers through `2n-2` when the multiplicity-sized matrix is `n` by `n`.

## Provenance and comparison

The direct project source is [ZCERT-1 section 7](https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/blob/b8c773f7847126518bcc20f3e37d1223af889cf4/research/06-weil-spectral/certified-zero-counts/README.md), with sections 5--6 and 8 supplying count and error interfaces. The historical written claim is not modified or promoted.

The finite ingredient is classical: Melvyn B. Nathanson, [*The Hermite-Sylvester criterion for real-rooted polynomials*, arXiv:1911.01745v2](https://arxiv.org/pdf/1911.01745v2), Lemmas 1--2 and Theorem 1, pp. 2--3; PDF cover date November 26, 2019. The versioned PDF was inspected but is not redistributed, and its byte checksum is unavailable. The cofinal equivalence is a local conditional source-return consequence, not a new theorem about arithmetic positivity.

Formal-source inspection base: `grwtsk/math@5f66eb82a40921253664f53602851091ccd01d94`. Lean `v4.34.1`; mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Dependencies are the existing `ZeroCountCertificates`, the new `HermiteRealRootCriterion`, and Program 2 `WeilNegativeWitness` for its actual continued Dirichlet L-function target. Program 10's exact dyadic-error consumer is reused in the singular-matrix semantic criterion. Program 4's newly inspected `finiteDivisor_source_return` at `c6f931e6ce84dc755c001176cc1d98b976f2ad7c` transports the same divisor with analytic orders and is a compatible future supplier; it is not assumed executed or independently verified here.

## Consumer and assurance boundary

The final declaration `dirichlet_criticalStripStatement_of_hermite_certificates` returns this finite method to `DirichletCharacter.LFunction` on the open critical strip using the existing coordinate inverse. It does not conclude an all-zero statement for an uncompleted L-function, include trivial zeros, or assert boundary-zero exclusion.

Still required: actual source normalization and conjugation facts; zero-free contour choices; rigorous full arithmetic evaluator and derivative/remainder bounds; argument principle and pole-corrected moment equality; analytic multiplicity identification; complete cofinal coverage; and a proof producing all-window/all-character matrix positivity. A finite prefix does not supply the final universal quantifiers. Full inertia and effective rational negative-witness search remain distinct work. No RH/GRH proof is claimed.

## Evidence and reproduction

`FORMAL_SOURCE_CANDIDATE`. Source-text integrity checks and Git-object hash agreement are not Lean parsing. Elaboration/build, fresh kernel replay, transitive axiom audit, independent analytical review, independent reproduction and arithmetic contour certification are `NOT_RUN`. Imported local candidates retain their evidence status. Canonical Noe proof-automation access was unavailable at `0126ba445446dea25047a89884df1adf6b10251a`; dependent execution was not dispatched.

From a clean checkout of the publication commit with its pinned dependencies, the targeted command is:

```sh
lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.ZeroDivisorHermiteReturn
```

The command was not run here. Fully qualified declarations in the individual records are later source-bound kernel/axiom-audit targets. Ordinary publication commit/tree/diff observations are recorded in [math issue 1806](https://github.com/grwtsk/math/issues/1806); research coordination is [issue 48](https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/issues/48). Operational execution artifacts belong in Noe, not this source record.
