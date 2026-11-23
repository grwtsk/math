# An exact xi determinant from a rank-one perturbation of the shifted operator

grwtsk contributors

For each real \(a>1/2\) there is a Hilbert–Schmidt operator \(T\) given by the completed xi function and evaluation at the origin, with
\[
 \det\nolimits_2(I-zT)=\frac{\xi(1/2+iz)}{\xi(1/2)}
 \qquad(z\in\mathbb C).
\]
For \(1/2<a\le1\), \(T^{-1}\) is closed and densely defined. For \(a>1\) its kernel obstruction is \(\ker T=\mathbb C X\). For every \(a>1/2\), the resolvent of \(T\) rules out bounded similarity to any normal operator. Thus this construction realizes the requested entire function and its multiplicities while exhibiting a precise obstruction to self-adjointness. General de Branges models for rank-one perturbations predate this application. [Baranov and Yakubovich, *Completeness and spectral synthesis of nonselfadjoint one-dimensional perturbations of selfadjoint operators*, §4](https://arxiv.org/pdf/1212.5965) · [Independent Hilbert–Pólya problem](https://github.com/grwtsk/math/issues/1849).

## The space and perturbation vector

Let \(X(z)=\xi(1/2+iz)\), \(E(z)=X(z+ia)=\xi(1/2+a-iz)\), \(E^\#(z)=\overline{E(\bar z)}\), \(A=(E+E^\#)/2\) and \(B=(E^\#-E)/(2i)\). Then \(E=A-iB\). The de Branges space \(\mathcal H(E)\) consists of entire \(f\) such that \(f/E,f^\#/E\in H^2(\mathbb C_+)\), with norm \(\|f/E\|_{L^2(\mathbb R)}\). In this space the following compact self-adjoint operator has the indicated shifted determinant:
\[
 T_a f(w)=\frac{f(w)-f(0)A(w)/A(0)}{w},\qquad
 \det\nolimits_2(I-zT_a)=A(z)/A(0).
 \tag{1}
\]
The source of (1) is the sampling theorem applied to the shifted Hermite–Biehler function \(E\). Here \(A(0)>0,\ X(0)>0\), and the order-one xi Hadamard product groups roots under \(\rho\mapsto-\rho\); evenness eliminates the linear exponential. The sole zero-location input in constructing the space and estimating the next vector is the classical strip \(|\Im\rho|<1/2\). [Shifted operator and determinant](XiShiftedDeBranges.md) · [Lagarias, *Zero Spacing Distributions for Differenced L-Functions*, v2, §§2, 3, 6](https://arxiv.org/pdf/math/0601653v2).

For \(\Im z>0\) one has \(|X(z)/E(z)|\le1\). Indeed for every xi zero \(\rho\),
\[
 |z+ia-\rho|^2-|z-\rho|^2=2a(\Im z-\Im\rho)+a^2>0
 \quad (a\ge1).
\]
Multiply across the paired truncations of the canonical product and pass to the limit. This also bounds the ratio on the real axis by continuity. The Hermite–Biehler inequality gives \(|A/E|\le1\) in the upper half-plane. Define
\[
 u(w)=\frac{A(w)/A(0)-X(w)/X(0)}{w},\quad
 \ell(f)=f(0),\quad T=T_a+u\,\ell .
 \tag{2}
\]
The entire \(u\) is real and odd. The preceding estimates give \(u/E=O(1/|w|)\) for \(|w|\ge1\) in the closed upper half-plane. The quotient is bounded on the remaining compact set since \(E\) has no zero there. Its horizontal \(L^2\) norms are uniformly bounded, and \(u^\#=u\). Hence \(u\in\mathcal H(E)\). Point evaluation is bounded, so (2) defines a Hilbert–Schmidt operator. Every defining quantity is available from the theta representation of \(X\).

The update is nonzero. On the positive imaginary axis Stirling's formula and \(\zeta(s)\to1\) as \(s\to+\infty\) give
\[
 E(iy)/X(iy)\sim(y/(2\pi))^{a/2},\qquad
 E^\#(iy)/E(iy)\sim(2\pi/y)^a,\qquad A(iy)/E(iy)\to1/2.
 \tag{3}
\]
Thus \(A/A(0)\) and \(X/X(0)\) differ. The evaluation functional is nonzero by the sampling functions \(A(w)/(w-t)\) at any zero \(t\) of \(A\). Since \(\ell(u)=0\), the nonzero update has square zero and trace zero. In particular it cannot be self-adjoint, and subtracting the self-adjoint \(T_a\) shows the same for \(T\). The shifted zero count gives \(\sum_{A(t)=0}|t|^{-1}=\infty\). Since the update has rank one, \(T\) also lies outside trace class.

## Determinant and spectral multiplicity

For \(A(z)\ne0\) let \(R_a(z)=(I-zT_a)^{-1}\). For every \(f\), apply (1) to \(y=R_a(z)f\), multiply by the spatial variable \(w\), and evaluate at \(w=z\). This gives
\[
 \ell(R_a(z)f)=A(0)f(z)/A(z).
\]
For \(z=0\) this follows directly. The Hilbert–Schmidt rank-one update formula is
\[
 \det\nolimits_2(I-zT)=\det\nolimits_2(I-zT_a)
  [1-z\,\ell(R_a(z)u)]\,\exp(z\ell(u)).
\]
Indeed factor \(I-zT=(I-zT_a)(I-zR_a(z)u\,\ell)\). The regularized product correction has exponent \(-z^2\ell(T_aR_a(z)u)\); the rank-one determinant contributes \(z\ell(R_a(z)u)\) in its exponential. Their sum is \(z\ell(u)\). This proof retains the correction before using \(\ell(u)=0\). [Britz, Carey, Gesztesy, Nichols, Sukochev and Zanin, *The product formula for regularized Fredholm determinants*, (1.5)](https://arxiv.org/pdf/2007.12834).

Substituting (1)–(2) now gives the claimed unshifted determinant. The equality extends across every zero of \(A\) by analyticity, including a possible common zero of \(A\) and \(X\). The nonzero eigenvalues of \(T\) are \(1/\rho\) for the zeros of \(X\), and their algebraic multiplicities equal the zero orders by the Hilbert–Schmidt regularized product. Geometric multiplicity at each eigenvalue is one: rearranging \((I-\rho T)f=0\) gives
\[
 (w-\rho)f(w)=-\rho f(0)X(w)/X(0).
\]
A multiple zero would therefore yield a nontrivial Jordan block. These are consequences of the determinant for the operator defined in (2). They require no enumeration of the xi zeros as input.

## A densely defined inverse at \(a=1\)

Equation (2) reads \(Tf(w)=(f(w)-f(0)X(w)/X(0))/w\). Thus its possible kernel is the span of \(X\) if \(X\) belongs to the space. At \(a=1\), (3) gives \(\sqrt y\,X(iy)/E(iy)\to\sqrt{2\pi}\). Every \(H^2(\mathbb C_+)\) function \(h\) satisfies \(\sqrt y\,h(iy)\to0\). To see this from its boundary Cauchy integral, truncate the \(L^2\) boundary values to a fixed finite interval. Its normalized Cauchy integral is \(O(y^{-1/2})\), and the omitted term is bounded uniformly by a constant times the omitted \(L^2\) norm. Consequently \(X\notin\mathcal H(E)\) and \(T\) is injective at \(a=1\).

In fact \(T\) has dense range at every \(a\ge1\). Write \(k_0\) for the reproducing vector at zero. If \(g\) is orthogonal to the range, then \(T_ag\) is perpendicular to \(\ker\ell\), because \(Tf=T_a f\) for every \(f\) in that kernel. Thus \(T_ag\) is a multiple of \(k_0\). The de Branges kernel formula gives \(w k_0(w)=c B(w)\) with a nonzero constant \(c\) since \(B(0)=0,\ A(0)>0\). If \(T_a v=k_0\), (1) would give \(v=cB+dA\) for some \(d\). No such linear combination belongs to the space. Indeed \((cB+dA)/E\) is a constant plus a constant times \(E^\#/E\). By (3) membership in \(H^2\) forces its constant term to vanish. The remaining nonzero multiple of \(E^\#/E\) has boundary modulus constant on the whole line. This excludes \(k_0\in\operatorname{ran}T_a\); injectivity of \(T_a\) now gives \(g=0\). At \(a=1\), \(H=T^{-1}\) on \(\operatorname{ran}T\) is densely defined and closed. Its inverse satisfies the displayed determinant.

The choice of shift affects the kernel. For example \(X\in\mathcal H(E)\) at \(a=4\). Put \(s=1/2-iz\). The gamma recurrence gives
\[
 \frac{X(z)}{E(z)}
 =4\pi^2\,\frac{(s-1)\zeta(s)}
 {(s+2)(s+3)(s+4)\zeta(s+4)}.
\]
For \(\Re s\ge1/2\), the Euler summation identity \(\zeta(s)=s/(s-1)-s\int_1^\infty \{t\}t^{-s-1}\,dt\) bounds its numerator by \(O((1+|s|)^2)\) after removing the pole. The reciprocal of \(\zeta(s+4)\) is bounded by its absolutely convergent Möbius series. Thus the quotient is \(O((1+|z|)^{-1})\) on the closed upper half-plane and belongs to \(H^2\). Reality gives \(X^\#=X\). At this shift \(T\) has kernel exactly \(\mathbb C X\), although its determinant still has the full unshifted divisor.

## Resolvent obstruction to a normal realization in an equivalent norm

No zero of \(X\) is purely imaginary: \(\xi\) is positive on the real axis by the Euler product, the alternating zeta series on \((0,1)\), the functional equation and the endpoint values. Thus \(R(z)=(I-zT)^{-1}\) exists at \(z=iy\) for real \(y\). Directly solving the division formula in (2) yields
\[
 (R(z)f)(w)=\frac{w f(w)}{w-z}
            -\frac{z f(z)}{X(z)}\frac{X(w)}{w-z},
 \qquad (R(z)f)(0)=\frac{X(0)f(z)}{X(z)}.
 \tag{4}
\]
The reproducing vector at \(iy\) has squared norm
\((|E(iy)|^2-|E^\#(iy)|^2)/(4\pi y)\). Taking the unit vector \(f_y\) attaining the norm of this evaluation, (3) gives
\[
 |f_y(iy)/X(iy)|\asymp_a y^{(a-1)/2}.
\]
The evaluation at zero in (4) implies \(\|R(iy)\|\gg_a y^{(a-1)/2}\) for \(a>1\).

At \(a=1\) the first term in (4) has boundary \(L^2(dt/|E(t)|^2)\) norm at most one for \(f=f_y\). The second, restricted to \(|t|\le y\), has norm at least a fixed positive multiple of \((\int_{-y}^y|X(t)/E(t)|^2dt)^{1/2}\). This last quantity diverges. Otherwise the bounded analytic function \(X/E\) would have \(L^2\) boundary values and therefore belong to \(H^2\), contradicting (3) and the Cauchy integral test above. For the Hardy implication, apply the boundary norm identity first to \((X/E)(z)/(1-i\epsilon z)\), which belongs to \(H^2\) by boundedness of \(X/E\), and then use Fatou on each horizontal line as \(\epsilon\downarrow0\). The triangle inequality in (4) gives \(\|R(iy)\|\to\infty\) also at this endpoint.

Finally let \(d=\inf_{X(\rho)=0}|\Re\rho|/|\rho|>0\). Positivity follows because \(|\Im\rho|<1/2\), the zeros are discrete, and none is purely imaginary. For any real \(y\) and every zero, \(|1-iy/\rho|\ge d\). A bounded normal operator with the spectrum of \(T\), including zero, would therefore have \(\|(I-iyT_{\rm normal})^{-1}\|\le\max(1,d^{-1})\) by the normal spectral theorem. Bounded similarity preserves a uniform bound up to its condition number. This contradicts the growth proved in (4) without any hypothesis on the off-line zeros or their multiplicities.

## Sharp resolvent growth for every fixed shift \(a>1/2\)

For \(a>1/2\), write \(F=X/E\) and \(s=1/2-iz\). The xi functional equation gives \(F(z)=\xi(s)/\xi(s+a)\). This quotient is bounded on the closed upper half-plane. Indeed both \(\zeta(s+a)\) and its reciprocal are bounded there by their absolutely convergent Dirichlet series. Uniform Stirling in \(|\arg s|\le\pi/2\) gives \(|\Gamma(s/2)/\Gamma((s+a)/2)|\asymp_a |s|^{-a/2}\) at infinity, and the ratio of the polynomial factors \(s(s-1)/((s+a)(s+a-1))\) tends uniformly to one. For \(|\Im s|\ge 50\), the convexity bound gives \(|\zeta(s)|\ll_\epsilon |\Im s|^{1/4+\epsilon}\) uniformly for \(\Re s\ge1/2\). Choose \(0<\epsilon<a/2-1/4\). With \(|\Im s|\le50\), absolute convergence handles \(\Re s\ge2\), and the remaining compact set is regular because the xi completion removes the pole at one. Consequently \(u/E=O_a((1+|z|)^{-1})\) throughout the upper half-plane, so the real entire \(u\) in (2) belongs to \(\mathcal H(E)\). The shifted sampling result (1), the determinant calculation, and the dense range argument now apply throughout \(a>1/2\). [Backlund, *Über die Nullstellen der Riemannschen Zetafunktion*, equations (53), (54), (56), (76)](https://doi.org/10.1007/BF02422950) · [Lagarias, Lemmas 2.1 and 6.1](https://arxiv.org/pdf/math/0601653v2).

On the real boundary, the same gamma estimate and the two bounds for \(\zeta(s+a)\) give \(|F(t)|^2\asymp_a |t|^{-a}|\zeta(1/2+it)|^2\) for \(|t|\ge2\). The Hardy–Littlewood mean square, differenced at \(U\) and \(2U\), therefore gives
\[
 \int_U^{2U}|F(t)|^2\,dt\asymp_a U^{1-a}\log U \qquad (U\to\infty).
 \tag{5}
\]
Reflection gives the same mass on the negative interval. Summing (5) proves that \(F|_{\mathbb R}\in L^2\) exactly when \(a>1\). Since \(F\) is bounded analytic, the Hardy regularization above turns boundary square integrability into \(F\in H^2\). Reality of \(X\) and the division formula for \(T\) give \(\ker T=\mathbb C X\) for \(a>1\) and \(\ker T=0\) for \(1/2<a\le1\). Thus \(T^{-1}\) is closed and densely defined throughout the latter interval. [Hardy and Littlewood, *Contributions to the theory of the Riemann zeta-function and the theory of the distribution of primes*, Acta Math. 41, Theorem 2.41, pp. 151–156](https://doi.org/10.1007/BF02422942).

For \(y>0\) let \(k_{iy}\) represent evaluation at \(iy\), and put
\[
 J_a(y)=\int_{\mathbb R}\frac{y^2}{t^2+y^2}|F(t)|^2\,dt,
 \qquad Q_a(y)=\frac{\|k_{iy}\|}{|X(iy)|}\sqrt{J_a(y)}.
\]
In (4) view both boundary terms as maps from \(\mathcal H(E)\) to \(L^2(\mathbb R,dt/|E(t)|^2)\). The first has norm at most one because \(|t/(t-iy)|\le1\). The second has rank one and norm exactly \(Q_a(y)\), attained on the normalized reproducing vector. The boundary embedding is isometric, so the triangle inequality in both directions gives \(\big|\|R(iy)\|-Q_a(y)\big|\le1\). This argument permits the two boundary terms to have poles individually. By (3) and the kernel formula, \(\|k_{iy}\|/|X(iy)|\sim (2\pi)^{-a/2}y^{(a-1)/2}/\sqrt{4\pi}\).

For \(|t|\le y\) the weight in \(J_a(y)\) lies between \(1/2\) and \(1\). For \(|t|>y\), (5) bounds the tail by a constant times \(\sum_{j\ge0}2^{-2j}(2^j y)^{1-a}\log(2^j y)\ll_a y^{1-a}\log y\). When \(a<1\), the last dyadic block below \(y\) gives the matching lower bound and summing all lower blocks gives the upper bound. At \(a=1\), the lower blocks contribute \(\asymp\sum_{j\le\log_2 y} j\asymp(\log y)^2\). When \(a>1\), monotone convergence gives \(J_a(y)\to\|F\|_2^2>0\). Substitution proves, as \(y\to\infty\),
\[
 \|(I-iyT)^{-1}\|\asymp_a
 \begin{cases}
  \sqrt{\log y} & 1/2<a<1,\\
  \log y & a=1,\\
  y^{(a-1)/2} & a>1.
 \end{cases}
\]
In the third range the ratio to \(y^{(a-1)/2}\) tends to \((2\pi)^{-a/2}\|F\|_2/\sqrt{4\pi}\). Each rate diverges, so the normal spectral theorem comparison above excludes bounded similarity to a normal operator throughout \(a>1/2\).

The rank-one update deliberately contains the original normalized xi function. The exact determinant therefore supplies a test of self-adjointness for this specific construction. Its resolvent rules out a bounded positive change of Hilbert norm as a repair. The actual self-adjoint Hilbert–Pólya operator, independent inequality (M), and RH remain unresolved. [Adjacent finite determinant formalization](XiDeBrangesRankOne.lean) · [Earlier coefficient companion construction](XiTaylorFredholmLinearization.md).

As a finite check of the correction, the one-dimensional choice \(D=0,\ u=v=1\) gives \((1-z)e^z\); the ordinary rank-one scalar factor alone would give \(1-z\). The adjacent Lean module proves the finite resolvent factorization, the general exponential correction, and square-zero specialization over complex matrices. The exact source with SHA-256 `1b8efd6331df5e16049b9861b624d7f77bd117628b48c24354d2eb0925e3b35d` built with Lean 4.34.1 and passed fresh kernel replay. Transitive audits of its definition and all three theorems found only `propext`, `Classical.choice`, `Quot.sound`. The infinite-dimensional determinant, Hilbert-space domain and normal-similarity obstruction are written analytic results. Independent mathematical review is pending.
