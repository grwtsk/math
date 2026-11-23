# The Euler product and the spacing of heat zeros when time tends to zero

grwtsk contributors

Let \(H_t\) be the de Bruijn–Newman heat flow, normalized by \(H_0(x)=\xi(1/2+ix/2)/8\). Set
\[
 L=\log(x/(4\pi)),\qquad c=tL,\qquad c_*=\frac{148176}{57695}=2.56826414767\ldots .
\]
For every \(\delta>0\), all zeros with real part \(x\ge 4\pi\exp((c_*+\delta)/t)+1\) are real and simple for sufficiently small \(t>0\). The dependence of the starting time on \(\delta\) is not made numerical. This improves the asymptotic coefficient 32 of the earlier explicit bound; the latter remains applicable throughout \(0<t\le1/2\) with a specified height at each time. [Explicit cutoff and normalized heat function](XiNewmanEffectiveEscape.md)

There is also a spacing correction at the first scale where the primes enter. Fix \(A>c_*+\delta\). For successive zeros \(x,x+\Delta\) in the complete phase intervals described below, uniformly for \(c_*+\delta\le tL\le A\) as \(t\downarrow0\),
\[
 \Delta=\frac{4\pi}{L}-
          \frac{8\pi}{L^2}\Re\frac{\zeta'}{\zeta}(S)
          +O_{\delta,A}(L^{-3}),\qquad
 S=\frac{1+ix}{2}+\frac t2\,\alpha\!\left(\frac{1+ix}{2}\right).
                                                               \tag{1}
\]
Here \(\alpha\) is the logarithmic derivative of Polymath's Stirling model \(M_0\). In this range \(\Re S>1\), so the second term can also be written \(8\pi L^{-2}\sum_{n\ge2}\Lambda_{\mathrm{vM}}(n)n^{-\Re S}\cos(\Im S\log n)\). The result concerns the actual heat zeros. It follows from a nonvanishing Euler factor and cancellation in the exponentially long tail of the finite Riemann–Siegel sums. [Polymath, arXiv:1904.12438v2, equations (6)–(24) and §9](https://arxiv.org/pdf/1904.12438v2#page=4)

## The finite heat sums

First restrict \(c\) to the compact interval \([c_*+\delta,A]\). Uniform statements on short segments crossing an endpoint are obtained by slightly enlarging the interval, using margin \(\delta/2\) and upper bound \(A+1\). For \(z=x+iy,\ 0\le y\le1\), write
\[
 s_B=(1-iz)/2,\quad s_A=(1+iz)/2,\quad S_j=s_j+(t/2)\alpha(s_j),\quad
 \gamma=M_t(s_A)/M_t(s_B),\quad B=M_t(s_B).
\]
Thus the *denominator* argument has real part \((1+y)/2\). Put \(b_n=\exp(t\log^2 n/4)\) and \(N=\lfloor\sqrt{e^L+t/16}\rfloor\). In these coordinates the two sums are \(\sum_{n\le N}b_n n^{-S_B}+\gamma\sum_{n\le N}b_n n^{-S_A}\). This is the form before the conjugation and \(\kappa\) rewrite in (14). The phase in either sum is a pure logarithm in \(n\); all the growth of \(b_n\) is in its positive amplitude. [Polymath, Corollaries 6.4–6.5 and equations (68)–(74)](https://arxiv.org/pdf/1904.12438v2#page=30)

Using \(\alpha(s)=\log(s/(2\pi))/2+1/(2s)+1/(s-1)\) gives
\[
 \Re S_B=(1+y)/2+c/4+O(t/x),\qquad
 \Re S_A=(1-y)/2+c/4+O(t/x),\qquad
 |\Im S_j|=x/2+O(t),\qquad |\gamma|\le e^{0.02y-yL/2}.
\]
These hold uniformly on the stated strip. The total normalized source error in (23)–(24) is \(O_A(e^{-L/4})\). Indeed \(|\log(x/(4\pi n^2))|\le L+1\) and \(tL\le A\), so the exponential minus one in (23) is \(O_A(1/x)\). The first positive weight \(b_n n^{-\Re S_B}\) is bounded by an absolute constant depending on \(A\), since \(\log n\le L/2+o(1)\) and \(b_n\le n^{c/8+o(1)}\). The multiplier \(|\gamma|N^{|\kappa|}n^y\) is bounded by (20), (22) and \(n\le N\). This costs \(O_A(N/x)=O_A(e^{-L/2})\). Equation (24) is \(O_A(e^{-L/4})\) directly. Positive summation suffices for these errors because of the factor \(1/x\); cancellation is needed in the main sums.

## Cancellation on the long dyadic intervals

For \(M=e^{uL}\), \(1\le M\le N\), let
\[
 B_0(u)=\min\!\left(u,\frac{13}{414}+\frac{173}{207}u,\
                         \frac{13}{194}+\frac{139}{194}u,\
                         \frac{13}{84}+\frac u2\right).
\]
On every subinterval of \([M,2M]\) the partial sum of \(n^{iT}\), \(T=|\Im S_j|\asymp x\), is \(O_\epsilon(\exp((B_0(u)+\epsilon)L))\). The trivial estimate gives the first line. Bourgain's exponent pair \((13/84+\epsilon',55/84+\epsilon')\) gives the last line since the interval estimate is \((T/M)^kM^\ell\). Applying the classical transformation \((k,\ell)\mapsto(k/(2k+2),(k+\ell+1)/(2k+2))\) once and twice gives the limiting pairs \((13/194,76/97)\) and \((13/414,359/414)\). By continuity choose \(\epsilon'\) small enough to absorb all resulting losses in the displayed \(\epsilon\); the bounds permit arbitrary subintervals, including the cut at \(N\). The logarithmic phases satisfy the exponent-pair derivative conditions on each block. The range \(M\le N\) is well below \(T\); a conventional extra term \(M/T\) is harmless. [Bourgain, arXiv:1408.5794v2, §5, Theorem 6, including short subintervals](https://arxiv.org/pdf/1408.5794v2#page=20) · [Graham and Kolesnik, Van der Corput's Method of Exponential Sums, chapter 3, A-process](https://doi.org/10.1017/CBO9780511661976.003)

Partial summation against \(b_v v^{-\Re S_j}\) preserves this estimate multiplied by the weight at \(M\), up to a factor depending on \(A\). In fact its logarithmic derivative with respect to \(\log v\) is \(t\log(v)/2-\Re S_j\), bounded in absolute value on a dyadic block. Including \(|\gamma|\) for the second sum, the largest exponent in either arm is at most
\[
 B_0(u)-u/2-\frac c4 u(1-u)+\epsilon.                       \tag{2}
\]
The extra \(y\)-terms are \(-yu/2\) in the \(B\)-arm and \(-y(1-u)/2\) in the normalized \(A\)-arm. This last gain uses the *full* gamma quotient and is needed high in the strip. One may take the blocks starting at powers of two at most \(N\). A possible final sliver \(u>1/2\) is \(O(e^{-L}/L)\) beyond \(1/2\) and changes (2) by \(O_A(e^{-L}/L)\); alternatively the final block can be truncated at \(N\) starting below \(e^{L/2}\), with at most one extra summand of exponentially small weight.

The least \(c\) giving \(B_0(u)\le u/2+cu(1-u)/4\) for \(0\le u\le1/2\) is \(c_*\). The successive switches of the lower envelope are
\[
 u=13/68,\qquad 1430/4789,\qquad 715/1764 .
\]
At these points the required values of \(c\) are respectively \(136/55,\ 464533/184745,\ 148176/57695\). At \(u=1/2\) it is \(52/21\). Between neighboring switches the difference between the quadratic majorant and the active affine bound is concave, so the endpoint inequalities suffice. Equality at the last switch proves sharpness for these four estimates. As an independent check, the elementary pairs \((1/14,11/14)\), \((1/6,2/3)\) with the trivial estimate give \(27/10\), attained at \(u=4/9\).

Fix \(\eta=1/16\). For \(u\in[\eta,1/2]\) and \(c\ge c_*+\delta\), (2) is at most \(-\delta\eta/8+\epsilon\). Taking \(\epsilon<\delta\eta/16\) and summing \(O(L)\) blocks proves that the part with \(n>e^{\eta L}\) is \(O_{\delta,A}(L e^{-\delta\eta L/16})\). A block straddling the lower cutoff can start at \(e^{\eta L}\) and subsequent endpoints double; the upper truncation is treated as above. This argument estimates the actual oscillatory sums, with no cancellation assumed of their absolute errors.

## The first correction to the Euler factor

Define \(Z_t(w)=\zeta(w)+(t/4)\zeta''(w)\). On \(0\le y\le\eta\),
\[
 \frac{H_t(z)}{B}=Z_t(S_B)+\gamma Z_t(S_A)+O_{\delta,A}(t^2).
                                                               \tag{3}
\]
To see this, for \(n\le e^{\eta L}\) expand \(e^h=1+h+O(h^2e^h)\), \(h=t\log^2 n/4\). In both arms one has
\[
 \Re S_j-c\eta/4\ \ge\ \frac{1-\eta}{2}+
                \frac{c(1-\eta)}4+O(t/x)>1+1/20
\]
for \(L\) large. Thus the absolute remainder from all these terms is bounded by \(O(t^2\sum_{n\ge1}n^{-1-1/20}\log^4 n)\). The tails of the two ordinary Dirichlet series and their second derivatives beyond \(e^{\eta L}\) are exponentially small in \(L\), with a possible polynomial factor. The bound on (2) and the source errors are also \(O_{\delta,A}(t^2)\) since \(c_*+\delta\le tL\le A\). More generally, for each fixed \(k\ge0\), replacing \(Z_t(w)\) by \(\sum_{j=0}^k (t/4)^j\zeta^{(2j)}(w)/j!\) gives error \(O_{k,\delta,A}(t^{k+1})\) in (3): the Taylor remainder adds \(\log^{2k+2}n\) to the same convergent majorant. This is a finite-order expansion at the moving arguments. Convergence of its infinite series is unnecessary. The same proof works for \(S_B\) alone throughout \(0\le y\le1\). If \(\eta\le y\le1\), the small \(n\) contribution of the other arm is \(O(e^{-(1-\eta)y L/2})\): remove \(n^{y/2}\) using \(n^{y/2}\le e^{\eta yL/2}\), absorb it into \(\gamma\), and sum the remaining integrable weights using \(1/2+c(1-\eta)/4>1+1/20\). Its long part is covered by (2). Hence on this upper region \(H_t/B=Z_t(S_B)+O_{\delta,A}(t^2)\), with no zeta factor near or left of its absolute-convergence line required for the other arm.

In every use of \(Z_t(w)\) as a nonvanishing factor, \(\Re w\ge1+1/20\). The Euler product gives \(|1/\zeta(w)|\le\zeta(1+1/20)\), and the absolutely convergent differentiated series bound \(\zeta^{(j)}\) uniformly there for each fixed \(j\). Thus \(Z_t\) is bounded away from zero for all sufficiently small \(t>0\). Its logarithmic derivative is \(\zeta'/\zeta+O(t)\), and its second logarithmic derivative is bounded. This is where genuine arithmetic nonvanishing enters.

## Real zeros and the prime correction

In the band \(|y|\le\eta\), use the reference function
\[
 \mathcal M(s)=M_t(s)Z_t(s+t\alpha(s)/2),\qquad
 \Gamma(z)=\mathcal M(s_A)/\mathcal M(s_B).
\]
Both factors are nonzero. The error in \(H_t/(\mathcal M(s_B))-(1+\Gamma)\) on its upper half is \(O_{\delta,A}(t^2)\) by (3). Write \(D(s)=\mathcal M'(s)/\mathcal M(s)\). Then
\[
 D(s)=\alpha(s)(1+t\alpha'(s)/2)
       +(1+t\alpha'(s)/2)\frac{Z'_t}{Z_t}(s+t\alpha(s)/2)
       =L/2+O_{\delta,A}(1)
\]
as a complex estimate; the imaginary part of the logarithm in \(\alpha\) is bounded. In particular \(\partial_y\log\Gamma=-(D(s_A)+D(s_B))/2=-L/2+O_{\delta,A}(1)\). On the real line \(\Gamma=e^{i\varphi}\) has a continuous phase with \(\varphi'=\Re D(s_A)>0\) for large \(L\).

Take adjacent real level points \(b_j\) of \(\varphi\in2\pi\mathbb Z\). On the horizontal edges of the associated rectangle \(|y|\le\eta\), the normalized main term stays away from zero: \(|\Gamma(x+i\eta)|\le e^{-\eta(L/2-O(1))}\), and the lower comparison is its conjugate after undoing normalization. On an upper vertical edge, \(\Gamma(b_j)=1\). For \(y\ge1/L\), \(|\Gamma|\le e^{-1/2+O(1/L)}\). For \(0\le y\le1/L\), integration gives \(\Gamma=e^{-yL/2+O_{\delta,A}(y)}\), with positive real part for all large \(L\). In the open upper half, \(|\Gamma|<1\) by the strict vertical decrease, so the reference function has exactly one real simple zero per rectangle and no other zeros there. Reflecting the unnormalized comparison gives strict Rouché domination on the lower contour as well. Hence \(H_t\) has exactly one zero in each complete rectangle; conjugation makes it real and the count makes it simple. On \(\eta\le |y|\le1\) nonvanishing follows from the one-arm estimate; outside height one use the de Bruijn strip theorem. [Polymath, Theorem 3.2](https://arxiv.org/pdf/1904.12438v2#page=14)

For the full exterior assertion take \(A>\max(33,c_*+\delta+2)\); the earlier explicit result covers \(tL\ge32\). At the beginning of the asymptotic band the first level point beyond \(4\pi e^{(c_*+\delta)/t}\) is within \(O(1/L)<1\), because \(\varphi'\) is uniformly comparable with \(L\). The interval of validity can be enlarged by the margins noted above, which also handles the last cell at an upper band endpoint.

At a real heat zero, (3) forces the phase to lie within \(O_{\delta,A}(t^2)\) of its cell's odd multiple of \(\pi\). Thus the phase increment between successive zero abscissae is \(2\pi+O_{\delta,A}(t^2)\). The phase derivative first gives \(\Delta=O(1/L)\). More precisely throughout that interval
\[
 \varphi'(v)=L/2+\Re(\zeta'/\zeta)(S(x))
                         +O_{\delta,A}(t+1/L).
\]
Indeed \(\Re\alpha(s_A)=\log(v/(4\pi))/2+O(1/v)\); the gamma derivative correction is \(O_A(1/v)\). Replacing \(Z'_t/Z_t\) by \(\zeta'/\zeta\) costs \(O(t)\). The variation of \(S(v)\) is \(O(1/L)\), since \(dS/dv=(i/2)(1+t\alpha'/2)\), and the derivative of \(\zeta'/\zeta\) is bounded on this half-plane. Now integrate and expand the reciprocal; \(t\asymp_{\delta,A} L^{-1}\) yields (1). Keeping only the uncorrected Euler amplitude in (3) would yield a phase error \(O(t)\) that could mask the displayed prime correction.

## Limits of the argument and finite checks

For these four interval bounds the block at \(u=715/1764\) loses its strict exponential saving exactly at \(c=c_*\). This is an obstruction to the proof using these estimates; it asserts neither a collision there nor optimality over other exponential sum bounds. At \(c=2\) the limiting real part \(1/2+c/4\) of the real-axis shifted argument reaches one. Uniform lower bounds from an absolutely convergent Euler product and the uniform absolute derivative bounds used above then cease to apply. Thus even an improvement of the tail estimates to the square-root cancellation scale would leave a separate question about the Euler factors and phases on approaching that line. The failure of an absolute lower bound can be seen at the actual shifted arguments. For fixed \(0<c\le2\), put \(t=c/L,\ \sigma_c=1/2+c/4\). At \(s=(1+ix)/2\) the exact identity
\[
 \Re\alpha(s)=L/2+\tfrac14\log(1+x^{-2})-\frac{1}{1+x^2}
\]
gives \(\Re S=\sigma_c+O_c(1/(Lx^2))\). Also \(x\mapsto\Im S(x)=x/2+O_c(1/L)\) is continuous and covers every sufficiently large ordinate. For \(0<c<2\), choose a closed disk centered at \(3/4\), of radius \(<1/4\), containing \(\sigma_c\) in its interior. Apply Voronin's theorem to nonzero constant targets tending to zero, with errors tending to zero. This gives translates on which the zeta function tends uniformly to zero on the disk. The absolute values of the translation heights must tend to infinity along a subsequence: a bounded subsequence would force an analytic translate of zeta to vanish identically. By conjugation take the heights positive and choose \(x\) so that \(\Im S(x)\) equals each height. The real displacement is eventually inside a fixed smaller disk; Cauchy's estimates there make all derivatives of any prescribed finite order tend to zero. In particular every fixed Taylor amplitude \(\sum_{j=0}^k(t/4)^j\zeta^{(2j)}(S)/j!\) has liminf of its modulus zero on this moving regime. At \(c=2\), Granville and Soundararajan give arbitrarily large \(T\) with \(\zeta(1+iT)\) tending to zero in modulus. With \(\Im S=T\), moving the real coordinate costs \(o(1)\): the fractional-part integral \(\zeta(w)=w/(w-1)-w\int_1^\infty\{v\}v^{-w-1}dv\) gives \(|\zeta'(w)|=O(1+T)\) for \(\Re w\ge 3/4,\ \Im w=T\ge2\). Thus the leading Euler factor also lacks a uniform positive lower bound on the actual boundary curve \(c=2\). These statements concern the comparison amplitudes. They do not assert that the heat function has a zero at any of the selected points. [Voronin, 1975, universality theorem, §I](https://www.mathnet.ru/eng/im2037) · [Granville and Soundararajan, arXiv:math/0501232v1, Theorem 1 for the small-value distribution](https://arxiv.org/pdf/math/0501232v1#page=2)

The region \(tL\to0\), the unshifted operator and RH remain open.

The [fixture](../../../scripts/verify_xi_newman_euler_transition.py) checks the four-line optimization using exact rational arithmetic. It also compares the main asymptotic factors with enclosures of the actual normalized \(H_t\) from the explicit primary error formula at five ordinates \(10^6+j/4,\ 0\le j\le4,\ t=1/4\). At all five points the first heat correction decreases the absolute error compared to \(\zeta(S)\) alone. At the additional point \(x=10^6+3/2\) the uncorrected approximation is closer. Finite-height improvement at every point would be stronger than the asymptotic estimate. At \(t=1/8\), near \(x=2\cdot10^{10}\), the fixture certifies opposite signs in five disjoint intervals of width \(1/16\). Each contains at least one real heat zero. These are finite checks of the theta source and the error normalization; they do not set a numerical starting time for the asymptotic theorem.

The [Lean companion](XiNewmanEulerTransition.lean) defines logSumExponent and transition and proves envelope_bound, envelope_attained, long_block_decay and reciprocal_phase in the namespace GRWTSK.XiNewmanEulerTransition. The first three theorems certify the full interval optimization and its strict-margin consequence; the last keeps the exact reciprocal remainder used in (1). At source SHA-256 ce1f464e4ceff7430c0ab13ee342bcb34c5c9a6cf784f11977b6b86fb10ab643 all six declarations passed native elaboration and fresh kernel verification of 7,432 dependencies. The transitive axiom audits used only propext, Classical.choice and Quot.sound. The source Riemann–Siegel inequalities, exponent-pair theorem, uniform Euler approximation, zero count and prime spacing formula are manuscript mathematics; their joint Lean formalization is outstanding.
