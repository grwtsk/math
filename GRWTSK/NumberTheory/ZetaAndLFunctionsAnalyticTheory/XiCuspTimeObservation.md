# Exact finite-window interpolation for modular boundary energy

Fix \(1\le Y<4\pi e^{-\gamma_E}\) and put \(L=\log Y\). In the symmetrizing Hilbert metric the shifted modular cusp operator is \(R=A-i v\otimes v\), where \(A\) is compact self-adjoint and \(v\) is its cyclic boundary vector. Write \(H=R^{-1}\) on \({\rm ran}\,R\) and \(U(t)=e^{itH}\). The energy observed on any bounded time interval \((0,T)\) realizes **every** signal in \(L^2(0,T)\), even at height one. Infinitely many independent initial states are invisible on that same interval. Exact interpolation nevertheless requires very large norms. At \(Y=1,T=4\) the worst-case norm of the minimum-energy lift of a unit signal exceeds \(10^{68}\). The proof constructs two explicit Riemann theta pulses.

## An isometric observation map and its exact range

Use the inner product linear in its first argument. For \(f\in{\rm Dom}(H)\), put
\[
 (Of)(u)=\sqrt2\,\langle H U(u)f,v\rangle .
\]
The dissipative identity \(\Im\langle Hh,h\rangle=|\langle Hh,v\rangle|^2\) and differentiation along the semigroup give
\[
 \int_0^T |Of(u)|^2du=\|f\|^2-\|U(T)f\|^2 .
\]
Strong stability, already established also at positive delay, makes \(O\) an isometry on the dense domain; extend it to the whole geometric Hilbert space. The extension satisfies \(OU(t)f=(Of)(\,·+t)\) as an equality in \(L^2(0,\infty)\). [Modular energy identity, semigroup and strong stability](XiCuspHorizontalResolvent.md)

Take the Fourier–Laplace transform \(\widehat h(z)=\int_0^\infty e^{izu}h(u)du\) into \(H^2(\mathbb C_+)\), with boundary norm \(\|\widehat h\|_{L^2(dx/2\pi)}\). Set
\[
 \Theta_L(z)=e^{iLz}\frac{\xi(1+iz)}{\xi(1-iz)},\qquad
 m(z)=z\langle(I-zA)^{-1}v,v\rangle .
\]
The modular relative determinant gives \(\Theta_L=(1+im)/(1-im)\), with unimodular boundary values. Let \(C_L\) be multiplication by this inner function in Fourier–Laplace coordinates. It is an isometry commuting with the right shifts, hence causal. It also acts unitarily on bilateral \(L^2(\mathbb R)\) through its real-axis multiplier. [Characteristic function and even Clark measure](XiCuspClarkSpectrum.md) · [Paley and Wiener, *Fourier Transforms in the Complex Domain*](https://doi.org/10.1090/coll/019)

For \(k_z(u)=e^{-i\bar z u}\) with \(\Im z>0\), integration of the damped semigroup gives
\[
 O^*k_z=-i\sqrt2\,(I+\bar z R^*)^{-1}v .
\]
Indeed \(\int_0^\infty e^{izu}U(u)du=i(H+z)^{-1}\), and \(H(H+z)^{-1}=(I+zR)^{-1}\). For the rank-one inverse in the displayed adjoint write \(R^*=A+iv\otimes v\). The spectral measure \(\mu\) of \(A\) in \(v\) is even by the Clark mass formula, so
\[
 (I+\bar w R^*)^{-1}v
 =\frac{(I+\bar w A)^{-1}v}{1+i\overline{m(w)}},\qquad
 \int\frac{d\mu(a)}{(1+za)(1+\bar w a)}
 =\frac{m(z)-\overline{m(w)}}{z-\bar w}.
\]
Substitution and the two-variable Cayley identity give
\[
 \langle OO^*k_w,k_z\rangle
 =\frac{i(1-\Theta_L(z)\overline{\Theta_L(w)})}{z-\bar w}
 =\langle(I-C_LC_L^*)k_w,k_z\rangle .
\]
The kernels span a dense subspace by Laplace uniqueness. Thus \(OO^*=I-C_LC_L^*\) and the Fourier–Laplace image of the **particular geometric observation** is exactly \(H^2\ominus\Theta_LH^2\). This identifies the normalization of the boundary sensor directly. The general relationship between dissipative evolution and compressed shifts is classical. [Baumgärtel, *On Lax–Phillips semigroups*](https://arxiv.org/abs/math-ph/0410036)

## Strict finite-window scattering and exact interpolation

Write \(Q_T\) for restriction to \((0,T)\), \(Q_T^*\) for zero extension, \(B_T=Q_TO\), and \(D_T=Q_TC_LQ_T^*\). Causality gives \(Q_TC_L=D_TQ_T\), hence
\[
 B_TB_T^*=I-D_TD_T^*.                                                   \tag{1}
\]
The operator \(D_T\) is compact. Conjugation by multiplication by \(e^{-\eta u}\) on the window, for any fixed \(\eta>1\), changes the full-line Fourier multiplier relevant to this compression to \(\Theta_L(x+i\eta)\). This follows by applying the Fourier–Laplace identity to a zero-extended input. The gamma ratio and absolutely converging Euler products give \(\Theta_L(x+i\eta)=O_{L,\eta}((1+|x|)^{-1/2})\). A bounded-frequency cutoff yields a Hilbert–Schmidt compression by Plancherel; the remaining multiplier tends to zero in operator norm. The window weight and its inverse are bounded. [Horizontal arithmetic estimates, equation (2)](XiCuspHorizontalResolvent.md)

In fact \(\|D_T\|<1\). Otherwise compactness supplies an extremal unit input whose zero extension \(f\) and full response \(C_L f\) are both supported in \([0,T]\), since \(C_L\) is an isometry. Their transforms are entire of exponential type, with \(\widehat{C_L f}=\Theta_L\widehat f\). The zeros of the denominator give \(\gg r\log r\) poles of \(\Theta_L\) in \(|z|\le r\), counted with multiplicity. Where \(1-iz=\rho\), the numerator argument \(2-\rho\) is in the Euler-product half-plane. Thus \(\widehat f\) must have all those zeros. Jensen's formula about a point where \(\widehat f\ne0\), applied on twice the radius, bounds their count by \(O_f(r)\). This contradiction proves strictness. [von Mangoldt, *Zur Verteilung der Nullstellen der Riemannschen Funktion* (1905)](https://doi.org/10.1007/BF01447494)

It follows that \(B_T\) is surjective. Its minimal-norm right inverse and exact interpolation cost are
\[
 J_T=B_T^*(I-D_TD_T^*)^{-1},\qquad
 \|J_T g\|^2=\langle(I-D_TD_T^*)^{-1}g,g\rangle,\qquad
 \|J_T\|=(1-\|D_T\|^2)^{-1/2}.                                        \tag{2}
\]
Indeed \(B_TJ_T=I\), and any other lift differs by a member of \(\ker B_T\), orthogonal to \({\rm ran}\,B_T^*\). Surjectivity on \((0,T+1)\) gives an infinite-dimensional subspace of \(\ker B_T\) by prescribing arbitrary data on \((T,T+1)\) and zero on \((0,T)\). Polar decomposition and (1) now show that the Fredholm essential spectrum of the finite-time energy operator \(B_T^*B_T=I-U(T)^*U(T)\) is exactly \(\{0,1\}\). On the complement of its kernel it is unitarily equivalent to the compact perturbation of the identity in (1).

If \(S_L\) denotes the right shift, \(C_L=S_LC_0\), giving the orthogonal time-domain decomposition
\[
 {\rm ran}\,O_Y=L^2(0,L)\oplus S_L\,{\rm ran}\,O_1 .
\]
At \(T\le L\), \(D_T=0\) and \(\|J_T\|=1\). For \(T>L\), (1) splits as the identity on \((0,L)\) plus a translated copy of the height-one Gramian for \((0,T-L)\). At height one the full output space has no nonzero compactly supported signal, since such a signal would satisfy \(OU(T)f=0\) for some \(T\), whereas \(U(T)\) is injective there. Consequently for every fixed compactly supported signal with nonzero part after \(L\), the minimum lift norms of its successive restrictions tend to infinity. Otherwise take a bounded subsequence of lifts and a weak limit; restriction to each finite interval would force the whole signal to be the output of that limit. [Injectivity at height one](XiCuspHorizontalResolvent.md)

## A double-exponential lower bound for interpolation cost

Let \(\phi\) be the **bilateral** even theta kernel of \(\xi(1/2+iz)\), so that on \(u\ge0\) it is half the cosine kernel,
\[
 \phi(u)=2\sum_{n\ge1}
 (2\pi^2 n^4e^{9u/2}-3\pi n^2e^{5u/2})e^{-\pi n^2e^{2u}} .
\]
The pulses \(f_\pm(u)=e^{\pm u/2}\phi(u)\) have bilateral Fourier transforms \(\widehat f_+(z)=\xi(1+iz)\) and \(\widehat f_-(z)=\xi(1-iz)\), using evenness and the functional equation. On the whole real time axis they therefore obey the exact isometric scattering relation \(C_L f_-=S_L f_+\), where the shift is now bilateral. [Theta kernel and normalization](XiThetaSchurSource.md)

For \(T>L\) set \(c=(T-L)/2\), \(X=e^{2c}\), and translate the input pulse by \(c\). The two resulting pulse centers are \(c\) and \(c+L\), each at distance at least \(c\) from the window endpoints. For either sign and \(u\in\mathbb R\),
\[
 |f_\pm(u)|\le 8\pi^2 e^{5|u|}e^{-\pi e^{2|u|}},\qquad
 \|\mathbf1_{|u|\ge c} f_\pm\|\le
 E(X):=\frac{8\pi^2X^2}{\sqrt{2\pi-4/X}}e^{-\pi X}.
\]
In the first bound \(\sum n^4 e^{-\pi(n^2-1)}<2\), by \(n^4\le16^{n-1}\) and \(n^2-1\ge3(n-1)\). For the second, square and substitute \(r=e^{2u}\), bounding \(r^4\le X^4 e^{4(r-X)/X}\) on \(r\ge X\). Let \(h\) be the window truncation of the translated input. The response outside the window has norm at most \(2E(X)\), by the bilateral unitary identity and the two pulse tail bounds. Thus
\[
 (1-\|D_T\|^2)\|h\|^2\le\|h\|^2-\|D_T h\|^2\le4E(X)^2 .
\]
For \(c\ge1/16\), the window contains the input segment \(0\le u\le1/16\) in pulse-centered coordinates. There the positive first theta term gives \(f_-(u)\ge2\pi(2\pi-3)e^{-\pi e^{1/8}}\). In particular \(\|h\|\ge h_0=\pi(2\pi-3)e^{-\pi e^{1/8}}/2>1/10\). Combining with (2),
\[
 \boxed{\quad \|J_T\|\ge\frac{h_0}{2E(e^{T-L})},
 \qquad \log\|J_T\|\ge\pi e^{T-L}-2(T-L)-O(1).\quad}                  \tag{3}
\]
This is a bound on the worst signal of norm one. It does not assign that growth to each individual signal. A 160-bit Arb evaluation of the displayed constants certifies lower bounds of \(2.41\times10^{68}\) at \(T-L=4\) and \(3.83\times10^{542}\) at \(T-L=6\). The argument uses the arithmetic theta kernel and the causal boundary function throughout, independently of the location of nontrivial zeros within the strip.

### An arbitrary fixed number of poorly conditioned directions

Let \(s_k(D_T)\) be the \(k\)-th singular value in decreasing order, \(k\ge1\). Differentiation commutes with the bilateral scattering multiplier on the pulse pairs, yielding \(C_L f_-^{(j)}=S_L f_+^{(j)}\) by the Fourier identity. Each input family \(f_-^{(j)}\), \(0\le j<k\), is linearly independent, because a relation transforms into a polynomial times the nonzero entire function \(\xi(1-iz)\). Its fixed finite Gram matrix is positive definite. The differentiated theta series, extended evenly before applying the exponential weight, gives
\[
 |f_\pm^{(j)}(u)|\ll_j e^{(5+2j)|u|}e^{-\pi e^{2|u|}},\qquad
 \|\mathbf1_{|u|\ge c} f_\pm^{(j)}\|\ll_j X^{2+j}e^{-\pi X}
 \quad (X=e^{2c}\to\infty).
\]
Indeed each differentiation adds at most one factor of \(n^2e^{2|u|}\) when \(|u|\ge1\); the residual Gaussian sum over \(n\) is uniformly bounded after removing \(e^{-\pi e^{2|u|}}\). On compact intervals smoothness follows from the theta functional equation. Squaring and substituting \(r=e^{2|u|}\) gives the tail bound.

Translate and truncate all \(k\) input derivatives as above. Their Gram matrix converges to the positive definite whole-line Gram matrix. The triangle inequality therefore bounds the outgoing leakage, uniformly on the unit sphere of this \(k\)-dimensional truncated input space, by \(O_k(X^{k+1}e^{-\pi X})\). The variational characterization of singular values gives
\[
 1-s_k(D_T)^2\ll_k X^{2k+2}e^{-2\pi X}.
\]
In particular the regularized positive window determinant satisfies
\[
 \lim_{T\to\infty}\frac{-\log\det_2(I-D_TD_T^*)}{e^{T-L}}=+\infty.
\]
Indeed the Schatten bound below defines the determinant, with positive factors \((1-s_j^2)e^{s_j^2}\le1\). Retaining its first \(k\) factors gives a lower bound \(2\pi k X-O_k(\log X)\) for its negative logarithm. Take a lower limit for fixed \(k\), then let \(k\) tend to infinity. This determinant describes finite-window observation loss; the required zeta determinant of an independent self-adjoint operator remains open.

## Verification and comparison

The complementary [scattering impulse calculation](XiCuspScatteringImpulse.md) identifies the delayed singularities and the local logarithmic trace coefficient. A separate way to obtain the finite-window Schatten threshold is to split the weighted multiplier above into dyadic bands of frequency \(2^j\). Each compressed band has Hilbert–Schmidt norm \(O_{T,\eta}(1)\) by Plancherel and operator norm \(O_{L,\eta}(2^{-j/2})\); interpolation and summation put \(D_T\) in every \(\mathcal S_p\), \(p>2\). For \(T>L\) the positive defect in (1) therefore lies in all \(\mathcal S_q\), \(q>1\); the first delayed inverse-square-root singularity in the impulse calculation excludes trace class. Strict positivity at every finite window coexists with the growth in (3). Neither result makes the central modular operator self-adjoint or establishes RH.

The [Lean component](XiCuspTimeObservation.lean) proves the abstract causal Gram identity, invertibility for a strict scattering compression, right inversion and Pythagorean minimality, the concentration inequality for a truncated pulse, and the polarized Cayley identity. The model-space identification, strictness, local spectrum and arithmetic pulse estimates are analytic arguments.

The finite checks also evaluated both bilateral theta pulses by interval integration at \(z=3/2+i/2\), using six theta terms on \([0,5/2]\) with the combined tail below \(10^{-44}\). Both agreed with the corresponding direct xi values. Two three-point arithmetic projection kernels, at \(Y=1,2\), passed positive principal-minor and polarized-Cayley checks. These computations check normalization and explicit constants.

At Lean source blob `2b26a4fc26412d3b8065c399664409b3d1a2c490`, all seven public declarations built and passed explicit fresh kernel replay. Their transitive axiom audits returned only `propext`, `Classical.choice` and `Quot.sound` with Lean 4.34.1 and Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Independent external review has not been recorded.
