# Dyadic triangular tail kernel

Owners: #373, #369, #366, #357, #354, #350, #347, #343, #335, and #334 / RH-E02.  
Canonical target: #15.  
Stacked parent: draft PR #370 at
`5307facff9523318e2c16cbf6916d0ad15a209b4`, tree
`9677ab695f3ee6e2d5af176eaf8d203745bb44ae`.

**SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
ARITHMETIC_SUPPLIER_OPEN.**

This note records the finite reduction implemented in
`GRWTSK/NumberTheory/Moebius/DyadicTriangularKernel.lean`.
It promotes the tail-kernel and boundary/local formulas from #369 into source
proof scripts. It does not establish the remaining arithmetic estimate.

## 1. Unchanged source

Retain the actual real Möbius coefficients and closed prefixes

\[
M_n=\sum_{1\le a\le n}\mu(a),
\qquad M_0=0.
\]

Define the signed previous-prefix atom

\[
A_b=\mu(b)M_{b-1}.
\]

The triangular prefix from #369 is

\[
\operatorname{Tri}(n)
 =2\sum_{1\le b\le n}A_b.
\tag{1}
\]

The index `b-1` is literal. Replacing it with `b` would introduce the new
coefficient's square and change the source. The factor two retains both
orientations of the ordered-pair source from #366.

At dyadic scale

\[
X=2^j,
\qquad Y=2X=2^{j+1},
\]

the inherited weighted triangular block is

\[
T_j
 =\sum_{X\le n<Y}
   \frac{\operatorname{Tri}(n)}{n(n+1)}.
\tag{2}
\]

The block remains half open.

## 2. Finite Abel identity

For arbitrary real sequences \(Q_n,w_n\), a positive start \(X\ge1\), and
length \(N\), the source proves

\[
\begin{aligned}
\sum_{k<N}Q_{X+k}(w_{X+k}-w_{X+k+1})
={}&Q_{X-1}w_X\\
&+\sum_{k<N}(Q_{X+k}-Q_{X+k-1})w_{X+k}\\
&-Q_{X+N-1}w_{X+N}.
\end{aligned}
\tag{3}
\]

This is a finite induction. The terminal term is retained.

Specialize to

\[
Q_n=\operatorname{Tri}(n),
\qquad w_n=\frac1n,
\qquad N=X.
\]

The exact cell identity

\[
\frac1{n(n+1)}=\frac1n-\frac1{n+1}
\tag{4}
\]

and the triangular increment

\[
\operatorname{Tri}(n)-\operatorname{Tri}(n-1)=2A_n
\tag{5}
\]

give

\[
T_j
 =\frac{\operatorname{Tri}(X-1)}{X}
  +2\sum_{X\le b<Y}\frac{A_b}{b}
  -\frac{\operatorname{Tri}(Y-1)}{Y}.
\tag{6}
\]

No improper series or limit interchange occurs.

## 3. Boundary and local sources

Define

\[
\mathcal B_j
 =\frac{\operatorname{Tri}(X-1)}{Y}
\tag{7}
\]

and

\[
\mathcal L_j
 =2\sum_{X\le b<Y}
   A_b\left(\frac1b-\frac1Y\right).
\tag{8}
\]

Finite telescoping of (5) gives

\[
2\sum_{X\le b<Y}A_b
 =\operatorname{Tri}(Y-1)-\operatorname{Tri}(X-1).
\tag{9}
\]

Since \(X^{-1}=2Y^{-1}\), equations (6)--(9) yield the exact source theorem

\[
\boxed{T_j=\mathcal B_j+\mathcal L_j.}
\tag{10}
\]

The implementation names the right-hand side
`weightedMertensDyadicTriangularKernel j`.

## 4. Unified max kernel

Equation (10) is equivalent, as finite mathematics, to

\[
\boxed{
T_j
 =2\sum_{1\le b<Y}
   A_b
   \left(
     \frac1{\max(X,b)}-\frac1Y
   \right).
}
\tag{11}
\]

For \(b<X\), the bracket is

\[
\frac1X-\frac1{2X}=\frac1{2X},
\]

and multiplication by two gives the boundary coefficient \(1/X\) on
\(\sum_{b<X}A_b\). For \(X\le b<Y\), equation (11) is exactly (8).

Equation (11) is recorded here as a derived finite identity. The Lean module
implements the equivalent boundary/local form (10), not a separate theorem
using `max`.

## 5. Exact boundary debt

The inherited square telescope is

\[
M_n^2
 =\operatorname{Diag}(n)+\operatorname{Tri}(n),
\qquad
\operatorname{Diag}(n)=\sum_{a\le n}\mu(a)^2.
\tag{12}
\]

Therefore

\[
\boxed{
\mathcal B_j
 =\frac{M_{X-1}^2-\operatorname{Diag}(X-1)}{2X}.
}
\tag{13}
\]

The diagonal subtraction remains in the exact formula. Since it is
nonnegative,

\[
\mathcal B_j
 \le \frac{M_{X-1}^2}{2X}.
\tag{14}
\]

Equation (14) is only a one-sided sufficient allowance. Replacing (13) by
(14) changes an identity into an estimate and can strengthen a proposed
supplier.

## 6. Kernel criterion

Define

\[
\mathsf{KernelSubpoly}:
\quad
\forall\delta>0\ \exists C_\delta\ge0\ \forall j,
\qquad
\mathcal B_j+\mathcal L_j
 \le C_\delta X^\delta.
\tag{15}
\]

Because (10) is exact, the source proves

\[
\boxed{
\mathsf{KernelSubpoly}
\iff
\mathsf{TriangularSubpoly}.
}
\tag{16}
\]

It then composes the existing source equivalences:

\[
\begin{aligned}
\mathsf{KernelSubpoly}
&\iff \mathsf{TriangularSubpoly}\\
&\iff \mathsf{OrderedPairSubpoly}\\
&\iff \mathsf{DyadicBlockSubpoly}\\
&\iff \mathsf{CumulativeMertensSquareSubpoly}\\
&\iff \mathsf{AllPositiveWeightedMertensSquare}.
\end{aligned}
\tag{17}
\]

The existing conditional consumer gives

\[
\mathsf{KernelSubpoly}\Longrightarrow\mathrm{RH}.
\tag{18}
\]

No witness for (15) is supplied.

## 7. What has and has not been separated

Equation (10) separates the geometry of the tail from the arithmetic source,
but it does not make the two summands independent criteria.

A bound on \(\mathcal B_j\) alone does not control \(\mathcal L_j\). A bound on
\(\mathcal L_j\) alone does not control the boundary. Conversely, an upper
bound on their signed sum does not imply matching upper bounds on each term,
because cancellation between them is possible.

Thus the exact remaining target is the total signed kernel in (15). Separate
bounds for (7) and (8) form a sufficient strategy only after their constants
are explicitly combined.

The local term

\[
2\sum_{X\le b<2X}
\mu(b)M_{b-1}
\left(\frac1b-\frac1{2X}\right)
\tag{19}
\]

is now the source-local Type-II, dispersion, large-sieve, or Chowla-facing
component. The boundary term (13) remains an endpoint channel and cannot be
silently dropped.

## 8. Finite diagnostics

An exact-rational authoring diagnostic completed 433,026 checks over all
\(3^9=19{,}683\) coefficient streams in `{-1,0,1}` and the dyadic scales
\(X=1,2,4\). It checked:

- every prefix square/diagonal/triangular identity;
- the finite Abel boundary/local formula;
- the unified max-kernel formula;
- the exact boundary identity and its one-sided majorant.

Separate mutation checks rejected:

- using \(M_b\) instead of \(M_{b-1}\);
- omitting the factor two;
- dropping the boundary term.

These finite checks are not Lean parsing, elaboration, proof-term acceptance,
an infinite arithmetic estimate, a transitive axiom/native audit, repository
tests, or independent mathematical review.

## 9. Verification boundary

The implementation adds only a pure subject module, this note, and a passive
verification target. It does not modify existing source, public-root imports,
dependency pins, workflows, held branches, or execution state.

Exact-head Lean elaboration, generated-declaration reconciliation, transitive
axiom/native review, independent source review, and immutable external
acceptance remain required. Keep #373, #369, #366, #357, #354, #350, #347,
#343, #335, #334, and #15 open.
