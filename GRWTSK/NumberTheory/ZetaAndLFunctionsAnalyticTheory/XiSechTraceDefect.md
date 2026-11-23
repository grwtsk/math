# A positive prime–gamma trace and quantitative bounds for the missing xi divisor

grwtsk contributors

Let \(X(z)=\xi(1/2+iz)\), let \(a\) range over its zeros with multiplicity, and write \(H\) for the self-adjoint operator reconstructed from the real xi divisor. The positive trace \(\operatorname{Tr}\operatorname{sech}(\pi H/2)\) has an explicit arithmetic upper bound. The gap vanishes exactly under RH. The arithmetic expression also counts all zeros of positive ordinate through \(101.3025\) using 29 certified real sign changes and no contour zero count. This gives an independent small-height check on the method. The much higher published verification of Platt and Trudgian gives the global bounds below. [Real operator, inverse-square trace and one-value determinant](XiJetDivisorMeasures.md) · [Platt and Trudgian, Theorem 1](https://arxiv.org/pdf/2004.09765)

## A positive sum obtained on the prime side

Put \(c=\pi/2\), \(h(z)=1/\cosh(cz)\), and \(A=\sum_a h(a)\). For \(w=u+iv\) with \(|v|\le\pi/4\),
\[
 \frac{\cos(\pi/4)}{\cosh u}
 \le \Re\frac1{\cosh w}
 =\frac{\cosh u\cos v}{\sinh^2 u+\cos^2 v},
 \qquad \left|\frac1{\cosh w}\right|\le 4e^{-|u|}.
 \tag{1}
\]
The denominator in the middle is at most \(\cosh^2 u\). For the upper bound use \(|\cosh w|\ge\cosh u\cos v\ge e^{|u|}/4\). The classical zero strip gives \(|\Im(ca)|<\pi/4\); the zero-counting estimate ensures absolute convergence. Conjugation makes \(A\) real. Therefore
\[
 0\le D_h=A-\operatorname{Tr}h(H)=\sum_{a\notin\mathbb R}\Re h(a),
 \qquad D_h=0\iff\mathrm{RH}.                                    \tag{2}
\]
The real trace is available from the positive real densities defining \(H\) by testing with compact cutoffs increasing to \(h\), then summing the multiplicity layers. This criterion uses no unproved positivity on a family of test functions.

In the Fourier convention \(e^{-2\pi i x\xi}\), \(\widehat h(\xi)=2\operatorname{sech}(2\pi\xi)\). For instance, substituting \(y=e^{\pi x}\) reduces the transform to \((2/\pi)\int_0^\infty y^{-1/2-2i\xi}/(1+y)\,dy\); Euler's beta integral and reflection give the claimed transform. The poles of \(h\) nearest to the real line have imaginary parts \(\pm1\). Thus the even Guinand–Weil formula applies unconditionally on any closed strip \(|\Im z|\le b\) with \(1/2<b<1\). Its pole, gamma, constant and prime terms yield
\[
 A=2\sqrt2+\frac1\pi\left\{\psi(3/8)+\log(2/\pi)
       +4\sum_{j=0}^{\infty}(-1)^j
             \frac{\zeta'}{\zeta}(3/2+2j)\right\}.                 \tag{3}
\]
Here \(\psi=\Gamma'/\Gamma\). Both pole evaluations equal \(h(i/2)=\sqrt2\), the constant is \(-\log\pi/\pi\), and the prime contribution is \(-(4/\pi)\sum_{n\ge2}\Lambda(n)\sqrt n/(n^2+1)\). Expanding \((1+n^{-2})^{-1}\) gives the series in (3), absolutely by comparison with \((4/3)\sum\Lambda(n)n^{-3/2}\). The alternating remainder after \(J\) terms before the factor \(4/\pi\) has modulus at most \(4^{-J}(-\zeta'/\zeta)(3/2)\). All evaluations in (3) are at real arguments. [Guinand–Weil formula with these normalizations, Proposition 5](https://link.springer.com/article/10.1007/s00209-021-02820-9)

For the gamma term, average the integral representation of \(\psi(1/4+it/2)\) against \(h(t)/2\). The factor \(\cos(tu/2)\) averages to \(\operatorname{sech}(u/2)\). Fubini applies since near \(u=0\) the difference in the numerator is \(O(u(1+|t|))\) and \(h\) has all polynomial moments, while at infinity the \(u\)-integrals decay exponentially. The resulting average is
\[
 -\gamma_{\rm E}+\int_0^\infty
 \frac{e^{-u}+e^{-2u}-2e^{-3u/4}}{1-e^{-2u}}\,du
 =-\gamma_{\rm E}+\psi(3/8)-\tfrac12(\psi(1/2)+\psi(1))
 =\psi(3/8)+\log2 .
\]
The factor in the explicit formula is this average divided by \(\pi\).

There is a direct published comparison for (3). Taking \(z=\pi/2\) in Guillera's equation (15) gives \(\sinh(\pi a/2)/\sinh(\pi a)=\tfrac12\operatorname{sech}(\pi a/2)\) on his positive-ordinate half-divisor. Multiplication by four restores the full trace and picks out precisely the same alternating logarithmic derivatives at \(3/2+2j\). His elementary expression for the remaining constant and the digamma expression above agree by the two identities for the same trace. [Guillera, *Some sums over the non-trivial zeros of the Riemann zeta function*, v7, Theorem 2.10, equation (15)](https://arxiv.org/pdf/1307.5723v7)

## Counting from the arithmetic mass and sign changes

The finite arithmetic fixture uses 384-bit Arb balls for (3) and \(J=145\). Independently it evaluates the signs of \(X\) at the quarter-integers from 0 to 100 and finds 29 changes. It bisects each bracket 275 times, retaining opposite certified signs, and bounds the contribution of a single positive root and its negative in each interval by monotonicity of \(\operatorname{sech}\) on the positive real line. Denote the sum of the credited pairs by \(L\). These steps establish
\[
 \begin{aligned}
  9.1101667962757150464273702789687703678817110881614607308130
       &< 10^{10}A\\[-2pt]
       &<9.1101667962757150464273702789687703678817110881614607308132,\\
  3.12386095281304273&<10^{69}(A-L)<3.12386095281304276 .
 \end{aligned}
\]
If an additional real zero including an extra copy occurred with positive ordinate \(\le R\), its pair would contribute at least \(2h(R)\). Any nonreal zero with \(|\Re a|\le R\) would contribute an entire quartet of mass at least \(2\sqrt2\,h(R)\) by (1). There are no purely imaginary xi zeros. Every remaining term in the real mass sum is positive. Comparing these lower bounds with the arithmetic remainder proves that all 29 credited positive zeros are simple and exhaust the zeros through height \(101.3025\); the quartet bound excludes nonreal zeros through \(101.52\), leaving open the presence of additional real zeros in that last interval. This proof of exhaustion uses only sign changes, the unconditional explicit formula, and positive mass. The corresponding cutoff for the real-pair estimate is \(2\operatorname{arcosh}(2/(A-L))/\pi=101.3025007390\ldots\). [Arb finite certificate](../../../scripts/verify_xi_sech_trace.py)

Büthe’s completeness theorem already subtracts known zeros from a positive Weil–Barner trace and bounds the mass of any missing zero. His test is a smoothed interval, whose derivative in an endpoint is proportional to a translated hyperbolic secant. Here the single centered test has the closed gamma and alternating Euler evaluation (3), with separate thresholds for a real pair and a nonreal quartet. The comparison is with this established explicit-formula method for finite verification. [Büthe, *A method for proving the completeness of a list of zeros of certain L-functions*, v4, Lemma 3.3 and Theorem 3.2](https://arxiv.org/pdf/1308.6704v4)

## Bounds for unresolved zeros above a verified height

Suppose all zeros through positive ordinate \(T\ge2\) have been verified on the line. Then
\[
 0\le D_h<\tfrac3{10}T^2e^{-\pi T/2}.                             \tag{4}
\]
Write \(x=|\Re a|\). The coefficient disk \(|a|>3/2\) and the strip bound give \(x>1\), so \(1/x^2\le(5/4)|a|^{-2}\). Also \(\Re(a^{-2})\ge(7/9)|a|^{-2}\), and summing gives \(\sum_a|a|^{-2}\le(9/7)(-X''(0)/X(0))\). The fixture independently bounds this central coefficient from the regular gamma–zeta Taylor series and verifies \((45/7)(-X''(0)/X(0))<3/10\). Now \(x^2e^{-cx}\) decreases for \(x\ge T\), and (1) yields \(D_h\le4T^2e^{-cT}\sum_a1/x^2\). This proves (4). At \(T=100\) the bound also applies to the full spectral tail after the sign-change count above. Adding that bound to the 29 real pairs independently encloses the value from (3). [Zero-free coefficient disk](XiCoefficientHankelOperator.md) · [Reciprocal-square estimate](XiJetDivisorMeasures.md) · [Kernel-checked strip, summation and tail estimates](XiSechTraceDefect.lean)

The corresponding bounds for the previously defined \(D=-X''(0)/X(0)-\operatorname{Tr}H^{-2}\) and the residual determinant factor \(E_{\rm off}(i/2)\) employ a slower tail. For each quartet the logarithm of its factor is at most \(2\log(1+1/(4|a|^2))\le1/(2|a|^2)\). Thus \(D\le\sum_{\rm off}|a|^{-2}\) and \(0\le\log E_{\rm off}(i/2)\le\tfrac18\sum_{\rm off}|a|^{-2}\). For \(T\ge2\pi e\) both signs of the ordinate are covered by
\[
 \sum_{\rm off}|a|^{-2}\ \le\ 2\sum_{\gamma>T}\gamma^{-2}
 \ \le\ B(T)=\frac{1+\log(T/(2\pi))}{\pi T}
       +\frac{0.28+1.12\log T}{T^2}.                              \tag{5}
\]
Here \(\gamma>0\) runs over all zeta ordinates with multiplicity. Formula (5) applies the explicit Lehman bound with \(\phi(t)=t^{-2}\) and doubles the result. A potential endpoint atom only increases the half-weighted upper bound. [Brent, Platt and Trudgian, Lemma 1 and its specialization to \(t^{-2}\)](https://maths-people.anu.edu.au/~brent/pd/rpb276-electronic.pdf)

At the published height \(T=3\cdot10^{12}\), (4)–(5) give
\[
 0\le D<2.960\cdot10^{-12},\qquad
 0\le\log E_{\rm off}(i/2)<3.70\cdot10^{-13},\qquad
 0\le D_h<10^{-2\,046\,564\,530\,738}.
\]
The exponential figure bounds a different test from the reciprocal-square trace. The estimates use the external finite-height theorem only at its proved height. None establishes equality of a determinant or an unconditional self-adjoint realization of the full divisor. The Lean companion covers strip estimates, positivity of the masked sum and its exponential majorant under a summable reciprocal-square bound. The explicit formula, global application to xi and finite ball calculations are separate analytic and computer-assisted evidence. [Platt and Trudgian, published finite-height theorem](https://doi.org/10.1112/blms.12460)

## Endpoint at the boundary of the strip

The endpoint test \(h_\pi(z)=\operatorname{sech}(\pi z)\) has poles at the two strip endpoints \(\pm i/2\). The separate pole evaluation and leading Euler term in the explicit formula diverge there. Their combined limit gives the convergent identity
\[
 A_\pi=\sum_a h_\pi(a)
 =\frac{3\gamma_{\rm E}-1-\log(4\pi)+
       4\sum_{j=1}^{\infty}(-1)^j(\zeta'/\zeta)(1+j)}{2\pi}.       \tag{6}
\]
To compute the limit, put \(h_\lambda(z)=\operatorname{sech}(\lambda z)\) with \(\pi/2\le\lambda<\pi\) and \(k=\pi/(2\lambda)=1/2+\delta\). Its Fourier transform is \(2k\operatorname{sech}(2\pi k\xi)\). The pole contribution is \(2\sec(\pi/(4k))\); the prime terms are \((4k/\pi)\sum_{j\ge0}(-1)^j(\zeta'/\zeta)(1/2+(2j+1)k)\). As \(\delta\downarrow0\), their singular terms cancel:
\[
 2\sec(\pi/(4k))=\frac2{\pi\delta}+\frac4\pi+O(\delta),\qquad
 \frac{4k}{\pi}\frac{\zeta'}{\zeta}(1+\delta)
 =-\frac2{\pi\delta}-\frac4\pi+\frac{2\gamma_{\rm E}}{\pi}+O(\delta).
\]
For \(j\ge1\) the absolute logarithmic derivatives are bounded by \(2^{-(j-1)}(-\zeta'/\zeta)(2)\), uniformly in \(k\). This also bounds the first omitted term and hence the alternating remainder at the endpoint. The constant \(-(k/\pi)\log\pi\) tends to \(-\log\pi/(2\pi)\).

The gamma contribution equals \(k/\pi\) times
\[
 -\gamma_{\rm E}+\int_0^\infty
 \frac{e^{-u}-e^{-u/4}\operatorname{sech}(ku/2)}{1-e^{-u}}\,du .
\]
For \(1/2\le k\le1\) the integrand is uniformly bounded near zero and \(O(e^{-u/4})\) at infinity. At \(k=1/2\), put \(t=e^{-u/2}\). The integral becomes \(-2\int_0^1(t+2)/(1+t)^2\,dt=-1-2\log2\), giving the constant in (6). On the zero side \(|\Re a|>1\), and \(|\cosh(u+iv)|\ge|\sinh u|\) implies \(|h_\lambda(a)|\le3e^{-\lambda|\Re a|}\) uniformly in this range. The sum of the latter majorant at \(\lambda=\pi/2\) converges. This justifies the passage to the limit despite the endpoint poles.

At each zero \(\Re h_\pi(a)>0\), since \(|\Im a|<1/2\) strictly. The quartet lower bound in (1) degenerates at the edges of the endpoint strip. The upper bound still gives
\[
 0\le A_\pi-\operatorname{Tr}h_\pi(H)
 <\tfrac9{40}T^2e^{-\pi T}
 <10^{-4\,093\,129\,061\,501}\qquad(T=3\cdot10^{12}),
\]
where the first strict upper bound holds for any verified height \(T\ge2\). Here \(3\sum_a|\Re a|^{-2}<9/40\) by the same central coefficient as (4). This gap vanishes if and only if RH holds.

The decay exponent \(\pi\) is best possible if one requires a positive real part at every point of the open strip. For any holomorphic \(f\) with \(u=\Re f>0\) there, \(\tanh(\pi z/2)\) maps the strip conformally onto the unit disk. The disk Harnack lower bound at \(r=|\tanh(\pi x/2)|\) gives \(u(x)\ge u(0)(1-r)/(1+r)=u(0)e^{-\pi|x|}\) on the real axis. Equivalently the disk Poisson kernel on a concentric circle of radius \(s>r\) is at least \((s-r)/(s+r)\); taking its average against the positive boundary values and letting \(s\uparrow1\) yields the stated inequality. The endpoint test attains this rate within a factor of two.

For a finite check the fixture takes 540 terms in (6) at 768 bits. Refining the original 29 sign brackets by 510 bisections leaves a positive arithmetic remainder between \(2.32598082280383616\cdot10^{-138}\) and \(2.32598082280383618\cdot10^{-138}\). The total endpoint trace is \(2.07479522615617953960928505127375798\ldots\cdot10^{-19}\). Every additional real pair through height \(R\) would contribute at least \(2\operatorname{sech}(\pi R)\). The endpoint remainder therefore excludes additional real zeros through \(101.31768\). Together with the interior test's quartet exclusion through \(101.52\), this extends complete counting of the 29 positive zeros through \(101.31768\). The endpoint cancellation and optimal exponent are analytic arguments. [Arb endpoint and interior checks](../../../scripts/verify_xi_sech_trace.py)

A finite model tests the information content of the exact endpoint sum. Let \(h(x)=\operatorname{sech}(\pi x)\). Include two copies of a distant real pair \(\pm T\) in a conjugation- and sign-invariant divisor. For any sufficiently small real \(y\ne0\), there is a real \(u(y)\) near \(T\) with \(\Re h(u(y)+iy)=h(T)\): apply the real implicit function theorem, since \(h'(T)\ne0\). Replace the double pair by the four distinct points \(\pm u(y)\pm iy\). All low points and the total endpoint sum are preserved exactly, while the trace on the real divisor drops by \(4h(T)\). This comparison of finite divisors imposes no Euler-product identity. It isolates the extra information needed to infer vanishing of the xi defect from a scalar trace.
