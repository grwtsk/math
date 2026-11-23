# A first-prime matrix on endpoint derivatives of Fourier polynomials

grwtsk contributors

Fix \(L\ge1\), \(\Omega>0\), and \(N=\lfloor\Omega L/(2\pi)\rfloor\). On \(I_L=[-L/2,L/2]\) let \(E\) have orthonormal basis \(L^{-1/2}e^{i\omega_n x}\), \(\omega_n=2\pi n/L\), \(|n|\le N\). Extend its vectors by zero. Define the real correlation and the Hermitian form \(A_L\) by
\[
 q_f(u)=2\Re\int f(x+u)\overline{f(x)}\,dx,\qquad
 \langle A_Lf,f\rangle=
 \int_0^L e^{u/2}q_f(u)\,du
 -\sum_{p\le e^L}\frac{\log p}{\sqrt p}q_f(\log p)
 -\frac12\left|\int f\right|^2.                                      \tag{1}
\]
The sum uses first powers of primes. For \(d\ge1\) let \(P\) project orthogonally onto the span of \(((-1)^n\omega_n^j)_{|n|\le N}\), \(0\le j<d\). These vectors represent the endpoint derivatives up to scalar factors. Their span has dimension \(\min(d,2N+1)\) by the Vandermonde determinant. The compression of (1) is determined by primes, powers of the integers \(n\), and elementary integrals.

Take \(H=3\cdot10^{12}\), \(\Omega=2\pi\), and \(d=\lceil (1/2+\varepsilon)L/\log(H/\Omega)\rceil\), with \(\varepsilon>0\) fixed. Let \(W_L\) denote the original Galerkin Weil matrix in this basis. There are constants \(c>0\) and \(C<\infty\), independent of \(L\), such that
\[
       \|W_L-PW_LP\|\le Ce^{-cL},\qquad \|W_L-PA_LP\|\le C.             \tag{2}
\]
With \(D(M)=\max(0,-\lambda_{\min}(M))\), one has
\[
 \lim_{L\to\infty}L^{-1}\log(1+D(PA_LP))
    =\sup_{\xi(1/2+i\alpha)=0}|\Im\alpha|.                              \tag{3}
\]
For \(\varepsilon=1/10\), the retained fraction tends to \(0.3/\log(H/(2\pi))<0.012\). Formula (3) still holds after deleting the order-zero vector and retaining only the positive derivative orders. The last term of (1) then vanishes identically. A cofinal lower bound on this first-prime block, even one with subexponential negative part, would prove RH. Conversely, RH gives a uniform lower bound by (2). The claims also hold along integer windows.

## The prime powers and the real place

For a unit vector, \(|q_f|\le2\), \(\|f'\|_{L^2(I_L)}\le\Omega\), and \(\|f\|_\infty^2\le(2N+1)/L\le 1+\Omega/\pi\). Differentiating the correlation integral with its variable endpoint shows that \(|q'_f(u)|\le2(\Omega+1+\Omega/\pi)\) for \(0<u<L\). Thus \(q_f\) is uniformly Lipschitz, with \(q_f(0)=2\) and \(q_f(L)=0\).

The poles in the Weil formula contribute \(\int_0^L(e^{u/2}+e^{-u/2})q_f(u)\,du\). The decaying exponential costs at most four. The real-place integrand is \((e^{u/2}q_f(u)-q_f(0))/(e^u-e^{-u})\). Its integral is bounded by \(O_\Omega(1)\), using the Lipschitz bound up to one and exponential decay thereafter. Its scalar boundary term is bounded for \(L\ge1\). Prime powers \(p^k\), \(k\ge3\), cost at most \(2\sum_p(\log p)p^{-3/2}/(1-p^{-1/2})<\infty\). [Connes, Consani and Moscovici, *Zeta Spectral Triples*, arXiv:2511.22755v1, (3.15)–(3.18) and (4.2)–(4.4)](https://arxiv.org/html/2511.22755v1#S4)

For squares put \(S(u)=\sum_{2\log p\le u}\log p/p\). The unconditional estimate \(\vartheta(x)=x+O(x/\log^3 x)\) gives \(S(u)=u/2+b+O((1+u)^{-2})\) for some real \(b\). Indeed, at \(x=e^{u/2}\), partial summation gives \(\vartheta(x)/x+\int_1^x\vartheta(t)t^{-2}\,dt\). Subtracting the main term leaves a convergent integral whose tail is \(O((\log x)^{-2})\). Integrating \(q_f\) against \(d(S-u/2)\) produces \(bq_f(0)-\int_0^L q'_f(u)(S(u)-u/2-b)\,du=O_\Omega(1)\). Fubini and reflection give \(\int_0^L q_f(u)\,du=|\int f|^2\). Hence \(\|W_L-A_L\|\le C_\Omega\) on the entire section. Dropping the last term of (1) increases this upper bound by \(L/2\), the exact norm of the rank-one correction. [Trudgian, *Updating the error term in the prime number theorem*, Theorem 1](https://arxiv.org/abs/1401.2689)

## Endpoint cancellation and the finite-height Gram matrix

Fix \(0<\Omega<H\le3\cdot10^{12}\) and put \(r=\Omega/H\). The polarized Weil formula gives \(\langle W_Lf,g\rangle=\sum_\alpha m_\alpha\widehat f(\alpha)\overline{\widehat g(\bar\alpha)}\), where \(\alpha\) runs over distinct zeros of \(\xi(1/2+iz)\). They satisfy \(|\Im\alpha|\le1/2\), and the Riemann–von Mangoldt count gives \(S_H=\sum_{|\Re\alpha|>H}m_\alpha/|\alpha|^2<\infty\). All ordinates in the complementary part are real by the finite-height theorem. Denote their positive Gram matrix by \(G\), and put \(T=W_L-G\). [Weil pairing and normalization](XiWeilThetaCluster.md) · [Platt and Trudgian, *The Riemann hypothesis is true up to* \(3\cdot10^{12}\), Theorem 1](https://doi.org/10.1112/blms.12460)

For coefficients \(c_n\) the transform is
\[
 \widehat f(z)=2L^{-1/2}\sin(Lz/2)\sum_n\frac{(-1)^n c_n}{z-\omega_n}.
\]
If \(Pf=0\), the moments through \(d-1\) vanish. Subtracting the first \(d\) terms of the geometric series replaces the numerator of each summand by \((-1)^nc_n(\omega_n/z)^d\). For \(|\Re z|>H\) the denominator has modulus at least \((1-r)|z|\). For an arbitrary unit \(g\) use the same estimate with \(d=0\). Cauchy–Schwarz gives \(\sum|c_n|\le\sqrt{2N+1}\|f\|\). Since \(|\sin(Lz/2)|\le e^{L/4}\) on the zero strip, applying the bounds to the two factors and summing gives
\[
 \|T(I-P)\|,\ \|(I-P)T\|\le
 \eta_L:=\frac{4(2N+1)S_H}{L(1-r)^2}e^{L/2}r^d.                       \tag{4}
\]
In particular \(W_L\ge-\eta_L I\) on \(\ker P\). The identity \(T-PTP=T(I-P)+(I-P)TP\) bounds the discarded tail blocks by \(2\eta_L\), cross terms included.

At any fixed bandwidth, \(\|G\|\le m_{\max}L+C_H\), with the empty sum giving zero. Indeed its full-window sampling vectors are \(\sqrt{m_t}e^{itx}\) for distinct real ordinates \(t\) in the verified range. Their row Gram has diagonal \(m_tL\) and off-diagonal entries of modulus at most \(2\sqrt{m_tm_s}/|t-s|\). Use the maximum absolute row sum and restrict the sampling map to \(E\). Both \(G\) and \(PGP\) lie between zero and \(\|G\|I\), so \(\|G-PGP\|\le\|G\|\). This yields a linear bound for the whole compression error at general fixed \(\Omega<H\) with the indicated choice of \(d\). If a verified ordinate \(0<t<\Omega\) lies on the grid along \(L=2\pi k/t\), its matching unit mode has squared transform \(L\) there. Thus the full low Gram can have linear order.

For \(\Omega=2\pi\) there is a gap between the band and every low ordinate. The [interval fixture](../../../scripts/verify_xi_weil_boundary_jets.py) certifies \(\zeta(1/2+it)\ne0\) throughout \([0,7]\) by covering the interval with 224 closed boxes at 128-bit precision. Conjugation gives the negative interval, and the finite-height theorem handles off-line zeros. At each remaining real \(t\) use \(|\sin(Lt/2)|\le1\), \(|t|>7\), and the Cauchy-kernel bounds with \(2\pi/7<1\). The low ordinates and their weights are fixed, and \((2N+1)/L\) is bounded. Thus \(\|G(I-P)\|\le C_H(2\pi/7)^d\). Combining with (4) proves the first bound in (2). The second follows by adding \(P(W_L-A_L)P\).

## Return to the arithmetic floor

The [thin-section theorem](XiWeilThinBand.md) gives the rate on sections \(N'=\lceil L/\log L\rceil\). The [cubic-section theorem](XiWeilThetaCluster.md) gives the same rate on \(N''=\lceil L^3\rceil\). For all large \(L\) these sections bracket \(E\) by inclusion. The variational characterization of the least eigenvalue gives the same rate for \(W_L\). Eigenvalue perturbation bounds the difference between \(D(W_L)\) and \(D(PA_LP)\) by the uniform error in (2). Their \(\log(1+D)\) differ by at most \(\log(1+C)\), proving (3). Extending the compressed matrix by zero leaves its negative part unchanged.

Write \(B\) for the right side of (3). Suppose \(B>0\). Every nonreal pair \(\alpha,\bar\alpha\) is accompanied by the distinct pair \(-\alpha,-\bar\alpha\) at the same displacement. Distinctness uses \(\Re\alpha\ne0\), since the positive theta kernel gives \(\xi(1/2-y)>0\) for real \(y\) by its bilateral Laplace transform. Consequently the second displacement threshold in the thin-section theorem also equals \(B\). By inclusion and min–max, the second eigenvalue of \(W_L\) has negative part growing at that same rate, bounded below by the thin-section second negative depth and above by the cubic ground negative depth. The norm error in (2) gives the same rate for the second eigenvalue of \(PA_LP\). Since the latter eigenvalue is eventually negative, it equals the second eigenvalue on \(\operatorname{ran}P\).

Inside this span impose the single condition \(\int f=0\). Only the \(n=0\) Fourier coordinate affects the integral, and only the order-zero jet has a nonzero \(n=0\) coordinate. Thus the resulting subspace is spanned exactly by the vectors of orders \(1,\ldots,d-1\). Interlacing places its lowest eigenvalue between the two lowest eigenvalues of the full jet block, proving (3) there as well. For \(B=0\), restriction preserves the uniform lower bound already proved under RH. In (1) only the continuous compensation and the first-prime sum survive on this subspace. Bounding their difference from below on a cofinal sequence of windows remains the arithmetic obligation. [Theta representation and positivity on the imaginary axis](XiWeilThetaCluster.md)

For a finite check take \(H=30\), \(\Omega=2\pi\), and \(\varepsilon=1/10\). In the translated basis the jet coordinates are \(n^j\) up to a constant depending only on \(j\). The fixture computes both the form and its basis Gram matrix. Directed ball arithmetic and leading principal minors of the shifted form give these strict enclosures of the least eigenvalue on the retained span.

| \(L=N\) | \(d\) | All orders \(0,\ldots,d-1\), corrected | Positive orders \(1,\ldots,d-1\), first primes alone |
| --- | --- | --- | --- |
| 4 | 2 | \((-0.222075176,-0.222075175)\) | \((-0.215396977,-0.215396975)\) |
| 6 | 3 | \((0.002448815,0.002448816)\) | \((0.007115451,0.007115452)\) |
| 8 | 4 | \((0.062875911,0.062875912)\) | \((0.095689407,0.095689409)\) |

The first enclosure rules out positivity of the corrected block at every window. Equations (2)–(3) use a lower bound on the appropriate scale.

At Git blob 377b3f7fe94b4663c3088be836662b5d956b7c38, the [Lean companion](XiWeilBoundaryJets.lean) proves the exact finite Cauchy remainder and the norm estimate for removing the complementary blocks. Both declarations elaborated and passed fresh kernel replay of 8,250 transitive declarations. The audits returned only the axioms propext, Classical.choice and Quot.sound. The comparison with the Weil and first-prime matrices, the PNT and finite-height inputs, and the growth-rate theorem remain manuscript arguments. Their Lean checks and external review are outstanding.
