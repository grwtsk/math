# Prime jumps and replicated zeros in the exterior Hardy approximation

Fix \(s_0=1/2+R+i\tau\), \(R=2021500000000004\), \(\tau=2024500000000000\), and write \(w(u)=R/[\pi(R^2+(u-\tau)^2)]\). For finite sums \(D(s)=\sum_{b\ge1}c_b b^{-s}\) with \(D(1)=0\) and \(H(s_0)\ne0\) for \(H=\zeta D\), set
\[
 Q(H)=\int_{\mathbb R}w(u)|H(1/2+iu)|^2du/|H(s_0)|^2 .
\]
Cancellation of the zeta pole is now built into the coefficients. The [exterior displacement estimate](XiBlaschkeDisplacementBudget.md) would give the third-derivative bound at every height if \(Q(H)-1\le e^{2j_*}-1\), with \(j_*=3R/[4(2R^2+1/4)]\) and tolerance approximately \(3.71011625031\cdot10^{-16}\). Indeed \(sD(s)/(s-1)\) is a bounded analytic multiplier on the half-plane after the removable singularity is filled in. No successful finite certificate is known here.

Three results distinguish the available arithmetic families. Integer support through \(8\cdot10^{28}\) cannot meet the tolerance, regardless of coefficients. For a geometric grid \(b=q^k\), the exact infimum over all polynomial degrees contains a positive term from artificial zeros repeated at period \(2\pi/\log q\). All grids with \(\log q\ge1.1\cdot10^{-15}\) fail. Allowing fine rational scales of the form \(2^j3^k\ge1\), with signed integer exponents, recovers the exact unconstrained Hardy infimum.

## The cost of every omitted prime

Put \(a=R-1/2-i\tau\). At \(x\ge1\) the inverse Mellin profile of \(H(s)/(s+a)\) is
\[
 k_H(x)=\sum_{mb\le x}c_b(mb/x)^a .
\]
In fact \(C(x)=\sum_b c_b\lfloor x/b\rfloor\) obeys \(|C(x)|\le\sum_b|c_b|\) by \(D(1)=0\). Partial summation thus bounds the profile by \((1+|a|/\Re a)\sum_b|c_b|\). This permits continuation of its Mellin transform from \(\Re s>1\) to the critical line. By Plancherel and Hardy evaluation, \(Q(H)-1=2R\int_1^\infty|k_H(x)/H(s_0)-x^{-a}|^2dx/x^2\). For finite rational input this integral is computable to arbitrary absolute precision: the profile is a single constant times \(x^{-a}\) between adjacent breakpoints, and the uniform bound just given controls the remaining integral by a constant divided by the cutoff.

Suppose all the scales are rational with common denominator \(d\), and their reduced numerators are at most \(X\). For every prime \(p>X\), the only way to have \(mb=p\) is \(b=1\): the reduced numerator of \(b\) must divide \(p\), and numerator one with \(b\ge1\) forces \(b=1\). Take \(c_1=0\) if that scale is absent. Breakpoints are separated by at least \(1/d\). In each of the two cells adjacent to \(p\) the normalized residual is a scalar times \((p/x)^a\), and the two scalars differ by \(z=c_1/H(s_0)\). Their squared-norm weights are exactly
\[
 U_p=\frac{(p/(p-1/d))^{2R}-1}{p},\qquad
 V_p=\frac{1-(p/(p+1/d))^{2R}}p.
\]
Completing the complex square gives a cost at least \(\kappa_p|z|^2\), \(\kappa_p=U_pV_p/(U_p+V_p)\). The cells for different odd primes have disjoint interiors. The initial interval \([1,1+1/d)\) additionally costs \(W|z-1|^2\) with \(W=1-(1+1/d)^{-2R}\). A second completion of the square therefore gives
\[
 Q(H)-1\ge \frac{WK}{W+K},\qquad K=\sum_{p>X}\kappa_p
 \quad(X\ge2).
\]
Increasing finite prime subsets justifies the positive summation. The inequality is independent of cancellations among the original polynomial coefficients.

By convexity \(U_p\ge V_p\). The inequalities \(\log(1+y)\ge y/(1+y)\) and \(1-e^{-v}\ge v/(1+v)\) give \(\kappa_p\ge R/[p(dp+1+2R)]\). For the tabulated cutoffs all \(y\ge X\) satisfy \(|\vartheta(y)-y|\le\delta y\), \(\delta=10^{-3}\), by the published explicit Chebyshev estimates. Partial summation with \(f(y)=1/(y^2\log y)\) bounds \(\sum_{p>X}p^{-2}\) below by \((1-\delta)\int_X^\infty f(y)dy-2\delta Xf(X)\). Substituting \(y=Xe^v\) and using \((1+v/\log X)^{-1}\ge1-v/\log X\) bounds the integral below by \((1-1/\log X)/(X\log X)\). In total,
\[
 K\ge \frac{R}{d+(1+2R)/X}
 \frac{(1-\delta)(1-1/\log X)-2\delta}{X\log X}.
\]
The [interval computation](../../../scripts/verify_xi_prime_jump_approximation.py) yields these strict lower bounds. [Dusart, Theorem 5.2](https://arxiv.org/pdf/1002.0442) · [Broadbent, Kadiri, Lumley, Ng and Wilk, Theorem 1 and §§2–3](https://arxiv.org/pdf/2002.11068v2)

| Common denominator | Maximum reduced numerator | Lower bound for \(Q(H)-1\) |
|---:|---:|---:|
| 1 | \(8\cdot10^{28}\) | \(3.72846851962\cdot10^{-16}\) |
| \(10^8\) | \(10^{21}\) | \(4.08168833899\cdot10^{-16}\) |
| \(10^{12}\) | \(1.2\cdot10^{17}\) | \(4.16194165559\cdot10^{-16}\) |

Báez-Duarte's strong Nyman–Beurling theorem concerns closure over unbounded integer dilations. Its Mellin identity uses the zeta factor. The present two-cell estimate is for a finite degree, a translated Poisson norm and a fixed positive tolerance. [Báez-Duarte, *A strengthening of the Nyman–Beurling criterion*, Theorem 1.1](https://arxiv.org/pdf/math/0202141)

## Exact cost of a fixed geometric grid

Fix \(q>1\), \(h=\log q\), \(T=2\pi/h\), and allow \(D(s)=p(q^{-s})\) of any finite degree with \(p(q^{-1})=0\). Write \(M_q=\inf_D Q(\zeta D)\). At \(u\in[0,T)\) let
\[
 w_j=w(u+jT),\quad W=\sum_{j\in\mathbb Z}w_j,\quad
 \omega_j=w_j/W,\quad Z_j=|\zeta(1/2+i(u+jT))|^2.
\]
The circular coordinate is \(z=e^{-h(s-1/2)}\), with \(z_0=z(s_0)\), \(\alpha=e^{-h/2}\), \(b_\alpha(z)=(z-\alpha)/(1-\alpha z)\). Write \(P(s)=(s-1)/s\) and let \(J=-\log|B(R+i\tau)|\) be the arithmetic exterior deficit. Then
\[
 \log M_q=2J+
 \int_0^T W\left[\log\!\left(\sum_j\omega_j Z_j\right)
                         -\sum_j\omega_j\log Z_j\right]du
 +\log\frac{|P(s_0)|^2}{|b_\alpha(z_0)|^2}.                 \tag{1}
\]
Both added terms are nonnegative. The integral measures the loss from identifying distinct boundary values. The last term comes from zeros imposed at \(1+ikT\) when cancelling the pole at 1. The function \(b_\alpha(z(s))\) is inner on the half-plane and vanishes at 1, so division by that single half-plane Blaschke factor leaves an inner function. This proves the indicated sign. Equivalently it follows by Schwarz–Pick.

For (1), fold the weighted boundary norm onto the circle. Its weight relative to \(du/T\) is \(F=T\sum w_j Z_j\). It is integrable with integrable logarithm: the original weighted mean square is finite, while the single term \(j=0\) gives an integrable lower logarithm on the compact interval including the finitely many logarithmic singularities. Let \(O\) be its disk outer factor with boundary modulus \(F^{1/2}\). The polynomial factor must vanish at \(z=\alpha\). Hence the closed span of its products with \(O\) is \(b_\alpha H^2\), by cyclicity of the outer factor of \((z-\alpha)O\). Minimizing the squared norm at prescribed interior evaluation using the disk reproducing kernel gives
\[
 M_q=(1-|z_0|^2)\,|O(z_0)|^2/
        (|b_\alpha(z_0)|^2|\zeta(s_0)|^2).
\]
Polynomial evaluation is continuous, so the same infimum is obtained before closure. The periodized Cauchy kernel \(TW\) is the circle Poisson kernel at \(z_0\), as seen from its Fourier coefficients. Its logarithmic Poisson mean is \(-\log(1-|z_0|^2)\), by its outer factor \(\sqrt{1-|z_0|^2}/(1-\overline{z_0}z)\). Splitting \(\log F=\log(TW)+\log\sum\omega_j Z_j\) and using the arithmetic Poisson formula \(2J=\int w\log|\zeta|^2-2\log|P(s_0)\zeta(s_0)|\) gives (1). Jensen gives the first additional sign. [Beurling, *On two problems concerning linear transformations in Hilbert space*](https://doi.org/10.1007/BF02395019) · [Arithmetic boundary-factor identity](XiBlaschkeDisplacementBudget.md)

The artificial zeros alone exclude every \(h\ge1.1\cdot10^{-15}\). Indeed
\[
 1-|b_\alpha(z_0)|^2
 =\frac{(1-e^{-h})(1-e^{-2Rh})}{|1-e^{-(R+1/2)h-i\tau h}|^2}
 \ge(1-e^{-h})\tanh(Rh/2).
\]
The lower bound increases with \(h\). Since \(-\log y\ge1-y\), the replica term in (1) is at least \(\log(1-2R/|s_0|^2)+(1-e^{-h})\tanh(Rh/2)\), exceeding \(3.91228628339\cdot10^{-16}>2j_*\) already at the stated lower endpoint.

An independent finite control uses actual critical-line values for the dyadic grid \(q=2\). For \(0\le u\le2\), retain \(z_j=\zeta(1/2+i(u+jT))\), \(0\le j<24\). All 24 samples of the normalized grid polynomial are equal. For any common complex value \(c\), the smallest possible \(\sum|cz_j-1|^2\) is \(\sum_{j<k}|z_j-z_k|^2/\sum |z_j|^2\), when the denominator is nonzero. Multiplying by \(R/[\pi(R^2+\tau^2)]\), a lower bound for the Poisson weights on the retained intervals, gives a lower bound for the quadratic excess. On 160 interval boxes the fixture encloses all 3,840 zeta values, discards unresolved pairwise lower bounds, and uses an upper bound for the denominator. The residual integral before the Poisson factor exceeds 16.99, giving an excess greater than \(1.33\cdot10^{-15}\). This direct calculation also applies when the common coefficient depends arbitrarily on the base point. It uses the boundary values independently of the artificial-zero estimate.

## Recovering the full infimum with rational scales

For each disk polynomial \(p\), consider its half-plane form \(P(s)p(2R/(s+a)-1)\). Put \(s_h=(1-q^{-s})/h\), and approximate by
\[
 \frac{1-q^{1-s}}{1-q^{-s}}\,p\!\left(\frac{2R}{s_h+a}-1\right).
\]
For every fixed point on the closed critical half-plane, the approximation converges as \(h\downarrow0\). The first quotient has modulus at most \(1+(q-1)/(\sqrt q-1)\) there. The Cayley argument has modulus at most \(1+2R/\Re a\), since \(\Re s_h>0\). The approximants are therefore uniformly bounded for small \(h\), for fixed \(p\). Dominated convergence against \(w|\zeta|^2\) gives convergence in the required boundary norm, with convergence also at \(s_0\). For each \(h>0\), after removing the exact factor \(1-q^{1-s}\), the remaining rational function of \(v=q^{-s}\) is analytic on a neighborhood of \(|v|\le q^{-1/2}\): its possible poles are 1 and \(1+ha\), both outside. Taylor truncation consequently gives finite polynomials preserving cancellation exactly.

The unrestricted Cayley-polynomial infimum is \(e^{2J}\). The preceding argument proves \(\lim_{q\downarrow1}M_q=e^{2J}\), while (1) gives the lower bound for every grid. Since \(\log 2/\log3\) is irrational, the additive group generated by these two logarithms is dense. Thus one may take \(q=2^j3^k>1\) tending to one and use only scales of this same arithmetic form. In particular \(J<j_*\) is equivalent to existence of a finite certificate in this family with \(Q(\zeta D)<e^{2j_*}\). One may restrict the free polynomial coefficients to rational real and imaginary parts by continuity, retaining the exact pole factor. Thus the strict test admits an enumeration: enumerate the two-prime grid steps, coefficient lists, rational integration cutoffs and interval precisions; the bounded-tail estimate in the first section gives a verifiable upper enclosure for each candidate with nonzero center evaluation. A successful search would settle order three at every height. The enumeration has no proved termination for the actual zeta function. A concrete fine step is \(q=2^{9115015689657667}/3^{5750934602875680}\); its logarithm is about \(1.06355803\cdot10^{-16}\). The fixture bounds its replica term by \(3.8170\cdot10^{-18}\). Its folded zeta integral and its actual optimal norm are unresolved. Proving the needed exterior upper bound, even at this one center, remains open.

The [Lean companion](XiPrimeJumpApproximation.lean) verifies the two-cell square identity and complex lower bound, the harmonic-weight bound, the normalized initial-coefficient floor and the geometric pole constraint. Fresh native kernel replay and transitive axiom audits of its five declarations passed at Lean blob `6ea8ec22333cbb74fe8cde35932d8cf839dd8847`, on Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. The audits used only `propext`, `Classical.choice` and `Quot.sound`. The analytic Hardy-space infimum formula, prime tail and arithmetic control are outside Lean. Independent external analytic review remains outstanding.
