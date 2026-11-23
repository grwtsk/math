# Deterministic sampling of Gaussian and Bessel prime sums

For every \(b,t>0\), the Gaussian prime wave \(V_t\) on the explicit mesh \(r_n=bn^{2/3}\) satisfies
\[
 \limsup_n \log|V_t(r_n)|/r_n=D,\qquad D=\sup_\rho |\Re\rho-1/2|.
\]
If \(D>0\), each of the scaled waves \(\pm e^{-ar_n}V_t(r_n)\) is unbounded above for every \(0\le a<D\). In particular either one-sided bound on the finite Gaussian prime discrepancies in the [geometric sampling criterion](XiLatticeWaveSampling.md), now at these specified translations, implies RH. No generic choice of spacing is required. A second arithmetic test below uses the coarser deterministic mesh \(bn/\log n\).

## A quadrature for the Laplace transform

Let \(F\) denote the even wave and \(w\) the holomorphic extension of the real mesh, with \(w'(x)>0\) for large \(x\). For \(\Re s>D\) compare
\[
 L(s)=\int_0^\infty F(r)e^{-sr}\,dr,\qquad
 S(s)=\sum_{n\ge n_0} w'(n) F(w(n))e^{-sw(n)} .
\]
The continuum transform is meromorphic with nonzero residues at \(s=\pm i\omega\) for the distinct positive-ordinate frequencies and no real poles. This follows term by term from the zero expansion, by Gaussian or faster decay. The principal purpose of quadrature is to continue the **difference** across the line \(\Re s=D\). A substitution \(r=w(x)\) changes the real integral on \(x\ge n_0-1/2\) by an entire finite-interval term. Write \(f_s(z)=w'(z)e^{-s w(z)}F(w(z))\).

Use the contour bounded by half-integer vertical sides and graphs \(z=x\pm iY(x)\), starting at \(x=n_0-1/2>3\). The residue of \(\pi\cot(\pi z) f_s(z)\) at each included integer equals \(f_s(n)\). On the upper graph subtract the limit \(-i\pi\) of the cotangent factor and on the lower graph subtract \(+i\pi\). The remainders have modulus \(O(e^{-2\pi Y(x)})\), by the geometric series for the cotangent. With the positive contour orientation the two constant parts, divided by \(2\pi i\), give half of the real integral each, after deforming back to the axis including their vertical connectors. The left connectors are finite entire terms. On the right half-integer side the split cotangent remainder on each half is bounded by \(C e^{-2\pi|\Im z|}\), including near the axis, by the half-integer phase. Thus it is enough, initially for \(\Re s>D\), to make this weighted side tend to zero. The curved-edge integrals then continue the difference wherever their weighted integrands converge locally uniformly. This is the residue proof of trapezoid quadrature with a growing contour. [Trefethen and Weideman, SIAM Review 56 (2014), proof of Theorem 5.1](https://doi.org/10.1137/130932132)

For the Gaussian take \(w(z)=bz^{2/3}\) on its principal branch and \(Y(x)=\delta x^{2/3}\). The true divisor expansion gives
\[
 |F(X+iY)|\ll_t \exp(D|X|+Y^2/(2t)).
\]
Complete the square in \(-tg^2+|gY|\), reserving half of the Gaussian to sum the zero multiplicities. Uniformly for \(z=x+i v\delta x^{2/3}\), \(-1\le v\le1\), we have \(\Re w= bx^{2/3}+O(1)\) and \(\Im w=(2b\delta v/3)x^{1/3}+O(1)\) by Taylor expansion. On a compact set of \(s\)'s the logarithm of the weighted integrand is bounded by
\[
 \left[(D-\Re s)b+\frac{(2b\delta v/3)^2}{2t}-2\pi\delta |v|\right]x^{2/3}+o(x^{2/3}).
\]
Polynomial contour-length and derivative factors are absorbed in the remainder. Take \(\delta=9\pi t/(2b^2)\). At \(|v|=1\) the gain is \(9\pi^2t/(2b^2)>0\). By convexity the quadratic cost minus the linear gain is nonpositive throughout the vertical side. This proves the required initial vanishing, and normal convergence of the edge remainders on \(\Re s>D-9\pi^2t/(2b^3)\). Only a positive strip width is needed.

## A nearly linear mesh

Let \(0<c<\pi\), \(t>0\), \(0<b<2\pi c\) and \(w(z)=bz/\log z\) on the right half-plane used above. Replace the Gaussian by the even multiplier \(k(u)=\exp[-t\cosh(cu)]\). Define the new arithmetic wave \(F(r)\) by the right hand side of the [Guinand–Weil formula, Lemma 2.2](https://www.math.bas.bg/mathmod/Proceedings_CTF/CTF-2023/files_CTF-2023/05-Carneiro-Milinovich.pdf) for the test \(k(u)\cos(ru)\), divided by two to count positive ordinates. Explicitly, put \(S_B(r)=\sum_{m\ge2}\Lambda(m) m^{-1/2} K_{i(\log m-r)/c}(t)\). Then
\[
 F(r)=k(i/2)\cosh(r/2)+\frac1{4\pi}\int_{\mathbb R} k(y)\cos(ry)
  [\Re\psi(1/4+iy/2)-\log\pi]dy
 -\frac{S_B(r)+S_B(-r)}{2\pi c}.
\]
Indeed the unnormalized Fourier transform of \(k\) equals \(2K_{iv/c}(t)/c\) at frequency \(v\), by the defining hyperbolic integral. Shifting the Fourier contour by any \(\eta\) with \(1/2<\eta<\pi/(2c)\) gives \(O_\eta(e^{-\eta |v|})\), since \(\cos(c\eta)>0\). This verifies the prime summability and the required strip hypothesis. The integral tends to zero and \(S_B(-r)\to0\). Thus the prime discrepancy is \(S_B(r)-\pi c k(i/2)e^{r/2}=-2\pi cF(r)+o(1)\). Its sum can be truncated to \(m\le e^{Lr}\) for any \(L>\eta/(\eta-1/2)\), by summing the exponential tail over unit logarithmic shells. [Bessel integral, DLMF 10.32.9](https://dlmf.nist.gov/10.32.E9)

The zero-side coefficients of \(F\) are \(m_\omega k(\omega)/2\) at each signed frequency. Their moduli are bounded by \(m_\omega\exp[-A e^{c|g|}]\) up to a constant, with \(A=t\cos(c/2)/2>0\). Split off half that decay for summability and maximize \(|Y|u-Ae^{cu}/2\) over \(u\ge0\). This gives
\[
 \log |F(X+iY)|\le D|X|+c^{-1}|Y|\log(2+|Y|)+O_{t,c}(1+|Y|).
\]
Take \(Y(x)=\delta x/\log x\) with any fixed \(\delta>0\). Uniformly for \(|v|\le1\), at \(z=x+i vY(x)\) logarithmic expansion gives \(\Re w=(b+o(1))x/\log x\), \(\Im w=(b\delta v+O(1/\log x))x/\log^2 x\). The weighted exponent divided by \(x/\log x\) is bounded above by \((D-\Re s)b-\delta |v|(2\pi-b/c)+o(1)\). Its sign gives the right-edge vanishing initially. The strict mesh condition permits arbitrarily large \(\delta\) on the curved edges, so the quadrature difference continues to the entire plane, by compatibility on overlapping half-planes. The associated geometric Fourier transform is sign-changing. The needed positivity in the next argument concerns a hypothetical one-sided bound on the whole real sequence.

## Why the samples detect both signs

In either case \(S\) inherits the poles of \(L\) in the stated continuation region, and the region contains points on both sides of the line \(\Re s=D\). If the absolute growth exponent were less than \(D\), the defining series would converge absolutely to the left of \(D\), preventing poles there with real parts arbitrarily near \(D\). This also covers \(D=0\), since there are poles on the imaginary axis when RH holds. The reverse exponent bound follows from the real-coordinate divisor expansion.

Suppose now that \(F(w(n))\le C e^{aw(n)}\) eventually for some \(0\le a<D\). Discard a finite prefix and form the Laplace transform of the nonnegative discrete measure with mass \(w'(n)[Ce^{aw(n)}-F(w(n))]\) at \(w(n)\). For \(\Re s>D\) it equals the transform of the elementary majorant minus \(S(s)\). The majorant series is holomorphic for \(\Re s>a\), by the integral test or the mesh asymptotics. Choose a real \(a'\) strictly between \(D\) and the larger of \(a\) and the left edge of continuation. The difference is regular at every real \(s>a'\) but has a nonreal pole with \(\Re s>a'\). A nonnegative Laplace measure has a singularity at every finite real abscissa of convergence: Taylor expansion in the leftward direction has nonnegative coefficients and monotone summation would otherwise extend convergence. The real regularity forces convergence and holomorphy throughout \(\Re s>a'\), contradicting that pole. Use the same reasoning for \(-F\). Under RH both real waves are bounded by the sum of the positive weights at zero translation.

For example \(t=c=b=1\) gives a fully specified one-sided Bessel prime test at \(r_n=n/\log n\), \(n\ge4\). The sample bounds sufficient for RH remain open. The fixed-spacing proof in the [geometric criterion](XiLatticeWaveSampling.md) uses finite spectral filters instead of contour quadrature. The [Lean companion](XiCurvedWaveSampling.lean) checks the Gaussian strip cost, the critical gain and the finite prime-window margin. Contour continuation and the sampled zeta criteria remain manuscript arguments; independent external review is outstanding.

At \(n=4,b=1/2,c=1/8,t=1\), interval quadrature, Bessel weights on the prime powers through 4096 and the first fourteen true ordinates independently enclose \(F(2/\log4)=0.0018319354056202893\) to the displayed precision. The prime tail is below \(2.7\cdot10^{-25}\), by shifting the Fourier integral by 9. On the archimedean tail Euler's digamma series gives \(|\Re\psi(1/4+iy/2)-\log\pi|\le 7+17y^2\), since \(\sum_{k\ge0}(k+1/4)^{-3}<68\). The divisor tail uses \(\sum_{g>64}m/g^2<1\) and monotonicity of \(g^2\exp[-\cos(c/2)\cosh(cg)]\) there. [Interval fixture](../../../scripts/verify_xi_bessel_wave.py) · [Brent, Platt and Trudgian, Corollary 1](https://maths-people.anu.edu.au/~brent/pd/rpb276-electronic.pdf)

Lean 4.34.1 with Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612 elaborated Lean blob 8c9bb4346b49276fd9fc20df7ca4c62645303eab. Fresh kernel dependency replay passed for 3 roots, 15911 declarations. The transitive audits used only axioms among propext, Classical.choice and Quot.sound. [Verification record](https://github.com/grwtsk/math/issues/1850)
