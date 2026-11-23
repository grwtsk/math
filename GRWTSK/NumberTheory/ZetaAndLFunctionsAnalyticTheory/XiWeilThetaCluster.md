# Recovering xi on a shrinking spectral interval of the finite Weil matrix

grwtsk contributors

Let \(L=2\log\lambda\to\infty\), take \(N=\lceil L^3\rceil\), and use the ordinary log-coordinate \(L^2\) inner product on the Fourier modes \(E_N\) of indices \(-N,\ldots,N\) on \(I_L=[-L/2,L/2]\). Let \(W_L\) be the Hermitian matrix of the original Galerkin Weil form on this space. There is an absolute \(c>0\) with the following properties. Write \(P_L\) for the spectral projection of \(W_L\) onto \([-e^{-cL^2},e^{-cL^2}]\).

* In each reflection parity, all but \(O_c(L^2\log L)\) eigenvalues belong to this interval. Each parity has dimension \(N\) or \(N+1\).
* An explicit even trial vector projected by \(P_L\) has Fourier transform converging to \(X(z)=\xi(1/2+iz)/\xi(1/2)\) on every complex compact set. The error there is \(O(e^{-c' L^2})\) for some \(c'>0\). Consequently each isolated zero cluster of \(X\) is recovered with its multiplicity.
* Another explicit vector in the same even spectral subspace has Fourier transform converging to \((1+16z^2)X(z)\), with zeros converging to \(i/4\) and \(-i/4\). Both families have transforms tending to one at zero.

The least eigenvalue satisfies a separate dichotomy. Under RH it tends to zero from the nonnegative side. An off-line zero would force it to tend to minus infinity. Its negative part has exponential growth rate precisely \(\sup_{X(\alpha)=0}|\Im\alpha|\). A cofinal lower bound for this single arithmetic eigenvalue would therefore give the self-adjoint xi determinant through a Gaussian spectral measure.

These statements concern the original finite Weil matrices, defined by the archimedean and prime terms. The real eigenvalues of \(W_L\) near zero are different objects from the zeros of the Fourier transform of a vector in its eigenspaces. Identifying the particular ground line of the Weil form is the remaining requirement for the scaling-operator construction.

## Trials from the theta kernel

Use frequency convention \(\widehat f(z)=\int_{\mathbb R} f(x)e^{-izx}\,dx\). Let \(k\) be the even real theta kernel for \(X\), normalized by \(\int k=1\). A specific formula is \(k(x)=C e^{x/2}\sum_{n\ge1}h(ne^x)\) for \(x\ge0\), with \(h(u)=\frac\pi2u^2(2\pi u^2-3)e^{-\pi u^2}\). Even reflection gives the other half. The theta transformation gives the smooth full kernel and its transform \(X\). In particular \(X(iy)>0\) for every real \(y\), since all the summands of the theta kernel on \(x\ge0\) are positive. These are the input kernel and harmonic oscillator calculation of Connes, Consani and Moscovici. [*Zeta Spectral Triples*, arXiv:2511.22755v1, Lemma 7.1 and (7.1)–(7.4)](https://arxiv.org/html/2511.22755v1#S7)

Fix a nonnegative derivative order \(r\), and write \(f=k^{(r)}\). The ordinary derivative acts in log coordinates. Every fixed-order derivative satisfies
\[
 |k^{(r)}(x)|\le C_r\exp(-c_0 e^{2|x|})
\]
for \(c_0>0\) chosen independent of \(r\). For \(x\ge0\) this follows by differentiating the theta series, absorbing powers of \(ne^x\) into a fixed fraction of the Gaussian exponent, and summing the remaining Gaussian tail. Reflection handles \(x<0\). Integration by parts gives \(\widehat f(z)=(iz)^r X(z)\). For real \(u\) there is a fixed \(b>0\) with
\[
 |\widehat f(u)|\le C_r e^{-b|u|}.
\]
Indeed the completed-zeta formula gives a gamma factor decaying like \(e^{-\pi |u|/4}\) times a power by Stirling. A polynomial bound for \(\zeta(1/2+iu)\) follows already from partial summation of the alternating Dirichlet series and \(|1-2^{1/2-iu}|\ge\sqrt2-1\). Thus one may take \(b=\pi/8\) for all fixed \(r\), allowing constants depending on \(r\). [Stirling's expansion, DLMF 5.11](https://dlmf.nist.gov/5.11)

With \(\omega_n=2\pi n/L\), define the trial on \(I_L\) by
\[
 v_{r,L}(x)=\frac1L\sum_{|n|\le N}\widehat f(\omega_n)e^{i\omega_n x}.
\]
All coefficients have theta-integral definitions. Extend the trial by zero for its Fourier transform. The untruncated series is the smooth periodization \(\sum_m f(x+mL)\), by integration over translates to compute its Fourier coefficients. The omitted series and its derivative have supremum on \(I_L\) bounded by
\[
 \frac{C_r}{L}\sum_{|n|>N}(1+|\omega_n|)e^{-b|\omega_n|}
 \le C'_r e^{-b\pi N/L}.
\]
This follows by absorbing the linear factor into half the exponent and summing the geometric series, whose prefactor divided by \(L\) is bounded for \(L\ge1\). On the interval the sum of the periodized translates with \(m\ne0\), together with its first derivative, is \(O_r(e^{-c_1 e^L})\). The same double-exponential scale, with a smaller \(c_1>0\), bounds integrals of \(f,f'\) on \(|x|>L/2\) weighted by \(e^{s|x|}\) at any fixed \(s\ge0\).

Write \(e_{r,L}=v_{r,L}\mathbf 1_{I_L}-f\), with distributional derivative \(de_{r,L}\) including the jumps at both endpoints. For every fixed \(s,r\) and all sufficiently large \(L\),
\[
 \int e^{s|x|}|e_{r,L}(x)|\,dx+\int e^{s|x|}\,d|de_{r,L}|(x)
 \le e^{-aL^2}.
 \tag{1}
\]
Here \(a>0\) can be chosen independently of \(r,s\), since the interval and endpoint costs are at most \(C_{r,s}(1+L)e^{sL/2}(e^{-b\pi L^2}+e^{-c_1 e^L})\). At the endpoints the jump of the trial is bounded by its approximation error plus the small value of \(f\). Equation (1) gives locally uniform convergence of \(\widehat v_{r,L}\) to \((iz)^rX(z)\). Integration by parts also gives, uniformly for \(|\Im z|\le1/2\),
\[
 |\widehat e_{r,L}(z)|\le 2 e^{-aL^2}/(1+|\Re z|).
 \tag{2}
\]

## A bound for the whole matrix residual

For every unit \(g\in E_N\) in the ordinary \(L^2(I_L)\) norm, Cauchy–Schwarz and Parseval give
\[
 \|g\|_1\le\sqrt L,\qquad \|g'\|_1\le\sqrt L\,2\pi N/L,\qquad
 |g(\pm L/2)|\le \sqrt{(2N+1)/L}.
\]
Apply the same weighted integration-by-parts estimate to the zero extension of \(g\). Then
\[
 |\widehat g(z)|\le C(1+L)^3 e^{L/4}/(1+|\Re z|),
 \qquad |\Im z|\le 1/2.
 \tag{3}
\]
Use the unconditional polarized Weil formula on the finite Fourier space. In additive log coordinates its divisor expression, with one conventional choice of linear argument, is
\[
 \langle W_L v,g\rangle
   =\sum_{X(\alpha)=0}m_\alpha
             \widehat v(\alpha)\overline{\widehat g(\bar\alpha)} .
 \tag{4}
\]
Here \(\alpha\) runs over distinct zeros. Conjugation and the functional equation justify the opposite Fourier-sign convention as well. For piecewise smooth compactly supported vectors both transforms are \(O((1+|\Re z|)^{-1})\) in the strip. The classical zero count implies \(\sum m_\alpha(1+|\Re\alpha|)^{-2}<\infty\). Thus the polarized sum converges absolutely. Formula (4) is the prime-defined form applied to the convolution with the reflected conjugate. The paper applies it to these very Fourier basis vectors. The conjugate argument matters even when estimates use absolute values. [Connes–Consani–Moscovici, §§3–5, in particular (3.2), (3.18), (5.1)](https://arxiv.org/html/2511.22755v1#S3) · [Divisor pairing and compact-test approximation](XiPickWeilLimit.md)

At every zero in (4), \(\widehat f(\alpha)=(i\alpha)^r X(\alpha)=0\), at its true complex ordinate irrespective of its real part or multiplicity. Equations (2) and (3) bound the summands uniformly in the choice of \(g\). Taking the supremum over unit \(g\) gives a common \(a_1>0\) and, for each fixed \(r\) at all sufficiently large \(L\),
\[
                     \|W_L v_{r,L}\|_2\le e^{-a_1 L^2}.
 \tag{5}
\]
This controls the action of the matrix on the trial, including its couplings to other vectors. It uses the zeros only in the proof of (4)–(5). Neither the trial coefficients nor the matrix require a list of zeros.

## Projection to true eigenspaces

Take \(0<c<a_1/2\) in the definition of \(P_L\). In an orthonormal eigenbasis the sum of squared components outside its interval is at most \(e^{2cL^2}\|W_L v\|_2^2\). In particular, \(\|(1-P_L)v_{r,L}\|_2\le e^{-(a_1-c)L^2}\). Reflection commutes with the matrix and the projection. The zero extensions of the trials converge to \(k^{(r)}\) in \(L^2(\mathbb R)\) by the uniform estimates and the tails above. Each finite list of distinct derivatives is linearly independent, since a nonzero linear relation would give a nonzero polynomial times \(X\) vanishing on a neighborhood of zero. Therefore the Gram matrix of the corresponding projected trials converges to a positive definite Gram matrix. Choosing arbitrarily many even orders or arbitrarily many odd orders proves divergence of both ranks. No lower bound on the smallest eigenvalue is used.

In a fixed horizontal strip \(|\Im z|\le s\), replacing \(v_{r,L}\) by \(P_Lv_{r,L}\) in the transform costs at most \(\sqrt L e^{sL/2}\|(1-P_L)v_{r,L}\|_2\). For \(r=0\) the result converges to \(X\) exponentially in \(L^2\), uniformly on each compact set. Rouché's theorem on the boundary of any isolated zero disk preserves its total multiplicity. For the vector \(P_L(v_{0,L}-16v_{2,L})\), the limit is \((1+16z^2)X(z)\). Its zeros at \(\pm i/4\) are simple by positivity of \(X(\pm i/4)\). Small disjoint disks about them force nonreal zeros in this second family's transforms for all sufficiently large \(L\). Both projections use the same prime-defined matrix, the same spectral interval, even parity and a nonzero normalization at the origin.

## How much of the spectrum lies near zero

There is a stronger eigenvalue count for the same matrices. In either reflection parity, for each fixed \(A>0\), the number of eigenvalues outside \([-e^{-A L^2},e^{-A L^2}]\) is \(O_A(L^2\log L)\). Even outside the narrower interval \([-e^{-A L^3},e^{-A L^3}]\), it is \(O_A(L^3/\log L)\). Each parity has dimension \(N+1\) or \(N\), so the proportion inside either interval tends to one. This count uses a different trial space and does not assert that the projected theta kernel recovers xi at the narrower radius.

Write \(\Omega=2\pi N/L\). Represent a trial of unit norm by coefficients \(c_n\) in the orthonormal basis \(L^{-1/2}e^{i\omega_n x}\). Its transform away from the frequency nodes is exactly
\[
 \widehat v(z)=\frac{2\sin(zL/2)}{\sqrt L}
                     \sum_{|n|\le N}\frac{(-1)^n c_n}{z-\omega_n}.
\]
This follows by integrating each exponential. Choose \(T\ge2\Omega\). In the dimension argument impose \(\widehat v(\alpha)=0\) at every distinct zero with \(|\Re\alpha|\le T\), and impose
\[
       \sum_{|n|\le N}(-1)^n c_n\omega_n^j=0,\qquad 0\le j<d .
\]
These linear conditions cost at most \(O(T\log(2+T))+d\) complex dimensions in the full space or on restriction to either fixed parity. The auxiliary subspaces in this proof use the true divisor. The matrix and the spectral projection being counted remain specified by the arithmetic form.

For \(|\Re\alpha|>T\) the first \(d\) terms of the finite geometric expansion of the Cauchy kernel cancel. Its remainder is \((\omega_n/\alpha)^d/(\alpha-\omega_n)\). Since \(|\alpha-\omega_n|\ge|\alpha|/2\), the sine bound in the zero strip and Cauchy–Schwarz yield
\[
 |\widehat v(\alpha)|\le 4e^{L/4}\sqrt{(2N+1)/L}
                  (\Omega/T)^d /|\alpha|.
\]
The low part of (4) is zero. Combine the last estimate with (3) and the summable zero-count majorant to obtain
\[
                 \|W_L v\|_2\le C(1+L)^5 e^{L/2}(\Omega/T)^d .
\]
It holds on the **whole** unit sphere of the constrained space. If this bound is strictly less than \(\eta\), projection onto \([-\eta,\eta]\) is injective on that space by the orthonormal spectral theorem. Reflection commutes with \(W_L\), so the argument also applies on each parity separately.

For \(\eta=e^{-A L^2}\) take \(T=2\Omega\), \(d=\lceil (A+2)L^2/\log 2\rceil\). For \(\eta=e^{-A L^3}\) take \(T=L^3/(\log L)^2\) and \(d=\lceil 2(A+2)L^3/\log L\rceil\). In the second choice, \(\log(T/\Omega)\ge(\log L)/2\) eventually. Inserting these choices gives the two asserted codimensions. Both estimates permit exceptional real eigenvalues of either sign, including a negative minimum separated from the near-zero eigenvalues.

If a unit even ground eigenvector \(u_L\) satisfies \(|\langle u_L,v_{0,L}\rangle|\ge b_0>0\), (5) gives \(|\lambda_{\min}(W_L)|\le b_0^{-1}e^{-a_1L^2}\). There is then another even eigenvalue within \(O_{b_0}(e^{-a_1L^2})\) of the minimum, by the first count at \(A>a_1\) and the growing even dimension. This also covers a repeated minimum. Consequently an absolute gap bounded below by an inverse power of \(L\) would be incompatible with the desired ground-state overlap on this diagonal.

## The least eigenvalue and an arithmetic spectral measure

In fact there is a dichotomy for the least eigenvalue of these same matrices, over the full space \(E_N\):
\[
 \begin{array}{ll}
 \mathrm{RH} &\Longrightarrow \lambda_{\min}(W_L)\longrightarrow 0
                    \quad\hbox{with }\lambda_{\min}(W_L)\ge0,\\
 \neg\mathrm{RH} &\Longrightarrow \lambda_{\min}(W_L)\longrightarrow-\infty .
 \end{array}
\]
In particular a uniform lower bound, by any finite constant on any unbounded sequence of these cutoffs, would suffice. Neither the density-one count nor (5) supplies this lower bound.

To see it, take the fixed Gaussian \(p(x)=e^{-x^2}\), its translates \(p_t(x)=p(x+t)\), and their complex finite linear span. For each fixed vector \(g\) in this span, periodize and truncate its Fourier series on \(I_L\) exactly as for the theta trials. Write \(g_L\) for the result, extended by zero. Then \(\|g_L-g\|_2\to0\) and, for some \(a_g>0\) and all large \(L\),
\[
 |\widehat g_L(z)-\widehat g(z)|\le e^{-a_g L^2}/(1+|\Re z|),
 \qquad |\Im z|\le1/2.
\]
Indeed each fixed translate and its first derivative have Gaussian tails outside \(I_L\) and in the periodized copies, bounded in weighted variation by a polynomial times \(e^{-(L/2-|t|)^2+O(L)}\). Its Fourier samples have absolute value \(\sqrt\pi e^{-\omega_n^2/4}\), so the omitted modes and one spatial derivative cost \(O(e^{-cL^4})\) before the exponential strip weight. The endpoint estimate and integration by parts of (1)–(2) apply. Constants here may depend on the chosen finite vector; pointwise convergence for each such vector suffices.

Let \(Q(g,h)=\sum m_\alpha \widehat g(\alpha)\overline{\widehat h(\bar\alpha)}\) on the span. The bounds for each fixed pair, the strip and the summability used in (4) prove
\[
                     \langle W_L g_L,h_L\rangle\longrightarrow Q(g,h).
\]
This also **defines** \(Q\) from the arithmetic matrices without using divisor data. If \(\lambda_{\min}(W_L)\ge-C\) on an unbounded sequence with fixed \(C\ge0\), then \(Q+C\langle\cdot,\cdot\rangle\) is positive semidefinite on the entire span, by taking the limit of its diagonal quadratic forms. Translation by the same \(t\) in both arguments leaves \(Q\) invariant: the two exponential factors at \(\alpha,\bar\alpha\) cancel. The ordinary inner product has the same invariance. Applying Cauchy–Schwarz for the positive semidefinite form and then for the ordinary inner product gives a bound independent of \(t\) for \(|R(t)|\), where
\[
 R(t)=Q(p_t,p)=\sum_{\alpha} m_\alpha \pi e^{-\alpha^2/2}e^{i\alpha t}.
\]
There is no requirement that the approximations for all translates converge uniformly in \(t\).

The one-sided Laplace transform of this bounded continuous function on \(t\ge0\) is holomorphic on \(\Re s>0\). On \(\Re s>1/2\), the Gaussian weights and the zero strip permit termwise integration, giving
\[
                \sum_\alpha \frac{m_\alpha\pi e^{-\alpha^2/2}}{s-i\alpha}.
\]
This series is meromorphic on the whole plane by normal convergence away from its locally finite pole set. Every indicated residue is nonzero; coincidences are already included in \(m_\alpha\). Uniqueness of meromorphic continuation rules out a pole in the open right half-plane. Hence no \(\alpha\) can have negative imaginary part. The conjugation symmetry of xi rules out the positive half-plane as well. Conversely, real zeros make (4) nonnegative at every cutoff. The Rayleigh quotient of \(v_{0,L}\) tends to zero by (5) and its nonzero limiting norm. This proves the dichotomy: failure to tend to minus infinity itself supplies a cofinal lower bound. All uses of a real divisor in the converse are explicitly conditional.

The same argument gives a single conditional construction of the requested operator. Specify \(R(t)\) by the arithmetic matrix limit above. Under the cofinal lower-bound hypothesis the pole argument makes the divisor real, so \(R\) is the Fourier transform (positive-exponent convention) of a finite positive measure \(\mu\). Uniqueness of the Fourier transform of finite measures characterizes \(\mu\) from \(R\). The divisor representation identifies \(\mu(\{u\})=m_u\pi e^{-u^2/2}\) at each zero \(u\) of \(X\), and zero elsewhere. Use the Hilbert space
\[
 \bigoplus_{j\ge1}L^2\!\left(\mu\big|_{\{u:\,\mu(\{u\})\ge j\pi e^{-u^2/2}\}}\right)
\]
and multiplication by \(u\) on its maximal square-integrability domain. Finitely supported functions on the atoms are dense and testing the adjoint on each atom proves self-adjointness. The zero-free neighborhood of \(0\) and the zero count give a bounded Hilbert–Schmidt inverse. The layers repeat each atom with its true multiplicity. Pairing the signed factors in its regularized determinant gives the normalized order-one even Hadamard product \(X(z)\): the affine exponential ambiguity is fixed by evenness and the value one at zero. Thus a lower bound for the prime-defined matrices would imply the full self-adjoint determinant identity. The lower bound itself is still an independent mathematical obligation. [Regularized determinant and multiplicity comparison](XiParabolicPrimeSpectrum.md)

### The exponential rate of the negative part

Let \(B=\sup_{X(\alpha)=0}|\Im\alpha|\), with multiplicities immaterial to the supremum. The cubic arithmetic matrices satisfy the unconditional rate identity
\[
  \lim_{L\to\infty}
     \frac{\log(1+\max(0,-\lambda_{\min}(W_L)))}{L}=B .
\]
For the upper bound, repeat (3) for a zero with \(|\Im\alpha|\le B\), using \(e^{BL/2}\) as the strip weight. The product estimate in (4) is bounded by a polynomial in \(L\) times \(e^{BL}\), uniformly over unit vectors. The result follows from the variational characterization of the least eigenvalue. This proves the rate identity when \(B=0\).

For a lower bound along **every** sufficiently large \(L\), take \(0<\tau<B\), and choose a zero \(\alpha_*=a_*+ib_*\) with \(-b_*>\tau\). Use two frequency-modulated Gaussians
\[
 p_\pm(x)=e^{i\omega x}\exp(-(x-c_\pm)^2/(4\varepsilon L)),
 \qquad c_\pm=\pm\theta L/2,\quad \theta=1-8\sqrt\varepsilon .
\]
Here \(\varepsilon>0\) is fixed sufficiently small that \(\theta>4\varepsilon B\), \(2\varepsilon B^2<\tau\), and \(-\theta b_*>\tau\). Their transforms are
\[
 \widehat p_\pm(z)=\sqrt{4\pi\varepsilon L}\,
       e^{-\varepsilon L(z-\omega)^2}e^{-i(z-\omega)c_\pm}.
\]
In the cross term \(Q(p_-,p_+)\), a distinct zero \(\alpha=a+ib\) therefore contributes a complex number of magnitude \(4\pi\varepsilon L m_\alpha e^{L s_\alpha}\), where
\[
       s_\alpha=-\theta b-2\varepsilon(a-\omega)^2+2\varepsilon b^2 .
\]
Choose \(\omega\) sufficiently close to \(a_*\) that \(s_{\alpha_*}>\tau\). Distinct zeros with different real parts tie only at one value of \(\omega\), since their rate difference is affine with nonzero slope. For equal real parts the dependence on \(b\) is strictly decreasing on the zero strip \([-B,B]\). Avoiding a countable set in the open interval of choices makes all rates distinct. The rates tend to minus infinity as \(|a|\to\infty\), so the largest \(s_0\) is attained, is unique and has a positive gap to the rest. Since \(\sum m_\alpha e^{s_\alpha}<\infty\), the sum of all other magnitudes is \(O(L e^{L(s_0-\delta)})\) for some \(\delta>0\). Hence \(|Q(p_-,p_+)|\gg L e^{Ls_0}\). The diagonal matrix elements have magnitude \(O(L e^{2\varepsilon B^2 L})\), by the same Gaussian summability and cancellation of translation phases. These estimates hold irrespective of the signs of the diagonal elements.

Periodize and truncate the packets to \(E_N\). Their centers are now at distance \(D=4\sqrt\varepsilon L\) from their nearest endpoints. The weighted \(L^1\) and variation errors on \(|\Im z|\le1/2\), including boundary jumps, are bounded by
\[
 C(1+L)^C e^{L/4}\big(e^{-2L}+e^{-c\varepsilon L^5}\big).
\]
For the exterior integral, put \(|x-c_\pm|=D+v\). The boundary Gaussian gives \(e^{-D^2/(4\varepsilon L)}=e^{-4L}\), and the linear decay \(e^{-Dv/(2\varepsilon L)}\) absorbs the weight \(e^{v/2}\). The image copies on the interval satisfy the same distance bound, with successive distances growing by \(L\). One derivative costs a polynomial factor. At the omitted real frequencies, \(|\omega_n-\omega|\gg L^2\); the Gaussian coefficient formula gives the second term by summing its tail including one derivative. The weighted norms of the projected packets themselves are \(O((1+L)^C e^{L/4})\) by their unweighted norms and variations on the interval, and the full packets obey the same bound by the exterior estimate. Thus integration by parts and (4) give \(o(1)\) errors in all four matrix elements. Multiplication of error bounds uses the finite sum \(\sum m_\alpha(1+|\Re\alpha|)^{-2}\).

Choose the relative complex phase of the two projected packets to make the cross term negative. Their Rayleigh numerator is at most \(-c L e^{Ls_0}\) eventually, since \(s_0>\tau>2\varepsilon B^2\). The squared norm of their combination is \(O(\sqrt L)\) by the ordinary Gaussian integral and the approximation estimate. A negative numerator ensures a nonzero vector. This yields \(-\lambda_{\min}(W_L)\ge e^{\tau L}\) for every sufficiently large \(L\). Increasing \(\tau\) to \(B\) proves the rate identity. The proof may choose packets using a hypothetical off-line zero, whereas the matrix in the identity uses only the arithmetic Weil form. No attainment of \(B\) is necessary. The existing fixed-bump argument gives a limsup for a continuum negative depth with \(H^1\) normalization. The present limit is for individual finite Galerkin matrices with ordinary \(L^2\) normalization. Exponential cross-term detection for separated tests is studied by Danesh. [Continuum fixed-bump negative depth, §4](WeilFixedBumpNegativeDepth.md) Here modulation, the growing packet width and the Fourier cutoff transfer a single dominant rate to every large member of this particular sequence of matrices. [Danesh, *A quantitative two-interval criterion for the Riemann hypothesis*, arXiv:2611.10726v1](https://arxiv.org/abs/2611.10726v1)

One unconditional quantitative bound can be obtained without assuming a narrower fixed zero strip. Set \(u=L^{3/5}(\log L)^{-1/5}\). Split (4) at height \(T=e^u\). In the part with \(|\Re\alpha|\le T\), the Vinogradov–Korobov zero-free region and reflection give \(|\Im\alpha|\le 1/2-c u^{-2/3}(\log u)^{-1/3}\), after including the finitely many low zeros using the absence of zeros on \(\Re s=0,1\). Apply the preceding upper bound with that strip width to this part alone. Beyond \(T\), dyadic summation of the zero count gives \(\sum m_\alpha(1+|\Re\alpha|)^{-2}\ll (1+\log T)/T\); here use the full strip of half-width \(1/2\). The product bound (3) applies to either part regardless of signs. As \(L u^{-2/3}(\log u)^{-1/3}\asymp u\), the polynomial factors can be absorbed by decreasing a constant \(c'>0\). The result is
\[
                \|W_L\|_{\rm op}\le \exp(L/2-c'u)
                \qquad(L\ \text{sufficiently large}).
\]
The missing independent estimate is of a different size: subexponential growth of the **negative part** alone would force \(B=0\). [Mossinghoff–Trudgian–Yang, *Explicit zero-free regions for the Riemann zeta-function*, arXiv:2212.06867v1, Theorem 1.1](https://arxiv.org/abs/2212.06867v1)

## Relation to the ground-state problem

Andrews, Connes and La Gatta give prolate trial-vector upper bounds for the low eigenvalues in both parities in Theorem 3.2. Their ground-line approximation and comparison of Mellin transforms use further lower spectral estimates in Hypothesis 3.4 and §6. Here the trials are theta derivatives. Bounds (2)–(5) give a two-sided interval containing increasingly many actual Galerkin eigenvalues at the specified cubic Fourier cutoff. The scale and the controlled objects are different from their ordered-eigenvalue bounds. No priority claim for small Weil eigenvalues is made. [Andrews–Connes–La Gatta, arXiv:2611.13129v1, Theorem 3.2, Remark 3.5 and §6](https://arxiv.org/html/2611.13129v1#S3)

Taking \(N=\lceil L^3\rceil\) removes the [free determinant factor](XiFreeSpectralTail.md). The projection recovers xi from the prime-defined spectral subspace. To obtain the desired self-adjoint determinant by Theorem 5.10 of Connes–Consani–Moscovici one would still need simple even lowest eigenvectors, admissible boundary normalization, and identification of their individual transforms with this limit. The second projected family demonstrates why replacing the ground line by its surrounding spectral subspace does not justify that step. [Exact ground-line comparison](XiDeterminantStripReturn.md)

### Certified finite diagonal windows

The [interval fixture](../../../scripts/verify_xi_weil_theta_cluster.py) evaluates the original pole term, every prime power up to \(e^L\), and the archimedean contribution including its infinite integration tail in the normalization of *Zeta Spectral Triples*, §4. In the integral at the origin it removes the apparent singularities analytically using sinc. It uses ball quadrature and checks strict principal-minor signs of the shifted arithmetic matrix in the real even and odd bases.

| \(L,N\) | Enclosure of \(\lambda_{\min}(W_L)\) | Certified lower bound for every other eigenvalue |
| --- | --- | --- |
| \(1,1\) | \((0.00049369599,\ 0.00049369602)\) | \(0.01\) |
| \(2,8\) | \((1.8822682,\ 1.8822684)\,10^{-19}\) | \(1.1\,10^{-17}\) |
| \(3,27\) | \((7.9384572,\ 7.9384574)\,10^{-55}\) | \(5.9\,10^{-54}\) |

The fixture uses 256-bit ball arithmetic in the first two windows and 768 bits in the third. In all three windows the least eigenvalue is simple and even. The bound for the second even eigenvalue uses interlacing with a principal compression, and the odd-sector bound covers the full odd block. At the upper end of the ground-energy enclosure, the shifted even form is also strictly positive on the kernels of the mean and of the boundary functional \(\delta_N\). In the paper's translated Fourier basis, those restrictions use columns \(e_j\) and \(e_j-\sqrt2 e_0\), respectively, \(1\le j\le N\). Thus the ground vector has nonzero mean and admits the boundary normalization. Theorem 5.10 applies at these windows, and the reduced scaling operators are invertible with Hilbert–Schmidt inverses. Their determinants correspond to the finite-window ground-vector transforms. [Connes–Consani–Moscovici, (5.15) and Theorem 5.10](https://arxiv.org/html/2511.22755v1#S5.SS6)

At source blob `c2e685e5d7dc986c618726adc19244bf2d09c98f`, the [Lean companion](XiWeilThetaCluster.lean) defines spectral restriction in diagonal coordinates and proves the squared residual bound, injectivity on a whole trial subspace and its dimension bound over the real or complex field. Its four declarations passed elaboration and fresh kernel replay over 19,227 declarations. Each transitive audit returned only `propext`, `Classical.choice` and `Quot.sound`.

The analytic estimates, the identification with the actual Weil matrices and the xi limit are manuscript results. Lean verification of those statements and independent external review are outstanding.
