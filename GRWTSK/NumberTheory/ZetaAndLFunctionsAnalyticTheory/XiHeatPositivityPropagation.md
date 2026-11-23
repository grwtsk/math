# Large-time displacement and signatures of the arithmetic heat wave

The arithmetic heat wave \(V_t\) is entire in its spatial argument. At an integer time \(n\ge1\) form the real observation \(F_n(a)=e^{-na^2}V_n(-2ian)\). For every real center \(a\),
\[
 \limsup_{n\to\infty}\max(F_n(a),0)^{1/n}
 =\exp\!\left(\max_{\omega}\{(\Im\omega)^2-(\Re\omega-a)^2\}\right).
\]
Here the frequencies \(\omega=\pm(g+i(\Re\rho-1/2))\) run over the distinct upper nontrivial zeros of ordinate \(g>0\), including both horizontal reflections. The set where the growth factor exceeds one is exactly the union of the open intervals \((\Re\omega-|\Im\omega|,\Re\omega+|\Im\omega|)\). **RH is equivalent to upper boundedness of \(F_n(a)\) in positive integers \(n\) for each rational \(a\ge0\)**. Equivalently one can require every rational-center growth factor to be at most one. The samples are specified by real heat derivatives or the explicit prime formula below. [Arithmetic wave definition and fixed-time criterion](XiHeatWavePrimeKernel.md)

There are also two large-time signature results. For every fixed shift \(k\ge0\), the negative index of the degree-\(<N(t)\) arithmetic heat Hankel matrix tends to the number of distinct off-line quadruples as \(t\to\infty\), for **any** integer dimension \(N(t)\to\infty\). A frequency translation of the short-interval operator recovers each such quadruple's actual ordinate and displacement from its ordered negative eigenvalues. For the true divisor there is the unconditional finite bound
\[
 t\ge10^{-11},\quad 0\le k\le10^{22}t,\quad 1\le d\le700\,000\,000\,000
 \quad\Longrightarrow\quad
 \bigl((-1)^{k+i+j}H^{(k+i+j)}(t)\bigr)_{0\le i,j<d}\succ0 .
\]
Here \(k,d\) are integers. This bound uses published verification of the low zeros. It leaves unbounded rank at each time unresolved. [Fixed-time negative index](XiHeatMomentNegativeIndex.md) · [Previously proved large shift results](XiTiltedHeatMomentCriterion.md)

## A real prime sum detects an interval around every off-line ordinate

For each signed frequency let \(m_\omega\) denote the analytic order of the underlying zero. Expanding the arithmetic wave gives
\[
 F_n(a)=\sum_{\omega}\tfrac12 m_\omega e^{-n(\omega-a)^2}.
\]
Absolute convergence follows from Gaussian decay and the zero count. Reflection pairs terms conjugately. Apply the unconditional even explicit formula to \((e^{-n(y-a)^2}+e^{-n(y+a)^2})/2\). For \(D(y)=\Re\psi(1/4+iy/2)-\log\pi\) it gives
\[
 F_n(a)=e^{n(1/4-a^2)}\cos(na)+
 \frac{1}{4\pi}\int_{\mathbb R}e^{-n(y-a)^2}D(y)\,dy
 -\frac{1}{2\sqrt{\pi n}}\sum_{\ell\ge2}
 \frac{\Lambda(\ell)}{\sqrt\ell} e^{-(\log\ell)^2/(4n)}\cos(a\log\ell).
\]
The integral reduces to the one indicated translate by evenness of \(D\). The Fourier transform of the averaged Gaussian is \(\sqrt{\pi/n}\,e^{-v^2/(4n)}\cos(av)\). For every fixed \(n\) the prime sum converges absolutely. [Carneiro and Milinovich, Lemma 2.2](https://www.math.bas.bg/mathmod/Proceedings_CTF/CTF-2023/files_CTF-2023/05-Carneiro-Milinovich.pdf)

Write \(A_\omega=\Re((\omega-a)^2)\) and let \(E=\min A_\omega\). Only finitely many frequencies lie below any real-part cutoff, since \(A_\omega=(\Re\omega-a)^2-(\Im\omega)^2\). The minimizing set is finite and there is a gap \(\delta>0\) to the rest. After dividing by \(e^{-nE}\), the remainder is \(O_a(e^{-(n-1)\delta})\), by absolute convergence at \(n=1\). The leading sum is a finite combination of phases \(e^{-in\Im((\omega-a)^2)}\) with strictly positive real coefficients. There are arbitrarily large positive integers where all phases tend simultaneously to one. For instance take a convergent subsequence of the vectors of phases at times \(2^j\) in the finite torus and take successive differences of those integer times. Those differences tend to infinity and their phase vectors tend to the identity. The normalized leading sum along them tends to half the sum of the minimizing multiplicities. The triangle inequality supplies the matching upper rate for every \(n\). This proves the positive-part growth formula, even if sampled frequencies coincide. Any off-line quartet supplies an open interval containing a nonnegative rational; its center there has exponential positive excursions. Under RH, every term is positive and decreases in \(n\). The maximum transverse displacement itself is recovered by taking the supremum of the logarithm of the displayed growth factor over rational centers and then the square root.

As a numerical check on normalization, 192-bit interval evaluations using all prime powers through \(10^6\) and the first 29 upper ordinates agree at \((n,a)=(1,14),(2,20)\); the divisor values are respectively \(0.491006435487\) and \(0.061897392350\) to the displayed precision. With \(b=\log(10^6)\), \(q=b/(2n)-1/2>0\), the absolute normalized prime tail is at most \(e^{b/2-b^2/(4n)}(b/q+1/q^2)/(2\sqrt{\pi n})\), from \(\Lambda(\ell)\le\log\ell\), decreasing sum-integral comparison and the tangent bound on the quadratic exponent. This is below \(4.157\cdot10^{-8}\) in both cases. The gamma integral was enclosed by complex interval quadrature on unit cells of \([0,100]\) after folding the two translates. Beyond 100, \(|D(y)|\le y\) by the [digamma estimate](XiHeatPrimeEnvelope.md) and \(|y\pm a|\ge3y/4\). The divisor tail obeys the same Gaussian bound with an additional factor \(e^{n/4}\) and the reciprocal-square charge below one; both omitted contributions are below \(10^{-1000}\).

There is a prime-only lower-bound criterion. Denote the unnormalized cosine sum in the displayed prime formula by \(S_n(a)\). For fixed \(a>1/2\) the pole decays exponentially, and the Gaussian approximate identity gives an archimedean term \(D(a)/(4\sqrt{\pi n})+o(n^{-1/2})\). Continuity of \(D\) and its logarithmic growth justify the limit by scaling about \(a\). Thus RH is equivalent to \(S_n(a)\ge-C_a\sqrt n\) at each rational \(a>1/2\), for some finite \(C_a\) and all positive integers \(n\). Every off-line quartet has positive ordinate above the verified range and its open interval contains such a rational. Independently, for every fixed \(1/2<a<T-1/2\), \(T=3\cdot10^{12}\), the published verification already yields
\[
 S_n(a)=D(a)/2-m(a)\sqrt{\pi n}+o(1),
\]
where \(m(a)\) is the analytic multiplicity of the critical-line zero at ordinate \(a\), taken as zero in its absence. Indeed the sole possible frequency with \(A_\omega=0\) there is the real frequency \(a\); all other rates have a strictly positive gap. The same asymptotic at every fixed \(a>1/2\) follows conditionally from RH.

## Large-time stabilization on resolved layers

For the Hankel form use \(\lambda=(g+id')^2\), \(d'=\Re\rho-1/2\), and weight \(m\lambda^k e^{-t\lambda}\). Fix a cutoff between consecutive distinct real parts of these rates, retaining \(p\) distinct rates, including conjugates. On real polynomials of degree \(<p\), evaluation there is an isomorphism onto the conjugation-invariant coordinate space by real Lagrange interpolation. A positive real rate contributes a positive square. A pair contributes \(2\Re(cz^2)\), with real eigenvalues \(\pm2|c|\) in its real and imaginary coordinates. Its rotating phase preserves these magnitudes. Thus in the original fixed polynomial basis the head has the prescribed inertia and smallest singular value at least \(C e^{-tE}\), where \(E\) is its largest real part and \(C>0\) depends on the cutoff and \(k\). This uses the bounded inverse of the fixed evaluation matrix. The tail on this fixed degree space has norm \(O(e^{-tE'})\), where \(E'>E\) is the next real part: at \(t\ge1\) extract \(e^{-(t-1)E'}\) and sum at time one with the finite polynomial weights. Hence for every sufficiently large time the size-\(p\) arithmetic matrix has exactly the negative index of its head. Enlarging the polynomial space preserves at least that many negative directions; the full form has at most one per nonreal pair by its coordinate representation. Taking increasing fixed cutoffs proves the dimension-growth assertion, including infinitely many pairs. It suffices for RH that positive semidefiniteness hold on *any* sequence \(t_j\to\infty,\ d_j\to\infty\) at one fixed \(k\).

For a more precise observation fix any interval length \(L>0\), center \(a\in\mathbb R\), and use the arithmetic kernel
\[
 e^{-ta^2}V_t(x-y-2iat),\qquad 0<x,y<L .
\]
It is Hermitian; its exponential coefficients are \(m_\omega e^{-t(\omega-a)^2}/2\), conjugate at conjugate frequencies and positive at real frequencies. As in the [fixed-time compact-interval construction](XiHeatMomentNegativeIndex.md), the sum converges in trace norm since each rank-one kernel costs at most \(Le^{L|\Im\omega|}\) before its coefficient. Any finite synthesis map from frequency coordinates to the functions \(e^{ix\omega}\) is injective by independence of distinct exponentials, so its adjoint has a bounded right inverse. In a finite head its form is the congruence of diagonal positive real blocks and Hermitian two-by-two conjugate blocks with eigenvalues \(\pm m_\omega e^{-tA_\omega}/2\).

List \(E_1(a)\le E_2(a)\le\cdots\) from \(A_\omega\), once per **nonreal conjugate frequency pair**, and let \(\beta_j(t,a)>0\) be the \(j\)-th largest magnitude of the negative operator eigenvalues, whenever present. For each listed \(j\) there are constants \(c,C>0\) with
\[
 c e^{-tE_j(a)}\le \beta_j(t,a)\le C e^{-tE_j(a)}
 \quad\text{for all sufficiently large }t.
\]
Indeed the head strictly below \(E_j\) has fewer than \(j\) negative directions. The remaining operator has trace norm \(O(e^{-tE_j})\) by extracting its exponential from the convergent sum at time one. This gives the upper bound by the min-max principle. Include the entire layer at \(E_j\) in the head, including all real frequencies below or at it. Pull at least \(j\) negative axes back by the bounded right inverse. On this subspace the negative Rayleigh bound is at least a constant times \(e^{-tE_j}\), uniformly in phase. The strictly higher tail is exponentially smaller, proving the lower bound. The same argument shows the trace of the negative part has the first exponent \(E_1\) if any such pair exists: below that layer the operator is positive and the rest has the stated trace-norm bound. In particular \(E_j(a)=\lim_{t\to\infty}-t^{-1}\log\beta_j(t,a)\).

At \(a=0\) each quartet occurs at both signed real frequencies. At every fixed finite value \(E_j(0)\), only finitely many branches compete in a neighborhood of zero, since high frequencies escape uniformly there. After subtracting the common \(a^2\), the competing branches are straight lines, with slopes \(-2\Re\omega\); for sufficiently small positive \(a\) the ties sort by slope. Thus their right derivatives recover \(g=|E_j'(0+)|/2\) and \(|d'|=\sqrt{g^2-E_j(0)}\). This recovers the support of the off-line divisor. The negative index alone does not encode analytic multiplicities.

A Gaussian convolution does propagate a *global* upper bound on the real wave in time: integrating \(V_t(r-y)\) against the centered Gaussian of variance \(2s\) gives \(V_{t+s}(r)\) by the Gaussian transform at complex frequency and absolute convergence. Finite-mesh positivity may instead oscillate. In the finite wave model with one upper real frequency 1 and one pair \(2\pm i/4\), take \(r=2\pi\). The two-point minus eigenvalue is exactly \(2e^{-63t/16}(1-\cosh(\pi/2))\cos t\). At \(t=\pi\) both eigenvalues are positive, while at \(t=2\pi\) the minus eigenvalue is negative. The same sign change recurs at arbitrarily late successive odd and even multiples of \(\pi\). This explains why the large-time index argument takes a complete real-part layer.

## A positive range for the actual Hankel matrix

Use \(T=3\cdot10^{12}\), \(A=10^{10}\), \(h=41/10\), \(D_0=7\cdot10^{11}\), \(m=D_0-1\), \(B=2.88\cdot10^{12}\). Every interval \([x,x+4]\) with \(x\ge A\) contains a zero ordinate. The standard count with error \(0.28\log x\) bounds its increment below by \( (2/\pi)\log(x/(2\pi))-.28(2\log x+4/x)\). This increases in \(x\) and exceeds \(0.5942\) at \(A\). Take one ordinate \(g_i\) in each such cell starting at \(A+hi\), \(0\le i<D_0\). All are distinct and below \(B<T\), hence the published finite-height theorem puts them on the line. We use also \(\sum_{g>T}m_\rho/g^2<1\) from the same unconditional counting estimate. [Brent, Platt and Trudgian, Corollary 1](https://maths-people.anu.edu.au/brent/pd/rpb274-final.pdf) · [Platt and Trudgian, Theorem 1](https://arxiv.org/abs/2004.09765) · [Explicit reciprocal-square tail](XiSechProjectionTransport.md)

Evaluate polynomials in \(x_i=g_i^2/T^2\in(0,1)\), an invertible scaling. For \(j\ne i\), \(|g_i-g_j|\ge h|i-j|-4\). This is at least \((h/2)|i-j|\) except for the at most two adjacent indices, where it still exceeds or equals \(2/41\) times that bound. Also \(g_i+g_j\ge h(i+j+1)\). The \(m\) integers \(i+j+1\) are distinct positive integers as \(j\ne i\) varies, and \(i!(m-i)!\ge m!/2^m\). Hence
\[
 \prod_{j\ne i}|x_j-x_i|\ge (2/41)^2 (h^2/(4T^2))^m(m!)^2.
\]
The coefficient \(\ell^1\) norm of every Lagrange cardinal polynomial is therefore at most
\[
 C=(41/2)^2 [8e^2T^2/(h^2m^2)]^m,
\]
using \(m!\ge(m/e)^m\) by integrating \(\log x\). For any polynomial of degree at most \(m\) with coefficient Euclidean norm one, interpolation and Cauchy give \(\sum_i |P(x_i)|^2\ge1/(D_0 C^2)\). The selected on-line zeros consequently contribute at least \(e^{-tB^2}(A/T)^{2k}/(D_0C^2)\) to the form in the scaled variable, with the common positive factor \(T^{2k}\) removed. All other real rates contribute nonnegatively.

Put \(v=1+1/(4T^2)\). At \(g>T\) use \(|\lambda|/T^2\le v(g/T)^2\) and \(|P(\lambda/T^2)|^2\le D_0[v(g/T)^2]^{2m}\). Since \(tT^2\ge k+2m+1\) in the asserted range, \(g^{2(k+2m)+2}e^{-tg^2}\) decreases there. The reciprocal-square tail gives total possible absolute loss at most
\[
 D_0 T^2 e^{-t(T^2-1/4)} v^{k+2m}.
\]
The logarithmic excess of the retained lower bound over this upper bound is at least
\[
 t[T^2-B^2-1/4-10^{22}\log(vT^2/A^2)]
 -2\log C-2\log D_0-2\log T-2m\log v.
\]
The coefficient of \(t\) exceeds \(5.9152\cdot10^{23}\). At the left endpoint the margin exceeds \(7.9984\cdot10^{10}\). For reproducible coarser bounds, \(\log[8e^2 T^2/(h^2m^2)]<4.169\), \(\log(vT^2/A^2)<11.409\), and the remaining additive terms, including \(4\log(41/2)\), sum to less than 200. A 192-bit Arb calculation gives respectively \(4.16804205947585\), \(11.4075649493124\) and endpoint margin \(79984621686.81\), rounded here. Every lower rank is a principal submatrix. The proof uses the published zero count on each disjoint cell; computing its individual ordinate is unnecessary.

The [Lean source](XiHeatPositivityPropagation.lean) verifies the phase-independent block norm, logarithmic decay squeeze, separated squared-node bounds, factorial splitting and the last rational margin. Native Lean 4.34.1 elaboration, fresh kernel replay and all six transitive axiom audits passed at blob 817e0d1eeb163f00bf977c3f5181d0a6cd8a6a8a on Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. The audits used only propext, Classical.choice and Quot.sound. The spectral stabilization, arithmetic scalar criterion, root reconstruction and large-rank assembly remain manuscript mathematics. Independent external analytic review remains outstanding.
