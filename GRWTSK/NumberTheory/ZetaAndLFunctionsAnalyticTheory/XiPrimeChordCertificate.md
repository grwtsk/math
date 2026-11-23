# A continuous prime-phase test above the verified zeta height

Write \(L=\xi'/\xi\), \(P(t)=\Re L(3/2+it)\), and \(a_3(t)=L'''(3/2+it)/6\). A finite certificate using the phases of the first 669 primes extends the region on which \(|a_3(t)|\le P(t)\) is known. The earlier divisor argument covered \(|t|\le T_0=3\cdot10^{12}-2\). The certificate covers every intermediate real height from \(T_0\) through the upper endpoint reported below. Conjugation gives the same assertion at negative heights. This extends an exterior derivative bound. Verifying new zeta zeros on the critical line is a different computation. [Earlier analytic reduction](XiExteriorTaylorScale.md) · [Platt and Trudgian, Theorem 1](https://arxiv.org/abs/2004.09765)

A second result applies throughout the full remaining height range. If the derivative bound fails at \(t\) and there is only **one** right-hand zero with \(\beta>0.6\) and \(|\gamma-t|<4\), counted with multiplicity, then that zero has \(\beta>0.875\) and \(|\gamma-t|<0.458\). Thus a failure requires either a zero with this stronger displacement and proximity or at least two locally displaced zeros. Bounds for up to eight zeros are given below.

## Continuous certification from a prime polynomial

For primes \(p\le5000\), set \(w_p=(\log p)^4/(6p^{3/2})\), \(W=\sum w_p\), and \(F(t)=\sum w_p\exp(it(\log p-11/2))\). Changing the common phase and conjugating preserve its modulus. Let \(b_j=\sum_{m\ge2}\Lambda(m)(\log m)^jm^{-3/2}/j!\). The two exterior gamma bounds and the unsigned mass of the Euler terms omitted from \(F\) show that a failure at \(t\ge T_0\) would require
\[
 |F(t)|> W+\tfrac12\log(T_0/(2\pi))-b_0-b_3-2/T_0>5.14252356.
\]
The cubic gamma error is bounded by \(t^{-3}\), and the degree-zero error by \(t^{-1}\). The last threshold bounds both using \(2/T_0\). The constants \(b_j\) are obtained by differentiating \(\log\zeta\) at real argument \(3/2\). [Exterior Taylor estimates](XiExteriorTaylorScale.md)

Let \(M=\sum w_p(\log p-11/2)^2\). On an interval \([v,v+h]\), expand both endpoints around an interior point \(t=v+uh\). Weight the two expansions by \(1-u\) and \(u\). The first-order terms cancel. Taylor's integral remainder and \(|F''|\le M\) bound the norm error from linear interpolation by \(Mh^2u(1-u)/2\le Mh^2/8\). Consequently a grid of step \(1/2\) needs a correction only \(M/32<0.90683416\). The calculation uses the actual curvature after centering the frequencies.

### Certifying all endpoint values

The [arithmetic fixture](../../../scripts/verify_xi_prime_chord_certificate.py) writes the half-unit index as \(j+2048k\), \(0\le j<2048\). Each prime's phase factors into a short phase with argument \(j(\log p-11/2)/2\) and a long phase with argument \((T_0+1024k)(\log p-11/2)\). All initial phases, unit steps and weights use 160-bit enclosing Arb arithmetic and certified nearest integer rounding. The long recurrence is restarted every \(65536\) blocks. This factors the evaluation into four real matrix products with a common dimension of 669.

For details of error propagation take \(Q=2^{28}\). Round each exact unit phase coordinate to a multiple of \(1/Q\), multiply using signed 64-bit integers, then round each coordinate of the product. If the previous norm error is \(e\), the next is at most \(e+(2+e)/Q\). Thus at step \(j\le65536\) the error is at most \(3(j+1)/Q\) by induction. Phase coordinates stay below 1.001 in modulus and the fixed-point intermediate products fit signed 64-bit arithmetic. For the final matrices round coordinates to multiples of \(1/C\) with \(C=2^{17}\). If \(d_s,d_l\) are the uniform phase error bounds for short and long recurrences, the weighted short rows have summed norm error at most \(A=W d_s+669(3/Q+1/C)\), including rounding of weights and their products. The long rows have componentwise complex norm error at most \(B=d_l+1/C\). Therefore every sampled polynomial value has total error at most \(A+(W+A)B\).

After rescaling by \(C\) every matrix entry is integral. The real binary64 dot products use only exactly representable integers: even the upper bound \(17\cdot4\cdot669(C+1024)^2\) on their final scaled score is below \(2^{53}\). Every partial dot product and each product before summation obey the same limit. The implementation assumes ordinary binary64 multiply-add semantics for its real matrix multiplication; reduced-precision kernels would require separate verification. For the integer real and imaginary outputs \(x,y\), let \(a=\max(|x|,|y|)\), \(b=\min(|x|,|y|)\). The upper bound \(\sqrt{x^2+y^2}\le a+5b/12\) follows by squaring and using \(0\le b\le a\). The largest integer score \(12a+5b\) therefore yields a rational upper bound for all sampled values.

The full default calculation covered 2,147,483,648 half-unit grid points, from \(T_0\) through 3,001,073,741,821.5 inclusive. The largest integer score was 693,580,313,342. The quantization allowance was below 0.01212975, the sampled prime norm including this allowance was below 3.376438, and chord interpolation bounded the continuous norm by 4.283272. Its strict margin against the violation threshold exceeded 0.85925235. This extends the order-three inequality by 1,073,741,823.5 height units beyond the previous bound. The first 805,306,368 grid points had the stronger margin 1.11856. Independent verification of RH continues to use its previously published height.

## Exact positive displacement energy

The compensated pair has a simplification at the endpoint \(h=1\). Put \(x=(\gamma-t)^2\), \(\sigma=\beta-1/2\) for right-hand zeros, \(D_\pm=(1\pm\sigma)^2+x\), and \(S(t)=\sum_\rho m_\rho|3/2+it-\rho|^{-4}\), summing over the full divisor. Expansion of the two rational terms in the preceding [reflected-pair formula](XiReflectedTaylorBudget.md) gives exactly
\[
 (D_-D_+)^2 F_1=-32\sigma^2(1+x),\qquad
 2S(t)-P(t)+P'(t)
 =32\sum_{\beta>1/2}m_\rho\,
      \frac{\sigma^2(1+x)}{D_-^2D_+^2}.
\]
Here \(P'\) is the horizontal derivative at radius one. Real zeros have zero individual slack, and a reflected pair contributes once on the right. The sums converge absolutely by the zero count. At any one fixed height the right side vanishes exactly when RH holds. Evaluating the unsigned full-divisor sum \(S(t)\) is the unresolved input to this equality test.

The prime coefficient \(\Lambda(m)m^{-3/2}(\log m-1)\) in \(P+P'\) is negative only at \(m=2\). Charging that one term with its actual sign and using the same exterior gamma estimates gives
\[
 P+P'\ge g(t)+b_0-b_1-
    2\log 2(1-\log 2)/2^{3/2}-2/|t|>10.94575312
      \qquad (|t|\ge T_0),
\]
where \(g(t)=\tfrac12\log(|t|/(2\pi))\). The right-hand expression is increasing in \(|t|\); evaluating its constants at \(T_0\) suffices. Since \(|a_3|\le S(t)\), an order-three failure forces the positive weighted sum in the display *before multiplication by 32* to exceed \(0.34205478\). This gives a global lower threshold for genuine transverse displacement even when arbitrarily many small displaced pairs are present.

### A one-center arithmetic Hardy operator test

Let \(K\) be the [arithmetic Hardy and theta-jet operator](XiHardyDissipativePart.md). Its construction precedes extraction of its spectrum and gives a Hilbert–Schmidt operator with eigenvalues \(\lambda=i/(\rho-1/2)\) at the analytic multiplicities. Set \(d=1+it\) and \(A_t=K^2(I+i d K)^{-2}\). The inverse exists since \(3/2+it\) is exterior to the zeta strip, and \(A_t\) is trace class. In the triangular bases of the two Hardy blocks and the diagonal basis of the real block, the diagonal entries of \(A_t\) are \(\lambda^2/(1+i d\lambda)^2=-(3/2+it-\rho)^{-2}\). This follows by applying the rational function to the invariant finite-dimensional triangular sections, or their adjoints. Consequently the Hilbert–Schmidt norm satisfies \(\|A_t\|_2^2=S(t)+\sum_{j\ne k}|(A_t)_{jk}|^2\). The following one-center test therefore uses the arithmetic operator and two exterior logarithmic derivatives:
\[
 \mathrm{RH}\quad\Longleftrightarrow\quad
 \|K^2(I+iK)^{-2}\|_2^2
 \ \le\ \tfrac12\bigl(L(3/2)-L'(3/2)\bigr).
\]
Indeed the excess over the right side is the nonnegative off-diagonal sum plus sixteen times the positive displacement sum at \(t=0\). Under RH the two off-line Hardy blocks vanish and the remaining real block is diagonal, so equality holds. Conversely even a single off-line pair supplies strictly positive displacement. The scalar threshold is between 0.0000737724554835302319 and 0.0000737724554835302320 by interval differentiation of the completed zeta function at \(3/2\). The needed independent upper bound for the Hilbert–Schmidt norm is unresolved.

## Local multiplicity and the position of a possible zero

Use the [compensated reflected-pair function](XiReflectedTaylorBudget.md) \(F_h(\sigma,x)\), with \(h=13/20\), \(\sigma=\beta-1/2\) for right-hand zeros, and \(x=(\gamma-t)^2\). Outside \(\sigma>0.1\), \(|\gamma-t|<4\), every pair has \(F_h\ge0\); critical-line zeros have nonnegative individual slack. The real Euler sum gives \(hP+\partial_rP_r|_{r=1}>5.86326087\) at \(|t|\ge T_0\). Thus failure of the order-three bound implies
\[
 \sum_{\sigma>0.1,\ |\gamma-t|<4}m_\rho\max(0,-F_h(\sigma,x))>5.863 .
\]
If the sum is supported on at most \(k\) zeros counted with multiplicity, at least one has \(F_h<-5.863/k\). The two inequalities in each row apply to that **same** zero.

| At most \(k\) local zeros | \(\beta>\) | \(|\gamma-t|<\) |
|---:|---:|---:|
| 1 | 0.875 | 0.458 |
| 2 | 0.809 | 0.630 |
| 3 | 0.776 | 0.732 |
| 4 | 0.755 | 0.806 |
| 5 | 0.741 | 0.865 |
| 6 | 0.731 | 0.914 |
| 7 | 0.723 | 0.956 |
| 8 | 0.716 | 0.993 |

For each row the fixture certifies \(F_h+5863/(1000k)\ge0\) both on the entire small-displacement horizontal strip and on the entire far-height strip determined by the displayed numbers. It clears the positive denominator and uses the earlier rational coefficient test on two unbounded boxes per row. Each succeeds with a single box. For every multiplicity the earlier bound \(\beta>0.753\) within 2 also remains available, possibly from a different zero. In particular, if all local right-hand zeros with \(\beta>0.6\) are simple, separated in height by at least 8, and satisfy \(\beta\le0.875\) in the relevant range enlarged by 4, then the order-three bound holds throughout it. The estimates give no unconditional exclusion of the clustered alternative.

The [Lean source](XiPrimeChordCertificate.lean) formalizes cancellation of the linear term, the exact quadratic weight, its uniform cap and the norm comparison with the interpolating chord. The Euler and reflected-divisor reductions are analytic arguments. The grid certificate and the 16 rational polynomial certificates are finite computations outside Lean. At Lean blob `d71c5849dcc365dc27367e3b7a8d05f234a9f322`, the four declarations elaborated on Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; the transitive axiom audits used only `propext`, `Classical.choice` and `Quot.sound`. Source-bound fresh kernel replay is tracked on [issue #1850](https://github.com/grwtsk/math/issues/1850). Independent external analytic review remains open.
