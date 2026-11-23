# A finite prime maximum for transverse zero displacement

For an integer \(n\ge1\), let \(X_n=e^{2n}/n\) and form the finite prime polynomial
\[
 S_{n,X}(a)=\sum_{m\le X}\frac{\Lambda(m)}{\sqrt m}e^{-(\log m)^2/(4n)}\cos(a\log m),
 \qquad B_n=\max_{n\le j\le n^3}
 \frac{[-S_{n,X_n}(j/n)]_+}{\sqrt n\log(2+j/n)}.
\]
The maximum is over integers \(j\), and \([x]_+=\max(x,0)\). If \(D=\sup_\rho|\Re\rho-1/2|\), then
\[
 \boxed{\lim_{n\to\infty}n^{-1}\log(1+B_n)=D^2.}
\]
Under RH **every \(B_n<64\)**. If RH fails **every sufficiently large \(B_n>64\)**. In particular a single certified row above 64 would contradict RH, and a bound of 64 on any unbounded subsequence would prove it. The latter bound is open. The formula uses only finite prime sums on explicit rational grids and a usual limit. The [fixed-center theorem](XiHeatPositivityPropagation.md) used infinite prime sums and a limit superior that allowed subsequences depending on the center.

Unconditionally the bound of 64 holds for every positive integer \(n\) and every real center \(1\le a\le 3\cdot10^{12}-1/2\) in the same normalized expression. Thus all complete rows through \(n=1\,732\,050\) satisfy it. There is a further certified interval of centers \([10^{13}-1.52,10^{13}+5.52]\). Its proof below excludes zeta zeros off the critical line from an isolated band of ordinates of width 8.04.

## Prime cutoff and uniform normalization

Write \(S_n=S_{n,\infty}\), \(F_n(a)=\sum_\omega(m_\omega/2)e^{-n(\omega-a)^2}\) over the signed frequencies \(\omega=g+id\), and \(D_0(y)=\Re\psi(1/4+iy/2)-\log\pi\). The exact explicit formula gives
\[
 S_n(a)=2\sqrt{\pi n}\left[e^{n(1/4-a^2)}\cos(na)
  +\frac1{4\pi}\int e^{-n(y-a)^2}D_0(y)\,dy-F_n(a)\right].
\]
Here \(D_0\ge-7\), and \(|D_0(y)|\ll 1+\log(2+|y|)\). The two bounds follow from the elementary digamma series and its sum–integral comparison. [Explicit formula and normalization](XiHeatPositivityPropagation.md) · [Digamma estimates](XiHeatPrimeEnvelope.md)

Put \(L=\log X\), \(k=L/(2n)-1/2>0\). The absolute prime tail is at most \(4e^{L/2-L^2/(4n)}(1+1/k)\). Indeed for \(f(x)=x^{-1/2}e^{-(\log x)^2/(4n)}\), partial summation using \(\psi(x)\le4x\) costs at most \(4[X f(X)+\int_X^\infty f(x)\,dx]\). Substitute \(\log x=L+v\) and bound the exponent by its tangent of slope \(-k\). At \(X_n\), \(k=(1-\log(n)/n)/2\ge(1-1/e)/2>5/16\), and \(X_nf(X_n)\le\sqrt n\). Thus \(|S_n-S_{n,X_n}|<17\sqrt n\) at every real center. [Elementary Chebyshev bound](XiHeatPrimeEnvelope.md)

For any interval of length one in the positive ordinates, starting at \(u\ge9\), its multiplicity count is at most \(2\log(4+u)\). Bound the closed interval by the difference of the zero counts at \(u+2,u-1\). The main term costs at most \(3\log(u+2)/(2\pi)\) and the two errors at most \(0.56\log(u+2)\). For \(0\le u<9\) the interval lies below the first positive zero. Reflection treats signed ordinates and there is also a gap at zero. Thus the two unit bins \(k\le|g-a|<k+1\) together count at most \(4\log(5+a+k)\) for \(a\ge1\). Since \(\log(5+a+k)\le(k+2)\log(2+a)\) and \(\sum_{k\ge0}(k+2)e^{-k^2}<4\), it follows that
\[
 |F_n(a)|\le 11e^{(n-1)D^2}\log(2+a).
\]
Indeed use \(e^{n(d^2-(g-a)^2)}\le e^{(n-1)D^2+1/4-(g-a)^2}\) and \(8e^{1/4}<11\). If every frequency satisfies \(|g-a|\ge |d|\), the same estimate holds with the factor \(e^{(n-1)D^2}\) replaced by one. This includes every center under RH and the indicated finite-height range unconditionally. [Brent, Platt and Trudgian, Corollary 1](https://maths-people.anu.edu.au/brent/pd/rpb274-final.pdf) · [Platt and Trudgian, Theorem 1](https://arxiv.org/abs/2004.09765)

The pole costs at most one for \(a\ge1\), and the negative part of the archimedean contribution to \(S_n\) costs at most \(7/2\). Adding the finite prime tail yields the claimed bound, since \(22\sqrt{\pi}+(17+2\sqrt\pi+7/2)/\log 3<61<64\). For unrestricted divisors the same argument gives \(\limsup n^{-1}\log(1+B_n)\le D^2\).

## A lower bound at every sufficiently large integer time

Suppose \(D>0\) and \(0<\epsilon<D^2\). Choose a positive-ordinate zero with \(d^2>D^2-\epsilon/2\). In an open neighborhood of its ordinate the envelope \(\max_\omega[d^2-(g-a)^2]\) exceeds \(D^2-\epsilon\). This neighborhood lies above 1 by the true zero gap. Only finitely many branches compete there, since the squared distances to remote ordinates tend uniformly to infinity on compact center sets. Differences of the parabolas are affine. Identical branches have the same \(g,|d|\) and their conjugate terms are combined with their multiplicities. Avoiding the finitely many isolated crossings, choose a closed subinterval of positive length on which a single conjugate pair wins by a uniform positive gap. Write its exponent as \(b(a)>D^2-\epsilon\). The rest is \(O(e^{n(b(a)-\eta)})\) there for some \(\eta>0\), by summing the Gaussian tail at time one. The leading term is \(m e^{nb(a)}\cos(2nd(g-a))\) with \(d\ne0\).

For every sufficiently large \(n\) the middle half of this interval contains a positive phase maximum, since their spacing is \(\pi/(n|d|)\). Moving to the nearest point \(j/n\) changes the phase by at most \(|d|<1/2\). The cosine there exceeds \(1/2\). These points belong to the specified finite grid eventually. All terms in the prime formula other than \(-2\sqrt{\pi n}F_n\) are \(O(\sqrt n)\) uniformly on the fixed interval, including the prime cutoff error. Hence \(B_n\gg_\epsilon e^{n(D^2-\epsilon)}\) for every sufficiently large \(n\). This proves the limit and threshold assertions. Negative phase maxima give the opposite wave sign by the same argument.

## Remote zero-reality band

Let \(N=10^{13}\). The finite arithmetic Poisson certificate subtracts only certified real-zero payments, including payments from outside its initially reported cells. Its refined residual upper bounds at \(N,N+4\) are respectively less than \(0.350114,0.351361\), hence each is below 0.352. An off-line zero and its reflection, of displacement \(d\in(0,1/2)\) and distance \(y\) in ordinate from the anchor, consume
\[
 \frac{1-d}{(1-d)^2+y^2}+\frac{1+d}{(1+d)^2+y^2}.
\]
This decreases in \(y\). At \(r=2.02\) the combined numerator is \(2(1+r^2-d^2)\) and the denominator is \((1+r^2)^2+2(r^2-1)d^2+d^4\). The numerator decreases and the denominator increases in \(d^2\). Even at \(d=1/2\) the cost exceeds \(0.3524146\). Thus each anchor excludes every off-line zero within 2.02 of its ordinate. The two closed bands overlap. Every nontrivial zeta zero with ordinate in \([N-2.02,N+6.02]\) is therefore on the critical line. The count of 23 and the simplicity result from the earlier certificate apply to its original smaller interval. This argument gives line location on the two additional portions. Removing half a unit at each outer edge leaves the claimed centers for the uniform one-sided prime bound. [Poisson certificate and original two-grid payments](XiPoissonCellCertificate.md) · [Reproducible remote calculation, function beyond_height_sample](../../../scripts/verify_xi_poisson_cells.py)

## What arithmetic tail cancellation buys

For any fixed real \(\beta\) let \(L=2n-\beta\log n\), \(X=e^L\). The absolute omitted coefficient sum is asymptotic to \(2 n^{\beta/2}\). Indeed \(Xf(X)\sim n^{\beta/2}\) and \(\int_X^\infty f(x)\,dx\sim2Xf(X)\) by dominated convergence after the above change of variable. Replacing \(d\psi(x)\) by \(dx\) makes an error \(o(X f(X))\): partial summation bounds it by \(\sup_{x\ge X}|\psi(x)/x-1|\) times \(2Xf(X)+\int_X^\infty f\). The supremum over arbitrarily large centers of the absolute cosine tail equals the coefficient sum, by simultaneous phase recurrence for each finite initial segment and absolute convergence of the rest. Thus \(\beta=1\) is the boundary for a uniform absolute truncation error of order \(\sqrt n\).

On the actual grids one can cut sooner after a continuous correction. For \(n\ge16\) take \(L=2n-2\sqrt n\), \(X=e^L\), add
\[
 I_{n,L}(a)=\int_L^\infty e^{u/2-u^2/(4n)}\cos(au)\,du
\]
to \(S_{n,X}(a)\), and again put \(k=L/(2n)-1/2\). The absolute error relative to \(S_n\) is at most
\[
 9.221 L^{3/2} e^{-0.8476836\sqrt L+L/2-L^2/(4n)}
 \left[1+\frac{|a|+1/2+L/(2n)}{k}+\frac{1}{2nk^2}\right].
\]
Fiori, Kadiri and Swidinsky bound \(|\psi(x)/x-1|\) by \(9.22022(\log x)^{3/2}e^{-0.8476836\sqrt{\log x}}\). This bound decreases for \(\log x\ge L\) here. Apply partial summation to the difference measure with weight \(f(x)e^{ia\log x}\), including its boundary term at \(X\). In the integral the additional logarithmic derivative costs at most \(|a|+1/2+u/(2n)\), giving the displayed tangent integral. Uniformly for \(|a|\le n^2\) the result tends to zero since \(0.8476836\sqrt2>1\). The corrected maxima have the same exponential limit and the same eventual detection when RH fails. The factor involving \(a\) matters; this error estimate is not uniform over all real centers. [Fiori, Kadiri and Swidinsky, arXiv:2204.02588v3, explicit Chebyshev bound](https://arxiv.org/pdf/2204.02588v3)

## An exactly conserved signed mean

For any fixed \(\alpha>0\), the signed average of \(G_n(a)=2\sqrt{\pi n}\,F_n(a)\) is
\[
 \int_{\mathbb R}e^{-\alpha a^2}G_n(a)\,da
 =2\pi\sqrt{\frac{n}{n+\alpha}}\,H\left(\frac{n\alpha}{n+\alpha}\right).
\]
Integrate each translated complex Gaussian by its Fourier integral (or continuation from real center) and use both signed frequencies. Absolute interchange holds since after integrating the absolute values the terms decay like a Gaussian in \(g\) for fixed \(n,\alpha\). This converges to \(2\pi H(\alpha)>0\) unconditionally. The total variation of the same signed density has ordinary exponential rate \(D^2\), meaning that \(n^{-1}\log\int e^{-\alpha a^2}|G_n(a)|\,da\to D^2\). The upper bound is the Gaussian unit-bin count above, extended by evenness and the elementary bound on \([-1,1]\). When \(D>0\), on the fixed winning interval the cosine is at least \(1/2\) on a fraction bounded below for every sufficiently large \(n\). Integration there proves the lower rate, while the signed mean provides it at \(D=0\). Under RH the total variation equals the signed mean for every \(n\). Thus even the exactly computable signed mean alone does not control the cancellation between the two signs in this integral.

## Distribution over translated intervals

There is an unconditional arithmetic control on the frequency of large negative samples in intervals that can start at any height. If \(U_n/(\sqrt n\,e^{n/2})\to\infty\), then for uniformly distributed \(a\in[A,A+U_n]\), the variable \(S_n(a)/\sqrt{n/2}\) converges in law to the standard real Gaussian, uniformly in \(A\). Its second moment tends uniformly to one. The same holds for the finite polynomial at \(X_n\). In particular the proportion below \(-b\sqrt{n/2}\) tends to the Gaussian lower tail at \(-b\) for every fixed real \(b\).

Set \(c_m=\Lambda(m)m^{-1/2}\exp[-(\log m)^2/(4n)]\). Montgomery and Vaughan's weighted Hilbert inequality gives, for any subset of the coefficients,
\[
 U^{-1}\int_A^{A+U}\left(\sum c_m\cos(a\log m)\right)^2da
 =\tfrac12\sum c_m^2+O\left(U^{-1}\sum m c_m^2\right).
\]
Apply it to both signs of the distinct frequencies \(\log m\), with coefficient \(c_m/2\) and local spacing at least \(1/(2m)\). Subtract the two endpoint quadratic forms in the integrated off-diagonal terms. The bound is independent of both endpoints, and absolute convergence justifies passing from finite sums to the Gaussian series. [Montgomery and Vaughan, *Hilbert's inequality*, Theorem 2](https://doi.org/10.1112/jlms/s2-8.1.73)

The prime number theorem and partial summation give \(\sum c_m^2\sim n\). More precisely, primes with \(\log p\le K\sqrt n\) contribute \(n(1-e^{-K^2/2})+o_K(n)\) for fixed \(K>0\), by integrating \(u e^{-u^2/(2n)}\,du\) against the prime number theorem. For the full asymptotic the complementary Gaussian tails are uniform as \(K\to\infty\) by the Chebyshev bound and partial summation. Higher prime powers cost \(O(1)\) by convergence of \(\sum_p(\log p)^2/[p(p-1)]\). Further, \(\sum m c_m^2\ll n^{3/2}e^{n/2}\). Use \(\Lambda(m)^2\le\Lambda(m)\log m\) and partial summation with \(\psi(x)\le4x\). Below \(e^{\sqrt n}\) the cost is \(O(\sqrt n e^{\sqrt n})\). The remaining integral is bounded by a constant times \(\int_0^\infty(1+u^2/n)e^{u-u^2/(2n)}du\), giving the assertion by completing the square. This proves the second moment estimate and bounds the normalized mean square discarded by restriction to those primes by \(e^{-K^2/2}+o_K(1)\). The same estimates apply with the full finite cutoff, which eventually contains those primes for every fixed \(K\).

For the restricted prime sum expand any fixed moment of degree \(r\). A nonconstant Fourier frequency is \(\log(M/N)\) for distinct integers at most \(e^{rK\sqrt n}\). Its absolute value is at least \(e^{-rK\sqrt n}\). The sum of absolute coefficients of the expansion is at most \(e^{O_{r,K}(\sqrt n)}\), so the total off-diagonal error is \(e^{O_{r,K}(\sqrt n)}/U_n=o(1)\) uniformly in the translate. Unique factorization identifies the constant Fourier coefficient with the moment for independent uniform phases on the prime circles. These normalized independent summands have maximum size \(O(n^{-1/2})\). Their total variance tends to \(1-e^{-K^2/2}\), and each joint-sum cumulant of fixed order \(r\ge3\) is bounded by a constant times the variance sum times the maximum summand bound to the power \(r-2\). Thus the restricted moments converge to the moments of that centered Gaussian, which determine its law. Let \(K\to\infty\) in bounded Lipschitz tests using the mean square truncation bound. This proves the stated convergence, including uniformity by application to arbitrary sequences of translates. This distribution result controls typical centers. It leaves open the one-sided maximum on the shrinking grid mesh.

## Verification scope

A 192-bit Arb computation summed every prime power and enclosed every grid value for rows 5, 6 and 7. The unique maximizing index was 7 in all three rows. Their maxima lie respectively in \((0.758115713845976,0.758115713845978)\), \((0.876067936349756,0.876067936349758)\) and \((0.973698146397573,0.973698146397575)\). The logarithm of the uniform error bound for the corrected cutoff, evaluated at \(n=10^6\) with the worst-case value \(|a|=n^2\), lies between \(-146.897\) and \(-146.896\). These finite rows and cutoff enclosures are reproducible with 192-bit Arb arithmetic. [Prime-mesh verification fixture](../../../scripts/verify_xi_heat_prime_centers.py)

The remote certificate was independently rerun from script blob `f978b03375ad969cbf55b28965cd4353c8372079`. It checked 3,697 signed grid values and recovered the five original exact counts \(5,5,4,5,4\).

The nine declarations in the companion Lean module were built, freshly kernel-replayed and transitively audited. Each uses only `propext`, `Classical.choice` and `Quot.sound`. They cover the two-branch geometry, phase mesh, Gaussian algebra, cutoff and constant budgets, total variation algebra and the uniform rational remote-pair inequality. The explicit-formula transfer, prime-sum limit, translated Gaussian limit law, and certified input evaluations are analytic or computational evidence outside those formal statements. No global bound on the prime maxima or exact spectral determinant follows.
