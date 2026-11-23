# Exterior Taylor coefficients and the rightmost xi zeros

Let \(s_t=3/2+it\), \(L=\xi'/\xi\), \(a_n(t)=L^{(n)}(s_t)/n!\) for \(n\ge1\), and \(P(t)=\Re L(s_t)\). Each input is determined by an absolutely convergent Euler series and the archimedean factor. Write \(\beta_* = \sup_{\xi(\rho)=0}\Re\rho\). The following comparison recovers the horizontal edge of the actual divisor:
\[
 \sup_{n\ge1,\ q\in\mathbb Q}\left(\frac{|a_n(q)|}{P(q)}\right)^{1/n}
 =\limsup_{n\to\infty}\sup_{q\in\mathbb Q}
      \left(\frac{|a_n(q)|}{P(q)}\right)^{1/n}
 =\frac{1}{3/2-\beta_*}.                                           \tag{1}
\]
In particular the bounds \(|a_n(t)|\le P(t)\) for all orders and rational heights imply RH. Below we establish these inequalities **at orders one and two for every real height**. We also show how unnormalized vertical maxima and mean squares give different exponential growth rates even without RH.

## Proof of the comparison

Put \(d=3/2-\beta_*\), \(\eta_\rho=3/2-\Re\rho\), and \(r_\rho=|s_t-\rho|\). The logarithmic derivative of the symmetric Hadamard product gives
\[
 P(t)=\sum_\rho m_\rho\eta_\rho/r_\rho^2>0,\qquad
 a_n(t)=(-1)^n\sum_\rho m_\rho(s_t-\rho)^{-n-1}.
\]
The symmetries about the real axis and \(1/2\) cancel the additive real Hadamard constant in the first formula. The second series converges absolutely from order one on by the classical zero count. Since \(d\le\eta_\rho\le r_\rho\), each absolute contribution satisfies \(d^n/r_\rho^{n+1}\le\eta_\rho/r_\rho^2\). Summation proves the upper bounds in (1). At fixed height the nearest zero lies at distance \(R(t)>0\). It gives a genuine pole of \(L\) with residue its positive multiplicity. Taylor's formula and Cauchy–Hadamard give \(\limsup_n |a_n(t)|^{1/n}=1/R(t)\), independently of ties for nearest pole. For each zero, rational heights approaching its ordinate give \(\inf_{q\in\mathbb Q}R(q)\le\eta_\rho\). Dividing by the fixed positive \(P(q)\) leaves the exponential rate unchanged. Taking the supremum over these fixed heights proves both reverse inequalities in (1). Functional symmetry gives \(\beta_*\ge1/2\), with equality precisely on RH. The earlier [Poisson certificate](XiPoissonCellCertificate.md) uses the same positive exterior mass to exclude a missing pair after accounting for real zeros. Formula (1) instead compares derivatives of every order to that same arithmetic mass. [Hadamard, 1896, pp. 199–220](https://numdam.org/articles/10.24033/bsmf.545/)

The geometry of an open unit disk gives an exact detection width for a zero at \(1/2+\delta+i\gamma\): it is detected precisely when \(|t-\gamma|^2<\delta(2-\delta)\). Rational translates suffice; an integer grid can miss this interval at arbitrarily small positive displacement. At any finite order \(n>1\) the same positive sum gives a one-sided location certificate \(R(t)^{n-1}|a_n(t)|\le2P(t)\), using \(\eta_\rho\ge1/2\). At the rational height \(113/8\), order 32 alone gives \(R(t)<1.025\) by the [interval calculation](../../../scripts/verify_xi_translated_taylor_radii.py), without using zero ordinates in the evaluation.

## The first two orders at all heights

Define \(B_n=\sum_{m\ge2}\Lambda(m)(\log m)^n m^{-3/2}/n!\), including \(n=0\). It equals the absolute value of the coefficient of order \(n\) in \(\zeta'/\zeta(3/2+h)\). Write \(L=G+\zeta'/\zeta\), where \(G(s)=1/s+1/(s-1)+\psi(s/2)/2-(\log\pi)/2\). At \(|t|\ge5\) and all \(n\ge1\),
\[
 |a_n(t)|\le B_n+1/|t|,\qquad
 P(t)\ge\tfrac12\log(|t|/(2\pi))-B_0-1/|t|.                      \tag{2}
\]
Indeed the series for the digamma function gives
\[
 G^{(n)}(s)/n!=(-1)^n\left((s-1)^{-n-1}-\sum_{k\ge1}(s+2k)^{-n-1}\right).
\]
At those heights its modulus is at most \(|t|^{-2}+\pi/(4|t|)\le1/|t|\), by sum–integral comparison with \(1/(x^2+t^2)\) at spacing two. For the undifferentiated digamma put \(a=3/4\), \(b=|t|/2\). The function \(x/(x^2+b^2)\) on \([a,\infty)\) has total variation at most \(1/b\). Its unit-spaced left endpoint sum through \(m\) exceeds the integral over the same \(m\) unit intervals by at most \(1/b\). Subtract from \(H_m-\gamma_E\) in the digamma series and let \(m\to\infty\), obtaining \(\Re\psi(a+ib)\ge\log|a+ib|-1/b\). Both rational terms of \(G\) have positive real part here. This proves (2). In particular each order only requires a compact height test.

Arb evaluation gives \(B_0<1.506\), \(B_1<3.855\), \(B_2<7.966\). The lower bound for \(P-|a_n|\) in (2) increases with \(|t|\). It exceeds 0.1704 for \(n=1\) at \(|t|=400000\), and 0.3189 for \(n=2\) at \(|t|=2\cdot10^9\). This covers all higher ordinates at the respective orders.

For the remaining ordinates use Platt and Trudgian's verified height \(T=3\cdot10^{12}\). Each zero on the line costs exactly \(1/r^2\) in \(P\), sufficient to pay its absolute contribution at every positive order, since \(r\ge1\). If \(|t|\le T-2\), every remaining zero has \(r\ge2\), \(\eta\ge1/2\), so \(r^{-n-1}\le\eta/r^2\) for every \(n\ge2\). This covers the rest of order two, and in fact every higher order throughout that verified interior. [Platt and Trudgian, Theorem 1](https://arxiv.org/abs/2004.09765)

For order one an off-line pair at \(1/2\pm\sigma+i\gamma\) contributes at most \(4\sigma^2/(r_-^2r_+^2)\) more absolute Taylor mass than Poisson mass. Indeed this excess before taking the triangle inequality is the difference of the *unsigned term budgets*, \(\sigma(1/r_-^2-1/r_+^2)\), where \(r_\pm^2=(1\pm\sigma)^2+(t-\gamma)^2\). For \(|t|\le400000\) and \(|\gamma|\ge T\) each \(r_\pm\ge|\gamma|/2\); hence the excess per pair is at most \(64\sigma/[T^2(\gamma^2+\sigma^2)]\) using \(0<\sigma<1/2\), \(\gamma^2\ge\sigma^2\). With multiplicities the total is at most \(64D/T^2<2.01\cdot10^{-36}\), by the [arithmetic bound on the trace defect](XiBoundaryMomentEstimates.md).

In the opposite direction, the sign evaluations at 14 and 15 certify a real spectral zero at some \(14<\tau<15\) and its reflection at \(-\tau\). Retain one copy of each in the order-one sum. If \(u_\pm=1+i(t\pm\tau)\), \(r_\pm=|u_\pm|\), the slack in the triangle inequality for \(u_+^{-2},u_-^{-2}\) is at least
\[
 \frac{8\tau^2}{r_+^2r_-^2(r_+^2+r_-^2)}.
\]
To see this, rationalize the difference of the sum of the two lengths and the length of the sum. The angular factor is \(1-\cos(2\arg(u_+/u_-))=8\tau^2/(r_+^2r_-^2)\); the rationalizing denominator is at most twice the sum of the lengths. Since \(r_\pm^2\le1+(400000+15)^2\), the slack exceeds \(1.91\cdot10^{-31}\). It pays for every possible off-line excess. The proof of the two global inequalities uses the published finite-height theorem and the explicit bound on \(D\), with no claim of vanishing of \(D\).

## Two unconditional vertical limits

The supremum before taking the Taylor limit matters. For each fixed \(n\ge1\),
\[
 \limsup_{t\to\infty}|a_n(t)|=B_n .
\]
The differentiated gamma and rational terms vanish at height infinity by (2). The Euler-series phases of any finite prefix simultaneously return arbitrarily close to 1 at arbitrarily high heights, by recurrence on a finite torus (take differences of a convergent subsequence of positive integer times with gaps tending to infinity). All coefficients have the same sign at height zero. Absolute summability controls the omitted terms uniformly. This reproduces the size of the Euler derivative at the real center despite the cancellation of the pole at 1 in the completed function. In fact \(B_n=2^{n+1}+O(3^{-n})\), by subtracting the simple pole of \(-\zeta'/\zeta\) at 1 and applying Cauchy's estimate on the circle of radius 3 centered at \(3/2\). The first trivial zero lies beyond that circle. To exclude nontrivial zeros at low ordinates directly, the fixture checks \(P(0)<0.04614<2/(36+(3/2)^2)\). If a zero had \(0<|\gamma|\le6\), reflection provides one at horizontal distance \(1\le\eta\le3/2\) and conjugation gives its opposite ordinate. Together their contribution to \(P(0)\) is at least \(2/(36+(3/2)^2)\). A zero at ordinate zero would alone contribute at least \(2/3\) with this choice of reflection. Consequently this unnormalized worst-height exponential rate is exactly 2, independently of RH. The elementary recurrence argument is the absolutely convergent case of the vertical-limit framework of [Hedenmalm, Lindqvist and Seip, §§2–3](https://arxiv.org/abs/math/9512211).

Equation (2) also controls a growing range of orders uniformly at high ordinates. For any fixed \(0<\epsilon<1/4\), there exists \(T_\epsilon\) such that
\[
 |a_n(t)|\le P(t)\qquad
 (|t|\ge T_\epsilon,\ n\ge1,\ 2^n\le(1/4-\epsilon)\log|t|).
\]
Indeed the preceding Cauchy bound gives \(B_n\le 2^{n+1}+C\) with the same constant for every order. In (2), the resulting upper bound for \(|a_n(t)|\) is at most \((1/2-2\epsilon)\log|t|+C+1/|t|\), while the lower bound for \(P(t)\) is \((1/2)\log|t|-O(1)\). Thus any sequence of violations escaping to infinite height must also escape this increasing range of orders. Large orders at a fixed height above the verified interior still require a separate estimate.

The square mean has a different unconditional rate. Orthogonality of \(m^{-it}\) and \(k^{-it}\) in vertical mean for distinct positive integers gives
\[
 V_n:=\lim_{U\to\infty}\frac1U\int_0^U |a_n(t)|^2dt
  =\frac{1}{(n!)^2}\sum_{m\ge2}\frac{\Lambda(m)^2(\log m)^{2n}}{m^3}.
\]
First truncate the absolutely convergent series and integrate each exponential. Then pass to the uniform limit. The archimedean Taylor coefficient is bounded on the half-line for each \(n\) and tends to zero there, so its cross term and square have zero mean.

One can evaluate the diagonal and isolate its first subleading term without an estimate for short prime sums. Set \(J=(\zeta'/\zeta)'\), \(c_\ell=\prod_{p\mid\ell}(1-p)\), with \(c_1=1\). For \(\Re s>1\),
\[
 F(s)=\sum_{m\ge2}\Lambda(m)^2m^{-s}=\sum_{\ell\ge1} c_\ell J(\ell s).
\]
Indeed, the coefficient of \((\log p)^2p^{-ks}\) on the right is \(\sum_{\ell\mid k}c_\ell k/\ell=1\) by multiplicativity and the geometric sum on a prime power. Both sums converge absolutely there. On the circle and disk \(|s-3|\le13/5\), the terms of index \(\ell\ge3\) converge normally since \(\Re(3s)\ge6/5\) and \(|c_\ell|\le\ell\). The first two terms extend meromorphically. The only poles there are the real double poles at 1 and \(1/2\), with respective coefficients 1 and \(-1/4\); the preceding bound excluding all zeros up to height 6 suffices for both zeta factors and no trivial zero lies in either disk. Hence, with \(K_n=(2n)!/(n!)^2\),
\[
 V_n=K_n(2n+1)\left(2^{-2n-2}-\tfrac14(5/2)^{-2n-2}\right)
       +O\big(K_n(13/5)^{-2n}\big).
\]
This follows by extracting the coefficient of degree \(2n\) at 3 and multiplying by \(K_n\). In particular \(V_n\sim\sqrt n/(2\sqrt\pi)\) by Stirling, giving exponential rate 1 for the root-mean-square size.

For the interval calculation, truncation of the inversion sum after \(\ell=L\ge3\) on \(|s-3|=1\) costs less than \(8(L+2)4^{-L}\). Use \(\Lambda(m)\log m\le m^2\) there to bound each \(|J(\ell s)|\le\sum_{m\ge2}m^{2-2\ell}\le 8\cdot4^{-\ell}\) by integration; sum with weights \(\ell\). Cauchy's estimate transfers the same bound to every Taylor coefficient at 3. The [Arb fixture](../../../scripts/verify_xi_translated_taylor_radii.py) uses \(L=n+30\), checks the inversion identity for the first 400 exponents, and encloses \(V_n\) at orders 4, 8, 12, 20 and 32. For instance \(V_{32}\in (1.61438458408907,1.61438458408909)\). The shortfall from the leading double-pole term divided by the predicted prime-square correction is between 1.01342598 and 1.01342600.

## An exact finite-order stress test

Even checking every translate at arbitrarily many **fixed** orders fails for general real entire functions with the same two reflection symmetries. Let \(N\ge1\), \(\delta=1/[20(N+3)]\), and let \(M>0\) be any positive half-integer with \(M-1/2\in\mathbb Z\). In the centered coordinate \(z=s-1/2\) consider
\[
 H_{\delta,M}(z)=\cosh(\pi z)
 \frac{((z-iM)^2-\delta^2)((z+iM)^2-\delta^2)}{z^2+M^2}.
\]
The apparent poles cancel. This is a real even entire function of order one and is nonzero at zero. Its four zeros at \(\pm\delta\pm iM\) lie off the central axis. Nevertheless at every \(z=1+it\) the Taylor coefficients of its logarithmic derivative through orders \(1,\ldots,N\) all have modulus strictly smaller than the real part of that derivative.

At \(\delta=0\) the function is \(\cosh(\pi z)(z^2+M^2)\). The two extra poles at ordinates \(\pm M\) obey each charge bound separately. For the half-integer lattice of the cosh factor the slack is at least \(1/20\) at every height and positive order. At order one the ratio of \(|(\pi\tanh\pi z)'|\) to \(\Re(\pi\tanh\pi z)\) equals \(2\pi/\sinh(2\pi)<1/2\), and the latter real part is at least \(\pi\tanh\pi>1\). At \(n\ge2\), choose a lattice ordinate whose distance from \(t\) lies between 1 and 2. Its contribution alone gives slack at least \((1-1/\sqrt2)/5>1/20\), since its squared distance from \(1+it\) is between 2 and 5. All other lattice poles have nonnegative slack. The sums follow either from the usual cosh product or the paired partial fractions of its logarithmic derivative.

At each of \(\pm iM\), replacing a double zero by a horizontal split changes the log-derivative coefficient of order \(n\) by at most \(\delta^2(n+1)(n+2)(1-\delta)^{-n-3}\). This is the real central-second-difference estimate for \((z\mp iM+u)^{-n-1}\) on \(|u|\le\delta\). It applies also at order zero. For \(0\le n\le N\), \((1-\delta)^{-n-3}\le(1-(N+3)\delta)^{-1}<2\) by Bernoulli’s inequality, so each change is at most \(1/200\). The two perturbed groups change the coefficient and its Poisson budget by a combined total at most \(4/200<1/20\). The strict inequalities follow. This example isolates the limitations of finitely many orders for that class of entire functions. The Euler product restricts which of them can arise from zeta.

The order scale at the split ordinate can be measured in this family. Let \(\delta\downarrow0\) at fixed \(M\), with \(n\delta\to c>0\). At \(t=M\) the two nearby coefficients have common sign and total absolute size \((1-\delta)^{-n-1}+(1+\delta)^{-n-1}\to2\cosh c\). All other coefficients tend in total to zero by domination at order two: the remaining lattice is at least \(\sqrt2\) away, and the remote split stays at distance bounded strictly above 1. Meanwhile the Poisson budget tends to \(\pi\coth\pi+1+1/(1+4M^2)\). Thus the limiting crossing at this ordinate occurs at
\[
 c_M=\operatorname{arcosh}\big((\pi\coth\pi+1+1/(1+4M^2))/2\big).
\]
For a finite check take \(M=10^{13}+1/2\) and \(N=8\), so \(\delta=1/220\). The first failing order at this ordinate is exactly 298. The positive budget is below 4.154 and the order-298 coefficient modulus exceeds 4.162. In the fixture the total absolute contribution away from the two near poles is bounded by \(2/(\sqrt2)^{n+1}+2^{-n}(1+2/n)+2/(2M)^{n+1}\), by the first lattice neighbors, the integral test starting at 2, and the remote split. Orders through eight already satisfy the proved uniform bound. All intermediate orders at this ordinate pass by interval comparison.

The [Lean companion](XiTranslatedTaylorRadii.lean) formalizes the rational-disk characterization of Mathlib's RH, its exact Euclidean disk geometry, a failure of integer-grid detection, and the per-pole Taylor charge. The log-derivative sums, global estimates at orders one and two, asymptotic comparisons, and finite-order counterfamily are manuscript proofs. At Lean source blob `11998cd32b0e43674f995f8cb43d667fe892c146`, native elaboration and fresh kernel replay passed. The seven transitive axiom audits returned only `propext`, `Classical.choice` and `Quot.sound`. The interval fixture certifies its stated arithmetic inputs. An all-order bound for actual xi, the resulting independent determinant identity, and external independent review remain open.
