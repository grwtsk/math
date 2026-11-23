# Unconditional positive trace forms on coarse height windows

Let \(I=(T,T+L]\), \(0<L\le T\), and \(z=\gamma+i\delta\) denote the rotated coordinate of an actual nontrivial zeta zero, with \(|\delta|<1/2\) and analytic multiplicity \(m\). Put
\[
 H_I(f)=\Re\sum_I m f(\gamma+i\delta)\overline{f(\gamma-i\delta)}.
\]
We bound this form directly on spaces of entire test functions. The estimates below are analytic deductions from the counting theorem, with finite algebra checked in the [Lean module](XiWindowSampling.lean). The [companion theorem](XiLocalVarianceCriterion.md) explains why estimates extending to all short intervals would matter.

## Sampling from a zero count

Write \(F(t)=t\log(t/(2\pi e))/(2\pi)\). For \(T\ge10^6\), Corollary 1.2 of Hasanalizade, Shen and Wong bounds \(|N-F|\) on \([T,2T]\) by \(E=0.1038\log(2T)+0.2573\log\log(2T)+9.3675\le\log T\). Also \(\log T/8\le F'\le\log T/6\). The numerical ratios attain their required extrema at the lower threshold or at infinity: for \(x=\log T\) on this range, \(\log(x+\log 2)/x\) and \((x+\log 2)/x\) decrease and \(1-\log(2\pi)/x\) increases. The upper derivative bound follows from \(2T/(2\pi)<T\) and \(1/(2\pi)<1/6\). [Hasanalizade, Shen and Wong, JNT 235 (2022), Corollary 1.2 and Table 2](https://doi.org/10.1016/j.jnt.2021.06.032)

Use the ordinary length measure on \(I\). Suppose a finite-dimensional differentiation-invariant test space has \(\|f'\|_2\le K\|f\|_2\) and squared endpoint evaluations bounded by \(U\|f\|_2^2\). Integrating \(|f|^2\) against \(d(N-F)\) by parts costs at most \(E(2U+2K)\|f\|_2^2\), since \(\int|(|f|^2)'|\le2\|f'\|_2\|f\|_2\). Consequently the real-height samples \(\sum m|f(\gamma)|^2\) are bounded below and above by \(A\|f\|_2^2\) and \(B\|f\|_2^2\), with
\[
 A=\min F'-E(2U+2K),\qquad B=\max F'+E(2U+2K).
\]
Expand the entire function \(g(z)=f(z)\overline{f(\bar z)}\) about each real \(\gamma\). Its real Taylor coefficients eliminate all odd orders after taking the real part at \(\gamma+i\delta\). In each even order \(r\ge2\), distribute the \(r\) derivatives by Leibniz. Cauchy–Schwarz on the positive sample measure and the upper sampling bound on each derivative give at most \(BK^r\|f\|_2^2\) for each product before binomial coefficients. The factor \(|\delta|^r\le 2^{-r}\) cancels the binomial sum. Thus
\[
 H_I(f)\ge[A-B(\cosh K-1)]\|f\|_2^2 .
\]
Both Taylor summation and termwise estimates hold for the following polynomial and finite Fourier spaces. If \(K,U\le1/100\), then \(\cosh K-1<1/10000\) and the lower bound is at least \((\log T)\|f\|_2^2/12\).

On polynomials of degree at most \(d\), the rescaled orthonormal Legendre basis gives \(U=(d+1)^2/L\) and \(K^2\le d(d+1)^2(d+2)/L^2\le U^2\). Indeed the endpoint values of the classical Legendre polynomials are \(P_k(\pm1)=(\pm1)^k\) and their norm squares on \([-1,1]\) are \(2/(2k+1)\). Integration by parts against \(P_j\) for \(j<k\) gives the expansion of \(P_k'\) with coefficient \(2j+1\) when \(k-j\) is odd and zero otherwise. Orthogonality gives \(\int(P_k')^2=k(k+1)\). Summing the rescaled derivative norm squares bounds the squared differentiation norm by its Hilbert–Schmidt norm squared. For exponentials with frequencies \(2\pi(k-d/2)/L\), \(0\le k\le d\), orthogonality gives \(K=\pi d/L\) and \(U=(d+1)/L\). For example at \(T=10^{15},L=10^6\) the lower bound covers polynomial degree 99 or Fourier degree 3183. [Classical normalization and orthogonality](https://dlmf.nist.gov/18.3)

## All real intervals of length at least eleven

For \(T\ge2\cdot10^{12}\), use Theorem 1.1 and the third row of Table 2 of the same paper (its threshold is 30,610,046,000). The error for \(N(t)-F(t)+1/8\) on \([T,2T]\) is bounded by \(e\log T\), \(e=0.270\), by rounding the row upwards to \((0.1120,0.1900,3.7470)\). The constant shift cancels on differences. Also \(F'\ge b\log T\) for \(b=0.1485\). Use \(F'\le\log T/6\) as above. The total count is at most \((L/6+2e)\log T\). One-sided limits give the same bounds whether a cut endpoint is included or excluded.

Let \(c\) be the mean of the heights in the interval. For either side of \(c\), of length \(l\), there are at least \(\log T\,(b(l-r)-2e)_+\) zeros on that side at distance greater than \(r\), for \(0\le r\le l\). Integration against \(2r\,dr\) bounds their squared distances below by \((b\log T/3)(l-2e/b)_+^3\). Summing the sides and using convexity yields
\[
 \frac1{\log T}\sum m(\gamma-c)^2
 \ \ge\ \frac{2b}{3}(L/2-2e/b)_+^3 .
\]
For \(L\ge11\) the right side exceeds \((L/6+2e)/4\), an upper bound for \(\sum m\delta^2/\log T\). This follows by substitution at 11 and comparison of derivatives thereafter. Thus every such interval has nonnegative signed variance. The same calculation with the third row at \(T\ge10^{100}\) gives \((e,b)=(0.134,0.157)\) and length 7. At \(T\ge10^{300}\) use Corollary 1.2 and \((e,b)=(0.121,0.158)\) to get length 6. The [arithmetic checks](../../../scripts/verify_xi_window_sampling.py) evaluate the boundary constants and the three cubic inequalities.

For the assertion on the entire real axis, divide any interval of length at least 11 into finitely many intervals of lengths from 11 to 22, assigning boundary fibers once. A piece either lies inside the verified strip of heights \(|\gamma|\le3\cdot10^{12}\), or lies entirely at absolute height above \(2\cdot10^{12}\). In the first case the signed variance is an ordinary variance by the finite theorem of Platt and Trudgian; in the second case use the preceding estimate and reflection. The merge identity then proves nonnegativity for the full interval. This argument leaves arbitrarily short intervals at high ordinates open. A nonreal pair can give a strictly negative variance on such a short interval while broad intervals remain positive. [Platt and Trudgian, 2021](https://arxiv.org/abs/2004.09765) · [Merge identity](XiWindowVariance.lean)

In namespace `GRWTSK.XiWindowSampling` the declarations `legendre_derivative_trace`, `endpoint_trace`, and `derivative_trace_le` check the finite-sum constants, `pair_real_part` gives a complementary polarized-square identity, and `sample_lower` verifies the final arithmetic for general sampling. The estimates for the genuine zeta count, all-interval conclusion, Fourier and Legendre analysis are manuscript results. Their full Lean verification has not been performed.

Native elaboration, fresh kernel replay and transitive axiom audits passed with Lean 4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612 for XiWindowSampling at b903247bec052ebeb6400e8d47f1d809cc5d6ca9. Across the declarations the reported axioms were propext, Classical.choice and Quot.sound.
