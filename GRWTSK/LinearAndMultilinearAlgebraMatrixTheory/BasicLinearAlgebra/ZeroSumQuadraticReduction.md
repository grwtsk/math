# Exact complex reduction on a zero-sum subspace

Local mathematical attribution: grwtsk contributors.

## Source identity and consumer

The maintained source is [ZeroSumQuadraticReduction.lean](ZeroSumQuadraticReduction.lean),
in the namespace `GRWTSK.LinearAlgebra.ZeroSumQuadraticReduction`.
This local finite algebra result is developed against `grwtsk/math` revision
`2bf99849996eb52b0281003945e5f75fe08dbce6`, preserving its Lean and Mathlib pins.
It is not presented as a newly formalized paper theorem.

The immediate consumer is
[WeilConductorThreeConstrainedCertificates.lean](../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilConductorThreeConstrainedCertificates.lean),
using the exact derivative-cell coordinate identity in
[WeilConductorThreeKernelReturn.lean](../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilConductorThreeKernelReturn.lean).
Those complex cell moments sum to zero. A certificate for the complete
unconstrained sample matrix can therefore impose a stronger condition than
the arithmetic consumer needs. This module removes one coordinate exactly,
retaining every vector in the actual zero-sum subspace and every imaginary
component.

The implementation reuses the existing
[rational enclosure checker and realification](RationalEnclosureCertificates.lean)
and the original
[quadratic certificate core](QuadraticCertificateCore.lean).
The real hyperplane projection in
[SchurObserverCertificate.lean](SchurObserverCertificate.lean) is related prior
local material. Here the added interface is a rectangular complex coordinate
reduction with an explicit inverse on the zero-sum subspace. No second
positivity checker is introduced.

## Primary argument

Let `H` be a complex matrix indexed by `Fin (n+1)`. For a tail vector `z`, define

\[
u_0=-\sum_{i=1}^{n}z_i,\qquad u_i=z_i\quad(1\le i\le n).
\]

This vector has zero sum. Conversely, every zero-sum vector has exactly this
form: its tail determines the zeroth coordinate. The Lean declarations
`sum_zeroSumExtension`, `tailVector_zeroSumExtension`, and
`zeroSumExtension_tailVector` prove these two directions, including the
degenerate case `n=0`.

Substitute the zeroth-coordinate identity in the complete complex pairing.
Expanding the zeroth row, the zeroth column, and their intersection gives

\[
\sum_{i,j=0}^{n}\overline{u_i}H_{ij}u_j
=\sum_{i,j=1}^{n}\overline{z_i}
  (H_{ij}-H_{i0}-H_{0j}+H_{00})z_j.
\]

Both cross terms and the anchor term are necessary. The declaration
`pairing_zeroSumExtension` preserves this complex equality before any real
part is taken. `complexQuadratic_eq_reduced_of_sum_zero` returns the existing
real-valued complex quadratic evaluator on the original vector. Hermitian
symmetry of `H`, when supplied, passes to the reduced matrix; it is not needed
for the equality of the pairings themselves.

An equivalent algebraic cross-check uses the matrix whose columns are
`e_i - e_0`. Its range is precisely the zero-sum subspace, and the reduced
matrix is `T* H T`. The entry formula above is the direct expansion of that
congruence. This is an alternative presentation of the same finite identity,
not an independent proof or an assertion of analytic positivity.

## Rational certificate and metric return

`checked_reduced_enclosure_lower` takes an existing rational packet enclosing
the realification of the reduced matrix and a successful existing Boolean
certificate check. For every original zero-sum complex vector `u`, it gives

\[
-\tau\,Q_G(\operatorname{split}(\operatorname{tail}u))
\le Q_H(u).
\]

The packet's actual metric `G` and tolerance `tau` remain in the conclusion.
No invertibility or identity-metric assumption is introduced. The source
enclosure remains a separate hypothesis, and the checker validates finite
rational algebra rather than transcendental arithmetic.

Two norm facts support identity-metric consumers without changing this general
contract:

\[
Q_I(\operatorname{split}z)=\sum_i|z_i|^2,
\qquad
\sum_i|u_{i+1}|^2\le\sum_i|u_i|^2.
\]

`quadratic_identity_splitVector` includes both the real and imaginary
coordinates with no extra factor of two. `sum_tail_norm_sq_le` uses only the
nonnegativity of the omitted coordinate's squared norm. Neither lemma turns
a finite coordinate metric into physical function energy by itself; the
relevant moment-to-function estimate must be supplied by its analytic
consumer.

## Executable two-point Green control

The namespace `TwoPointGreen` uses the generic matrix

\[
H=\begin{pmatrix}0&-1\\-1&0\end{pmatrix}.
\]

Its reduced matrix is `[2]`, whose realification is `2 I` on the two real
coordinates. The rational packet has zero radius and zero tolerance. Two
copies of each rational unit row provide its Gram factor, so no irrational
square root is needed. `checks` evaluates the existing rational checker with
`decide +kernel`, and `checked_nonnegative` uses that acceptance to prove
nonnegativity for every complex zero-sum input.

The hostile control retains the excluded negative direction:

\[
Q_H(1,1)=-2,\qquad Q_H(1,-1)=2.
\]

Thus the full matrix is indefinite even though the exact constrained
certificate succeeds. Dropping the zero-sum hypothesis would make the claimed
conclusion false. The fixture is a nontrivial finite Green example; it is
**not** an enclosure or positivity certificate for the complete arithmetic
sample matrix.

## Boundaries and verification

The module proves finite algebra and consumes a separately justified enclosure.
It does not produce arithmetic matrix entries, a family of sign certificates
at arbitrarily high accuracy, a uniform physical-energy bound, test-space
exhaustion, an explicit formula, or RH/GRH. A certificate family and its complete
vanishing deficit remain substantive separate requirements.

On 2026-11-20 the exact source passed
`lake build GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.ZeroSumQuadraticReduction`
with exit status zero in 684.021 seconds. The source remained unchanged during
the check, with SHA-256
`eb844cf052e893f9ff8bb4cf9f07b665f630386a555ec5a212274e4a0ff6b609`.
This check includes the executable rational certificate and both signs in the
unconstrained control. No new-source compiler warnings were reported.

The development history also contains a 300-second timed-out initial
full-source attempt and a failed small-import algebra probe. The latter
exposed different nesting orders of finite sums after broad simplification;
explicit one-coordinate elimination lemmas resolved it. The corrected small
probe passed before the complete final-source build. These diagnostic outcomes
are retained and are not substituted for the successful complete-source check.

The enclosing increment's aggregate transitive axiom audit is recorded in
[WeilConductorThreeConstrainedCertificates.md](../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilConductorThreeConstrainedCertificates.md).
Fresh proof-term replay, independent external mathematical review, and an
independently implemented checker are `NOT_RUN` for this increment. The direct
expansion, congruence comparison, and indefinite-matrix control are local
analytical review, not independent external review.
