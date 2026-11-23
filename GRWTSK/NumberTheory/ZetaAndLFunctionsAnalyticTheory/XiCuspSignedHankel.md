# Both signs of the reflected modular scattering operator

For \(1\le Y<4\pi e^{-\gamma_E}\), put \(L=\log Y\) and fix the arithmetic scattering multiplier
\[
 \Theta_L(z)=e^{iLz}\xi(1+iz)/\xi(1-iz).
\]
Let \(D_T\) be its causal compression to \(L^2(0,T)\) and \(R_Tf(u)=f(T-u)\). The compact operator \(K_T=D_TR_T\) is self-adjoint, with \(\|K_T\|<1\). Write \(\lambda_j^\pm(T)\) for the positive eigenvalues of \(\pm K_T\), in decreasing order with multiplicity, padded by zero as necessary. Two regimes admit unconditional estimates.

* For fixed \(T\) the two signs have the same leading logarithmic trace.
\[
 \lim_{r\to\infty}\frac{1}{\log r}\sum_{j=1}^r (\lambda_j^\pm(T))^2
 =\sum_{Yn<e^T}\left(\frac{\varphi(n)}n\right)^2(T-\log(Yn)).                       \tag{1}
\]
* For \(X=e^{T-L}\to\infty\), exponentially many eigenvalues approach **each** of the two endpoints. Define \(\nu(a)=8a^2 e^{-2a}/\pi\) and \(F(a)=2\pi(1-2a)e^{-2a}\). For each \(0<a<1/2\),
\[
 \liminf_{T\to\infty}\frac{-\log(1-\lambda_{\lceil\nu(a)X\rceil}^{\pm}(T))}{X}
 \ge F(a).                                                                        \tag{2}
\]
In particular the positive regularized determinants satisfy
\[
 \liminf_{T\to\infty}\frac{-\log\det_3(I\pm K_T)}{X^2}\ge\frac{1-e^{-2}}{2},\qquad
 \liminf_{T\to\infty}\frac{-\log\det_2(I-D_TD_T^*)}{X^2}\ge1-e^{-2}.             \tag{3}
\]
These are lower bounds. The estimates do not identify the exact leading coefficient of either sign's determinant.

## Geometry and the fixed-window trace

Let \(C_L\) be the bilateral unitary Fourier multiplier \(\Theta_L\), with Fourier transform \(\widehat f(z)=\int e^{izu}f(u)du\). Reality gives \(\Theta_L(x)\Theta_L(-x)=1\) on the real line. Consequently \(C_LR_T\) on the line is a self-adjoint unitary involution; its compression to the window is \(K_T\). The kernel is \(k_L(u+v-T)\) with the real arithmetic causal kernel \(k_L(s)=k_0(s-L)\). For \(T>L\) the kernel vanishes if either coordinate is below \(L\); after translating the remaining interval by \(-(T+L)/2\), it is precisely \(k_0(u+v)\) on \((-t,t)\) with \(t=(T-L)/2\). For \(T\le L\) it vanishes identically. The strict norm bound follows from the finite-window scattering result. [Impulse and singular trace](XiCuspScatteringImpulse.md) · [Strictness and boundary observation](XiCuspTimeObservation.md)

On the circle of length \(T\), the preceding impulse calculation proves
\[
 D_T=\sum_{b<T} h_b M_b U_b J+E,\qquad E\in S_2 ,
\]
where \(b=\log(Yn)\), \(h_b=\varphi(n)/n\), \(M_b\) multiplies by \(\mathbf1_{(b,T)}\), \(U_b\) translates on the circle, and \(J\) is Fourier diagonal with \(|J_j|^2=T/|j|\) for \(j\ne0\) and \(J_0=0\). Define a self-adjoint unitary \(V\) by sign of the Fourier index, assigning sign \(+1\) at zero. It commutes with \(J,U_b\) and anticommutes with \(R_T\) up to rank one. Moreover \([V,M_b]J\in S_2\). Indeed the off-diagonal Fourier coefficients of \(M_b\) are \(O(1/|j-k|)\); the commutator vanishes unless the signs of \(j,k\) differ. The squared Hilbert–Schmidt sum is bounded by a constant multiple of \(\sum_{k\ge1}k^{-1}\sum_{j\le0}(k-j)^{-2}<\infty\), plus the reflected sum. It follows that \(VK_TV+K_T\in S_2\).

For compact self-adjoint \(B,C\) with Hilbert–Schmidt difference, \(\|B_+-C_+\|_2\le\|B-C\|_2\). In eigenbases of \(B,C\), including their kernels, square and sum the scalar inequality \(|b_+-c_+|\le|b-c|\) weighted by the squared basis overlaps. Applying this to \(B=VK_TV,C=-K_T\) bounds the difference of the square roots of the positive and negative partial sums in (1) by \(O_T(1)\), by the triangle inequality for the first \(r\) singular values in Euclidean norm. The sum of the two partial sums is sandwiched between the unsigned sums through ranks \(r\) and \(2r\). Their common normalized limit is twice the right side of (1), and each signed sum is \(O_T(\log r)\). This proves (1). In particular each sign has infinitely many eigenvalues whenever \(T>L\). This Fourier commutator calculates the coefficient for the actual finite arithmetic kernel. A symmetry principle for other classes of compact self-adjoint Hankel operators was developed by Pushnitski and Yafaev. [Primary paper, §§2–3](https://arxiv.org/abs/1601.01134)

## Paired translated theta pulses

Let \(\phi\) be the even bilateral Fourier kernel of \(\xi(1/2+iz)\) and take \(f_\pm(u)=e^{\pm u/2}\phi(u)\). Then \(\widehat f_-(x)=\xi(1-ix)\), \(C_L f_-=S_Lf_+\), and reflection in zero interchanges \(f_+\) and \(f_-\). Here \(S_bf(u)=f(u-b)\) denotes bilateral translation. We work with the unitarily conjugate window operator \(R_TD_T\) and its bilateral involution \(W=R_TC_L\). Put \(c=(T-L)/2\). The involution interchanges \(S_{c+v} f_-\) and \(S_{c-v} f_-\). For every \(b\) tending to infinity the theta estimate gives
\[
 \|\mathbf1_{|u|\ge b} f_-\|\ll e^{4b}\exp(-\pi e^{2b}).
\]
The Fourier transform and tail estimate follow from the two pulses of the observation model. [Explicit bilateral kernel and tail inequality](XiCuspTimeObservation.md)

Stirling's formula on the 1-line and the unconditional estimate \(|1/\zeta(1+ix)|\ll\log(2+|x|)\) away from the pole imply
\[
      |\widehat f_-(x)|\ge c_0 e^{-\pi |x|/4}\quad(x\in\mathbb R)
\]
with some \(c_0>0\). The polynomial prefactor dominates the logarithmic loss at infinity. On a compact interval \(\xi(1-ix)\) is continuous and nonzero, including its removable value at zero. For arbitrary finite coefficients the entire lattice of translates therefore satisfies
\[
 \left\|\sum_{j}u_j S_{c+jd}f_-\right\|
 \ \ge c_0 d^{-1/2}e^{-\pi^2/(4d)}\left(\sum_j |u_j|^2\right)^{1/2}.             \tag{4}
\]
Indeed restrict the Fourier norm to \([-\pi/d,\pi/d]\), on which the exponentials at spacing \(d\) are exactly orthogonal. [Trudgian, *Explicit bounds on the logarithmic derivative and the reciprocal of the Riemann zeta-function*](https://researchportalplus.anu.edu.au/en/publications/explicit-bounds-on-the-logarithmic-derivative-and-the-reciprocal-/)

Fix \(a,\nu>0\), take \(m=\lceil\nu X\rceil\), \(d=a/m\), and choose sums over \(j=\pm1,\ldots,\pm m\) with \(u_{-j}=\sigma u_j\), \(\sigma=\pm1\). These form an \(m\)-dimensional space of bilateral \(\sigma\)-eigenvectors by (4). With \(P\) denoting the window projection, all centers are at distance at least \(c-a\) from the exterior. Cauchy–Schwarz on the coefficients, the tail bound and (4) give, uniformly for nonzero \(f\) in the chosen subspace,
\[
 \frac{\|(I-P)f\|}{\|f\|}
 \le \exp\left(\left[-\pi e^{-2a}+\frac{\pi^2\nu}{4a}\right]X+O_{a,\nu}(\log X)\right)=:q_X .
\]
If the exponent coefficient is negative, \(P\) is injective on this trial space for large \(X\). Since \(I-\sigma W\) is positive with norm at most two and annihilates \(f\),
\[
 0\le \langle(I-\sigma W)Pf,Pf\rangle
 =\langle(I-\sigma W)(Pf-f),Pf-f\rangle
 \le 2q_X^2\|f\|^2 .
\]
Divide by \(\|Pf\|^2\ge(1-q_X)^2\|f\|^2\) and apply the min–max principle on \(P L^2\). This proves the exponent \(2\pi e^{-2a}-\pi^2\nu/(2a)\) for the gap at index \(m\). Substituting \(\nu=\nu(a)\) gives (2). The retained factor of two in the exponent comes from the quadratic Rayleigh loss of a compressed exact eigenvector.

A finite certificate gives an actual separation bound without computing close eigenvalues numerically. Set \(T-L=14\), \(m=8\), \(d=1/2\), \(a=4\). The bilateral pulse is positive, so \(\cos(xu)\ge1-x^2u^2/2\) gives \(\Re\xi(1-ix)\ge1/2-x^2\xi''(1)/2\). A 160-bit Arb integration of \(u^2(e^{u/2}+e^{-u/2})\phi(u)\) on \([0,5/2]\), using six theta terms, encloses \(\xi''(1)\) in \((0.02334386453422618,0.02334386453422619)\). For reproducibility put \(b=5/2\), \(v=e^{2b}\). The omitted terms on that interval and the two outer tails together are bounded by
\[
 8\pi^2 b^3 7^4 e^{5b-49\pi}/(1-16e^{-15\pi})
 +8\pi^2 v^2e^{-\pi v}/(\pi-2/v)<10^{-44}.
\]
The first estimate uses \((7+k)^4\le7^4 16^k\), \((7+k)^2\ge49+15k\); the second uses \(u^2\le e^u\) in the earlier bilateral tail majorant. Thus the infimum of \(|\widehat f_-|\) on \([-2\pi,2\pi]\) exceeds \(b_0=0.03921058\). If \(E(v)=8\pi^2v^2e^{-\pi v}/\sqrt{2\pi-4/v}\), the previous pulse tail bound and the lower Fourier Gram bound give \(q_X\le\sqrt{2md}\, E(e^6)/b_0\). Using \(2q_X^2/(1-q_X)^2\) proves that at least eight eigenvalues at **each** sign have \(1-|\lambda|<3.81\times10^{-1084}\). This controls a finite set of eigenvalue inequalities through a trial-space estimate.

## The two regularizations

At each fixed window \(K_T\in S_3\). To estimate terms of the opposite sign in the logarithmic determinants, a bound uniform in the window is needed. Put \(\eta=3/5\). Under the bounded window weight \(e^{-\eta u}\) the multiplier is \(\Theta_L(x+i\eta)\). Write \(M=2^j\ge2\). On \(M<|x|\le2M\), the gamma ratio in the arithmetic formula is \(O(M^{-1/2})\), and the reciprocal Euler product at \(1+\eta\) is bounded. The zeta mean square \(\int_{M}^{2M}|\zeta(\eta+ix)|^2dx\ll_\eta M\) gives an \(O_\eta(1)\) bound on the squared multiplier integral there. Convexity gives an operator norm bound \(O_{\eta,\epsilon}(M^{-\eta/2+\epsilon})\) for its compression. The compressed band has squared Hilbert–Schmidt norm at most \(T/(2\pi)\) times the multiplier's squared integral by Plancherel. Thus its cubed \(S_3\)-norm is \(O_{\eta,\epsilon}(T M^{-\eta/2+\epsilon})\). Sum the \(S_3\)-norms dyadically, include the compact frequency band, and remove the window weight to obtain
\[
 \|K_T\|_3^3=\|D_T\|_3^3\ll_{L} (1+T)e^{9T/5}=o(X^2).
\]
[Gamma ratio and convexity estimate](XiCuspHorizontalResolvent.md) · [Ingham, *Mean-Value Theorems in the Theory of the Riemann Zeta-Function*](https://doi.org/10.1112/plms/s2-27.1.273)

For \(0\le r<1\) let \(g(r)=-\log(1-r)-r-r^2/2\ge0\). On the favorable sign of the spectrum this is exactly the contribution to \(-\log\det_3(I-\sigma K_T)\); on the other sign the contribution is at least \(-r^3/3\) by the alternating logarithm series. Their total negative contribution is therefore \(o(X^2)\). For \(0<\nu<2/(\pi e)\), \(\nu(a)\) is a strictly increasing parametrization with \(0<a<1/2\). Represent the series of \(g(\lambda_j^\sigma)\) by the step function indexed by \(j=\lceil\nu X\rceil\). By nonnegativity and Fatou's lemma, (2) gives
\[
 \liminf\frac{-\log\det_3(I-\sigma K_T)}{X^2}
 \ge \int_0^{1/2} F(a)\nu'(a)\,da
 =\tfrac12(1-e^{-2}).
\]
Indeed \(2F(a)\nu'(a)=64a(1-a)(1-2a)e^{-4a}\), with antiderivative \((-32a^3+24a^2-4a-1)e^{-4a}\). On each eigenvalue the product of the two third-order factors is \((1-r^2)e^{r^2}\). Thus \(\det_3(I+K_T)\det_3(I-K_T)=\det_2(I-K_T^2)=\det_2(I-D_TD_T^*)\), proving (3). The exponential index range in (2) is essential to obtaining an \(X^2\) exponent.

## Relation with Suzuki's canonical Hamiltonian

Suzuki constructs the classical determinant ratio for shifts \(\omega>1\) and identifies the arithmetic kernel for all \(\omega>0\). The present endpoint uses \(\omega=1/2\). For \(T>L\) and \(t=(T-L)/2\), the odd-cycle normalization of the endpoint ratio gives
\[
 m(t)=
 \exp\left(\int_0^{2t} k_0(s)\,ds\right)
 \frac{\det_3(I+K_T)}{\det_3(I-K_T)} .                                          \tag{5}
\]
The linear term is twice the diagonal integral \(\int_{-t}^t k_0(2u)du\); \(K_T\) itself is not trace class. The regularized logarithms cancel the quadratic counterterms and give \(2\sum_{n\ge3,\ n\,\mathrm{odd}}\operatorname{Tr}(K_T^n)/n\). This series converges absolutely because \(K_T\in S_3\) and \(\|K_T\|<1\). For an odd cycle the linear substitution \((u_j)\mapsto(u_j+u_{j+1})\) has determinant of absolute value two. The cycle integral therefore converges absolutely from local integrability of the kernel. To identify it with the trace, smooth the causal kernel by compactly supported approximate identities at zero. Their weighted Fourier multipliers converge pointwise and are uniformly bounded multiples of the old multiplier. The same dyadic bounds yield convergence in \(S_3\) at fixed \(T\), while the substitution and telescoping products give convergence of odd cycle integrals by local \(L^1\) convergence. Smooth kernels satisfy the ordinary trace formula.

The diagonal counterterm has an elementary arithmetic form and an unconditional cancellation. With \(X=e^{2t}\), \(r_n=\sqrt{1-(n/X)^2}\), direct integration of the base impulse gives
\[
 \int_0^{2t} k_0(s)\,ds
 =\sum_{n\le X}\frac{\varphi(n)}n
    \left(4r_n-2\operatorname{artanh}r_n\right)
 =O\!\left((1+\log X)^2\right).
\]
Indeed \(F(u)=4\sqrt{1-e^{-2u}}-2\operatorname{artanh}\sqrt{1-e^{-2u}}\) has derivative equal to the base impulse \(k(u)=2/\sqrt{1-e^{-2u}}-4\sqrt{1-e^{-2u}}\). Its exponential mean vanishes since the Laplace transform of \(k\) has the factor \((s-1)/(s+1)\) and is zero at \(s=1\); integration by parts gives \(\int_0^\infty F(u)e^{-u}du=0\). Also \(A(y)=\sum_{n\le y}\varphi(n)/n=y/\zeta(2)+O(1+\log y)\) by summing \(\sum_{d\mid n}\mu(d)/d\). Partial summation with \(F(0)=0\) gives the simpler expression \(\int_0^{\log X} A(Xe^{-u})k(u)du\). Its main term is \(O(1)\) by \(\int_0^\infty k(u)e^{-u}du=0\) and boundedness of \(k\) for \(u\ge1\); its error is \(O((1+\log X)^2)\) because \(k(u)=O(u^{-1/2})\) near zero.

In fact the counterterm converges to **one**, with a classical prime-number-theorem remainder. Write \(g(s)=F(-\log s)=2\log s+v(s)\) for \(0<s\le1\), where
\[
 v(s)=4\sqrt{1-s^2}-2\log(1+\sqrt{1-s^2}),\qquad \int_0^1v(s)ds=2.
\]
The last identity follows from the zero exponential mean of \(F\). For real \(y\ge1\), put \(H(y)=\sum_{m\le y}g(m/y)\). We claim
\[
 H(y)=\log y+\log(4\pi)-2+h(y),\qquad h(y)=O(y^{-1/2}).
\]
For the logarithmic summand, Stirling's formula for \(\lfloor y\rfloor!\) gives \(-2y+\log y+\log(2\pi)+O(1/y)\), uniformly across fractional parts. For \(v\), the trapezoid rule gives \(\sum_{m\le y}v(m/y)=2y-v(0)/2+O(y^{-1/2})\). To bound its error, on the cells ending at distance at least \(1/y\) from one use \(|v''(s)|\ll(1-s)^{-3/2}\). The scaled local errors sum to \(O(y^{-1/2}\sum_{j\ge1}j^{-3/2})\). The last full and fractional cells contribute \(O(y^{-1/2})\) after scaling, since \(v(s)=O(\sqrt{1-s})\) there. Now \(v(0)=4-2\log2\), as required. In addition \(h\) has total variation \(O(K)\) on \([1,K]\). Indeed the variation from each term of \(H\) starting at \(m\) is bounded by \(\int_0^{\log(K/m)}|k(u)|du\ll1+\log(K/m)\), and the term starts at zero.

Opening \(\varphi(n)/n\) by Möbius inversion makes the counterterm \(\sum_{d\le X}\mu(d)H(X/d)/d\). The classical bound \(M(y)=\sum_{d\le y}\mu(d)\ll y e^{-b\sqrt{\log y}}\) for some \(b>0\) implies by partial summation that the tails of \(\sum\mu(d)/d\) and \(\sum\mu(d)\log(d)/d\) beyond \(y\) are \(O(e^{-b'\sqrt{\log y}})\), reducing the constant \(b'\) to absorb logarithmic powers. Their sums are zero and minus one, respectively, by continuity from \(s>1\) of \(1/\zeta(s)\) and its derivative at one. Hence the main terms give \(1+O(e^{-b''\sqrt{\log X}})\). For the residual \(h\), the part \(d\le X/K\) is \(O(K^{-1/2})\) by absolute values; on \(X/K<d\le X\), partial summation and the variation bound give \(O(K e^{-b'\sqrt{\log(X/K)}})\). Take \(K=e^{\delta\sqrt{\log X}}\) with sufficiently small fixed \(\delta>0\). For some \(b_1>0\), this proves
\[
 \int_0^{\log X}k_0(s)ds=1+O(e^{-b_1\sqrt{\log X}}),\qquad
 m(t)=e\,(1+O(e^{-b_1\sqrt{2t}}))\,
           \frac{\det_3(I+K_T)}{\det_3(I-K_T)} .
\]
No location of zeros within the open critical strip enters this normalization. [Lee and Leong, *New explicit bounds for Mertens function and the reciprocal of the Riemann zeta-function*](https://arxiv.org/abs/2208.06141)

This comparison uses Suzuki's original shift and the positive odd-cycle ratio defined in the November 2026 manuscript of Howe, Huffman, Kohlmeyer and Kruer, equations (1.2)–(1.4). That manuscript also gives finite-window strictness by the entire-function zero count, and its Theorem 1.1 treats the canonical-system boundary limit under its pole and common-zero hypotheses. Here (1)–(3) estimate the two sign populations and the individual regularized determinants. The quotient in (5) can cancel contributions that are large in each logarithm; these bounds alone do not evaluate its asymptotic. They neither establish the smaller shifts' pole-free hypotheses nor identify a self-adjoint operator with the unshifted xi determinant. [Suzuki, v2, Theorems 2.1–2.3](https://arxiv.org/pdf/1204.1827v2) · [Howe, Huffman, Kohlmeyer and Kruer, *A boundary limit for Suzuki's arithmetic canonical system*, November 7, 2026](https://hexagonmath.org/pdf/2611.00315v1)

There is a quantitative conclusion for the quotient itself when the canonical projection estimate from that manuscript is used. Write \(Q(t)=\det_3(I+K_T)/\det_3(I-K_T)\), \(c=\xi(1)\). Equations (5.5) and (5.7) of Howe–Huffman–Kohlmeyer–Kruer give for every \(y>0\)
\[
 \int_t^\infty m(u)^{-2}du\le\frac{|\xi(1+y)|^2}{4yc^2}e^{-2ty}.
\]
The constant here is explicit and uniform in \(y\), so one may optimize the height. Stirling and the Euler series on the positive real axis yield \(|\xi(1+y)|^2\ll y^4(y/(2\pi e))^y\) for \(y\ge2\). Taking \(y=2\pi X\), \(X=e^{2t}\), and using the preceding multiplicative normalization gives
\[
 \int_t^\infty Q(u)^{-2}du\ll X^3 e^{-2\pi X}.
\]
For every fixed \(0<\epsilon<\pi\), it follows that the measure of \(\{u\in[t,t+1]:Q(u)\le e^{(\pi-\epsilon)X}\}\) is \(O(X^3e^{-2\epsilon X})\). This is an integrated lower-growth estimate for the signed ratio at the fixed half-shift. The projection estimate is an external analytic input here; the two sign counts in (1) and (2) have separate proofs above.

## Verification scope

The [Lean component](XiCuspSignedHankel.lean) proves the even and odd trial-vector identities, the quadratic loss for a self-adjoint contraction fixing a pulse, the scalar density, exponent, derivative and integrated constant used in (2)–(3), and the product of the signed determinant factors. The scattering identification, infinite-dimensional estimates, arithmetic sampling bound and determinant limits are analytic results.

A separate 160-bit interval calculation of the diagonal counterterm by its totient sum and its Möbius convolution gave overlapping enclosures at \(X=100,1000,10000\). At \(X=10000\) the common value is in \((1.00126426296,1.00126426297)\). These finite checks verify the arithmetic normalization.

At Lean source blob `c59d057f9dd4a7bd1f6f9af62018a2131e35f1c1`, all nine public declarations built and passed explicit fresh kernel replay. Their transitive axiom audits returned only `propext`, `Classical.choice` and `Quot.sound` with Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Independent external review has not been recorded.
