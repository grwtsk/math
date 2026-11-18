# Signed mixed-cell lower enclosures

Local attribution: grwtsk contributors. Edition 1, 2026-11-18.
Owner: [SpatialMixedPairing.lean](SpatialMixedPairing.lean).
Namespace: `GRWTSK.FunctionalAnalysis.SpatialMixedPairing`.
MSC2020: 46C05 (primary); 65G20, 65D30 (supporting).
Consumer: [WeilFiniteSineSignedEnergy.lean](../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilFiniteSineSignedEnergy.lean).
Coordination: math#1837.

Status: WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE.
Novelty and completeness of prior-art search: UNASSESSED. No novelty claimed.
Lean parsing, elaboration, exact-type checking, builds, fresh kernel replay,
transitive axiom audit, certified arithmetic and independent review: NOT_RUN.

## Exact target

Let I be a finite index set. All functions, matrices and coefficients below
are REAL, except for the explicitly rational assembly. Given a symmetric
matrix A indexed by I, the target is a finite lower matrix L with

    v^T L v <= v^T A v, for every v in R^I.              (SMP-1)

A need not be positive. In the consumer A is a restriction of the original
signed Weil source form, not an integral Gram. No matrix-order comparison
is inferred from positive entries or from sample values alone.

## Complete mixed integration

Let x_0 <= ... <= x_N and let f_i,g_i be two possibly different families.
Assume each product f_i g_j is integrable on every cell. For every k<N and
all t in [x_k,x_(k+1)], assume the whole-cell ranges

    |f_i(t)-p_ki| <= r_ki,  |g_i(t)-q_ki| <= s_ki,
    r_ki,s_ki >= 0.                                    (SMP-2)

The arrays in (SMP-2) are not claimed to have been numerically evaluated.
The arithmetic consumer derives the ranges from explicit Lipschitz moduli,
finite midpoint enclosures and cell widths; it does not assume them from
samples alone.

With w_k=x_(k+1)-x_k, set

    C_ij = sum_(k<N) w_k p_ki q_kj,
    E_ij = sum_(k<N) w_k (|p_ki|s_kj + |q_kj|r_ki + r_ki s_kj).
                                                               (SMP-3)

Then

    |integral_(x_0)^(x_N) f_i(t)g_j(t) dt - C_ij| <= E_ij.       (SMP-4)

Proof. Write a=p+u and b=q+v. The exact identity

    ab-pq = uv + pv + qu

and the triangle inequality give the three-term `productRadius` already
proved in SpatialGramEnclosure. Integrating its constant upper bound on
each entire cell gives w_k times that radius. The existing adjacent-interval
integral identity joins ALL cells, including zero-width cells, and the finite
triangle inequality gives (SMP-4). Nonnegative widths and radii give E_ij>=0.
Neither f and g being identical nor E being symmetric is required here.

## Symmetry and the signed lower matrix

For a matrix B put sym(B)_ij=(B_ij+B_ji)/2. Suppose A is symmetric and

    |A_ij-B_ij| <= D_ij,  D_ij >= 0.                   (SMP-5)

The target symmetry gives

    A_ij-sym(B)_ij = [(A_ij-B_ij)+(A_ji-B_ji)]/2.

Thus the entry error is bounded by sym(D)_ij. This pays BOTH orientations;
one cannot merely symmetrize B and retain an arbitrary one-sided radius.
For every real vector v,

    |v^T(A-sym(B))v|
       <= sum_ij sym(D)_ij |v_i v_j|
       <= sum_ij sym(D)_ij (v_i^2+v_j^2)/2
       = sum_i [sum_j sym(D)_ij] v_i^2.                (SMP-6)

The middle inequality is scalar Young's inequality. The final equality uses
sym(D)_ij=sym(D)_ji. This is exactly the canonical
`SpatialGramEnclosure.quadratic_error_le`, not a duplicate matrix checker.
Taking the lower half of (SMP-6) proves (SMP-1) for

    L = sym(B)-diag(sym(D) 1).                          (SMP-7)

Both sides of the full error estimate are valid, but the public consumer
needs the LOWER enclosure. No claim that L is positive is made.

## Restored head plus full operator error

The consumer has an exact finite head matrix H. Its mixed spatial integral
is supplemented by an oriented operator-error estimate e_i n_j, with
nonnegative e_i,n_j. Consequently choose

    B = H+C,  D_ij = E_ij+e_i n_j,                     (SMP-8)

and use (SMP-7). H is NOT required to be symmetric: only the actual target A
is symmetric. Signed sample products and signed head entries are retained
in B. Absolute values occur only in error allowances.

For rational H,x,p,q,r,s,e,n, `rationalSignedLower` assembles precisely
(SMP-3), (SMP-7), (SMP-8), using finite sums, products, division by two,
absolute values and equality tests. `rationalSignedLower_cast` proves its
coefficientwise real realization is the same `signedLower`. No extrapolation
from rational test vectors to real test vectors is used: (SMP-1) already
quantifies every real vector. The assembler is source code, NOT an executed
certificate or a certified transcendental evaluator.

## Falsification and boundaries

These are hand-checked analytical controls, not independent review or
executed tests.

* If a=b=1 and p=q=0, radii r=s=1 require the cross term rs=1.
  Deleting it would falsely bound the product error by zero.
* Let A=0, B=[[0,2],[0,0]], D=[[0,2],[0,0]]. The oriented bounds hold.
  The correct symmetrized error has off-diagonal entries 1. Keeping only
  the smaller reverse-orientation error would give a false bound.
* A=H=[[-1]] with vanishing spatial and operator errors gives L=[[-1]],
  not a positive matrix. Signed lower enclosure is not a sign theorem.
* A sample table without the whole-cell ranges can miss an oscillating
  product between samples. All integrations use (SMP-2), not only midpoints.
* For a fixed finite family, decreasing the cell widths and sample radii
  controls (SMP-3), but uniformity in dimension or support is not established.
  An already-fixed nonzero operator error cannot disappear by refining
  only the spatial cells.

## Individual declaration correspondence

All names are qualified by the namespace above. These are local consequences,
not claims to formalize all of any cited paper.

| Declaration | Complete argument, immediate source and consumer |
|---|---|
| `mixed_integral_error` | SMP-2--4; canonical `cell_product_error`, Mathlib adjacent-interval additivity and finite triangle inequality; signed source entry supplier. |
| `mixedRadii_nonneg` | Nonnegative cell widths and canonical `productRadius_nonneg`; establishes the radius premise in SMP-5. |
| `symmetrize_symmetric` | Definition and commutativity of addition; allows canonical symmetric error allowance. |
| `symmetrize_nonneg` | Average of two nonnegative oriented errors; same consumer. |
| `symmetric_entry_error` | Displayed averaging identity following SMP-5 and triangle inequality; pays both orientations. |
| `quadratic_lower_of_oriented_error` | Lower half of canonical `quadratic_error_le`, expanded using the existing `quadratic`; proves SMP-7. |
| `rationalSignedLower_cast` | Rational-to-real ring/order cast through every operation in SMP-3,7,8; connects the executable assembly expression to the real all-vector theorem. |

Definitions `mixedSamples`, `mixedRadii`, `symmetrize`, `lowerMatrix` and
`signedLower` are exactly SMP-3,7,8. `rationalSignedLower` is their rational
arithmetic realization. No new physical space, norm or arithmetic form is
introduced.

## Sources and prior-art comparison

Inspected 2026-11-18, math base `87538d799fe27620ef06524defc2bfb732193328`:

* `SpatialGramEnclosure.lean`, blob `276552428c4870314ae3748f954df9a8e2869abc`:
  reuse of the full scalar product error, whole-cell integration and symmetric
  matrix-order allowance. The change here is that the two sampled families
  differ and the result is a signed lower enclosure.
* `QuadraticCertificateCore.lean`, canonical namespace
  `GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates`: the existing quadratic
  value is used, not a new certificate semantics.
* Mathlib at `d13f23b723b8a846827a245b89c10fc7d3f11612`,
  `MeasureTheory/Integral/IntervalIntegral/Basic.lean`:
  `sum_integral_adjacent_intervals`, reused through the inspected prior module;
  exact elaborated signatures have not been rechecked by execution.
* S. M. Rump, *Verification methods: Rigorous results using floating-point
  arithmetic*, Acta Numerica 19 (2010), 287--449, supplied corrected edition:
  Sections 5--6, 10.4 and 12 provide the interval-dependency, residual and
  verified-quadrature methodological context. Section 12, PDF p.85,
  Theorem 12.1 requires C4; it is NOT applied to cornered zero-extended sine
  rows here. Whole-cell Lipschitz bounds are used instead. No new quadrature
  principle is claimed, and this file does not formalize Rump's theorem.

Repository code search for the new supplier names found no matches, which
is not evidence of absence from all literature or all repository contents.
No novelty claim is made. Formal-source correctness remains unverified.
