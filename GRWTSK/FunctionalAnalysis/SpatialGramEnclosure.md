# Complete spatial Gram enclosures

Local attribution: grwtsk contributors. Edition 1, 2026-11-18.
Owner: [SpatialGramEnclosure.lean](SpatialGramEnclosure.lean).
Namespace: `GRWTSK.FunctionalAnalysis.SpatialGramEnclosure`.
Primary MSC2020: 46C05; supporting 65G20, 65D30.
Consumer: [WeilFiniteSineSpatialResidual.lean](../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilFiniteSineSpatialResidual.lean).
Coordination: [math#1837](https://github.com/grwtsk/math/issues/1837).

Status: WRITTEN_ANALYTICAL_ARGUMENT / SOURCE_PROOF_CANDIDATE.
Novelty and prior-art completeness: UNASSESSED. No novelty claimed.
Elaboration, exact types, kernel replay, transitive axiom audit, numerical
execution, certified arithmetic and independent review: NOT_RUN.

## Exact problem and consumer

Let z_i be finitely many vectors in the actual real Hilbert space, with
spatial representatives f_i supported in [a,b], a<=b. Mathlib's original
`Matrix.gram R z` is used; the scalar quadratic is the repository's existing
`QuadraticCertificates.quadratic`. Nothing is inferred about a Weil sign
from the automatic positivity of this Gram.

The target is an upper bound on the COMPLETE squared norm of every linear
combination of the z_i, not the norm of a finite Fourier projection. To obtain
one, integrate the actual spatial products over the complete support, and
pay for every cell range and scalar sample error. An arbitrary retained-head
subtraction may be made before forming the columns. Its validity follows
from annihilation on high tests, not from an assumed exact projection.

## Primary analytical argument

### SGE-1: product ranges and complete integration

If |A-p|<=r, |B-q|<=s and r,s>=0, expand

    AB-pq=(A-p)(B-q)+p(B-q)+q(A-p).

Thus

    |AB-pq| <= |p|s+|q|r+rs.                             (1)

The rs term is necessary. For an integrable product on a complete cell
[l,h], integrate (1) to obtain error at most

    (h-l)(|p|s+|q|r+rs).

No sample alone establishes the range premise. A whole-cell modulus
|f(t)-f(mid)|<=K|t-mid| with K>=0 and midpoint error <=e supplies the
valid radius K(h-l)/2+e. Lipschitz moduli suffice even at internal corners;
differentiability at every point is not required.

For a monotone finite mesh x_0,...,x_J define w_k=x_(k+1)-x_k. With range
centers p_ki and radii r_ki for every column on every cell, put

    C_ij = sum_k w_k p_ki p_kj,
    E_ij = sum_k w_k (|p_ki|r_kj+|p_kj|r_ki+r_ki r_kj).

All products are assumed integrable (the arithmetic consumer derives this
from actual L2 membership). Additivity of the original integral across all
cells and the triangle inequality prove

    |G_ij-C_ij|<=E_ij,      E_ij=E_ji>=0,                (2)
    G_ij=integral_(x_0)^(x_J) f_i(t)f_j(t) dt.

Coincident mesh endpoints have zero weight; no division by their width is
performed. The entire finite mesh is used.

### SGE-2: entry errors must become quadratic-form errors

An entrywise inequality is NOT matrix order. For every real vector v,

    |v^T(G-C)v|
      <=sum_ij E_ij |v_i v_j|
      <=(1/2)sum_ij E_ij(v_i^2+v_j^2)
      =sum_i (sum_j E_ij)v_i^2.

The last equality uses the proved symmetry of E. Therefore

    C-diag(E 1) <= G <= C+diag(E 1)                     (3)

in quadratic-form order. The implementation supplies both the absolute
quadratic error and its upper-bound specialization. It makes no claim of
entrywise monotonicity of eigenvalues.

`rationalCellRadii` and `rationalUpper` perform only finite rational
arithmetic (including rational absolute values and finite index equality).
They are outside a noncomputable section. `rationalUpper_cast` identifies
that rational output with the real center-plus-diagonal formula above.
The assembler does not itself generate transcendental scalar enclosures or
validate the analytic cell premises. Its execution has NOT_RUN.

### SGE-3: exact physical Gram return

For actual L2 classes z_i with z_i=f_i almost everywhere and f_i supported
in [a,b], the L2 inner-product integral equals the interval integral in (2).
Endpoint singletons have zero Lebesgue measure. This proves an identity of
complete Gram matrices. The consumer separately derives the L2 membership,
representative correspondence, support, and product integrability.

Mathlib's `star_dotProduct_gram_mulVec`, specialized to real scalars, gives

    v^T Gram(z) v = ||sum_i v_i z_i||^2.

Combining this with (3) gives a norm upper bound for EVERY coefficient vector.
The sampled table is a numerical description of the already-identified
columns, not a replacement Hilbert space.

### SGE-4: arbitrary head subtraction and full row error

Let z be an exact output, zhat its approximation, and h a retained head
vector. For every high test w with <h,w>=0,

    |<z,w>| <= (||zhat-h||+e)||w||,
    provided ||z-zhat||<=e.                             (4)

Indeed z=(zhat-h)+(z-zhat)+h. No inverse Gram, exact projection coefficient,
linearly independent head basis, or small coupling assumption is needed.

For t>0,

    (A+B)^2 <= (1+t)A^2+(1+1/t)B^2,

as the difference multiplied by t equals (tA-B)^2. Thus (4) supplies the
full squared-pairing bound with exactly these two positive multipliers.

For column errors ||z_i-zhat_i||<=e_i, finite triangle inequality gives

    ||sum_i v_i(z_i-zhat_i)|| <=sum_i |v_i|e_i.

Finite Cauchy--Schwarz gives the explicit matrix allowance

    (sum_i |v_i|e_i)^2 <= n sum_i e_i^2 v_i^2,
    E_row=diag(n e_i^2), n=card(i).                      (5)

This bound is conservative; it does not assert independent errors or remove
the dimension penalty. Empty column families are handled without division.

## Distinct checks and falsification

These are written analytic controls, not executed tests or independent review.

1. With a=b=1 and p=q=0, r=s=1, deleting rs from (1) gives the false bound
   1<=0. It cannot be dropped as a higher-order term.
2. A symmetric error [[0,e],[e,0]], e>0, has eigenvalues +/-e. Entrywise
   positivity is not positive semidefiniteness. The diagonal allowance eI
   in (3) dominates both signs of this error.
3. On [-1,1] take f(t)=sin(pi J(t+1)), J>=1, and J uniform cells. Every
   midpoint value is zero but integral f^2=1. A sample-only Gram would be
   zero. A valid whole-cell variation radius prevents this false conclusion.
4. In R^2 take z=(1,e), head direction (1,0), and subtract h=(1+d,0).
   The corrected squared norm is e^2+d^2, safely above the true high norm
   e^2 for every d. An inaccurate subtraction loses sharpness, not validity.
5. Replacing the complete Gram by a projected Gram can hide an arbitrary
   orthogonal residual vector. No such projection is used here.

## Declaration-level correspondence

Every name below is qualified by the namespace printed above. Each row is
an individual local consequence, not a claim to formalize an entire paper.

| Declaration | Argument / exact supplier / consumer |
|---|---|
| `productRadius_nonneg` | Nonnegative products in (1); cell ranges. |
| `abs_product_sub_le` | Exact three-term expansion in SGE-1; cell integration. |
| `midpoint_range` | Triangle inequality plus midpoint distance <=half-width; source modulus. |
| `cell_product_error` | Integral norm inequality over the full cell; entry error. |
| `entryRadius_symmetric` | The displayed formula for E; required by SGE-2. |
| `entryRadius_nonneg` | Nonnegative widths and certified radii; SGE-2. |
| `integralGram_entry_error` | Exact adjacent-interval sum and (1); complete matrix. |
| `quadratic_eq_double_sum` | Expansion of the existing `quadratic`, not a new norm. |
| `quadratic_diagonalAllowance` | Existing diagonal mulVec; SGE-2 normalization. |
| `quadratic_error_le` | Pairwise scalar Young inequality and symmetry; SGE-2. |
| `quadratic_upper_of_entry_error` | Upper half of the absolute error; residual budget. |
| `integralGram_upper_of_cells` | Composition of exact entry and order results. |
| `rationalUpper_cast` | Rational ring/order homomorphism and finite sums; executable data. |
| `gram_quadratic` | Pinned Mathlib Gram identity; full Hilbert norm. |
| `sum_row_error` | Finite vector triangle inequality; actual source errors. |
| `pairing_le_after_head` | Exact annihilation and Cauchy--Schwarz, SGE-4. |
| `column_error_sq_le` | Pinned finite Cauchy--Schwarz, formula (5). |
| `weighted_square_le` | Difference identity t*(RHS-LHS)=(tA-B)^2. |
| `L2_gram_eq_integralGram` | L2 inner product, a.e. representatives, complete support. |
| `L2_gram_upper_of_cells` | Entire physical norm from a complete cell table. |
| `pairing_sq_le_after_head` | SGE-4 with the positive Young multipliers. |

## Pinned source/API comparison and provenance

Inspected 2026-11-18 at `grwtsk/math@600fbd0d2b49d95ae2b289c7ea46b1e58b18a81c`:

- [QuadraticCertificateCore.lean](../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticCertificateCore.lean),
  blob `7cc294a4516885fde53e4ad6de0b73ed9a0f2002`: original `quadratic`,
  add/smul identities and rational sign trust boundary. No checker is duplicated.
- [DerivativeCellBounds.lean](../MeasureAndIntegration/DerivativeCellBounds.lean),
  blob `5410f2f4b0c21ba0ed8bf7eaee511f6b376f0363`: adjacent whole-cell
  derivative-to-variation interface for smooth complex tests. Here the
  consumer's shifted zero-extended sines have internal derivative corners,
  so a direct Lipschitz modulus is used instead. The previous theorem is
  not incorrectly applied at those corners.
- Mathlib `Analysis/InnerProductSpace/GramMatrix.lean`, at
  `d13f23b723b8a846827a245b89c10fc7d3f11612`, blob
  `7bc693a2ddb34c8e1235ee26037d5d25b457216d`: `Matrix.gram`,
  `star_dotProduct_gram_mulVec`. Direct API use; no source copy.
- Mathlib `MeasureTheory/Integral/IntervalIntegral/Basic.lean` at the same
  pin, blob `2504147e2230a26eb804b0898004d0186c4e36a1`:
  `sum_integral_adjacent_intervals`, norm integral bound, integral subtraction.
- Mathlib `Algebra/Order/BigOperators/Ring/Finset.lean` at the same pin:
  `Finset.sum_mul_sq_le_sq_mul_sq`. Its exact signature remains to be
  checked by elaboration, along with the other source candidate signatures.

Rump, *Verification methods: Rigorous results using floating-point
arithmetic*, Acta Numerica 19 (2010), 287--449, supplied corrected edition:
Sections 5--6 (interval ranges/dependency), 10.4 (residuals), 12 (quadrature),
and Part 3 (infinite-dimensional verification) are methodology/prior-art
comparisons, not imported positivity theorems or evidence of an executed
certificate. The elementary interval, Gram and Young arguments here are
classical. There is no novelty claim or independent-review claim.

## Evidence and boundaries

Lean pin: `leanprover/lean4:v4.34.1`. Mathlib pin as above. No pins, root
imports, existing source or prior verification statuses are changed.
Exact-source verification targets, NOT_RUN:

    lake build GRWTSK.FunctionalAnalysis.SpatialGramEnclosure
    lake build GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFiniteSineSpatialResidual

Fresh kernel replay, declaration-type correspondence and transitive axiom
audit remain separately required. The code may require elaboration repairs.
A complete table does not by itself establish a signed lower source bound;
the arithmetic consumer must also supply the actual high floor, signed
trial estimate, low-coordinate identity and universal cofinal coverage.
