# A strip formula for zeta with an explicit prime series

Take \(1/2\le\sigma<1,\ L>2(1-\sigma),\ k=\pi/L,\ b\in\mathbb R\). For \(0\le d\le1-\sigma\) put
\[
 G_L(d,x)=\operatorname{artanh}\frac{\sin(kd)}{\cosh(kx)}.
\]
Write \(D_{\sigma,L}(b)=\sum_{\beta>\sigma}m_\rho G_L(\beta-\sigma,\gamma-b)\) for the complete nontrivial divisor \(\rho=\beta+i\gamma\). The following arithmetic prescription has no zero ordinates as inputs:
\[
 2D_{\sigma,L}(b)=
 \frac1L\int_{\mathbb R}\frac{\log|\zeta(\sigma+i(b+v))|}{\cosh(kv)}\,dv
 -\sum_{p,j\ge1}\frac{\cos(bj\log p)}
 {j\,p^{j\sigma}\cosh(Lj\log p/2)}
 +2G_L(1-\sigma,b). \tag{1}
\]
Here the outer index \(p\) ranges over primes, and \(j\) over positive integers. The known pole contributes the **positive** final correction. This sign matters even on ranges where it is numerically small.

## Strip argument

Use the strip \(\sigma<\Re s<\sigma+L\), with source point \(\sigma+L/2+ib\), and the map \(w=\exp(i k(s-\sigma-ib))\) to the upper half-plane. The source maps to \(i\). On each boundary the Cauchy harmonic measure \(du/[\pi(1+u^2)]\) pulls back to \(dv/[2L\cosh(kv)]\). The half-plane Green function \(\log|(w+i)/(w-i)|\) pulls back at a zero to \(G_L\). Thus the sum of Green values equals the two harmonic boundary means minus the midpoint log value, with the pole Green value restored.

For clarity about endpoints, apply disk Jensen after clearing the pole and dividing by a high fixed power of \(s+2\). This makes a bounded strip-holomorphic function by Euler summation. It extends meromorphically across each finite boundary point, and finite boundary zeros have only locally integrable logarithmic singularities. In its canonical disk factorization any singular inner measure could therefore be supported only at the two strip ends. An atom at either end would force decay at least \(\exp[-c\exp(k|t|)]\) along the central line in that direction: the Poisson kernel for that boundary atom is \(\exp(k|t|)\), the Blaschke factor is bounded by one, and the outer factor by the boundary supremum. The central Euler product at real part \(\sigma+L/2>1\) instead gives \(|\zeta|\ge1/\zeta(\sigma+L/2)>0\); rational normalization costs only powers of \(1+|t|\). Hence there are no endpoint atoms. The rational divisor removed in the proof contributes just its known pole correction after undoing the normalization. In particular the boundary logarithms are integrable against the indicated harmonic measures. The half-plane Jensen formula of Balazard, Saias and Yor is an earlier critical-line RH criterion involving a Cauchy weight. The finite strip has two boundary components and an exponentially localized Green kernel. [Balazard, Saias and Yor, 1999](https://translations.thosgood.net/AIM-143-1999-284.pdf) · [Strip harmonic measure, Section 2](https://link.springer.com/article/10.1007/s11785-026-01997-3)

On both the right boundary and the central line the logarithm of the Euler product converges absolutely. The Fourier transform of \(\sech(kv)\) is \(L/\cosh(L\omega/2)\). To see it, integrate \(e^{i\omega z}/\cosh(kz)\) around a rectangle of height \(iL\). Its only pole is \(iL/2\); the two long-edge integrals differ by the factor \(-e^{-L\omega}\), and the short edges tend to zero. The result at zero follows by continuity. At \(n=p^j,\ y=n^{L/2}\), the combined right and center coefficients simplify by
\[
 \frac{y^{-2}}{2\cosh(\log y)}-y^{-1}
     =-\frac{1}{2\cosh(\log y)} .
\]
This gives (1), with summability majorized by \(2\sum n^{-\sigma-L/2}\). The companion proves the scalar identity, the log-ratio form of \(G_L\), the sine bounds and the inequalities \(q\le\operatorname{artanh}q\le q/(1-q)\) for \(0\le q<1\). The conformal factorization and the prime-series boundary identity are analytical results. [Lean kernel](XiStripGreenKernel.lean) · [Actual zero sum](XiStripZeroCriterion.md)

## Comparison with the exponential-weight criterion

Sekatskii, Beltraminelli and Merlini, arXiv:1006.0323, Theorem 1 and equation (3), give the hyperbolic-secant criterion at unshifted height, for precisely the range \(k(1-\sigma)<\pi/2\). Indeed expanding \(1/\cosh x=2\sum_{n\ge0}(-1)^n e^{-(2n+1)x}\) changes the prime series in (1) to \(2\sum_{n\ge0}(-1)^n\log|\zeta(\sigma+(n+1/2)L+ib)|\). Absolute convergence of the expanded double sum follows since \(\sigma+L/2>1\) and \(1-p^{-jL}\ge1-2^{-L}>0\). At \(b=0\), using the evenness of the critical-line log modulus gives their alternating real-axis zeta formula with the same pole correction. The unshifted criterion already exists. The local work carries an independent strip-map derivation to translated heights, an explicit zero-cost and one-sided truncation bound, and the verified divisor-side Lean statements. No prior-art priority claim is made for the translation. [Sekatskii, Beltraminelli and Merlini, Theorem 1](https://arxiv.org/pdf/1006.0323)

## A finite, one-sided upper bound

For the single-boundary formula, restrict the integral to \(|v|\le R\) and the primes to \(p^j\le N\). The absolute omitted prime mass is at most \(2N^{1-\sigma-L/2}/(\sigma+L/2-1)\). With \(A=1/\sigma+1/(1-\sigma)\), an upper bound for the omitted integral in (1) is
\[
 \frac4\pi e^{-kR}\left[\log(A(1+|b|+R))+
             \frac1{k(1+|b|+R)}\right].
\]
Indeed Euler summation yields \(|\zeta(\sigma+it)|\le A|\sigma+it|\), and \(\sech(kv)\le2e^{-k|v|}\). Integrate the tangent upper bound for the concave log function on each tail. Only an upper bound for the omitted logarithm is needed. In the two-boundary form, each side carries half this measure, and the right-side log is bounded above by \(\log(1+1/(\sigma+L-1))\). Zeros on a boundary could make pointwise lower tail control impossible. They do not affect this one-sided certification.

At center 41, the single-boundary fixture retained 2,328 prime powers through 20,000 and used the left boundary from heights 22 through 60. Including both tails gives \(D_{0.7,3}(41)<5.768\cdot10^{-6}\). The reproducible fixture implements both versions. Its local holomorphic quadrature uses \(\log(P(z)\overline{P(\bar z)})/2\) for a shifted zeta chart, including its Taylor remainder and the balancing exponential. Analytic evaluations check the logarithm's branch on each complex integration ball. Positive upper bounds are accepted only after including all omitted boundary and prime contributions. [Arithmetic and two-boundary fixture](../../../scripts/verify_xi_strip_green.py) · [Johansson, validated numerical integration](https://arxiv.org/abs/1802.07942)

Lean 4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612 elaborated this source at blob 81c19902dc82f9f42f82cfc9135d7f19b7f9e0d0. A new empty kernel environment replayed the used declaration closure (8 roots, 27490 declarations). The transitive audits used only axioms among propext, Classical.choice and Quot.sound. Independent external review of the manuscript is outstanding. [Verification record](https://github.com/grwtsk/math/issues/1850)
