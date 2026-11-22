# Uniform prime coefficient contraction and linear inverse-Hankel conditioning

**Mathematical consumer:** [grwtsk/math#1850](https://github.com/grwtsk/math/issues/1850), the exact source-prime moment reconstruction and certified intermediate Alpöge arithmetic interface.  
**Lean source proof candidate:** [PrimeJacobiPolynomialCoefficientContraction.lean](PrimeJacobiPolynomialCoefficientContraction.lean).  
**Source dependencies:** original prime bonds from
\`PrimeKnotJacobiArithmetic\`, the source root Krylov/Hankel Gram from
\`PrimeJacobiMomentGram\` and \`PrimeJacobiHankelInverse\`,
the scalar prime-gap envelope in \`PrimeJacobiCoefficientEnvelope\`,
and the independent recurrence polynomial action
in \`PrimeJacobiPolynomialActionCompatibility\`.
All source work is on grwtsk/math main with Lean v4.34.1,
Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
No Alpöge final theorem, RH hypothesis, Weil positivity
or zeta-zero table is used.

## Proof of exact all-index coefficient l1 contraction

Let \(p_0=2,p_1=3,\ldots\) and let \(P_n(t)\) be the original
three-term real prime-Jacobi orthonormal polynomials:

\[
P_0(t)=1,\quad P_1(t)=t/p_0,\quad
P_{n+2}(t)=
\frac{tP_{n+1}(t)-p_nP_n(t)}{p_{n+1}}.
\]

Their finite coefficient norms are
\(T_n=\sum_{j=0}^n|[t^j]P_n(t)|\).
Finite coefficient support was proved by two-step induction
in the adjacent polynomial-action source.
The elementary inequalities
\(|a-b|\le|a|+|b|\) and
\(\|tP_n\|_{\ell^1_{\rm coeff}}=\|P_n\|_{\ell^1_{\rm coeff}}\)
give, without dropping any coefficient,

\[
\boxed{
T_{n+2}\le\frac{T_{n+1}+p_nT_n}{p_{n+1}}.
}
\]

Since \(p_{n+1}\ge p_n+1\), \(T_0=1\), and
\(T_1=1/p_0=1/2\), the original two-step
induction proves \(0\le T_n\le1\) for every n.
The same proof works for positive real
bonds with gap at least one, and is false
without an appropriate gap premise
(for constant bonds one, the initial
scalar envelope is 1,1,2).

The source candidate makes each finite
sum explicit:
\`rowCoefficientAbs_zero\`,
\`rowCoefficientAbs_one\`,
\`rowCoefficientShiftAbs\`,
\`rowCoefficientHighZero\`,
\`rowCoefficientAbs_step\`,
\`rowCoefficientAbs_le_envelope\`,
\`rowCoefficientAbs_le_one\`.
The substantive analytical proof is the
finite reindexing of the coefficient
shift and the positive-denominator
triangle bound.

## Return to original source inverse Hankel matrix

The independently constructed polynomial coefficients satisfy

\[
\sum_{j<N}c_{n,j}J_N^je_0=e_n,\quad n<N
\]

by the preceding finite polynomial-action argument.
Since the source root Krylov matrix \(V_N\)
is invertible, uniqueness yields
\(R_N=(c_{n,j})_{n,j<N}=(V_N^{-1})^\mathsf T\).
The source root Hankel matrix is
\(H_N=V_N^\mathsf TV_N\). Consequently

\[
H_N^{-1}=R_N^\mathsf T R_N
\quad\Longrightarrow\quad
\begin{aligned}
\sum_{j<N}|(H_N^{-1})_{ij}|
&\le\sum_{n<N}|(R_N)_{ni}|
             \sum_{j<N}|(R_N)_{nj}|\\
&\le\sum_{n<N}T_n^2\le N.
\end{aligned}
\]

Thus the **mathematical all-index theorem** is

\[
\boxed{\|H_N^{-1}\|_\infty\le N.}
\]

The source's \`prime_hankel_inverse_row_linear\`
has this exact unconditional **statement** and
a full proposed Lean \`by\` proof with no
new hypothesis or axiom. The theorem is
**NOT** formally accepted until the entire
import chain elaborates, passes the
transitive axiom audit and survives an
independent fresh kernel replay.
No such Lean checks were run here.

## Stronger certified moment-to-prime recovery

The existing Hadamard principal-minor
perturbation theorem yields
\[
\left|
\frac{\det\widetilde H_k}{\det H_k}-1
\right|
\le(1+k\|H_k^{-1}\|_\infty\epsilon)^k-1.
\]

Using the new source-specific linear bound,
\(\|H_k^{-1}\|_\infty\le k\), for the
first K prime bonds, it suffices to require

\[
0<\delta<\frac1{4p_{K-1}+1},
\qquad
\boxed{
\epsilon\le\frac{\delta}
{(2^{K+1}-1)(K+1)^2}.
}
\]

All the actual determinants remain positive
and satisfy relative error ≤δ.
The exact square-root determinant ratios are then
within half a unit of the true positive
integer prime bonds, so nearest-integer
rounding returns **every source prime
in the finite prefix exactly**.

For K=8 the sufficient tolerances are:

| Certificate | Exact mathematical sufficient radius (rounded) |
|---|---:|
| Original factorial/Leibniz bound | \(8.11843\cdot10^{-161}\) |
| Old a priori \(O(k^3)\) inverse bound | \(6.19483\cdot10^{-9}\) |
| **Prime-gap linear inverse bound** | \(1.54871\cdot10^{-7}\) |
| Exact rational inverse-conditioned bound | \(6.05266\cdot10^{-7}\) |

The Python standard-library exact-rational checker
\`scripts/verify_prime_jacobi_moment_to_source_stability.py\`
(blob \`a3c38fea29321021bb9e097663a9ff4e41f8def1\`)
passed **96/96** trials across K=1..8:
four exact sufficient radii and three
hostile signed perturbation patterns per
prefix. The original source-prime
Krylov polynomial actions were independently
checked in 182 rows through dimension 61.
These are finite controls, not Lean proofs.

**Independence:** This theorem supplies
prime arithmetic coordinates and exact
conditioning; it does not identify the
source Jacobi spectral measure with
the zeta-zero measure, furnish the
signed infinite Weil estimate, or prove
any Alpöge intermediate \`EAtH/CoreAtH\`
supplier. Jacobi recurrences, Gram inverses,
and determinant bounds are classical.
The all-index source-specific composition
is a maintained project result,
not asserted globally original without
further literature review.
