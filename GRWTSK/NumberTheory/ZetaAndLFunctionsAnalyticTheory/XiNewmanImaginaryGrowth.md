# Reading the heat time from a determinant on the imaginary axis

grwtsk contributors

The variational endpoint construction gives a Hilbert–Schmidt operator \(K_*\) satisfying \(\det_2(I-zK_*)=H_\Lambda(2z)/H_\Lambda(0)\). Its determinant can be compared directly with normalized xi on the positive imaginary axis. The ratio recovers \(\Lambda\) as an asymptotic coefficient. Matching the two determinants at even one prescribed point \(iR,\ R>0\), or matching a single specified trace, would force \(\Lambda=0\). The calculations below do not establish either equality. For the multiplicity-preserving operator and paired product see [Jacobi limits at the endpoint](XiNewmanJacobiLimit.md). For the theta integral and heat convention see [D. H. J. Polymath, arXiv:1904.12438v2, equations (1)–(4), Theorem 1.1](https://arxiv.org/pdf/1904.12438v2). The interval \(0\le\Lambda\le0.22\) uses also [Rodgers and Tao, Theorem 1.1](https://doi.org/10.1017/fmp.2020.6).

## Exponential tilting and a trace gap

Let \(\nu_t\) on \([0,\infty)\) have density \(e^{tu^2}\Phi(u)/H_t(0)\) and let \(U\) denote its coordinate. All differentiations below follow by local domination by the double-exponentially decaying theta kernel. For fixed \(y>0\),
\[
 \partial_t\log\frac{H_t(iy)}{H_t(0)}
 =\frac{\operatorname{Cov}_{\nu_t}(U^2,\cosh(yU))}
        {\mathbb E_{\nu_t}\cosh(yU)}>0 .
\]
Indeed twice the covariance is the expectation of \((U^2-V^2)(\cosh(yU)-\cosh(yV))\) for independent \(U,V\) of law \(\nu_t\). Both functions are strictly increasing, and the positive density gives distinct coordinates almost surely. Since \(8H_0(2iR)=\xi(1/2-R)=\xi(1/2+R)\), equality at any \(R>0\) forces \(\Lambda=0\) by strict monotonicity.

Let \(S(t)=4\mathbb E_{\nu_t}U^2=8q_0(t)\). At the endpoint the variational construction and its paired product give \(S(\Lambda)=\|K_*\|_2^2\), including repeated nodes. At zero, \(S(0)=\xi''(1/2)/\xi(1/2)\), without a spectral assumption. Differentiating yields \(S'(t)=4\operatorname{Var}_{\nu_t}(U^2)\). A quantitative lower bound follows by restricting the independent-pair variance formula to both orderings of \(U\in A=[0,1/20]\), \(V\in B=[1/5,1/4]\). The difference between squared coordinates is at least \(3/80\). For \(0\le t\le1/2\) and \([a,b]\) either interval, retain only the first positive term in the kernel to obtain
\[
 \nu_t([a,b])\ge
 (b-a)e^{5a}\pi(2\pi e^{4a}-3)e^{-\pi e^{4b}}/H_{1/2}(0).
\]
[Interval arithmetic](../../../scripts/verify_xi_newman_imaginary_growth.py) encloses these lower bounds above \(0.1778\) and \(0.01467\), respectively, using the theta-jet quadrature for the denominator. Thus \(S'(t)>0.000014\) throughout the interval. Integrating gives
\[
  \|K_*\|_2^2-\xi''(1/2)/\xi(1/2) \ \ge\ 0.000014\,\Lambda .
\]
The unconditional interval information permits a strictly positive gap if \(\Lambda>0\).

## Uniform imaginary-axis asymptotic

For \(y\to+\infty\), uniformly over \(0\le t\le1/2\), we obtain
\[
 \log\frac{H_t(iy)}{H_0(iy)}
   =\frac{t}{16}\log^2\!\frac{y}{4\pi}+O(y^{-1/4}\log y).
\]
Here is a concentration argument retaining the absolute normalization of the ratio. For \(u\ge0,y\ge0\), the density \(\Phi(u)\cosh(yu)\) lies between fixed positive multiples of \(e^{(9+y)u-\pi e^{4u}}\). For the lower estimate the first theta term gives the factor \(2\pi^2(1-3/(2\pi))\) and \(\cosh(yu)\ge e^{yu}/2\). For the upper estimate bound the remaining series after removing \(e^{-\pi e^{4u}}\) by \(2\pi^2\sum n^4e^{-\pi(n^2-1)}\).

Set \(u_0=\frac14\log(y/(4\pi))\), \(v=4(u-u_0)\), and \(D(v)=e^v-1-v\). Omitting a common positive factor, the comparison density in \(v\ge-4u_0\) is \(e^{-(y/4)D(v)+(9/4)v}\). Its integral is \(\gg y^{-1/2}\) by integration over \(|v|\le y^{-1/2}\), using \(D(v)\le ev^2/2\) there. Extract \(e^{tu_0^2}\) from the tilted integral. On \(|v|\le y^{-1/4}\) the residual tilt is \(1+O(y^{-1/4}\log y)\), since its logarithm is \(tu_0v/2+tv^2/16\).

Both tilted and untilted tails after this extraction are \(O(e^{-c\sqrt y})\) in units of the common factor, for some \(c>0\). Indeed for negative \(v\) in the domain the residual tilt is at most one. For \(-1\le v\le1\), \(D(v)\ge v^2/(2e)\). On the positive part with \(v\ge y^{-1/4}\) the linear term \(O(\log y)v\) and the additional quadratic term are bounded by \(yv^2/(16e)\) for large \(y\). For \(v\le-1\), \(D(v)\ge e^{-1}|v|\), since \((e^{-h}-1+h)/h\) increases for \(h>0\). For \(v\ge1\), \(D(v)\ge v^2/2\), and the entire extra exponent \((9/4)v+tu_0v/2+tv^2/16\) is at most \(yv^2/16\) for large \(y\). Integration of these exponential bounds, division by the denominator lower bound, and the central estimate prove the ratio formula after taking logarithms. The comparison constants enter only in estimating tail probabilities; the numerator and denominator use the same exact central density.

Substituting \(t=\Lambda,\ y=2R\), the logarithm of the endpoint determinant divided by the xi ratio is consequently
\[
 \frac{\Lambda}{16}\log^2\!\frac{R}{2\pi}
 +\log\frac{H_0(0)}{H_\Lambda(0)}
 +O(R^{-1/4}\log R).
\]
The determinants here are evaluated at \(z=iR\); both values are strictly positive by their integral representations. Dividing by \(\log^2(R/(2\pi))/16\) recovers \(\Lambda\) in the limit. The same argument at \(t=1/2\) gives a nonzero leading coefficient for an unconditional all-real heat function, providing a control on the proposed identification with xi. Neither asymptotic existence nor positivity supplies the vanishing of the coefficient at the endpoint.

## Separating the heat contribution from the missing quartets

There are two independently specified self-adjoint operators to compare. The real-line operator \(H\) obtained from regularized theta jets has one layer for each multiplicity of a real zero of \(X(z)=\xi(1/2+iz)\). Its inverse is Hilbert–Schmidt without a zero-location assumption. The [real-line construction, equations (2)–(3)](XiJetDivisorMeasures.md) gives the quotient of \(X(z)/X(0)\) by \(\det_2(I-zH^{-1})\) as a locally convergent product over the nonreal quartets. For \(R>0\) each upper, positive-real-part representative \(a\) contributes, per copy,
\[
 F_a(R)=|1+R^2/a^2|^2
       =1+2R^2\Re(a^{-2})+R^4/|a|^4 .
\]
In the critical strip \(|\Im a|<1/2\) and outside the elementary zero-free disk \(|a|\le3/2\), we have \(\Re(a^{-2})\ge(7/9)|a|^{-2}\), as follows by writing \(\Re(a^{-2})=(1-2(\Im a)^2/|a|^2)/|a|^2\). Thus each factor exceeds one. If \(|a|\le R\) it is at least \(32/9\). Write
\[
 G(R)=\log\frac{\det_2(I-iRK_*)}{\det_2(I-iRH^{-1})},\qquad
 J(R)=\log\frac{H_\Lambda(2iR)/H_\Lambda(0)}{H_0(2iR)/H_0(0)} .
\]
The exact subtraction \(G-J\) equals \(\sum_a m_a\log F_a(R)\ge0\). In particular \(G(R)\ge J(R)\ge0\), and \((G(R)-J(R))/\log(32/9)\) bounds the number of nonreal quartets with \(|a|\le R\), counted with multiplicity. Each of the two independent operator determinants is real and positive at \(iR\).

Let \(M\) be the total quartet count, allowed to be infinite. At every fixed \(a\), \(\log F_a(R)=4\log R-4\log|a|+o(1)\). If \(M\) is finite, sum over the finite set. If \(M\) is infinite, restrict the positive sum to any prescribed finite subset and let \(R\to\infty\). In the extended nonnegative limit this yields
\[
 \lim_{R\to\infty}
 \frac{G(R)-(\Lambda/16)\log^2(R/(2\pi))}{4\log R}=M .
\]
Indeed \(J(R)-(\Lambda/16)\log^2(R/(2\pi))\) has a finite limit by the saddle estimate. The coefficient of \(\log R\) therefore distinguishes a finite missing divisor, with its multiplicities, from an infinite one even after the heat deformation. Proving \(G(R)=o(\log^2 R)\) on an unbounded sequence would force \(\Lambda=0\) by \(G\ge J\); under RH both determinants are exactly the xi ratio. No estimate of that strength for the operator comparison follows from the finite interval checks.

The [Lean module](XiNewmanImaginaryGrowth.lean) checks the normalized moment differentiation, sign of a covariance summand, separated-interval inequality, tilt identity, and quartet factor bound. The infinite-integral argument and endpoint equality remain outside that formalization.

At source blob c5d56ba5e1754865e393ced772ce37eeca8079c4, all 5 public declarations passed native elaboration and a fresh kernel replay (5 roots, 16996 declarations). Each transitive axiom audit found only a subset of the standard axioms propext, Classical.choice and Quot.sound. Independent external review of the analytic argument is outstanding.
