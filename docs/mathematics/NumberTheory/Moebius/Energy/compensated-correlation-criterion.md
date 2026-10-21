# Compensated signed correlation for the actual sampled pickup

Owners: #343, #335, and #334 / RH-E02. Canonical target: #15.

Base revision: `b93701ff07aca26a23b1bda3b663170bd60d5a6e`, tree
`c6cafddd7f0c3e85ee2d3ad08c89177616cbe512`.

**SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
ARITHMETIC_SUPPLIER_OPEN.**

This note records the reduction implemented in
`GRWTSK/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean`.
It does not supply the signed arithmetic estimate isolated below.

## 1. The source is unchanged

Retain the existing actual closed Möbius samples

\[
Q_n=A_n-\frac{M_n}{\sqrt n}
   =\frac12 W(\log n),\qquad n\ge1,
\]

where

\[
A_n=\sum_{m\le n}\frac{\mu(m)}{\sqrt m},
\qquad
M_n=\sum_{m\le n}\mu(m).
\]

The merged logarithmic-sampling source already proves that the step waveform

\[
G(u)=W(\log\lfloor e^u\rfloor)
\]

has a completely paid interpolation residual:

\[
|W(u)-G(u)|\le e^{-u/2}\qquad(u\ge0).
\]

It also gives, for every fixed \(\sigma>0\), the exact nonnegative cell masses

\[
a_{\sigma,k}
 =\frac4{\sigma}Q_{k+1}^2
   \left((k+1)^{-\sigma}-(k+2)^{-\sigma}\right)
\]

and the source-preserving equivalence

\[
e^{-\sigma u}W(u)^2\in L^1([0,\infty))
\quad\Longleftrightarrow\quad
\sum_{k\ge0}a_{\sigma,k}<\infty.
\]

No free coefficient sequence, unsigned replacement, Euler-product limit, or
new zeta source is introduced here.

## 2. Split the exact finite telescope

Write

\[
\Delta_{k+1}=Q_{k+2}-Q_{k+1}.
\]

For \(N\ge0\), define the nonnegative diagonal

\[
D_\sigma(N)
 =\sum_{k<N}\Delta_{k+1}^2\,(k+2)^{-\sigma},
\]

and the terminally compensated signed correlation

\[
R_\sigma(N)
 =2\sum_{k<N}Q_{k+1}\Delta_{k+1}(k+2)^{-\sigma}
  -Q_{N+1}^2(N+1)^{-\sigma}.
\]

The finite summation-by-parts identity from the merged source becomes

\[
\boxed{
\sum_{k<N}a_{\sigma,k}
 =\frac4{\sigma}\bigl(R_\sigma(N)+D_\sigma(N)\bigr).
}
\tag{1}
\]

The negative terminal term is part of the identity. Removing it changes the
criterion. Bounding only the uncompensated mixed sum is a stronger sufficient
condition, not the exact remaining obligation.

## 3. The diagonal is paid

The actual increment identity is

\[
\Delta_n
 =M_n\left(n^{-1/2}-(n+1)^{-1/2}\right),
\]

and the existing elementary estimate gives

\[
\Delta_n^2\le\frac1{4(n+1)}.
\]

Therefore

\[
D_\sigma(N)
 \le \frac14\sum_{k<N}(k+2)^{-1-\sigma}.
\]

The new module defines

\[
B_\sigma
 =\frac14\sum_{k=0}^{\infty}(k+2)^{-1-\sigma}.
\]

For every \(\sigma>0\), the shifted \(p\)-series is summable, so

\[
0\le D_\sigma(N)\le B_\sigma<\infty
\qquad\text{for every }N.
\tag{2}
\]

This is deterministic diagonal control. It uses no Möbius cancellation and
cannot by itself bound \(R_\sigma(N)\).

A sharper written estimate remains available from the integral test,

\[
B_\sigma\le\frac14\sum_{n=2}^{\infty}n^{-1-\sigma}
\le \frac1{4\sigma},
\]

but the source draft intentionally uses the exact finite `tsum` budget rather
than introducing another analytic comparison lemma.

## 4. Exact fixed-rate criterion

Define

\[
\operatorname{CorrBound}(\sigma)
:\Longleftrightarrow
\exists C_\sigma\ge0\ \forall N,\quad R_\sigma(N)\le C_\sigma.
\]

For every \(\sigma>0\), the new source proves

\[
\boxed{
\sum_{k\ge0}a_{\sigma,k}<\infty
\quad\Longleftrightarrow\quad
\operatorname{CorrBound}(\sigma).
}
\tag{3}
\]

The two directions are elementary but logically important.

If the cell masses are summable, their nonnegative partial sums are bounded by
their sum. Equation (1), together with \(D_\sigma(N)\ge0\), gives

\[
R_\sigma(N)
\le\frac{\sigma}{4}\sum_{k\ge0}a_{\sigma,k}.
\]

Conversely, if \(R_\sigma(N)\le C_\sigma\), then (1) and (2) give

\[
\sum_{k<N}a_{\sigma,k}
\le\frac4{\sigma}(C_\sigma+B_\sigma)
\qquad\text{for every }N.
\]

The terms are nonnegative, so uniformly bounded partial sums establish genuine
summability. A totalized real integral is never used as evidence of finiteness.

The same argument yields the quantitative bound

\[
\sum_{k\ge0}a_{\sigma,k}
\le\frac4{\sigma}(C_\sigma+B_\sigma).
\tag{4}
\]

Combining this with the paid interpolation residual gives

\[
\boxed{
\int_0^\infty e^{-\sigma u}W(u)^2\,du
\le
\frac8{\sigma}(C_\sigma+B_\sigma)
+\frac2{\sigma+1}.
}
\tag{5}
\]

Every constant and premise remains visible.

## 5. Cofinal all-rate endpoint

For the existing schedule

\[
d_j=\frac2{j+1},
\]

define the universal arithmetic premise

\[
\forall j\ge0,\quad \operatorname{CorrBound}(d_j).
\]

Using the previously merged cofinal-damping and cell-mass equivalences, the new
source identifies this premise with

\[
\alpha_W=0,
\]

where \(\alpha_W\) is the actual pickup-energy convergence abscissa. It then
reuses the existing exact conditional endpoint

\[
\alpha_W=0\Longrightarrow\mathrm{RH}.
\]

Thus the remaining RH-E02 supplier is now the family of source-identical
compensated signed upper bounds

\[
\boxed{
\forall j\ \exists C_j\ge0\ \forall N,\quad
R_{d_j}(N)\le C_j.
}
\tag{6}
\]

Constants may depend on \(j\). No damping-zero estimate and no uniformity in
\(j\) are required. No witness for (6) is supplied.

## 6. Reconciliation at damping one

The repository already contained a critical-boundary route using the endpoint
defect

\[
E_n
 =\operatorname{pickupWeightedPrefix}(n)
  -n^{-1/2}\operatorname{pickupMertensPrefix}(n).
\]

The new compatibility theorem proves, for every \(n\ge1\),

\[
Q_n=E_n.
\]

Consequently,

\[
a_{1,k}=4\,E_{k+1}^2
 \left((k+1)^{-1}-(k+2)^{-1}\right),
\]

which is four times the shifted existing
`criticalEndpointDefectEnergy`. Hence

\[
\sum_{k\ge0}a_{1,k}<\infty
\quad\Longleftrightarrow\quad
\texttt{CriticalEndpointDefectSummable}.
\]

The repository already proves that the latter is equivalent to
`CriticalBoundaryVerticalLineUniform`, the completed vertical line
\(\Re z=1/2\) in the damping coordinate used by the vertical-line modules.
Therefore the new source proves

\[
\boxed{
\operatorname{CorrBound}(1)
\quad\Longleftrightarrow\quad
\texttt{CriticalBoundaryVerticalLineUniform}.
}
\tag{7}
\]

This is a compatibility theorem, not a new boundary estimate and not RH. The
critical boundary is one fixed damping; RH-E02 requires cofinally small
positive dampings.

The source also composes (7) with the existing recurrence theorem to obtain

\[
\operatorname{CorrBound}(1)
\quad\Longleftrightarrow\quad
\texttt{CriticalMertensTransformSummable}.
\]

The existing conditional suppliers now feed the same object:

- `CriticalMertensIncrementMeanSquare ε` with \(0<\varepsilon<1\);
- `CriticalWeightedMertensSquareSummable ε` with \(0<\varepsilon<1\).

Their premises remain unproved. The bridge removes duplicate terminology and
allows future arithmetic estimates to be compared at one exact source.

## 7. What remains

The mathematical frontier is not another representation theorem. It is a
source-specific upper bound for

\[
2\sum_{k<N}Q_{k+1}\Delta_{k+1}(k+2)^{-\sigma}
-Q_{N+1}^2(N+1)^{-\sigma}
\]

at positive dampings approaching zero.

A valid supplier may use bilinear cancellation, dyadic mean squares, spectral
identification, or another exact arithmetic decomposition, but it must retain:

1. the actual Möbius samples \(Q_n\);
2. the complete signed mixed term;
3. the negative terminal compensation;
4. all cutoffs and normalization factors;
5. a bound uniform in every finite horizon \(N\) at the selected damping.

Finite computation, the diagonal estimate, a single damping, or an unsigned
majorant does not close the route.

## Verification boundary

The source module contains 25 authored declarations: six definitions and
nineteen theorem proof scripts. The branch adds only pure mathematical source,
this note, and a passive verification target. No existing source, public-root
import, dependency pin, workflow, executor, or held branch is changed.

Static source checks and finite symbolic/rational diagnostics are not Lean
elaboration, kernel acceptance, a transitive axiom/native audit, or independent
review. Exact authored/generated declarations, full types, dependencies,
axioms, native/unsafe/opaque closure, and hostile controls require a separate
source-bound replay and review. No arithmetic supplier, new paid damping, or
Riemann-hypothesis proof is claimed.
