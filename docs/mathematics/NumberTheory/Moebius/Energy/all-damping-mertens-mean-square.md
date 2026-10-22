# Every-positive-damping Mertens mean-square supplier

Owners: #347, #343, #335, and #334 / RH-E02. Canonical target: #15.
Stacked parent: draft PR #344 at `e29e1e5c22e1ab5814210fb15c6f3767ff033e3d`.

**SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED / ARITHMETIC_SUPPLIER_OPEN.**

This note records a source-identical sufficient supplier for the compensated
correlation criterion. It generalizes the repository's existing
critical-boundary weighted Cauchy argument from damping one to every positive
pickup damping. No arithmetic mean-square estimate is proved.

## 1. Actual samples and increments

Retain the merged arithmetic source
\[
Q_n=\operatorname{sampleResidue}(n)
   =\frac12W(\log n),\qquad n\ge1,
\]
and its exact increment
\[
\Delta_n=Q_{n+1}-Q_n
=M_n\left(n^{-1/2}-(n+1)^{-1/2}\right),
\]
where
\[
M_n=\sum_{m\le n}\mu(m).
\]

The source does not replace \(Q_n\) by separate absolute estimates for the
weighted Möbius prefix and the Mertens endpoint. The cancellation creating
\(Q_n\) and \(\Delta_n\) remains inside the source before squaring.

For a real parameter \(\varepsilon\), reuse the existing positive increment
budget
\[
S_\varepsilon
=
\sum_{j\ge0}
\Delta_j^2(j+1)^{1-\varepsilon}.
\]
In repository notation this is
`CriticalMertensIncrementMeanSquare ε`. Its summability is an explicit
premise, not a theorem supplied by this increment.

## 2. Weighted Cauchy estimate

For \(0<\varepsilon\le1\), the existing finite weighted Cauchy inequality gives
\[
Q_n^2
\le
\left(\sum_{j<n}\Delta_j^2(j+1)^{1-\varepsilon}\right)
\left(\sum_{j<n}(j+1)^{\varepsilon-1}\right).
\]
The existing finite power-sum bound yields
\[
\sum_{j<n}(j+1)^{\varepsilon-1}
\le \frac{n^\varepsilon}{\varepsilon}.
\]
Therefore, when \(S_\varepsilon<\infty\),
\[
\boxed{
Q_n^2\le S_\varepsilon\frac{n^\varepsilon}{\varepsilon}.
}
\tag{1}
\]

The new module rewrites the older
`criticalMertensTransform_sq_le_meanSquare` theorem through the merged
identity
\[
Q_n=\operatorname{criticalMertensTransform}(n).
\]

## 3. Target damping and the strict exponent gap

For \(\sigma>0\), the exact logarithmic cell mass is
\[
a_{\sigma,n}
=
\frac4{\sigma}Q_n^2
\left(n^{-\sigma}-(n+1)^{-\sigma}\right),
\qquad n\ge1.
\]

The repository's unit-interval power-drop theorem gives
\[
n^{-\sigma}-(n+1)^{-\sigma}
\le \sigma n^{-\sigma-1}.
\]
Combining this with (1) gives
\[
\boxed{
a_{\sigma,n}
\le
\frac{4S_\varepsilon}{\varepsilon}
n^{\varepsilon-\sigma-1}.
}
\tag{2}
\]

The right side is summable exactly in the range
\[
0<\varepsilon<\sigma.
\]
The strict inequality is essential. At \(\varepsilon=\sigma\), the comparison
is harmonic and supplies no summability.

The source draft therefore proves
\[
\boxed{
0<\varepsilon\le1,\quad
\varepsilon<\sigma,\quad
\operatorname{CriticalMertensIncrementMeanSquare}(\varepsilon)
\Longrightarrow
\sum_n a_{\sigma,n}<\infty.
}
\tag{3}
\]

By PR #344's fixed-rate equivalence, (3) supplies
`CompensatedCorrelationBound σ`. It does not construct the bound
unconditionally.

## 4. Cofinal half-damping schedule

The existing reciprocal pickup dampings are
\[
d_j=\frac2{j+1}.
\]
Choose
\[
\varepsilon_j=\frac{d_j}{2}=\frac1{j+1}.
\]
Then
\[
0<\varepsilon_j\le1,\qquad
\varepsilon_j<d_j
\]
for every \(j\).

Define
\[
\operatorname{ReciprocalIncrementMeanSquare}
\iff
\forall j,\ 
\operatorname{CriticalMertensIncrementMeanSquare}(\varepsilon_j).
\]

The source draft proves
\[
\operatorname{ReciprocalIncrementMeanSquare}
\Longrightarrow
\operatorname{ReciprocalCompensatedCorrelation}
\Longrightarrow
\alpha_W=0
\Longrightarrow
\mathrm{RH}.
\]

Every arrow after the first is reused from the existing source graph. The
unproved mathematical premise remains the family of increment mean-square
estimates.

## 5. Explicit weighted Mertens-square family

The existing module `CriticalWeightedMertensSquare` defines
\[
\operatorname{WM}_\varepsilon
\iff
\sum_{n\ge0}
M_n^2\,n^{-1}(n+1)^{-1-\varepsilon}<\infty.
\]

Its termwise square-root-gap estimate proves
\[
\operatorname{WM}_\varepsilon
\Longrightarrow
\operatorname{CriticalMertensIncrementMeanSquare}(\varepsilon).
\]

Thus the reciprocal family
\[
\forall j,\ \operatorname{WM}_{1/(j+1)}
\]
is a sufficient arithmetic condition for RH through the actual pickup.

The new module also proves monotonicity:
\[
0<\varepsilon\le\delta,\qquad
\operatorname{WM}_\varepsilon
\Longrightarrow
\operatorname{WM}_\delta.
\]
Since \(1/(j+1)\) is cofinal at zero, this gives the exact equivalence
\[
\boxed{
\forall\varepsilon>0,\ \operatorname{WM}_\varepsilon
\iff
\forall j,\ \operatorname{WM}_{1/(j+1)}.
}
\tag{4}
\]

Consequently the source draft exposes the following sufficient condition:
\[
\boxed{
\forall\varepsilon>0,\qquad
\sum_{n\ge0}
M_n^2\,n^{-1}(n+1)^{-1-\varepsilon}<\infty
\Longrightarrow \mathrm{RH}.
}
\tag{5}
\]

For \(n\ge1\), the weight in (5) is comparable, with constants depending on
\(\varepsilon\), to \(n^{-2-\varepsilon}\). The source module retains the exact
repository weight rather than replacing it with an asymptotic notation.

No converse from RH or from the compensated-correlation criterion to (5) is
asserted.

## 6. Relation to pointwise Mertens bounds

A pointwise family
\[
|M_n|\ll_\eta n^{1/2+\eta}
\]
can supply (5) by choosing \(\eta<\varepsilon/2\), but it is stronger than the
positive mean-square premise. The present route therefore keeps a genuinely
averaged arithmetic target and does not make pointwise Mertens control a
mandatory part of RH-E02.

Conversely, one fixed weighted square, one fixed damping, or one finite prefix
does not supply the cofinal criterion.

## 7. Controls and status

The implementation preserves:

- the actual signed \(Q_n\);
- the exact Mertens-derived increment;
- the strict condition \(\varepsilon<\sigma\);
- the reciprocal family at every \(j\);
- the existing compensated terminal subtraction through PR #344;
- the distinction between a sufficient positive majorant and an equivalent
  RH criterion.

Hostile substitutions include:

- setting \(\varepsilon=\sigma\);
- proving only the damping-one case;
- treating the increment series as unconditionally summable;
- dropping the Mertens endpoint from \(Q_n\);
- reporting the positive weighted-square premise as necessary for RH;
- treating source text or finite diagnostics as kernel acceptance.

The stacked implementation adds only one pure subject module, this note, and
one passive verification target. It does not modify current source, root
imports, pins, workflows, or execution state.

Lean parsing, elaboration, generated-declaration extraction, transitive
axiom/native review, independent review, and accepted replay remain pending.
