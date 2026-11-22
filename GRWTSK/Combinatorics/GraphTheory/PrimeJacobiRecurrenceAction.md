# Genuine prime-Jacobi basis and recurrence-action reconstruction

**Consumer:** [grwtsk/math #1850](https://github.com/grwtsk/math/issues/1850);
the source-specific inverse-Hankel and polynomial-Krylov proof chain.  
**Maintained source candidate:** [PrimeJacobiRecurrenceAction.lean](PrimeJacobiRecurrenceAction.lean).  
**Starting source:** \`grwtsk/math@8041274562524a28078b7d2bb26ed1a36a9bf874\`,
Lean v4.34.1 / Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
Dependencies: PrimeKnotJacobiArithmetic (genuine \`Nat.nth Nat.Prime\`
offdiagonals), PrimeJacobiMomentGram (literal Krylov vectors),
PrimeJacobiParitySquare (unique-neighbor support), and
PrimeJacobiPolynomialKrylov (coefficient action/uniqueness).
The module is **SOURCE_PROOF_CANDIDATE**: Lean compilation, fresh
kernel replay, and transitive axiom audit **NOT_RUN**.

## 1. Independent source-vector recurrence

In the original dimension-N real prime-Jacobi section, write \(e_n\)
for the canonical basis vector. The actual tridiagonal operator has

\[
Je_0=p_0e_1,\qquad
Je_{n+1}=p_ne_n+p_{n+1}e_{n+2}\quad(n+2<N).
\]

These are literal source equations: \`knotWeight i j\` is zero unless
\(|i-j|=1\), and is \(p_{\min(i,j)}\) otherwise. In particular they
remain meaningful when the final bond is absent: the n+2<N
hypothesis prevents an invalid extra vertex.

Independently define the *vector* recurrence

\[
v_0=e_0,\qquad v_1=\frac{Je_0}{p_0},\qquad
v_{n+2}=\frac{Jv_{n+1}-p_nv_n}{p_{n+1}}.
\]

**Theorem:** for every \(0\le n<N\), \(v_n=e_n\).

**Proof:** \(v_0=e_0\). The root-edge identity gives
\(v_1=Je_0/p_0=e_1\) when N≥2. If \(n+2<N\) and both preceding
equalities hold, then

\[
v_{n+2}=\frac{Je_{n+1}-p_ne_n}{p_{n+1}}
=\frac{p_{n+1}e_{n+2}}{p_{n+1}}=e_{n+2}.
\]
All prime denominators are strictly positive. This is a genuine
source-based two-step induction, independent of any zeta/RH theorem.
\(\square\)

The module adds explicit candidates for \`applyJacobi_basisVertex\`,
\`rootVector_eq_basisVertex\`, \`applyJacobi_basis_zero\`,
\`applyJacobi_basis_succ\`, and
\`primeRecurrenceVector_eq_basis\`. They refer only to the existing
arithmetic graph.

## 2. Polynomial coefficient identity: the exact remaining Lean edge

The independent *scalar coefficient recursion* from
\`PrimeJacobiPolynomialKrylov.lean\` is

\[
r_{0,j}=\mathbf1_{j=0},\qquad
r_{1,j}=p_0^{-1}\mathbf1_{j=1},\qquad
r_{n+2,j}
=\frac{r_{n+1,j-1}\mathbf1_{j>0}-p_nr_{n,j}}{p_{n+1}}.
\]

Let \(P_n(t)=\sum_{j=0}^n r_{n,j}t^j\).
The *mathematical* finite polynomial-action relation is

\[
P_0(J)e_0=e_0,\quad P_1(J)e_0=e_1,\quad
P_{n+2}(J)e_0=
\frac{JP_{n+1}(J)e_0-p_nP_n(J)e_0}{p_{n+1}}=e_{n+2}.
\]

Its proof requires only finite-sum reindexing, linearity of the
ACTUAL \`applyJacobi\`, the existing
\`iterateJacobi_commutes\` theorem, and support
\(r_{n,j}=0\) for \(j>n\). The support condition ensures a
right-shift in coefficients does not silently discard the final
\(J^N e_0\) term. Both indices and this boundary are mathematical
content; do not suppress them with a generic operator identity.

**Outstanding Lean source lemma (single precise target):**

\[
\forall n<N,\quad
\texttt{primePolynomialAction}\ N\
  (\texttt{recurrencePolynomialMatrix}\ N\ n)
=\texttt{primeRecurrenceVector}\ N\ n.
\]

This is the *hCompat* parameter in
\`recurrence_polynomial_eq_inverse_of_action_compatibility\`.
Once proved, the already source-based uniqueness theorem forces

\[
\texttt{recurrencePolynomialMatrix}\ N =
\texttt{coeffMatrix}\ N =
(V_N^{-1})^\mathsf T.
\]

Then the coefficient triangle recurrence gives \(T_n\le U_n\le1\),
where the **new** strict-prime-gap scalar theorem
\`coeffEnvelope_le_one\` is available as a source candidate.
Consequently \(\|H_N^{-1}\|_\infty\le N\).
This final bound has a complete analytical proof, but **the
composition is not yet a Lean-checked unconditional theorem**.

## 3. Finite independent and hostile evidence

An exact rational source checker, independent of the Lean
implementation, constructed genuine prime Jacobi Krylov columns,
three-term polynomial rows and \(\sum_j r_{n,j}J^je_0\).
It passed all **182** tested basis rows in dimensions
1, 2, 3, 4, 8, 12, 20, 30, 41, 61; in particular it tested the
boundary of dimension 1. A hostile mutation \(p_0:2\mapsto3\)
with the original \(P_1(t)=t/2\) produces \(3e_1/2\ne e_1\).
These are exact-Fraction tests, not Lean kernel evidence.

The original recurrence is classical finite Jacobi theory
(see, e.g., G. Teschl, *Jacobi Operators and Completely
Integrable Nonlinear Lattices*, AMS 2000). Its source-specific
prime return is useful in this project; no worldwide novelty
is claimed without independent prior-art review.
