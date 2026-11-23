# One-sided prime sums on fixed multiplicative intervals

grwtsk contributors

For real \(x\ge1\) form the continuous prime sum
\[
 G(x)=\sum_{m\le x}\Lambda(m)(x/m-1)-x\log x+(1+\gamma)x ,
\]
where \(\gamma\) is Euler's constant. The following criterion uses only primes in its hypothesis. Fix an integer \(k\ge1\). For every \(\epsilon>0\) and every positive integer \(h\), suppose there are arbitrarily large \(X\) for which
\[
       G(n^k)\le(n^k)^{1/2+\epsilon}
       \qquad(X\le n^k\le e^hX).                                      \tag{1}
\]
Then all nontrivial zeta zeros lie on the critical line. Under (1) the arithmetic kernel below determines a densely defined self-adjoint operator with Hilbert–Schmidt inverse and the exact normalized xi determinant. Conversely, reality of all the ordinates implies (1). Bounds at isolated samples would be too weak. The independent arithmetic proof of (1) is open here.

## From the prime ramp to a fixed window

Normalize \(X_0(z)=\xi(1/2+iz)/\xi(1/2)\), and use the distinct zeros \(\alpha\) of this entire function, with multiplicities \(m_\alpha\), **in the proof**. Set \(b_\alpha=-\Im\alpha\), \(a_\alpha=\Re\alpha\), and \(B=\sup b_\alpha=\sup|\Im\alpha|\). Unconditionally \(0\le B\le1/2\), the zeros come in reflected pairs \(a+iy,-a+iy\), and none has \(a=0\). The latter follows from positivity of the Dirichlet eta function at each real \(0<s<1\) by grouping adjacent alternating terms. The explicit formula for the principal character gives the real even kernel
\[
 C(t)=e^{-|t|/2}\left(G(e^{|t|})-\log(2\pi)
              +\sum_{j\ge1}\frac{e^{-2j|t|}}{2j(2j+1)}\right)
     =\sum_\alpha c_\alpha e^{i\alpha t},\qquad
 c_\alpha=\frac{m_\alpha}{\alpha^2+1/4}.                               \tag{2}
\]
In particular \(C(0)=2+\gamma-\log(4\pi)\). The summands are absolutely summable at zero by the Riemann–von Mangoldt count, and locally uniformly summable on the real axis by the strip bound. The denominator follows from \(\rho(\rho-1)=-(\alpha^2+1/4)\) for \(\rho=1/2+i\alpha\). One derivation takes the Laplace transform of the ramp in \(\log x\), giving \(-\zeta'(s)/(\zeta(s)s(s-1))\). Partial fractions of the completed product give the constant, the negative even integer terms and the nontrivial terms displayed in (2). The source-local derivation includes the two pole contributions and the endpoint \(x=1\). [Principal-character explicit formula, equation (1)](AlpogeCellZeroExpansion.md)

For \(0<d<B\), let
\[
 S_d=\sum_{\substack{a_\alpha>0\\ b_\alpha>d}}\frac{\pi}{a_\alpha},
\]
counting each distinct zero once. This number is finite. At \(\sigma=1/2+d\), Ingham's exponent \(3(1-\sigma)/(2-\sigma)\) is strictly less than one. The number of such positive ordinates up to \(T\), including multiplicity, is consequently \(O_d(T^{1-\kappa_d})\) for some \(\kappa_d>0\). Summing \(1/a_\alpha\) over dyadic intervals proves the assertion. This uses an unconditional density estimate and permits infinitely many zeros to the right of \(\sigma\). [Ingham, *On the estimation of N(σ,T)*, 1940](https://doi.org/10.1093/qmath/os-11.1.201) · [Guth and Maynard, arXiv:2405.20552v2, equation (1.2)](https://arxiv.org/html/2405.20552v2#S1.E2)

For **each** \(h>S_d\) and either sign, the following ordinary limit holds:
\[
 \lim_{L\to\infty}\frac1L\log\!\left(1+
        \max_{L\le t\le L+h}(\pm C(t))_+\right)=B.                      \tag{3}
\]
For \(B=0\) the same formula holds for every \(h>0\), since \(|C|\le\sum |c_\alpha|\). If \(B>0\) is approached but never attained, \(S_d\to0\) as \(d\uparrow B\), by dominated convergence using any positive \(d_0<B\); then every positive width suffices. In general \(S_d\) decreases to the reciprocal-ordinate sum over the extremal positive-frequency zeros. No effective upper bound for its size is required by (1).

Here is a proof of (3). Fix a growing mode \(\alpha_*\) with \(a_*>0,\ b_*>d\). All modes with \(b_\alpha\le d\) together contribute at most \((\sum|c_\alpha|)e^{dt}\) for \(t\ge0\). For a bad mode \(\beta=a+iy\), \(a>0,\ -y>d\), let
\[
 u_\beta=\pi/a,\qquad
 \mu_\beta=\frac{\delta_0+e^{y u_\beta}\delta_{u_\beta}}{1+e^{y u_\beta}} .
\]
A forward translation averaged against this probability measure multiplies \(e^{i\beta t}\) by zero, since \(e^{i\beta u_\beta}=-e^{-y u_\beta}\). It also kills \(-a+iy\). Fix \(A>2a_*\) above the anchor. Convolve all factors with \(a>A\) to a single probability measure \(\nu\). It exists as the law of the sum of independent variables with these two-point laws. The variables have absolutely summable upper bounds, and the support lies in \([0,S_{\rm tail}]\), where \(S_{\rm tail}=\sum_{a>A}u_\beta\) over the bad modes. For fixed \(\alpha_*\), each factor in its multiplier has positive real part because \(|a_*u_\beta|<\pi/2\), and differs from one by \(O_{\alpha_*}(u_\beta)\). The product therefore exists and is nonzero. Bounded convergence computes this product as the multiplier of \(\nu\). Absolute convergence on compact intervals justifies applying the measure term by term in (2).

Write \(F(t)=\int C(t+s)\,d\nu(s)\). Apart from \(O_d(e^{dt})\), it is a finite exponential sum over the remaining bad modes with \(|a|\le A\), with a nonzero coefficient at the anchor. For any \(0<\eta<h-S_d\), choose a forward step \(v>0\) so small that the nodes \(z_\alpha=e^{i\alpha v}\) of this finite head are distinct and \((M-1)v<\eta\), where \(M\) is its size. Different imaginary parts give different moduli and a sufficiently small \(v\) separates all unequal real parts with equal imaginary part. Apply the polynomial \(\prod_{\alpha\ne\alpha_*}(z-z_\alpha)/(z_*-z_\alpha)\) in the shift by \(v\). It leaves only the anchor and \(O(e^{dL})\), including the polynomial's fixed coefficient norm. Consequently some \(t\in[L,L+\eta]\) satisfies \(|F(t)|\ge c_*e^{b_* L}\) for all sufficiently large \(L\), with the choice of \(t\) allowed to depend on \(L\).

Convolve the finitely many complementary \(\mu_\beta\) with \(a\le A\) to a positive measure \(\lambda\) supported on \([0,S_d-S_{\rm tail}]\). It kills the entire finite bad head and has an atom \(p>0\) at zero. Thus \(|\int F(t+s)\,d\lambda(s)|=O(e^{dt})\). If \(F(t)\ge c_* e^{b_*L}\), the remaining atoms must contain a value at most \(-p c_*e^{b_*L}/2\) for large \(L\). Applying the same inference to \(-F\) handles a negative initial value. As \(F\) itself is a positive average of \(C\), its positive and negative values force corresponding extrema of \(C\) after at most \(S_{\rm tail}\) additional translation. Both occur in \([L,L+h]\). Taking anchors with \(b_*\) arbitrarily close to \(B\) proves the lower rate. The upper rate follows directly from (2).

Kaczorowski and Pintz study local oscillation for a class of arithmetic functions through Mellin-transform singularities. Their 1987 theorem gives large sign changes on \([Y^{1-\epsilon},Y]\) under its hypotheses. Here the summable reciprocal ordinates of the growing modes and the absolute summability in (2) allow a compact positive convolution for this particular observable. A finite trigonometric mode can keep one sign on a short interval, so the support width and the quantifier on \(h\) matter. No priority or sharpness claim is made for (3). [Kaczorowski and Pintz, *Oscillatory properties of arithmetical functions II*, theorem (1.7)–(1.8)](https://personal.math.ubc.ca/~gerg/teaching/592-Fall2018/papers/1987.Kaczorowski_2.pdf)

## Arithmetic samples and the sign of the remaining discrepancy

For \(0<q<1,\ 0\le t,\ |u|\le1\),
\[
 |C(t+u)-C(t)|\ll_q e^{Bt}|u|^q.
\]
Indeed \(|e^{i\alpha u}-1|\ll\min(1,|\alpha u|)\) uniformly in the zero strip, and \(\sum |c_\alpha|(1+|\alpha|)^q<\infty\). On \([L,L+h]\) the distance in log scale to a nearest \(k\)-th power is \(O_{h,k}(e^{-L/k})\). Take an interior subinterval of fixed length \(>S_d\) before rounding. For any target rate \(\tau<B\), select an anchor with \(b_*>\max(d,\tau,B-q/k)\). The rounding error has strictly smaller exponential rate. Thus (3) holds also with the extrema restricted to \(\log(n^k)\) in the window, for **every fixed degree** \(k\). In particular if \(B>0\), both sampled signs have rate \(B\) on every sufficiently wide fixed window. Equation (1) contradicts the positive rate by choosing any \(\epsilon<B\) and a sufficiently large integer width. For \(B=0\), (2) gives \(G(x)=O(\sqrt x)\) globally. Both cases admit a one-sided square-root upper bound at isolated arbitrarily large samples, showing the necessity of controlling whole groups of samples in (1).

One can replace the maximum by the **arithmetic mean of the positive part** in each window, or by the mean of the negative part. More precisely, average \((\pm C(\log(n^k)))_+\) over \(e^L\le n^k\le e^{L+h}\) in (3); the limit is again \(B\). To see the lower bound for \(B>0\), take an excursion of size \(c_*e^{b_*L}\) in the interior subinterval. The Hölder estimate keeps at least half this size throughout a radius \(r=\exp(-(B-b_*+\delta)L/q)\), for any \(\delta>0\) and sufficiently large \(L\). Provided \((B-b_*+\delta)/q<1/k\), at least a constant times \(e^{L/k}r\) samples lie there, out of \(O_h(e^{L/k})\) total samples. The mean thus has lower exponential rate at least \(b_*-(B-b_*+\delta)/q\). Now take \(b_*\) to \(B\) and \(\delta\) to zero. The upper bound and \(B=0\) follow from (2). The same statement holds for \((\pm G(n^k)/n^{k/2})_+\), since the pointwise difference is \(O(e^{-L/2})\). In (1) it would consequently suffice to bound the **mean of the normalized positive part** by \(X^\epsilon\) on cofinal windows of each fixed width. A signed mean that cancels the two excursions supplies no such upper bound.

For fourth powers there is also a direct finite interpolation inequality. For \(a\le x\le b,\ a>0,\ x=(1-s)a+sb\) one has
\[
 G(x)\le(1-s)G(a)+sG(b)+\frac{(b-a)^2}{8a}.
\]
The prime ramp is convex. The second derivative of \(x^2/(2a)-x\log x\) is \(1/a-1/x\ge0\) on this interval, giving the displayed error by \(s(1-s)\le1/4\). For \(a=n^4,\ b=(n+1)^4,\ n\ge1\) this error is at most \(225 n^2/8\). This estimate uses no information about any zero. On the clipped rational mesh \((n/8)^4\) a 160-bit ball computation certifies \(G(x)<\sqrt{x}/15\) for **all real** \(10^4\le x\le10^7\). The exact sieve counts 664,579 primes and 665,134 prime powers. The maximum certified interval upper bound for \(G(x)/\sqrt x\) is less than \(0.066342067\) over 370 subintervals. The chord between normalized endpoint bounds uses concavity of \(\sqrt x\). [Finite interval fixture](../../../scripts/verify_prime_ramp_fourth_power.py)

There is a direct arithmetic interpretation of the missing sign. For integers \(m\ge1\), let \(K_m(v)=1-\{m/v\}\). The prime factorization of \(m!\) gives \(\sum_{d\le m}\Lambda(d)\lfloor m/d\rfloor=\log(m!)\). Stirling's formula therefore gives
\[
 G(m)=\gamma m+\tfrac12\log(2\pi m)+O(m^{-1})
       -\sum_{p^j\le m}(\log p)\,K_m(p^j).                              \tag{4}
\]
All summands in the last sum are positive. Their prime squares contribute \((2+\zeta(1/2))\sqrt m+o(\sqrt m)\). In fact the prime number theorem gives weak convergence of the measures \(\sum_{p\le y}(\log p)\delta_{p/y}/y\) to Lebesgue measure on \([0,1]\). The square weight \(1-\{u^{-2}\}\) is bounded and Riemann integrable, so at \(y=\sqrt m\) the limiting coefficient is its integral. With \(t=u^{-2}\), the fractional-part continuation \(\zeta(s)=s/(s-1)-s\int_1^\infty\{t\}t^{-s-1}dt\) at \(s=1/2\) gives the stated value. All \(j\ge3\) together cost \(O(m^{1/3})\) by Chebyshev's bound for \(j=3\) and \(O(m^{1/4}\log m)\) for the rest. Likewise \(\int_0^1(1-\{u^{-1}\})du=\gamma\) by integrating on the reciprocal-integer intervals. Consequently (1) is equivalent, with its quantifier over every \(\epsilon>0\) absorbing constants, to the corresponding lower bound \(\sum_{p\le m}(\log p)K_m(p)\ge\gamma m-m^{1/2+\epsilon}\) at \(m=n^k\). This version depends only on first powers of primes.

One attempt to obtain this lower bound is to cut at \(m/J\). The omitted positive mass is \(O(m/J)\) for the prime measure and for Lebesgue measure. On \([m/J,m]\) the weight has \(O(J)\) intervals of monotonicity and bounded total variation \(O(J)\). Partial summation against \(\vartheta(v)-v\), keeping the endpoint values at \(v=m/j\), costs \(O(J\sup_{m/J-1\le v\le m}|\vartheta(v)-v|+J\log m)\). The classical prime number theorem with exponential error and \(J=\lceil\exp(c\sqrt{\log m})\rceil\) for sufficiently small \(c>0\) give \(O(m\exp(-c'\sqrt{\log m}))\). This calculation explains which cancellation is still missing even after discarding all higher prime powers. It gives no independent proof of the required square-root-scale bound. The auxiliary-character sums, lattices, integrality and period estimates of the original (M) impose further obligations beyond this untwisted criterion. [Original weighted arithmetic cells and their hypotheses](AlpogeMainPrimeArithmetic.md) · [Trudgian, explicit prime number theorem error, Theorem 1](https://arxiv.org/abs/1401.2689)

The November 21 exposition's signed-character estimates B and C and its original averaged inequality (M), **together**, would give (1) without using its final RH theorem: choose the source accuracy to absorb the exponent loss, take an admissible \(Y\ge e^{2h}\) arbitrarily large, then \([Y,e^hY]\subset[Y,Y^{3/2}]\). The same auxiliary prime pair is required throughout the latter interval. The exposition quotes (M). In the independent reconstruction the common ramified quadratic correction is already derived for a tied, adapted family. An outstanding geometric step is to construct that family globally and match, for every actual pair of decorated classes, its automorphic Taylor series and its first-kernel reading simultaneously with the prescribed lattice and column chain. The locally derived correction assumes those identifications. [November 21 edition, §§I.6–I.8 and II.4–5](https://www.math.uwaterloo.ca/~mrubinst/alpoge_claude_grh/zeta-paper.pdf) · [Exact remaining global identifications](AlpogeKernelFieldEntries.md) · [Ramified correction under the tied hypotheses](AlpogeRamifiedThetaShape.md)

## Conditional Hilbert–Pólya operator

Equation (2) is also the limit of actual translated Weil correlations. Take \(f_T(x)=e^{-x/2}\mathbf 1_{[0,T]}(x)\). Its paired Fourier values at \(\alpha,\bar\alpha\) give the factor \((1+e^{-T}-2e^{-T/2}\cos(T\alpha))/(\alpha^2+1/4)\). The polarized Weil form between \(f_T\) and its translate by \(t\) therefore equals
\[
 (1+e^{-T})C(t)-e^{-T/2}(C(t+T)+C(t-T)).
\]
The bounded-variation explicit formula applies, or follows by smoothing these packets and using the uniform reciprocal-square majorant at fixed \(T\). For each fixed real \(t\) the two translated error terms vanish as \(T\to\infty\) by dominated convergence in (2), since \(|\Im\alpha|<1/2\) for each zero. A common strict gap from \(1/2\) is unnecessary. [Polarized form and interval normalization](XiWeilThetaCluster.md)

Assume (1). Then (3) gives \(B=0\), and (2) shows the positive definiteness of \(C(t-s)\) in every finite size. Take its unique finite positive Bochner measure \(\mu\), with convention \(C(t)=\int e^{itu}d\mu(u)\). This specifies the measure from primes through the left side of (2). For \(j=1,2,\ldots\) take the atoms \(u\) for which \((u^2+1/4)\mu(\{u\})\ge j\), with counting measure on each layer. On the Hilbert sum of these \(\ell^2\) spaces take multiplication by \(u\) with domain \(\sum_{j,u}u^2|f_j(u)|^2<\infty\). Finite-support vectors are dense and the inverses of \(H\pm i\) are multiplication by \((u\pm i)^{-1}\), bounded and mapping into the domain. Thus \(H\) is self-adjoint. Uniqueness of Fourier transforms in (2) identifies the atoms with the actual real ordinates and identifies their layer counts with \(m_u\). There is a positive gap about zero because \(X_0(0)=1\); \(\sum m_u/u^2<\infty\) makes \(H^{-1}\) Hilbert–Schmidt. The paired canonical factors in the order-one Hadamard product cancel the linear exponential terms, and evenness eliminates a possible residual \(e^{az}\). Normalizing at \(z=0\) gives, for all complex \(z\),
\[
 \det\nolimits_2(I-zH^{-1})=\prod_{u>0}(1-z^2/u^2)^{m_u}
                           =\xi(1/2+iz)/\xi(1/2).
\]
The arithmetic construction still depends on proving the cofinal bound in (1). The filters using the hypothetical bad zeros occur only in the proof of the criterion. [Related construction from a Gaussian prime kernel](XiHeatWavePrimeKernel.md)

The [Lean companion](XiPrimeRampShortWindows.lean) treats the positive two-atom cancellation, the compensating sign in a finite average, and the interpolation inequalities. The infinite convolution, zero-density implication, prime-square asymptotic, cofinal estimate, operator identity and Mathlib RH have no end-to-end Lean verification here. Independent external review is outstanding.

At source blob 17264d2ddf4c0e35fa8992d4d0158275bf323f71 all six supporting declarations elaborated with Lean 4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. Fresh kernel replay checked 27,947 declarations in their dependency closure. Each transitive axiom query reported exactly propext, Classical.choice and Quot.sound.
