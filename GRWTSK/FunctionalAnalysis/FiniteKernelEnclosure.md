# Signed finite kernels and exact integral return

Local source attribution: grwtsk contributors.

Source: [FiniteKernelEnclosure.lean](FiniteKernelEnclosure.lean). The mathematical
consumer is the finite approximation of the maintained conductor-three Weil
kernel, with its complete uniform error charged against the original test's
energy. This module also applies to other finite-measure kernels. It makes no
claim that an arbitrary Weil form is represented by a finite matrix.

## Exact argument and conventions

For a finite family of complex features and an arbitrary complex matrix, define

\[
K_H(x,y)=\sum_{i,j}\phi_i(x)H_{ij}\overline{\phi_j(y)},
\qquad m_i(u)=\int\overline{\phi_i(x)}u(x)\,d\mu(x).
\]

The maintained kernel pairing is conjugate-linear in its first input. If every
feature observable is integrable, the product integrand is integrable by the
product-integrability theorem. Finite additivity, Fubini and integral conjugation
then give the actual equality

\[
B_{K_H}(u,u)=\sum_{i,j}\overline{m_i(u)}H_{ij}m_j(u).
\]

No positivity, Hermitian symmetry, real-vector restriction or orthogonality of
the features is needed for this identity. Taking the real part agrees with
`RationalEnclosureCertificates.complexQuadratic`, including all imaginary
off-diagonal entries.

The pre-existing rational checker acts on the full realification. Its accepted
matrix identity, true-entry enclosure and retained metric yield a lower bound
for the integral. If the original kernel satisfies
\(\lVert K-K_H\rVert\le\epsilon\) almost everywhere, the already-proved
[integral-kernel error theorem](IntegralKernelApproximation.lean) gives

\[
\operatorname{Re}B_K(u,u)\ge
-t\,Q_G(\operatorname{split}m(u))
-\epsilon\mu(X)\int|u|^2\,d\mu.
\]

Both prices are retained. The finite metric can be singular and is not silently
replaced by the function's L2 metric. The approximation applies to the supplied
test itself, without restricting it to the span of the finite features.

## Actual cells and quantitative sampling

A total finite cell assignment supplies indicator features. Their finite kernel
is exactly \(H_{c(x),c(y)}\), and their moments are the integrals over complete
cells. Empty cells are allowed. Measurability is required for the cell integrals;
there is no point-sampling assumption about the test function.
Finite additivity also proves that the sum of all cell moments is the total
integral. A mean-zero input therefore supplies the exact finite zero-sum
constraint; no claim of unconstrained matrix positivity is obtained from it.

For a two-coordinate Lipschitz bound with constant \(L\), cells of node radius
\(\delta\), and certified matrix-node error \(\eta\), the triangle inequality
proves a full kernel error of \(2L\delta+\eta\). The modulus estimate and every
node enclosure are required inputs. Matrix samples alone cannot establish this
uniform statement.

## Comparison and hostile checks

- [FiniteRealGramIntegral](InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/FiniteRealGramIntegral.lean)
  treats positive Gram powers and their exponential series. Here the coefficient
  matrix is general and can be signed, so the exact integral identity is separated
  from the existing rational checker and its error charge.
- The exact finite-feature identity follows also by applying Fubini separately
  to each rank-one summand. This is an explanatory comparison, not an independent
  formal proof or external review.
- For a one-cell partition, a constant matrix contributes the square of the
  complete integral. Replacing that integral by an unweighted point sample changes
  the object and, on a cell of nonunit measure, loses the necessary mass factors.
- Positive diagonal entries do not imply positivity of a signed matrix. The
  existing full rational checker is reused, and the source approximation error
  is still subtracted after acceptance.
- A finite compression does not control an unknown complementary subspace. Here
  the return is justified by a uniform bound on the actual kernel for the actual
  test, not by compression positivity.

This is a local construction using the repository's existing definitions and
Mathlib integration lemmas. It is not an imported proof or a novelty claim.
No arithmetic sign, all-precision accepted-certificate producer, RH or GRH is
asserted. Numerical feature moments and executable enclosure generation remain
separate from the exact statements proved here.

## Evidence

The existing checker required narrow compatibility repairs under the pinned
Lean and Mathlib versions. `NegativeIndex` uses the current `zero_le` shape
and explicit restricted-form arguments. `HermiteMomentCertificates` uses the
current matrix-notation import and the real-power cast identity.
`RationalEnclosureCertificates` retains the same packet fields, guard,
acceptance predicate and source inequality; its finite equality decision,
matrix/function types and cast rewrites are made explicit for elaboration.
No mathematical hypothesis, row penalty, tolerance or metric was weakened.

The final pinned Lake build and the transitive axiom audit passed. The combined
audit covers 150 public named declarations in the six new/shared and three
repaired modules; its axiom sets contain only `propext`, `Classical.choice`,
and `Quot.sound`. Exact source hashes, the separately reported fresh
Lean-kernel replay status, and source reviews are recorded in
[issue #1839](https://github.com/grwtsk/math/issues/1839).
Independent external mathematical review and an independently implemented
kernel checker: **NOT_RUN**.
