# Gap rigidity for positive Poisson measures and an obstruction to detecting RH by stability

Let \(D_a\) denote the unit-mass comb on \(a\mathbb Z\), and write \(D=D_1\). Use the Fourier convention \(e^{-2\pi ix t}\). Consider positive tempered measures on the line with \(\widehat\mu=\mu\) and \(\mu\{0\}=1\). These include genuine theta measures on infinitely many frequencies. They are even by Fourier inversion. Define their weighted subunit mass
\[
 E=\int_{0<|t|<1}(1-|t|)\,d\mu(t).
\]
For every Schwartz test \(f\), with \(I_n=[n-1/2,n+1/2]\), there is an absolute constant such that
\[
 |\mu(f)-D(f)|\le C E\sum_{n\in\mathbb Z}(1+n^2)\max_{0\le j\le2}\sup_{I_n}|f^{(j)}|. \tag{1}
\]
In particular the exact unit gap characterizes the unit comb. The order in \(E\) is best possible. Nevertheless arbitrarily small \(E>0\) permits extra nonreal spectral zeros inside the original critical strip, while preserving every real spectral zero and its multiplicity.

The argument uses positive Fourier tests in the tradition of Cohn and Elkies (2003, §3), and distributional Poisson summation in the setting treated by Burnol (2007). The quantitative bound and the zero comparison below are derived here. Priority and external independent review are unassessed. [Cohn and Elkies, original paper](https://arxiv.org/abs/math/0110009) · [Burnol, original paper](https://www.numdam.org/articles/10.5802/aif.2268/)

## Fourier tests allowed by positivity

Write \(g(x)=(\sin(\pi x)/(\pi x))^2\), with \(g(0)=1\). Its transform is \(T(t)=(1-|t|)_+\), the autocorrelation of the unit interval indicator. For every real \(y\),
\[
 \int g(x-y)\,d\mu(x)=\int T(t)e^{-2\pi iyt}\,d\mu(t),\qquad
 \left|\int g(x-y)\,d\mu(x)-1\right|\le E.                 \tag{2}
\]
Here is a justification when \(\mu\) is initially only tempered. Approximate the indicator of \([-1/2,1/2]\) in both \(L^1\) and \(L^2\) by smooth even functions \(h_m\) supported there, of uniformly bounded variation. For example, convolve slightly shorter interval indicators with nonnegative compactly supported smooth approximate identities. Their autocorrelations tend uniformly to \(T\) by Cauchy–Schwarz. The Fourier squares converge pointwise to \(g\), and all their shifts are valid Schwartz tests. Fatou's lemma gives the upper bound \(1+E\) for the left integral, uniformly in \(y\). On \(|x-y|\le1/2\) we have \(g(x-y)\ge4/\pi^2\), so masses of unit intervals are uniformly bounded. The variation bound gives \(|\widehat h_m(x)|\ll(1+|x|)^{-1}\). Dominated convergence now gives equality in (2). At \(y=0\) it gives \(\int_{x\ne0}g(x)d\mu=E\) exactly.

If \(E=0\), this last equality forces the support into the integers. Multiplication by \(e^{2\pi it}\) fixes the Fourier measure, so unit translation fixes the original measure. The normalized atom at zero therefore determines all the masses. This argument uses the full Fourier identity, beyond the functional equation for an arbitrary entire function.

## Mass and first two moments of each cell

For integrals write \(M_{j,n}=\int_{I_n}(x-n)^j\,d\mu(x)\), splitting each endpoint atom in half between its two cells. The same weights are used for complements. At the central cell the entire mass other than the unit atom is \(O(E)\) by the lower bound on \(g\). For \(n\ne0\), Jordan's inequality gives
\[
 (x-n)^2\le (\pi^2/4)x^2g(x)\ll (1+n^2)g(x)\quad (x\in I_n).
\]
This gives \(M_{2,n}\ll(1+n^2)E\). In the complementary region \(|x-n|\ge1/2\), \(g(x-n)\le(1+2|n|)^2g(x)\) by periodicity of the sine square. At \(x=0\) its left side vanishes. In the cell \(1-g(x-n)=O((x-n)^2)\) by Taylor expansion with uniform second derivative there. Using (2) now gives \(|M_{0,n}-1|\ll(1+n^2)E\).

To bound the signed first moment linearly in \(E\), use the even test
\[
 K_n(x)=\tfrac12[(x-n)g(x-n)-(x+n)g(x+n)]
       =\frac{n\sin^2(\pi x)}{\pi^2(x^2-n^2)},\qquad n\ge1.
\]
The singularities are removable. The transform follows by distributionally differentiating \(T\) and translating. It is supported on \([-1,1]\) and equals \(-\operatorname{sgn}(t)\sin(2\pi n t)/(2\pi)\) in the interior. It extends continuously by zero at \(0,\pm1\). Thus \(|\widehat K_n|\le nT\) and \(\left|\int K_n\,d\mu\right|\le n E\). To extend self-duality to this non-Schwartz test, convolve its continuous compactly supported transform with a compact smooth approximate identity. Its inverse transforms are \(K_n\) times bounded smooth cutoffs tending pointwise to one. Translation boundedness and \(K_n=O_n((1+|x|)^{-2})\) justify taking limits.

Off \(I_{\pm n}\) the ratio to \(g\) in absolute value is \(n x^2/|x^2-n^2|\ll1+n^2\), as follows by factoring at \(\pm n\) and using \(||x|-n|\ge1/2\). Again the atom at 0 contributes zero. On \(I_n\), \(K_n(x)=(x-n)/2+O((x-n)^2)\) with an absolute constant, by the defining formula, the Taylor estimate for \(g\), and \(|x+n|\ge3/2\). The reflected contribution from \(I_{-n}\) is equal by evenness. This yields \(|M_{1,n}|\ll(1+n^2)E\). At \(n=0\) the signed moment vanishes. Summing Taylor's formula for \(f\) on the cells proves (1).

For \(\mu\) and \(D\) with common positive gap \(c\le1\), (1) controls the whole regularized theta Mellin transform on every fixed compact set, including any fixed number of derivatives. In the difference of their Gaussian theta traces insert a smooth cutoff which vanishes on \(|x|<c/2\) and equals one on \(|x|\ge c\). For \(v\ge1\), the seminorm on the right of (1) for this cutoff times \(e^{-\pi v x^2}\) is bounded by \(C_c(1+v)^2e^{-\kappa_c v}\). Indeed derivatives introduce at most two powers of \(v\) and polynomial factors in \(x\); split the Gaussian to extract the exponential in \(v\) and sum the remaining Gaussian over the cells. The common mass and self-duality cancel the endpoint pole terms. On \(v\ge1\) the regularized integrand uses the two powers \(v^{s/2}\) and \(v^{(1-s)/2}\) times the theta difference and \(dv/v\). This proves a compact bound \(C_{K,c} E\), including the polynomial completion factor, by integration. Cauchy's formula on a slightly larger compact gives the derivative bounds.

## A positive full theta transform with extra zeros in the strip

Take \(1<a<\sqrt{2\pi/3}\), \(h=\log a\), and \(0<\delta<1/2\). Define
\[
 \Delta_a=\frac{D_a+a^{-1}D_{1/a}}{1+a^{-1}},\quad
 \mu=(1-\epsilon)D+\epsilon\Delta_a,\quad
 \epsilon=\frac{\cosh(h/2)}{\cosh(h/2)+\cosh(\delta h)} .
\]
Poisson summation gives \(\widehat D_a=a^{-1}D_{1/a}\), so both measures are positive, supported on infinite sets, self-dual and normalized at zero. The only interior nonzero masses are at \(\pm1/a\), hence \(E=2\epsilon(1-1/a)/(a+1)\). Keeping \(a\) fixed and instead taking arbitrary mixture weights tending to zero proves the sharp order in (1) using a smooth test supported near \(1/a\).

For the tuned mixture, apply Mellin scaling first in \(\Re s>1\) to the positive half of each comb, then complete by the same \(s(s-1)\pi^{-s/2}\Gamma(s/2)/2\) factor as for zeta. The reciprocal pair contributes \(a^{-s}+a^{s-1}\) before its mass normalization. Analytic continuation consequently gives the exact identity
\[
 \xi_\mu(1/2+it)=\xi(1/2+it)
     \frac{\cosh(\delta h)+\cos(th)}{\cosh(h/2)+\cosh(\delta h)} .
\]
The multiplier is strictly positive on the entire real \(t\)-axis. Its zeros are precisely \((2k+1)\pi/h\pm i\delta\), all simple since \(\sinh(\delta h)\ne0\). At each such point it increases the zero multiplicity by one, whether or not the original function vanishes there. Thus the conclusion needs no assertion about unknown zeta zeros. As rational \(a\downarrow1\), \(E\to0\), and the new zeros escape to large ordinates. The completed functions converge on compact sets with every derivative.

Even positivity of the Riemann cosine-transform density survives. In the ordinary differentiated theta formula for \(u\ge0\), a positive atom at \(\lambda>0\) contributes, up to a common positive constant, \(\pi\lambda^2e^{5u/2}(2\pi\lambda^2e^{2u}-3)e^{-\pi\lambda^2e^{2u}}\). It is strictly positive since \(\lambda\ge1/a>\sqrt{3/(2\pi)}\). Twice differentiating the Gaussian series is justified by local uniform convergence; self-duality gives its even extension. This obstructs deducing a self-adjoint central determinant solely from these positivity, symmetry, gap-approximation and convergence properties. The exact unit gap recovers the genuine zeta datum, whose real-zero theorem and operator remain open.

## Infinite negative inertia arbitrarily close in trace norm

Dividing both completed functions by their central values replaces the denominator in the multiplier by \(\cosh(\delta h)+1\), with identical zero multiplicities. Independently of the zero list, logarithmically differentiate the Mellin multiplier on the Euler domain. At \(s=n+1/2\), \(n\ge1\), the perturbed logarithmic derivative is \(\ell_n+d_n\), where
\[
 \ell_n=\xi'(n+1/2)/\xi(n+1/2),\qquad
 d_n=\frac{h\sinh(nh)}{\cosh(\delta h)+\cosh(nh)},\qquad 0<d_n<h .
\]
On any infinite set of positive integers with divergent reciprocal sum, form the matrices
\[
 A_{nm}=\frac{\ell_n+\ell_m}{nm(n+m)},\qquad
 A^\mu_{nm}=\frac{\ell_n+d_n+\ell_m+d_m}{nm(n+m)}.
\]
These are self-adjoint trace-class tests defined from the positive real Euler-domain samples. To check the ideal, take \(u_n(t)=t^{n-1/2}/n\) in \(L^2(0,1)\). The column families \(u_n\) and \(\ell_n u_n\) define Hilbert–Schmidt synthesis maps since \(\|u_n\|^2=1/(2n^3)\) and \(\ell_n=O(\log(2n))\) by Stirling and absolute Euler convergence. Their two cross products give \(A\). If \(B\) is the Gram of \(u_n\) and \(D_d\) the bounded multiplication by \(d_n\), the exact difference is \(D_d B+B D_d\). Thus
\[
 \|A^\mu-A\|_1\le 2h\,\operatorname{Tr} B\le h\zeta(3).
\]

The centered perturbed entire function is even, has an order-one paired product and zeros in the same bounded strip. Its new cosine factor has a square-summable reciprocal divisor, and its central value is nonzero. The proof of the [central integer inertia theorem](XiIntegerPickInertia.md) therefore applies to it, including on the primes alone or after discarding any finite prefix. There are infinitely many distinct upper-half-plane zeros at the explicitly exhibited heights. Hence the supremum of the negative indices of the finite principal submatrices is infinite; the weights \(1/n\) give invertible diagonal congruences on each finite section. The compact self-adjoint operator \(A^\mu\) has infinitely many negative eigenvalues by the variational principle. This holds for arbitrarily small \(h>0\) with rational \(a=e^h\), regardless of the unknown negative index of the genuine \(A\). Trace-norm convergence of these arithmetic tests, in addition to local convergence of the entire functions and every real zero being preserved, is still compatible with infinite negative inertia at every approximating stage. The eigenvalues of these tests measure the signature of the sampled kernel; an independent realization of the zeta ordinates remains outstanding.

The [gap kernel module](XiPoissonGap.lean) formalizes the kernel's exact zero set, the symmetric rational identity and the quadratic localization estimate. The [comb multiplier module](XiSelfDualCombZeros.lean) formalizes its tuning identity, real-axis positivity and evaluations at the predicted complex zeros. The measure theorem, continuation, and multiplicity comparison above are manuscript results. The [interval verifier](../../../scripts/verify_xi_poisson_mixtures.py) tests the independent theta-integral and zeta forms at specified parameters.

At the following source blobs the public declarations passed native compilation, fresh kernel replay and transitive axiom auditing with Lean 4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. The only axioms reported across these declarations were propext, Classical.choice and Quot.sound. XiPoissonGap at 6563ab4eb67777690253e6c3397a457cc7ce7f4b, XiSelfDualCombZeros at c3ccfaa8f27ddb84ab760be78e9fff25556ebd09.
