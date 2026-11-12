# pairing_bounds_of_compact_samples

Local attribution: grwtsk contributors.

Declaration: `GRWTSK.NumberTheory.CompactConvolutionWeilWitness.pairing_bounds_of_compact_samples`
in [CompactConvolutionWeilWitness.lean](../CompactConvolutionWeilWitness.lean).
Candidate Git blob `7e9b0c0d64f791b55ee0db43165b7fb208607d54`, SHA-256 `5197cb7d633c88ce3a6f37395a93122cd84cf0901fe2e19bc5943efe39d21d77`.
Lean `v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.

Source: grwtsk contributors, *Compact convolution witnesses for the full primitive
Weil form*, version 1 (2026-11-11), Sections 4–5, (8), (14)–(19).
Revision `daa8c88b644cf40ada77e76739d84f749068ffde`, blob `8d0cf2b78101cd29a5785fcd8016408cb65bbdd5`,
SHA-256 `005ad4cb446b3e72a92b63ebe70c0ca6439fb83b250c117f976a34accd316e45`.
[Exact source edition](https://github.com/grwtsk/math/blob/daa8c88b644cf40ada77e76739d84f749068ffde/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CompactConvolutionWeilWitness.md).

The candidate consumes a conjugation-closed finite head, the exact signed head
value (16), and preservation of the combined seed values on that head. Off the
head it uses the selector bound `‖G‖ ≤ 1/2` at both reflected indices. Each seed
has a bound with the radial factor `1 / (1 + ‖z‖)^2`. Conjugation preserves that
factor. The nonnegative multiplicity weights are retained in every summand and in
the supplied summable fourth-order moment bounded by `M`. Involution and
invariance of the weights are retained as source assumptions. The norm estimate
itself uses only closure and radial invariance under reflection.

Split the signed summand into its finite restriction and the pairing of samples
extended by zero on the head. Conjugation closure eliminates mixed head and tail
terms. Finite Cauchy–Schwarz bounds the tail sample by `(1/2)^N` times the
product of the two square-root costs and the radial factor. Apply the existing
`WeightedConjugatePairing.summable_norm_term` and `norm_pairing_le` to those
samples. The two factors of `(1/2)^N` give `1/4^N`; the squared costs give
`M * (∑ k, D k^2) * (∑ k, ‖u k‖^2)`. The real part of the error is at most its
norm, so `2*C ≤ 4^N` leaves the half-margin for each coefficient vector.
At `N = 0` the bound retains the entire moment budget. A partial head can be used
only if the selector estimate holds throughout its complement. A positive
norm-square identity in place of the signed pairing would lose the negative head.

This is a local consequence of the quantitative source argument. The source
note credits Jean-Francois Burnol's [*The Explicit Formula in simple terms*,
arXiv:math/9810169v2, pp. 5–6](https://arxiv.org/abs/math/9810169v2) for the
interpolation and convolution-power mechanism. The candidate does not import
a proof of Burnol's construction.

The eventual consumer is the `hdetect` premise of
[`criticalStripStatement_of_detection_and_nonnegativity`](../WeilNegativeWitness.lean).
The existing [radial head bound](../../WeilDirichletWitnessTail.lean) is a
comparator for a single fixed test with a height-cutoff error. Here the head and
seeds remain fixed while the exponent increases, with the exact normalized head
identity supplied for the chosen vector.

Still required for that return: compact interpolation and its seed costs, a
complete radial head with the normalized pair-block evaluation, the
convolution-transform and support identities, and identification of these
abstract weighted samples and their moment with the actual primitive divisor,
including conductor-one zeta. The arithmetic return must use the pole-inclusive
formula with all prime powers, conductor and parity, and the
[inverse-character orientation](../../DirichletWeilIntegrand.provenance/CHARACTER-ORIENTATION-v1.md)
for the canonical nonprincipal arithmetic value. Global arithmetic
nonnegativity is independent. The support, pole-neutral constraints, Rayleigh
budget, and negative-index equality in the note are outside these declarations.

Coordination: [math issue 1801](https://github.com/grwtsk/math/issues/1801).
Elaboration, fresh kernel replay, transitive axiom audit, independent analytical
review, and executable arithmetic certification: **NOT_RUN**.
Source candidate. Originality unassessed.
