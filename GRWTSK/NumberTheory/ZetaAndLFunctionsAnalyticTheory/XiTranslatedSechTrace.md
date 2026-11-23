# Counting the missing xi divisor with translated hyperbolic-secant traces

grwtsk contributors

The total mass of the translated endpoint trace, after subtracting the trace of the real-divisor operator, counts every missing zero with its multiplicity. Thus a global upper bound strictly less than four would imply RH. The prime–gamma expression below also gives a local check. It certifies exactly seven zeros of positive ordinate in \([9997,10003]\), each simple and on the critical line, without counting any zeros below the window. The global upper bound remains open. [Endpoint trace at the origin](XiSechTraceDefect.md) · [Real-divisor operator and multiplicities](XiJetDivisorMeasures.md)

## One unit of mass per zero

Write \(X(z)=\xi(1/2+iz)\) and \(h(z)=\operatorname{sech}(\pi z)\). Use the real-divisor self-adjoint operator \(H\) constructed from the real xi derivative densities. Define, initially for real \(t\),
\[
 S(t)=\sum_{X(a)=0} h(t-a),\qquad
 D(t)= S(t)-\operatorname{Tr}h(t-H).
 \tag{1}
\]
The sum here, and all zero counts below, retain analytic multiplicities. The source expression for \(S\) using the gamma factor and \(\zeta'/\zeta\) on and to the right of the one-line is given in (5). The absolute tails in (1) converge uniformly on compact real intervals by exponential decay in \(|\Re a|\) and the classical zero count. Each translated function of \(H\) is trace class by the same estimate. Conjugation cancels the imaginary parts.

For a zero \(a=x+iy\), set \(b=\cos(\pi y)>0\), using the strict zero strip. Then
\[
 \Re h(t-a)=K_b(t-x),\qquad
 K_b(v)=\frac{b\cosh(\pi v)}{\sinh^2(\pi v)+b^2}>0,\qquad
 F_b(v)=\frac1\pi\arctan\!\frac{\sinh(\pi v)}b .
\]
Differentiating gives \(F_b'=K_b\). Since \(F_b(\pm\infty)=\pm1/2\), every \(K_b\) has mass one. From (1), \(D\) is precisely the sum of these positive densities over the off-line divisor. Tonelli gives the unconditional identity in \([0,\infty]\),
\[
 \int_{\mathbb R}D(t)\,dt
    =\#\{a:X(a)=0,\ \Im a\ne0\}.                                  \tag{2}
\]
The two divergent total traces are subtracted pointwise before integration. The symmetries of \(X\) and the absence of purely imaginary zeros put every off-line zero into a quartet. Thus RH is equivalent to \(\int D<4\). There is a second height-independent test. At the common real part \(x\) of an off-line conjugate pair, its contribution to \(D(x)\) is \(2/\cos(\pi y)>2\). Hence RH is equivalent to \(\sup_tD(t)\le2\). Also \(D(t)\to0\) as \(|t|\to\infty\) if and only if the off-line divisor is finite. A finite sum decays at infinity, while an infinite divisor contains off-line pairs with real parts tending to infinity in modulus. [Kernel, exact whole-line normalization, and countable cardinality in Lean](XiTranslatedSechTrace.lean)

On any interval \(I\), one zero whose real part lies at least \(L>0\) from both ends contributes at least
\[
 q_L=2F_1(L)=\frac2\pi\arctan(\sinh(\pi L)).
 \tag{3}
\]
Indeed its centered interval of radius \(L\) is contained in \(I\), and \(F_b(L)\ge F_1(L)\) because \(0<b\le1\). This lower bound stays positive uniformly as the zero approaches either edge of the strip. For a finite list of certified real zeros, subtract from \(\int_I S\) the integrated trace of each listed copy. If the remainder is strictly below \(q_L\), no additional copy, real or nonreal, can have real part in the inner interval. In particular a simple sign change is sufficient to credit one copy; the same inequality checks for extra multiplicity.

In particular a countable family of fixed-width windows suffices:
\[
 \mathrm{RH}\quad\Longleftrightarrow\quad
 \int_{n-1}^{n+1}D(t)\,dt\le1 \quad\text{for every } n\in\mathbb Z.
\]
If \(x\pm iy\) is an off-line pair, choose an integer \(n\) within \(1/2\) of \(x\). The tested window contains both centered intervals of radius \(1/2\). By (3) the pair alone contributes at least \(2q_{1/2}>1\), since \(\sinh(\pi/2)>1\). Thus the criterion only needs an upper bound of one in each window. No uniform bound of this size is proved here.

## Computing the translated trace from arithmetic data

Put \(\psi=\Gamma'/\Gamma\) and
\[
 B(z)=\frac12[\psi((z+1)/2)-\psi(z/2)],\qquad
 G(t)=\Re[\psi(1+it)+(2it-1)B(1+it)]-1-\log2 .
 \tag{4}
\]
For real \(t\ne0\),
\[
 S(t)=\frac{G(t)-\log\pi}{2\pi}
        +\frac2\pi\Re\sum_{j=0}^{\infty}(-1)^j
               \frac{\zeta'}{\zeta}(1+j+it).                       \tag{5}
\]
At \(t=0\) the real part of the \(j=0\) term takes its finite limit \(\gamma_{\rm E}\). The \(j\ge1\) terms are bounded in absolute value by \(2^{1-j}(-\zeta'/\zeta)(2)\), uniformly for real \(t\).

To derive (5), apply the even Guinand–Weil formula to the mean of \(h_\lambda(v-t)\) and \(h_\lambda(v+t)\), where \(h_\lambda(v)=1/\cosh(\lambda v)\), \(\pi/2\le\lambda<\pi\). Writing \(k=\pi/(2\lambda)\), the Fourier multiplier relative to the centered test is \(\cos(2\pi t\xi)\). The pole contribution tends to zero for \(t\ne0\), since \(h(t+i/2)\) is purely imaginary. The prime terms become \((4k/\pi)\Re\sum_{j\ge0}(-1)^j(\zeta'/\zeta)(1/2+(2j+1)k+it)\). As \(k\downarrow1/2\), the leading evaluation converges locally uniformly away from \(t=0\) by the classical zero-free line at \(\Re s=1\). All higher terms have a common summable bound. On the zero side, for \(t\) in a fixed compact interval, the tail is dominated using \(|\cosh(u+iv)|\ge|\sinh u|\). Each of the finitely many remaining terms converges by the strict strip. The constant term has limit \(-\log\pi/(2\pi)\). [Guinand–Weil formula, Proposition 5](https://link.springer.com/article/10.1007/s00209-021-02820-9) · [Centered endpoint limit, including the pole cancellation at zero](XiSechTraceDefect.md)

For the limiting gamma average, the integral representation of \(\psi\) gives
\[
 G(t)=-\gamma_{\rm E}+\int_0^\infty
 \frac{e^{-u}-e^{-u/4}\operatorname{sech}(u/4)\cos(tu/2)}{1-e^{-u}}\,du .
\]
The centered value is \(G(0)=-\gamma_{\rm E}-1-2\log2\). The integrands for \(k\downarrow1/2\), with \(\operatorname{sech}(ku/2)\) in place of \(\operatorname{sech}(u/4)\), are bounded on \(0<u<1\) and have an integrable exponential majorant at infinity, uniformly for \(t\) in compact intervals. To verify (4), set \(v=e^{-u/2}\) in \(G(t)-G(0)\). The factor multiplying \(1-\cos(t\log v)\) is
\[
 \frac4{(1-v)(1+v)^2}=\frac1{1-v}+\frac1{1+v}+\frac2{(1+v)^2}.
\]
With \(s=it\), these three terms integrate to the real parts of \(\psi(1+s)+\gamma_{\rm E}\), \(\log2-B(1+s)\), and \(2sB(1+s)\), respectively. The second uses \(B(z)=\int_0^1 v^{z-1}/(1+v)\,dv\); for the third integrate by parts with the primitive \(v/(1+v)\). This gives (4).

There is an exact obstruction to extending the arithmetic data into the complex \(t\)-plane. The zero sum \(S(w)\) extends meromorphically and its poles are \(a+i(n+1/2)\), \(n\in\mathbb Z\), with residue \((-1)^n m_a/(\pi i)\). Poles belonging to distinct zeros cannot cancel since two distinct zero ordinates in the height plane cannot differ by a nonzero integer multiple of \(i\). Thus \(S\) is holomorphic throughout \(|\Im w|<1/2\) exactly under RH. In (5) continue real parts by averaging the expressions at \(w\) and \(-w\); the gamma part and \(j\ge1\) are holomorphic throughout this strip. The only possible poles are in \((\zeta'/\zeta)(1+iw)+(\zeta'/\zeta)(1-iw)\), whose central pole cancels. Control on the boundary line of the Euler product alone does not remove these poles.

## A local zero count near height 10,000

For \(U=9996\), \(V=10004\), evaluate (5) integrated over \([U,V]\). Its gamma integral uses the holomorphic expression inside the real part in (4). Each prime term is the continuous argument change of \(\zeta(1+j+it)\) over the interval. For \(j\ge1\), \(\Re\zeta(1+j+it)\ge2-\zeta(2)>0\), so principal endpoint arguments suffice. For \(j=0\), the fixture subdivides the interval until the enclosure for \(\zeta(1+it)/\zeta(1+it_{\rm left})\) stays in the open right half-plane on each subinterval. The sum of the principal argument changes of the endpoint ratios then has the correct continuous branch, even across a branch cut of the unnormalized argument. Losing one \(2\pi\) winding would change the mass by four. The 112-bit Arb run required 164 certified subintervals. It keeps \(0\le j\le48\); the integrated absolute tail before the factor \(2/\pi\) is bounded by \((V-U)2^{1-48}(-\zeta'/\zeta)(2)\). [Finite certificate](../../../scripts/verify_xi_translated_sech.py)

Independently, signs of the actual \(X\) on a \(1/16\) grid from 9992 to 10008 give 19 disjoint sign-change intervals. After 25 bisections each interval gives a rigorous enclosure of \(F_1(V-x)-F_1(U-x)\) for one real zero \(x\). No ordinal of a zero or completeness of the list is used in obtaining these enclosures. The resulting inequalities are
\[
 8.8391050320624<\int_U^V S(t)\,dt<8.8391050320626,\quad
 2.4\cdot10^{-6}<\text{uncredited mass}<2.5\cdot10^{-6},\quad
 q_1>0.945 .
\]
Seven of the credited roots lie in \([9997,10003]\), and the other brackets are disjoint from this interval. Formula (3) therefore proves that these seven exhaust the divisor there with multiplicity one. Contributions from outside the integration window are already included in the uncredited mass.

Büthe’s equations (3.1)–(3.2) introduce a convolution of an interval with a scaled hyperbolic secant, and Theorem 3.2 uses positive missing mass to certify completeness. The kernel in (3) is exactly that convolution at width one. The limiting zeta term on \(\Re s=1\) in (5) requires the explicit endpoint calculation. The finite example supplies a new application and a check on its normalization, at a height far below published verifications. [Büthe, *A method for proving the completeness of a list of zeros of certain L-functions*, v4, §3](https://arxiv.org/pdf/1308.6704v4) · [Platt and Trudgian, finite-height theorem](https://doi.org/10.1112/blms.12460)

The Lean module proves the density identity, its primitive, the full real integral and integrability, the centered interval lower bound, and the countable mass formula with extended cardinality. The application to the actual xi divisor, the translated explicit formula, and the meromorphic continuation are analytic arguments. The seven-zero result additionally uses the enclosed arithmetic computation. Neither the known finite bounds nor (5) give an independent global estimate \(\int D<4\) or \(\sup D\le2\).
