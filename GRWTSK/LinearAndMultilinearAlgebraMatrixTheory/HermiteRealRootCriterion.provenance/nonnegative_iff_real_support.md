# `GRWTSK.HermiteRealRootCriterion.nonnegative_iff_real_support`

Local attribution: grwtsk contributors. Date: 2026-11-11.

Canonical source: [HermiteRealRootCriterion.lean](../HermiteRealRootCriterion.lean).
Fully qualified declaration: `GRWTSK.HermiteRealRootCriterion.nonnegative_iff_real_support`.
Module SHA-256: `c2c10de62e5e91c3023dc6c597c949fc5a8a971fa58433b32bb32c600c8c2dfa`.
Git blob SHA-1: `dfdecb18ca898fa46e22e7745826fb4d56cee204`.

## Statement and quantifiers

For every finite conjugation-closed `S` in the complex numbers, every real weight function `w` strictly positive on `S`, and every natural `n >= card S`, the real-part Hermite matrix

`H_ij = sum_{z in S} w(z) Re(z^(i+j))`, for `0 <= i,j < n`,

has nonnegative quadratic value on every real vector iff every support location is real. Empty support is admitted. Repeated analytic zeros may be represented by positive multiplicity weights, but equality of the weights with actual analytic orders is not supplied by this algebraic statement.

## Primary analytical argument

A nonreal `z0` has a distinct conjugate in `S`. Complex Lagrange interpolation supplies the conjugation-compatible values `i,-i,0` at the pair and remaining locations. Taking real parts of the coefficients preserves these values by the explicit identity `2 h(z)=p(z)+conjugate(p(conjugate z))`; the degree bound fits `n` coefficient slots. In the existing ordinary-square moment identity the corresponding vector has exact value `-(w(z0)+w(conjugate z0))<0`, contradicting nonnegativity. Conversely, if every location is real, the same identity is a sum of nonnegative weighted real squares.

No simplicity, nonsingular matrix or root-separation premise is used. Equal pair weights are not needed for this real-part criterion. They are needed to identify the underlying complex moments themselves as real. Neither this criterion nor its negative-index-zero consequence proves the full inertia formula.

## Prior-art comparison and dependencies

Melvyn B. Nathanson, [*The Hermite-Sylvester criterion for real-rooted polynomials*, arXiv:1911.01745v2](https://arxiv.org/pdf/1911.01745v2), Lemmas 1--2 and Theorem 1, pp. 2--3, PDF cover date November 26, 2019, is the exact external comparison. The PDF was inspected, including the proof pages; its bytes are not redistributed and its byte checksum is unavailable. This is classical mathematics; no novelty is asserted for realification, positive weights or coefficient-budget organization.

The local written source is [ZCERT-1 sections 6--8](https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/blob/b8c773f7847126518bcc20f3e37d1223af889cf4/research/06-weil-spectral/certified-zero-counts/README.md). Its historical statement and evidence status are unchanged. Formal-source comparison base: `grwtsk/math@5f66eb82a40921253664f53602851091ccd01d94`.

Imports reuse the existing Program 6 `HermiteMomentCertificates`, Program 3 `NegativeIndex`, and Program 10 `DenseNonnegativeApproximation`. Program 2's `WeilNegativeWitness` uses different interpolation data, opposite real pair values, for a signed Weil pairing. That construction is not silently substituted for this real-polynomial separator. Program 5's `QuadraticClusterReality` was compared at the same revision; it supplies the degree-two criterion and collision control, not this arbitrary finite-support converse.

Lean: `v4.34.1`. Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`. The interpolation and expansion dependencies are `Lagrange.eval_interpolate_at_node`, `Lagrange.degree_interpolate_lt`, `Polynomial.eval_eq_sum_range'`, and `Fin.sum_univ_eq_sum_range`. Existing code search returned no matches even for known modules, so no exhaustive-declaration-absence claim is made.

## Hostile checks and source return

The same module retains three separate controls: one coefficient slot for the two nonreal nodes `+i,-i` gives a nonnegative truncation; the unpaired singleton `i` gives a nonnegative one-by-one matrix; and zero weights hide the nonreal pair in a zero matrix. These delimit dimension, conjugation closure and strict weight positivity. They are synthetic Lean source proofs, not executed arithmetic experiments.

The mathematical consumer is `ZeroDivisorHermiteReturn`: positive natural multiplicities provide enough coefficient slots, and exact support identities return the finite sign criterion to the original function. Argument-principle formalization, full pole-corrected contour moments, actual arithmetic source evaluation, analytic multiplicity identification, effective rational witnesses, full inertia and universal arithmetic positivity remain separate obligations. A negative Hermite vector is not automatically a negative test for the full pole-inclusive Weil form.

## Evidence and reproduction

`FORMAL_SOURCE_CANDIDATE`. Source-text token/count checks and Git blob identity checks are not Lean parsing. Elaboration/build, fresh kernel replay, transitive axiom audit, independent analytical review, independent reproduction and arithmetic contour certification are `NOT_RUN`. Imported local candidates are not promoted by reuse. No proof automation was dispatched; canonical Noe skill access remained unavailable at `0126ba445446dea25047a89884df1adf6b10251a`.

From a clean checkout of the publication commit with its pinned dependencies, the targeted command is:

```sh
lake build GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.HermiteRealRootCriterion
```

This command was not run here. The fully qualified declarations in the individual records are the later kernel/axiom-audit targets. Publication commit, current-parent reconciliation and actual Git observations are recorded in [math issue 1806](https://github.com/grwtsk/math/issues/1806). Operational proof-execution artifacts belong in Noe; this document dispatches no execution. Research coordination is [issue 48](https://github.com/grwtsk/knot-linked-number-systems-and-their-geometry/issues/48).
