# Recovering transverse moments from Gaussian scans of ξ

For \(t>0\), a real center \(b\), and \(u\ge0\) consider
\[
 F(t,u,b)=\sum m\exp[-t(g-b)^2-u d^2],\qquad
 M(t,u,b)=\sum m d^2\exp[-t(g-b)^2-u d^2].
\]
Here \(g=\Im\rho, d=1/2-\Re\rho\) for the complete ξ divisor. The preceding [boundary prescription](XiTransverseHeatKernel.md) directly supplies \(F(u,u,c)\) at any center \(c\). For \(u>t\) put \(s=tu/(u-t)\). Completing a Gaussian square and using Tonelli gives
\[
 F(t,u,b)=\sqrt{(s+u)/\pi}\int e^{-s(b-c)^2}G(u,c)\,dc .
\]
The same formula with \(u=t\) has the limiting direct value \(G(t,b)\). For fixed \(t,b\), the entire continuation in complex \(u\) follows from \(0\le d^2\le1/4\), with bound \(F(t,0,b)\exp(|u|/4)\). The Laplace moments of every order are thus determined by independently prescribed analytic data.

For Gaussian summability take \(a=2-\Re\rho\in[1,2]\), \(x=g-b\) and \(C=4+2b^2+2/t\). Then
\[
 a^2+g^2\le4+2b^2+2x^2\le C(1+tx^2)\le C e^{tx^2}.
\]
It follows that \(m e^{-tx^2}\le C m a/(a^2+g^2)\). The two-sided strict anchor tail is summable unconditionally by the repository's inverse-square estimate, and its bounded complementary head is finite. The Lean proof uses this exact anchor. Each transverse derivative summand has absolute value at most the original summable Gaussian. The dominated-series derivative theorem gives \(\partial_u F=-M\) on \(u>0\). Positivity isolates each individual zero from the sum, so \(M=0\) at one specified real center \(b\) and widths \(t>0,u\ge0\) if and only if Mathlib's Riemann Hypothesis holds. For the derivative criterion take \(u>0\). [Lean statement and proof](XiGaussianTransverseMoment.lean) · [Anchor estimate](XiAnchorInverseSquareSummability.lean)

## Quantitative loss and the first off-line height

A measured upper bound \(M\le\epsilon\) implies that every zero of order \(m\) at \(|g-b|\le L\) satisfies \(m d^2\le\epsilon e^{tL^2+u/4}\). Conversely put \(T=3\cdot10^{12}\), assume \(|b|<T\) and \(tT(T-|b|)\ge1\). The published finite-height verification and the two-sided bound \(\sum_{|g|>T}m/g^2<C_0=2.960\cdot10^{-12}\) give
\[
 0\le M(t,u,b)\le (C_0/4) T^2 e^{-t(T-|b|)^2}.
\]
Indeed \(y^2 e^{-t(y-|b|)^2}\) decreases for \(y\ge T\). This is a tail bound at all \(u\ge0\). Every positive value, however small, is consistent with some off-line mass at a sufficiently large height or small displacement. The cited finite-height computation was not replayed for this estimate. [Platt and Trudgian, Theorem 1](https://arxiv.org/abs/2004.09765) · [Reciprocal-square bound](XiSechProjectionTransport.md)

If an off-line zero exists, discreteness in the bounded strip gives a nearest off-line height distance \(L=\min_{d\ne0}|g-b|\). For fixed \(u\ge0\),
\[
 \lim_{t\to\infty} e^{tL^2} M(t,u,b)
 = \sum_{|g-b|=L} m d^2 e^{-u d^2}>0 .
\]
Dominated convergence holds using \(t\ge1\) and the majorant \(m e^{L^2-(g-b)^2}/4\) after removing the zero terms. In particular \(L^2=\lim -\log(M)/t\). The finite exponential sum on the right recovers the distinct positive values of \(d^2\) and their aggregate orders in that fiber. Successively take the smallest exponent by logarithmic slope as \(u\to\infty\), recover its coefficient, and subtract. Symmetric heights at the same distance contribute together.

## Positive reconstruction from observable widths

Set \(q=e^{-td^2}\), \(q_0=e^{-t/4}\), \(w=m e^{-t(g-b)^2}\). The nonnegative finite differences
\[
 B_n=\sum_{j=0}^n(-1)^j {n\choose j}F(t,(j+1)t,b)=\sum wq(1-q)^n
\]
involve only widths accessible by center convolution. Their partial sums reconstruct the height-only mass,
\[
 0\le F(t,0,b)-\sum_{n<N}B_n
 =\sum w(1-q)^N \le e^{t/4}(1-e^{-t/4})^N G(t,b).
\]
This quantitative reconstruction includes the contribution of possible off-line zeros. The leading difference \(B_1\) vanishes exactly under RH. Uniform sample errors of size \(\eta\) can contribute up to \((2^N-1)\eta\) to the partial sum. Finite precision can obstruct an inference of exact equality even at a very large truncation. The geometric bounds on each atom are kernel-checked. The application to the entire power series, the nearest-height limit and the finite-height numerical constants are analytical arguments. [Geometric bounds](XiTransverseHeatKernel.lean)

Lean 4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612 elaborated this source at blob 5de9719956850aa2ad3bb76f90b583a774c80aec. A new empty kernel environment replayed the used declaration closure (10 roots, 62898 declarations). The transitive audits used only axioms among propext, Classical.choice and Quot.sound. Independent external review of the manuscript is outstanding. [Verification record](https://github.com/grwtsk/math/issues/1850)
