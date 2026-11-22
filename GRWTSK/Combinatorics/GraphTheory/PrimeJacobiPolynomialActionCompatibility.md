# Polynomial-to-Krylov compatibility: genuine prime source and finite degree boundaries

**Mathematical consumer:** [grwtsk/math#1850](https://github.com/grwtsk/math/issues/1850),
the prime-Hankel inverse conditioning proof.  
**Maintained Lean proof candidate:** [PrimeJacobiPolynomialActionCompatibility.lean](PrimeJacobiPolynomialActionCompatibility.lean).  
**Pinned source:** actual \`PrimeKnotJacobiArithmetic.applyJacobi\` and
\`PrimeJacobiEvenMoments.iterateJacobi\`; original root
\`PrimeJacobiMomentGram.rootVector\`; the independent polynomial
\`PrimeJacobiPolynomialKrylov.recurrencePolynomialCoefficient\`
and actual vector recurrence in \`PrimeJacobiRecurrenceAction\`.
Math main started at 8041274562524a28078b7d2bb26ed1a36a9bf874;
Lean 4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
**Verification:** mathematical argument below complete; the nine new
Lean proof candidates were NOT_RUN in Lean/Lake, kernel and axiom audit.

## Exact support and monomial-shift theorem

Define \(\ c_{n,j}=[t^j]P_n(t)\) recursively by

\[
c_{0,j}=\mathbf1_{j=0},\quad
c_{1,j}=\frac{\mathbf1_{j=1}}{p_0},\quad
c_{n+2,j}=
\frac{(\mathbf1_{j>0}c_{n+1,j-1})-p_nc_{n,j}}
 {p_{n+1}}.
\]

Two-step induction gives **degree support**
\(c_{n,j}=0\) for \(j>n\): each earlier row has
degree at most its index, so its shift has degree
at most n+2, and the unshifted earlier row has
degree at most n. There is no infinite-power
sum hidden in this statement.

Define the original source action on an arbitrary finite
natural-index coefficient prefix:

\[
A_N(c,k)=\sum_{j=0}^{k-1}c_jJ_N^je_0.
\]

For the shifted coefficient sequence
\((Sc)_0=0,\ (Sc)_{j+1}=c_j\), the **exact**
finite-range reindexing identity is

\[
A_N(Sc,k+1)=J_NA_N(c,k).
\tag{1}
\]

Its proof reindexes
\(\sum_{j=1}^k c_{j-1}J_N^je_0
=\sum_{j=0}^{k-1} c_jJ_N^{j+1}e_0\),
then applies linearity of the original
\`applyJacobi\`. This identity holds for
*every finite N and k*, even when k>N,
since matrix powers are defined in every
finite dimension. Thus no invalid final
Krylov column is invoked.

If c_j=0 for j≥k, the action is unchanged
by extending the finite summation past k.
The \`actionPrefix_extend\` candidate
makes that precise.

## Exact polynomial recurrence evaluation

The preceding identities and the defining
recurrence for \(c_{n,j}\) give

\[
A_N(c_{n+2},n+3)=
\frac{J_N A_N(c_{n+1},n+2)-
 p_n A_N(c_n,n+1)}{p_{n+1}}.
\]

The base cases give \(e_0\) and \(J_Ne_0/p_0\).
Hence the finite coefficient action equals
the independent *vector* recurrence of the
original Jacobi operator at **every natural
polynomial rank**, with no operator spectrum
assumption. When n<N, degree support allows
one to replace \(A_N(c_n,n+1)\) by the
existing \`primePolynomialAction\` sum over
\`Fin N\). The already mathematically proved
basis recurrence returns the actual \(e_n\).

Therefore, for every n<N,

\[
\boxed{\sum_{j<N}c_{n,j}J_N^je_0=e_n.}
\]

Because the root Krylov matrix \(V_N\) has
strictly positive determinant, that
coefficient representation is unique:

\[
\boxed{
\texttt{recurrencePolynomialMatrix}\ N
=(V_N^{-1})^{\mathsf T}
=\texttt{coeffMatrix}\ N.}
\]

The nine new Lean proof candidates encode
the finite support, shift/reindex,
linearity, extended-range equality,
recurrence evaluation, rank restriction and
matrix uniqueness. They are full **SOURCE
PROOF CANDIDATES** with explicit \`by\`
proofs, but have **not been elaborated
or checked by a Lean kernel**; an uncompiled
proof script is not a formal theorem receipt.

## Independent arithmetic, novelty and limitations

The proof depends on actual prime bonds,
the existing finite Jacobi graph and real
matrix inversion. It does not import
Alpöge's final theorem, any RH predicate,
zeta zero, Weil positivity, or a learned
spectral surrogate. General recurrence
identities are standard finite Jacobi
theory; novelty of this source-specific
formal composition is unassessed.

The exact Fraction checker in the
previous iteration verified the
polynomial-to-original-Krylov action in
182 rows across ten dimensions, including
N=1, and detected the hostile mutation
p_0:2→3 while retaining P_1=t/2.
The stronger current 96-trial conditioned
moment decoder is a separate finite check.
Neither checks the Lean proof scripts.
