# Arithmetic norms of modular cusp resonance projections

Let \(B=B_Y\) be the compact modular surface operator at height \(1<Y<4\pi e^{-\gamma_E}\). Its regularized determinant is \(X(z)/X(0)\), where \(X(z)=\xi(1/2+iz)\). For a simple nontrivial zeta zero \(\rho=\beta+i\gamma\), let \(P_{\rho,Y}\) be the Riesz projection of \(B\) at the inverse of \(a=(\rho-1/2)/i\). Then
\[
 \boxed{\quad\|P_{\rho,Y}\|=
 \frac{Y^{1-\beta}|\rho|\,|\xi(2-\rho)|}
 {2(1-\beta)|1-\rho|\,|\xi'(\rho)|}.\quad}                              \tag{1}
\]
This result gives a condition number at each individual zero. [Modular determinant, (7)–(9)](XiModularCuspSpectra.md)

## Dual eigenvectors and the scalar derivative

Use an inner product linear in the first entry. Write \(v=\rho/2,\ t=v(v-1),\ Q=\sqrt G,\ J=\mathrm{diag}(I,-I)\). Set \(f_v=(I+tG)^{-1}h\), where \(G\) and \(h\) are the modular Green operator and the real truncation indicator. This resolvent is regular since \(0<\Re v<1/2\) and \(\Im v\ne0\). The right eigenvector is \(x_v=(f_v,vQf_v)\). The antiunitary involution \(K=J\circ\mathrm{conj}\) satisfies \(KBK=B^*\), since \(T\) is real and \(JTJ=T^*\). Thus \(Kx_v\) is the adjoint eigenvector at the conjugate eigenvalue. The geometric Gram identity gives \(\|x_v\|^2=2/[Y(1-2\Re v)]\). For this diagonal identity the resolvent difference uses \(v(v-1)\ne\bar v(\bar v-1)\), which follows from the same strip. [Geometric dual resolvent and Gram calculation](XiModularResolventObstruction.md)

Put \(m(v)=\langle f_v,h\rangle\), \(\psi(v)=1+Yv m(v)\). Differentiating the resolvent and moving the adjoint through the inner product gives \(m'=-(2v-1)\langle G f_v,f_{\bar v}\rangle\). As \((I+\bar t G)f_{\bar v}=h\), we get
\[
 \langle x_v,Kx_v\rangle
   = m-(t+v^2)\langle G f_v,f_{\bar v}\rangle
   = m+v m'=\psi'(v)/Y.
\]
With \(L=\log Y\), the geometric secular identity is \(\psi(v)=Y^{v-1/2}\xi(2v)/F_L(v-1/2)\). At the zero of its numerator,
\[
 \psi'(v)=\frac{2(2v-1)Y^{2v-1}\xi'(2v)}{v\xi(2-2v)}.
\]
Here \(\Re(2-2v)>1\) ensures a nonzero denominator. The normalized projection is the rank-one map \(z\mapsto\langle z,Kx_v\rangle x_v/\langle x_v,Kx_v\rangle\), because the simple eigenvalue gives one-dimensional right and left spectral ranges. Its norm is \(\|x_v\|^2/|\langle x_v,Kx_v\rangle|\), proving (1). If \(\rho\) is multiple, the pairing is zero and this rank-one normalization is unavailable. In the simple case the norm is strictly greater than one: equality would require \(Kx_v\) proportional to \(x_v\). Their two components and injectivity of \(Q\) would force \(v=-\bar v\).

## Size at actual critical-line zeros

Substitution of the completed zeta factors on both sides of (1), followed by Stirling on the critical line and the absolute Euler product at \(3/2-i\gamma\), gives
\[
 \|P_{\rho,Y}\|=
 \frac{Y^{1-\beta}|2-\rho|\,\pi^{\beta-1}}
 {2(1-\beta)|1-\rho|}
 \frac{|\Gamma(1-\rho/2)|}{|\Gamma(\rho/2)|}
 \frac{|\zeta(2-\rho)|}{|\zeta'(\rho)|}
 \asymp_Y\frac{|\gamma|^{1/2}}{|\zeta'(1/2+i\gamma)|}
 \quad(\beta=1/2,\ |\gamma|\ge2).
\]
Every simple critical-line zero satisfies \(\|P_{\rho,Y}\|\gg_{Y,\epsilon}|\gamma|^{29/84-\epsilon}\). Indeed Bourgain's \(13/84+\epsilon\) bound for \(\zeta\) on the critical line extends to the right by Phragmén–Lindelöf in \(1/2\le\sigma\le2\) (remove the pole with \((s-1)/(s+1)\)). At distance at most \(1/\log|\gamma|\) to the left the functional equation costs a bounded factor by Stirling. Cauchy's estimate on the circle of that radius costs one logarithm, absorbed by \(\epsilon\). [Bourgain, *Decoupling, exponential sums and the Riemann zeta function*, Theorem 5](https://arxiv.org/abs/1408.5794)

For all sufficiently large \(T\), there are \(\gg T\log T\) simple critical-line zeros with \(T/10\le\gamma\le T\) and \(\|P_{\rho,Y}\|\gg_Y\sqrt T/(\log T)^2\). Here is an argument which does not assume spacing or RH. On a unit interval \(I\), choosing a point where \(|f|^2\) is at most its mean and integrating \((|f|^2)'\) gives
\[
 \sup_I |f|^2\le\int_I|f|^2+
 2\left(\int_I |f|^2\int_I|f'|^2\right)^{1/2}.
\]
Each unit interval meeting \([T/10,T]\) has \(O(\log T)\) ordinates by the Riemann–von Mangoldt formula, with all zeta zeros counted with multiplicity. Take \(f(t)=\zeta'(1/2+it)\), sum the unit-interval bounds and use Cauchy–Schwarz and Ingham's mean squares \(\int_0^{T+2}|\zeta^{(j)}(1/2+it)|^2dt\ll T(\log T)^{2j+1}\) for \(j=1,2\). Thus \(\sum_{T/10\le\gamma\le T}|\zeta'(1/2+i\gamma)|^2\ll T(\log T)^5\). Conrey gives a lower asymptotic proportion greater than \(2/5\) of all zeros simple on the line. Subtracting the total count below \(T/10\) therefore leaves \(\gg T\log T\) simple critical-line zeros. With an appropriately large fixed \(M\), removing those with \(|\zeta'|>M(\log T)^2\) leaves \(\gg T\log T\). [Ingham, *Mean-Value Theorems in the Theory of the Riemann Zeta-Function* (1928), p. 275](https://doi.org/10.1112/plms/s2-27.1.273) · [Conrey, *More than two fifths of the zeros of the Riemann zeta function are on the critical line* (1989), Theorem 1](https://aimath.org/~kaur/publications/24.pdf)

## Restrictions on inequivalent metrics

The vector \(Kx_v\) attains the norm of the original normalized projection: \(P_{\rho,Y} Kx_v=c_v x_v\), with \(|c_v|=\|P_{\rho,Y}\|\). Let a different norm \(\|\cdot\|_*\) be defined on a space containing the two vectors at every zero under consideration. Assume the new projections act identically on these vectors. Then
\[
 \|P_{\rho,Y}\|_*
 \frac{\|Kx_v\|_*}{\|x_v\|_*}\ge \|P_{\rho,Y}\|.
\]
If \(K\) stays bounded, these projections cannot be uniformly bounded in the new norm, even if the two norms are inequivalent. Conversely, orthogonality of the projections forces at least the growth in (1) on this one-pair distortion. These hypotheses matter when taking a subspace or orbit quotient. The [almost-periodic construction](XiCuspAlmostPeriodicTower.md) gives a self-adjoint generator after passing to different spaces.

For \(Y=2\), 160-bit Arb arithmetic gives the projection norms \(1.462691856882198293124905\), \(1.819506122108888877379350\), \(2.380695077118619956041735\), \(5.434678301120819093187889\) at the 1st, 10th, 100th and 1000th positive zeros (absolute radius below \(5\cdot10^{-25}\) in each displayed value). At each FLINT-isolated zero the derivative enclosure excludes zero. Independent evaluations of the differentiated full two-term secular quotient and of the gamma–zeta formula overlap in all four cases. They share the zero-isolation and special-function implementation in python-flint 0.8.0. These are finite checks, not evidence of zero location beyond their inputs. [FLINT zeta-zero routines](https://flintlib.org/doc/acb_dirichlet/zeta-zeros.html)

The [Lean source](XiCuspResonanceProjections.lean) proves the scalar derivative for the actual entire xi, the scalar pairing simplification, the norm and norm-attaining vector of the rank-one operator, and the distortion inequality. The application to the geometric resolvent, zero-density estimates, and analytic meeting of the geometric and scalar hypotheses remain in this note. No independent external review is recorded.

At source blob `0e73a5642dccb4505fda87dfa5c84ed4ca79055b`, all nine public declarations built with Lean 4.34.1 and passed explicit fresh kernel replay. The transitive audit returned only `propext`, `Classical.choice` and `Quot.sound`, with Mathlib at `d13f23b723b8a846827a245b89c10fc7d3f11612`.
