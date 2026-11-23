# Boundary zeros and the rate of the arithmetic Hardy approximation

With the bounded multiplier and norm of the [Hardy determinant construction](XiHardyDissipativePart.md), put
\[
 d=(1-w)/(1+w),\quad s=1/2+d,\quad
 g(w)=(s-1)\zeta(s)/(s+2)^8,\quad h=(1-g/g(1))/(1-w).
\]
For \(c\in\mathbb C\) let \(E_n(c)=\min_{\deg p<n}\|h-c-gp\|_{H^2}^2\) and \(D_c=\lim E_n(c)\). The quantities are defined without a zero list. The trace of the positive imaginary part of the upper Hardy block is \(D=D_0\). For all sufficiently large \(n\),
\[
 E_n(0)-D\ \gg\ \frac{1}{\sqrt n\log n}.                                      \tag{1}
\]
The estimate holds even if \(D=0\). There is a different rate test for the *modified* target:
\[
 \liminf_{n\to\infty}\sqrt n\log n\,[E_n(1/2)-D_{1/2}]=0
 \quad\Longrightarrow\quad D=0.                                                    \tag{2}
\]
In particular the premise only concerns convergence to the optimum. Its validity for zeta is open. The calculation also gives computable lower and upper certificates for each finite-dimensional energy using Taylor coefficients and an explicit omitted-tail bound.

## Reduction to boundary interpolation

Write \(g=BO\) for its inner and outer factors, with the disk variable throughout unless a half-plane coordinate is specified. The preceding construction shows that \(B\) is a pure Blaschke product with zeros accumulating only at \(-1\), and \(g(1)\ne0\). In particular \(B(1)\) is unimodular. Also \(B(0)\ne0\) since the disk center corresponds to \(s=3/2\). The projections of \(h\) and \(1\) on \(H^2\ominus BH^2\) are respectively \(k_1^B=(1-\overline{B(1)}B)/(1-w)\) and \(k_0^B=1-\overline{B(0)}B\). Orthogonal splitting therefore gives
\[
 D_c=\|k_1^B-c k_0^B\|^2,\qquad
 E_n(c)-D_c=\min_{\deg p<n}\|H_c-Op\|^2,\qquad
 H_c=\frac{\overline{B(1)}-O/g(1)}{1-w}-c\overline{B(0)}.                     \tag{3}
\]
The numerator vanishes at 1, so \(H_c\) is bounded analytic. At every boundary zero of zeta with ordinate \(t\), let \(\omega_t=(1-it)/(1+it)\). There \(O(\omega_t)=0\), including any multiplicity, and every residual takes the value
\[
 H_c(\omega_t)=A_c+\frac{\overline{B(1)}}{2it},\qquad
 A_c=\overline{B(1)}/2-c\overline{B(0)}.                                    \tag{4}
\]
We prove the bound (1) with the left side replaced by \(E_n(c)-D_c\) whenever \(A_c\ne0\); the constant can depend on \(c\) and the nonzero amplitude. For \(c=0\), its modulus is \(1/2\). For \(c=1/2\) vanishing would give \(B(0)=B(1)\), forcing a constant inner factor by the maximum principle, and hence \(D=0\). This proves (2) from the bound.

## Conditioning the polynomial coefficients

We give details because small values of \(g\) near the accumulating boundary zeros prevent the use of a uniform lower bound on the circle. For \(n\ge3\), every polynomial of degree less than \(n\) satisfies
\[
 \|p\|_{L^\infty(\mathbb T)}\le \exp(C\log^2 n)\,\|Op\|_{H^2}.             \tag{5}
\]
In half-plane coordinates \(O(d)\) continues to the left by the formula \(f(d)\overline{B(-\bar d)}\), where \(f(d)=(s-1)\zeta(s)/(s+2)^8\) and \(B\) here denotes its half-plane version. The identity follows by inner reflection across each finite boundary arc and analytic continuation. It has no poles there except the possible rational pole at \(s=-2\). In any fixed-width vertical strip of large height, \(O\) is bounded by a power of \(2+|\Im d|\): on the right it is bounded by outer factorization, on the left the reflected inner factor has modulus at most one and Euler–Maclaurin gives polynomial growth of the meromorphic zeta continuation on the strip. In the half-plane \(\Re d\ge2\), \(|O|\ge|f|\gg (1+|d|)^{-8}\) by the absolutely converging reciprocal Euler product.

For large \(|t|\), on the disk of radius 6 around \(d_*=2+it\) the supremum is at most \(C(2+|t|)^C\). The preceding lower bound at its center and Jensen's formula give \(O(\log(2+|t|))\) zeros on the disk of radius 5. Select any radius \(R\in[4,5]\) avoiding their moduli around the center. Divide \(O\) by all its disk Blaschke factors on radius \(R\), including multiplicities. The quotient is zero-free, bounded above by the same polynomial since each factor has boundary modulus one, and bounded below at the center by \(|O(d_*)|\). Applying Harnack to the logarithm of that upper bound divided by its modulus gives a lower bound \((2+|t|)^{-C}\) on radius 2, uniformly in \(R\). All removed zeros have real part at most zero. At \(d=x+it\), \(0<x\le2\), each normalized disk Blaschke factor then has modulus at least \(x/(R+2)\), by its usual numerator-distance formula. Thus
\[
 \log |O(x+it)| \ge -C\log(2+|t|)\,[1+\log^+(1/x)] .
\]
For bounded \(t\) the same lower bound with an enlarged constant follows by compactness, factoring the finitely many boundary zeros on a neighborhood of that compact interval. The possible rational pole is strictly to its left. This argument uses no lower bound for the horizontal distance of an off-line zero to the line.

On \(|w|=r=1-1/n\), \(\Re d\ge (1-r)/(1+r)\) and \(|d|\le(1+r)/(1-r)\). Consequently \(\min_{|w|=r}|O(w)|\ge\exp(-C\log^2 n)\). The Hardy point-evaluation bound gives \(\sup_{|w|=r}|Op(w)|\le (1-r^2)^{-1/2}\|Op\|_2\). Applying Cauchy's coefficient estimate to \(p\) on that circle, summing the \(n\) bounds and using \(r^{-(n-1)}\le e\) proves (5). For a minimizer in (3) one has \(\|Op\|_2\le 2\|H_c\|_2\) by comparison with zero.

## Localization at a growing set of actual boundary zeros

There are \(\gg T\) critical-line ordinates in \([T/C_0,T]\) separated from each other by at least 1, for all sufficiently large \(T\) and a fixed sufficiently large \(C_0\). Indeed Bui, Conrey and Young prove a positive lower proportion of all zeros are simple on the line. The Riemann–von Mangoldt count gives \(\gg T\log T\) in the displayed range upon taking \(C_0\) large. Each unit interval contains \(O(\log T)\) such zeros, either by the local counting estimate or the disk Jensen bound above for \(O\), whose boundary zeros agree with those of zeta. Selecting one point from each occupied unit interval in the more numerous parity class yields the claimed spacing. We use the unconditional proportion alone. [H. M. Bui, J. B. Conrey and M. P. Young, arXiv:1002.4127v2, Theorem 1.1](https://arxiv.org/pdf/1002.4127v2)

For those ordinates the exact chord length is \(2|t-u|/(|1+it||1+iu|)\). Thus disks of common radius \(R_0=b/T^2\) about the selected \(\omega_t\) are disjoint when the positive absolute \(b\) is small. They map into a bounded-width vertical strip at height comparable to \(T\): the inverse Cayley map differs from its center value by \(2|w-\omega_t|/(|1+w||1+\omega_t|)\), with \(|1+\omega_t|\asymp T^{-1}\). Hence \(O,H_c\) continue to each closed disk and are bounded there by \(CT^C\), uniformly in the selected points. For \(H_c\), the denominator \(1-w\) is bounded away from zero there.

Take \(k=\lceil K\log^2n\rceil\), \(M=\lceil16/R_0\rceil\), and \(T=\epsilon\sqrt n/\log n\). Choose fixed \(K\) sufficiently large in terms of (5), then fixed \(\epsilon>0\) sufficiently small that \(Mk+k\le n\) for large \(n\). For each selected \(u=\omega_t\) define
\[
 Q_u(w)=\left(M^{-1}\sum_{j=0}^{M-1}(\bar u w)^j\right)^k .
\]
It equals 1 at \(u\), has modulus at most 1 on the circle, and satisfies \(|Q_u(w)|\le(2/(M|w-u|))^k\) there by the geometric sum. Let \(P_O,P_H\) be the Taylor polynomials of degree \(k\) of the local functions at \(u\). For \(x=|w-u|/R_0\le1/2\), each error is at most \(CT^C 2^{-k}\), by Cauchy's formula. For \(x\ge1/2\) the Taylor polynomials themselves are bounded by \(CT^C(k+1)\max(1,x)^k\), and \(|Q_u(w)|\le(1/(8x))^k\). The original functions are bounded on the circle. These estimates and (5) give, for a minimizing \(p\),
\[
 \big\|Q_u(H_c-Op)-R_u\big\|_2\le n^{-4},\qquad
 R_u=Q_u(P_H-P_O p).
\]
Indeed \(K\) can absorb \(\exp(C\log^2n)CT^C(k+1)\) against \(2^{-k}\), and the polynomial product on the outer arc retains a factor at most \(4^{-k}\). In particular \(R_u\) is a polynomial of degree at most \(2n\) and \(R_u(u)=H_c(u)\).

For any such polynomial, Cauchy–Schwarz on its coefficients gives \(|R_u(u)|\le\sqrt{2n+1}\|R_u\|_2\). If \(A_c\ne0\), (4) bounds \(|R_u(u)|\) below by \(|A_c|/2\) uniformly for large \(T\). Consequently each \(\|Q_u(H_c-Op)\|_2^2\gg_c 1/n\). The arcs \(x<1/2\) are disjoint, so pointwise \(\sum_u |Q_u|^2\le1+O(T)4^{-2k}\), where the number of selected points is \(O(T)\) by separation. Integrating against \(|H_c-Op|^2\) and summing the lower bound proves \(E_n(c)-D_c\gg_c T/n\). This gives (1) and (2).

A finite polynomial multiplier can behave differently. For \(g=1+w\) and its associated \(h\), direct interpolation at \(-1\) gives \(D=0\) and \(E_n(0)=1/[4(n+1)]\). Here the residual has degree at most \(n\), its value at \(-1\) is \(1/2\), and every polynomial with that one constraint occurs. Burnol's finite polynomial formula gives the full limiting constant, with squared multiplicities when the boundary roots repeat. His separate Nyman–Beurling estimate uses a dilation cutoff whose logarithm is the relevant scale. In (1) the multiplier has infinitely many boundary zeros clustering at a single disk point, the approximants have a polynomial degree cutoff, and the nonzero possible projection error has been subtracted. [J.-F. Burnol, arXiv:math/0103058v2, Theorems 1.3 and 1.4](https://arxiv.org/pdf/math/0103058v2)

## Suppressing the limiting projection and recovering an off-line radius

There is an arithmetic family of modified targets for which the limiting squared errors are uniformly tiny. Write \(r(w)=(1+w)/2\), \(q_m=(1-r^m)/(1-w)\), a polynomial for \(m\ge0\), and take the limits
\[
 \Delta_m=\lim_{n\to\infty}\min_{\deg p<n}\|h-q_m-gp\|^2 .
\]
Here \(q_0=0,q_1=1/2\), so \(\Delta_0=D,\ \Delta_1=D_{1/2}\). Let \(S\) be the compressed shift on \(\mathcal K=H^2\ominus BH^2\). Since \(h-q_m-r^mh=-q_mg/g(1)\), and multiplication by \(r\) preserves \(BH^2\), projection gives the exact identity
\[
 \Delta_m=\|r(S)^m k_1^B\|^2.                                                     \tag{7}
\]
The Cayley formula from the trace construction gives \(r(S)=L(L+iI)^{-1}\), compact since \(L\) is Hilbert–Schmidt. Dissipativity implies \(\|(L+iI)x\|\ge\|x\|\), and \(L+iI=2i(I-S)^{-1}\) is invertible. In the triangular orthonormal basis of the preceding construction the diagonal of \(L\) consists of \(i/d_\rho\) for right-half zeros. The strictly triangular entries come from \(2i\Im L\); their Hilbert–Schmidt norm is at most \(2D\). Thus with \(T_0=3\cdot10^{12}\), the published verified-height theorem and previous tail estimate give
\[
 0\le \Delta_m\le D(T_0^{-1}+2D)^{2m}< 7.4\cdot10^{-13}(1.82\cdot10^{-12})^{2m}.
\]
The sequence counts the amplitude of the limiting projection for successively altered targets. Arbitrarily small errors obtained by changing the target this way occur even if \(D>0\). For **each fixed** \(m\), vanishing still implies \(D=0\): at every interior zero \(\omega_\rho\) the projection takes the value \(r(\omega_\rho)^m/(1-\omega_\rho)\), nonzero. This follows since evaluation annihilates \(BH^2\). [Published verified height, Theorem 1](https://arxiv.org/abs/2004.09765) · [Trace and diagonal bounds](XiHardyDissipativePart.md)

More precisely the two-stage arithmetic limit determines the distance to the nearest right-half-plane zero in the shifted coordinate:
\[
 \lim_{m\to\infty}\Delta_m^{1/(2m)}
 = \sup_{\Re d_\rho>0}\frac1{|1+d_\rho|},                                   \tag{8}
\]
with value zero for the empty divisor. The upper bound follows by the spectral radius formula and spectral mapping for \(L(L+iI)^{-1}\), since its nonzero spectrum consists of \(1/(1+d_\rho)\). Each point-evaluation bound gives the reverse inequality after taking roots; its fixed evaluation norm and \(|1-\omega_\rho|\) disappear. Thus proving superexponential decay in \(m\) of the *limiting* errors would suffice for RH, whereas an arbitrarily small positive geometric ratio only bounds the distance.

For the first modified target one can sharpen the estimate to \(\Delta_1<6.3\cdot10^{-37}\). Choose \(B(1)=1\). Its zeros occur in conjugate pairs, with no positive real \(d\) zero by the real eta series and Euler product, so \(b=B(0)>0\) in disk coordinates. Set \(y=-\log b\). Pairing the half-plane Blaschke terms in modulus at \(d=1\) gives
\[
 y=\sum_{\Re d_\rho>0}m_\rho\operatorname{artanh}
       \frac{2\Re d_\rho}{1+|d_\rho|^2},\qquad
 2D\frac{T_0^2}{1+T_0^2}\le y\le2D .
\]
The lower bound uses \(\operatorname{artanh}u\ge u\). For the upper bound use \(\operatorname{artanh}u\le u/(1-u^2)\) and \(4(\Re d_\rho)^2\le1+|d_\rho|^2\). The reproducing-kernel norm in (3) now gives \(\Delta_1=D-(1-b)/2-(1-b)^2/4\). The difference between \(y/2\) and the last two subtracted terms together equals \(\tfrac12\int_0^y(1-e^{-v})^2dv\le y^3/6\). Hence \(\Delta_1\le D/(1+T_0^2)+4D^3/3\), as claimed. The same identity gives \(A_{1/2}=(1-b)/2\): its small size is compatible with a positive constant in the asymptotic rate bound (2).

## Fully bounded finite arithmetic energies

Let \(f_0(s)=(s-1)\zeta(s)/(s+2)^8\). Partial summation with \(\lfloor x\rfloor=x-\{x\}\) shows that for \(\Re s>0\),
\[
 (s-1)\zeta(s)=s-s(s-1)\int_1^\infty\{x\}x^{-s-1}\,dx.
\]
On \(\Re z\ge1/4\) this gives \(|f_0(z)|\le5|z+2|^{-6}\). On radius \(1/4\) about any \(s\) with \(\Re s\ge1/2\), one has \(|z+2|\ge 9|s+2|/10\). Cauchy's estimate therefore gives \(|f_0^{(j)}(s)|\le10j!4^j|s+2|^{-6}\). The first three derivatives of the Cayley map are \(-(1+d)^2/2,(1+d)^3/2,-3(1+d)^4/4\). The chain rule with \(|1+d|\le|s+2|\) and \(|s+2|\ge5/2\) gives \(\|g\|_\infty<0.041\), \(\|g'\|_\infty<0.52\), \(\|g''\|_\infty<15\), and \(\|g'''\|_\infty<600\).

For \(|1-w|\ge1/4\) differentiate the formula for \(h\) three times to get \(|h'''|\le1536+3500/|g(1)|\). For \(|1-w|<1/4\), the divided difference is \(g(1)^{-1}\int_0^1g'(1+t(w-1))dt\). On \(|w-1|\le1/2\), one has \(\Re d\ge-1/5\) and \(|g|<1\). Hence \(|g^{(4)}|\le4!4^4\) along the segments by Cauchy's estimate and \(|h'''|\le1536/|g(1)|\) there. The first two terms of the alternating eta series give \(|\zeta(1/2)|\ge1/\sqrt2\), whence \(|g(1)|>1/5000\) and \(\|h'''\|_\infty<2\cdot10^7\).

With \(p(w)=\sum_{j<n}p_jw^j\), write \(r=h-c-gp\) and choose any \(M>n+2\). Parseval applied to the third derivatives and the triangle inequality for shifted coefficient tails give
\[
 0\le\|r\|^2-\sum_{k=0}^M|r_k|^2
 \le \left(\frac{2\cdot10^7+600\sum_{j<n}|p_j|}{(M-n-2)^3}\right)^2.       \tag{6}
\]
For example \(\sum_{k>M-j}|g_k|^2\) is bounded by \(\|g'''\|_2^2/(M-n-2)^6\) because each coefficient is multiplied by its falling cubic in the derivative. A finite-prefix least-squares minimum bounds the exact minimum from below, while any integer-coefficient candidate with (6) supplies an upper bound. The [interval calculation](../../../scripts/verify_xi_hardy_approximation_rates.py) uses 6,400-bit Arb, the deflated zeta series at \(s=3/2\), and coefficients 0 through 1536. It encloses the genuine energies as follows.

| \(n\) | Lower bound for \(E_n(0)\) | Upper bound |
|---:|---:|---:|
| 1 | 0.79504346 | 0.79507685 |
| 2 | 0.69654007 | 0.69657765 |
| 4 | 0.57835850 | 0.57841260 |
| 8 | 0.45116375 | 0.45134608 |
| 12 | 0.37865424 | 0.37950599 |

The table describes finite projection errors. It supplies no positive lower bound for their limit. Inequality (1) also leaves that limit open. The arithmetic problem in (2) is to exhibit a faster subsequence for the modified target, or to prove the trace vanishes by a separate argument.

The [Lean companion](XiHardyApproximationRates.lean) verifies the boundary coefficient inequality, the geometric-sum localization bound, the exact Cayley separation and interpolation amplitude, the cancellation implication for limiting amplitudes and the finite energy summation. The analytic continuation, conditioning, localization of the actual shifted zeta multiplier, estimates (1), (2), (6) and the application to the Hilbert–Pólya operator are manuscript arguments. No external independent review is recorded.

Native elaboration, fresh kernel replay and all six transitive axiom audits passed at Lean blob `e5011e4b425f8036c1ae208a5dc08a6dba2a57cc` on Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Only `propext`, `Classical.choice` and `Quot.sound` occurred. The interval script also checks (7) in seven finite kernel-Gram examples and verifies the numerical upper bound for the first modified target. The full root test (8) has no Lean verification here.
