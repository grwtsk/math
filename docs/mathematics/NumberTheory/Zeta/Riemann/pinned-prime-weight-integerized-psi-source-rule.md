# Integerized Chebyshev \(\psi\) source rule

Status: `SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED`  
Issue: `#846`  
Parent issue: `#830`  
Parent draft PR: `#832`  
Implementation branch: `research/846-pinned-prime-psi-grid-v01`  
Exact parent head: `b216617f655b33636bfc73a927c36e4f03642578`

## Deterministic sawtooth in the parent response

The parent source uses

\[
R_{\mathrm{real}}(j,v)=X_j(\psi(v)-v),
\qquad X_j=\operatorname{dyadicScale}(j).
\]

Writing \(m=\lfloor v\rfloor\), Chebyshev's staircase identity gives
\(\psi(v)=\psi(m)\), hence

\[
R_{\mathrm{real}}(j,v)
=X_j(\psi(m)-m)+X_j(m-v).
\]

The second term is deterministic. At \(v=m+\tfrac12\), it equals
\(-X_j/2\). If the parent response is bounded by \(CA_X^2\) at both \(m\)
and \(m+\tfrac12\), the triangle inequality forces

\[
\boxed{X_j\le 4CA_X^2.}
\]

This lower floor is caused by sampling between jumps of the staircase, not by
prime distribution.

## Integerized signed rule

Define

\[
R_{\mathbb Z}(j,v)=X_j(\psi(\lfloor v\rfloor)-\lfloor v\rfloor)
\]

and

\[
S_{\mathbb Z}(j,v)
=\theta(v)-\psi(v)+\lfloor v\rfloor-v.
\]

Then the source proves the exact identity

\[
\boxed{
\theta(v)-v=\frac{R_{\mathbb Z}(j,v)}{X_j}+S_{\mathbb Z}(j,v).
}
\]

No term is deleted. The floor correction moves from the nonlinear response to
the signed residual.

For every nonnegative target,

\[
|\lfloor v\rfloor-v|\le1.
\]

Consequently the integerized residual costs at most one additional unit beyond
the parent higher-prime-power residual. The parent theorem therefore still
gives, for every \(\rho\ge3/4\),

\[
|S_{\mathbb Z}(j,v)|+1
\ll_\eta X_j^{Q(\rho)+\eta/2},
\qquad Q(\rho)=2\rho-1.
\]

The two live exponents remain

\[
\rho=\frac78:\quad \frac34+\frac\eta2,
\qquad
\rho=\frac34:\quad \frac12+\frac\eta2.
\]

## Exact remaining theorem

The nonlinear supplier is now the integer-target estimate

\[
\boxed{
X_j|\psi(m)-m|
\le
C\left(
\sum_{X_j<p\le2X_j}
\frac{\log p}{p}(|\theta(p)-p|+1)
\right)^2
}
\]

for all sufficiently late stages and every integer

\[
2X_j\le m\le4X_j.
\]

The source proves that this integer condition is exactly equivalent to the
all-real response bound for the integerized rule: flooring preserves the target
octave, and the integerized response depends only on the floor. The parent
all-real criterion implies the integer criterion by restriction. No converse is
claimed for the parent response because it still contains the sawtooth.

## Conditional transport

For every \(\rho\ge3/4\), the formal chain is

```text
integer psi capacity
  -> fixed signed-source coupling
  -> fixed Bertrand-ratio criterion
  -> QuadraticThetaSourceRecurrenceAt(rho)
  -> QuadraticThetaDescentAt(rho).
```

The integer capacity itself remains open. A successful proof must come from an
independent finite Selberg, explicit-formula, detector, or equivalent
cross-scale arithmetic identity with endpoint, normalization, smoothing,
summation-order, and tail channels retained.

## Nonclaims

The packet does not prove the integer capacity, a global explicit formula, a
complexity-to-zeta transfer, the Riemann Hypothesis, or any kernel-accepted Lean
result. No Lean or Lake execution is reported.
