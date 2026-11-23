# The leading eigenvalue count of the arithmetic Weil window

Fix the time interval \((0,T)\) in additive logarithmic coordinates. For each \(n\ge2\) put \(c_n=\Lambda(n)/\sqrt n\). Retain the two steps \(b=\pm\log n\) of weight \(c_b=c_n\) when \(\log n<T\). Given a word in these steps, put \(s_0=0,\ s_j=b_1+\cdots+b_j\) and \(d=\max_j s_j-\min_j s_j\). The empty word has span zero. For the form with the normalization below, the number \(N_T(E)\) of eigenvalues at most \(E\), including multiplicities, satisfies
\[
 \lim_{E\to\infty}e^{-E}N_T(E)=C(T)
 =2\sum_{m\ge0}\frac1{m!}
   \sum_{\substack{b_1,\ldots,b_m\\s_m=0}} c_{b_1}\cdots c_{b_m}(T-d)_+.           \tag{1}
\]
In particular the family of high-energy coefficients determines every individual \(c_n\), including zeros at integers with at least two distinct prime factors.

## The closed operator and its high-frequency model

Use the logarithmic derivative of \(\xi(1/2+z)\) first in its domain of absolute Euler convergence. Its causal inverse Laplace distribution plus its reflection acts, after restriction to the interval, by the following form. Extend by zero to the line, apply the Fourier multiplier
\[
 a(\zeta)=\log\big(\sqrt{16^2+\zeta^2}/(2\pi)\big)
\]
with angular Fourier frequency, and compress back. Add the integral kernel \(h(|x-y|)\), where \(h(t)=e^{-16t}/(2t)-e^{-t/2}/(e^{2t}-1)+e^{t/2}\). Finally add \(V=-\sum_b c_b S_b\), with \(S_b f(x)=f(x-b)\) by zero extension. These signs and the factor of two in the multiplier follow by adding the two half logarithms. The finite-interval kernel is bounded at zero and square integrable. This uses the explicit gamma, pole and Euler terms, and does not evaluate a logarithmic derivative on an unproved pole-free line. [Laplace identity, equation (2)](XiPickHarmonicBudget.md) · [Connes and Consani, finite Weil windows, §§2–3](https://doi.org/10.4171/LEM/1049)

In the interval's Fourier basis \(e_k(x)=T^{-1/2}\exp(2\pi ikx/T)\), let \(D\) be diagonal with entries \(a_k=a(2\pi k/T)\). The form operator is
\[
 W_T=D+V+K,\qquad K=K^*,\quad \|K\|<\infty,\quad \|Ke_k\|\longrightarrow0
 \quad (|k|\to\infty).
\]
Here are the boundary details. Away from zero the line logarithm has convolution kernel \(-e^{-16|s|}/(2|s|)\). Differentiation in the mass parameter gives the kernel \(e^{-16|s|}/2\), and integration back from infinite mass gives the assertion off the diagonal. Periodization gives \(D\) by its Fourier coefficients, equivalently by periodizing the differentiated kernels and integrating; the mass-dependent scalar delta is common. In the difference, the images with \(|j|\ge2\) give a uniformly convergent bounded kernel. The two nearest images are bounded at opposite corners by constants times \(1/(x+y)\) in distances from the corresponding ends. Schur's test with weight \(x^{-1/2}\) gives norm at most \(\pi\) for that kernel on positive half-lines. Thus the form difference is bounded on compactly supported smooth tests.

Such tests are a core of the zero-extension logarithm form. Translate and dilate a supported function slightly into the interior and then mollify. Dilation and translation are strongly continuous for the Fourier weight \(1+\log(1+|\zeta|)\), first on Schwartz functions, then by density and locally uniform boundedness of the dilations. They are also a core of the periodic logarithm form: trigonometric polynomials are a core by Fourier truncation. Cutting off a fixed smooth periodic function in a strip of width \(\epsilon\) at each end costs \(O(\epsilon^{1/2-s})\) in periodic \(H^s\), \(0<s<1/2\), by interpolation between the \(L^2\) and \(H^1\) bounds on the smooth removed bumps. This controls the log norm. The bounded form difference therefore identifies the form closures, giving a semibounded self-adjoint operator with compact resolvent on the operator domain of \(D\).

For the column assertion, the Fourier transform of the zero-extended \(e_k\) is a translate of a sinc function bounded by \(C_T/(1+|\zeta-2\pi k/T|)\). Relative to its center the symbol difference tends pointwise to zero and is bounded by \(C+\log(1+|\zeta-2\pi k/T|)\), by the triangle inequality applied in both directions. Plancherel and dominated convergence give \(\|(a(-i\partial)-a_k)e_k\|_{L^2(\mathbb R)}\to0\) on the extensions. Restriction is contractive and the square-integrable kernel sends the orthonormal sequence to zero in norm. Boundedness of the corner difference alone would not suffice to throw it away.

## Consecutive Fourier blocks

For an interval \(I\) of \(L\) consecutive integer frequencies write \(P=P_I\). Integrating a single exponential over an overlap interval gives \(|V_{kl}|\le C_T/(1+|k-l|)\). Thus \(\|(1-P)VP\|_{\mathrm{HS}}^2=O_T(\log(2+L))\): at distance \(j\) there are at most \(2\min(j,L)\) crossing pairs. For each fixed \(m\), telescoping the moment and applying the Hilbert–Schmidt trace inequality at the first crossing shows that
\[
 L^{-1}\{\mathrm{Tr}(PVP)^m-\mathrm{Tr}(PV^mP)\}=o(1)\qquad(m\ge1).
\]
For example every such term is bounded by a constant depending on \(m,\|V\|\) times \(\sqrt L\,\|(1-P)VP\|_{\mathrm{HS}}\). The error is uniform in the first frequency. A product of partial translations has diagonal matrix element
\[
 \langle e_k,S_{b_1}\cdots S_{b_m} e_k\rangle=
 e^{-2\pi iks_m/T}(T-d)_+/T .
\]
The inequalities \(x-s_j\in(0,T)\) give this exact interval length. With nonempty overlap one has \(|s_m|<T\); if \(s_m\ne0\) the consecutive average vanishes by the geometric progression. Hence the normalized eigenvalue measures of \(PVP\) converge on \([-\|V\|,\|V\|]\) to one probability measure \(\mu_T\), uniformly in the first index. Indeed all moments converge, and polynomials uniformly approximate continuous functions there. Its \(m\)-th moment is the closed-word sum with factor \((-1)^m(T-d)_+/T\). This also treats arbitrarily close nonzero word sums since \(m\) is fixed before taking the block limit.

## From the block measures to the counting law

Set \(R=e^E\) and first take \(|k|\le MR\) at fixed \(M\). For every fixed real threshold \(u\) the compressed count below \(E+u\), divided by \(R\), tends to
\[
 2\int_0^M\int {\bf1}_{\log(t/T)+v\le u}\,d\mu_T(v)\,dt.                 \tag{2}
\]
Deleting \(|k|<\epsilon R\) changes the count by at most \(2\epsilon R+1\) by interlacing. The squared Hilbert–Schmidt norm of the compressed \(K\) is \(o(R)\) by the column estimate. Split the remaining two bands into finitely many consecutive bins in \(t=|k|/R\). Deleting inter-bin entries of \(V\) costs squared Hilbert–Schmidt norm \(O(\log R)\) for fixed bins. A self-adjoint perturbation of squared Hilbert–Schmidt norm \(o(R)\) decomposes into a rank \(o(R)\) part and an arbitrarily small fixed operator-norm part by cutting at a fixed singular value. On each bin \(D-E\) differs from a constant by at most the oscillation of \(\log(t/T)\) plus \(o(1)\), uniformly away from zero. Apply the block convergence to bounded Lipschitz test functions on these truncated bands, let the mesh tend to zero, and approximate the threshold indicator. The limiting measure has no atoms by integration in \(t\). Letting \(\epsilon\) decrease to zero proves (2).

Write \(B=K+V\), \(b_0=\|B\|\). On the omitted modes \(W_T-E\ge g_M=\log(M/T)-b_0+o(1)>0\) for large \(M\), in the compressed form. In the full quadratic form, completing the square bounds the off-diagonal coupling and this tail together below by \(-b_0^2\|P f\|^2/g_M\). The projection is injective on any nonpositive subspace since the tail is strictly positive. Min–max bounds the full count between compressed counts at \(E\) and \(E+b_0^2/g_M\). For fixed large \(M\) one can replace the variable shift by \(2b_0^2/(\log(M/T)-b_0)\) once \(R\) is sufficiently large. Equation (2), followed by \(M\to\infty\), gives \(2T\int e^{-v}d\mu_T(v)\). Expanding the exponential uniformly gives (1), with absolute convergence bounded by \(2T\exp(\sum_b c_b)\). For comparison, Laptev and Weth's Corollary 6.2 treats the logarithmic Dirichlet Laplacian. The translated prime terms here are bounded but can alter the leading coefficient because the unperturbed count grows exponentially. Priority for the prime correction has not been established. [Laptev and Weth, §6](https://doi.org/10.1007/s13324-021-00527-y)

## Recovering the jump weights and testing the operator ideal

On a bounded range of \(T\) one can use a fixed finite alphabet including all steps up to its endpoint. Longer steps have zero overlap. Thus \(C/2\) is convex and its distributional second derivative on \((0,\infty)\) is a positive atomic measure, with one mass \(\prod c_{b_j}/m!\) at the span of each nonempty return word. Local total mass is bounded by the same exponential majorant. In particular \(C(T)=2T\) through \(\log2\). For \(\log2<T\le\log3\), only the two alternating return words at each even length have positive overlap, giving
\[
 C(T)=2T+4(T-\log2)(\cosh(c_2)-1).
\]
For each \(n\ge2\), subtract from the measured atom at \(\log n\) the contributions of all words using lengths \(<\log n\). Every remaining word of this span contains a step of length exactly \(\log n\). Its weight is a monomial in the known nonnegative weights and \(c_n\), and the two out-and-back words alone contribute \(c_n^2\). The residual is a continuous strictly increasing function on \(c_n\ge0\), zero at zero and unbounded. Uniform convergence for bounded \(c_n\) follows from the factorial majorant. This proves inductive identifiability, even when shorter steps already generate that span. Replacing interval translations by circular shifts loses the visited-span constraint and yields a different coefficient.

At the second threshold there is a closed formula for the entire atom. Write \(a=\log2,\ b=\log3,\ u=c_2,\ v=c_3\). Translate each closed word of span \(b\) so its visited extrema are \(0,b\). Every such word uses a step of length \(b\), since \(b/a\) is irrational. The only vertices reachable from that step while remaining in \([0,b]\) are \(a,0,b,b-a\), in that path order, with edge weights \(u,v,u\). Indeed \(a<b<2a\), and \(2a\ne b\). The initial vertex is recovered uniquely from the word by translating its minimum to zero. Thus these words biject to based closed walks on that path using the middle edge. The exponential trace of its weighted adjacency matrix minus the corresponding trace after deleting the middle edge sums exactly their factorial-weighted counts. Its characteristic polynomial is \((x^2-u^2)^2-v^2x^2\) by the path determinant recurrence, also verified for the [actual four-site matrix](XiWeilFourSiteWall.lean). Therefore the derivative jump of \(C/2\) at \(\log3\) is
\[
 4\cosh(v/2)\cosh\!\left(\sqrt{v^2+4u^2}/2\right)-4\cosh u .
\]
At \(u=0\) this reduces to \(2(\cosh v-1)\). Ignoring the mixed words gives a strictly smaller jump for \(u,v>0\); for instance a walk can traverse both the middle edge and a side edge before returning. The finite controls compare the two graph trace counts with direct span enumeration through order twelve. In fact the formula is affine on the whole open interval \(b<T<2a=\log4\). A step of length \(b\) starts or ends at a lower point \(y\in[0,T-b]\). From the four sites \(y,y+a,y+b-a,y+b\) no other site in \([0,T]\) is reachable by a jump of length \(a\) or \(b\): \(0\le y<2a-b<b-a\) (since \(2^3<3^2\)), while \(2b-a>2a>T\). Thus a word using \(b\) has span exactly \(b\), and a nonempty returning word using only \(a\) has span \(a\). The two slope jumps above give the full coefficient up to and including \(\log4\) by continuity.

There is also an inverse formula using only deep positive integer evaluations. Take \(E_N(T)=\{N+1,\ldots,\lfloor Ne^{T/2}\rfloor\}\) and let \(n_N(t,T)\) count eigenvalues at most \(t\) of the genuine logarithmic-derivative Pick matrix relative to its Cauchy Gram matrix there. For fixed \(T\), its reciprocal width tends to \(T\). The [fixed-index convergence theorem](XiPickWeilLimit.md) applies to the same \(W_T\): on compact tests the causal gamma kernel plus reflection gives the real digamma Fourier term after removal of the two rational poles, whose reflected kernel is \(2\cosh((x-y)/2)\). In fact the term \(e^{t/2}\) in \(h(t)\) differs from \(2\cosh(t/2)\) by \(-e^{-t/2}\); the residual gamma kernel decays, and its boundary Fourier symbol is \(\Re\psi(1/4+i\zeta/2)-\log\pi\) by continuation of the pole-subtracted Laplace formula to the imaginary line. The prime terms coincide directly. Thus the sampled count converges at every continuity point of \(N_T(t)\). At an eigenvalue take bounding continuity points within \(\epsilon\) of \(t\). Equation (1), then \(\epsilon\downarrow0\), yields
\[
 C(T)=\lim_{t\to\infty}e^{-t}\liminf_{N\to\infty}n_N(t,T)
     =\lim_{t\to\infty}e^{-t}\limsup_{N\to\infty}n_N(t,T).
\]
This order of limits is essential: with \(N\) fixed the normalized count tends to zero. The formula links the reconstructed prime weights to the exact integer-sample matrices without prescribing the zero list as a spectrum.

Integration by parts in (1) gives \((s-1)\mathrm{Tr}(e^{-sW_T})\to C(T)\) as \(s\downarrow1\) and \(e^{-\alpha W_T}\) is Hilbert–Schmidt exactly for \(\alpha>1/2\), for \(\alpha>0\). Eigenvalues grow as \(\log j-\log C(T)+o(1)\); even after a scalar shift making \(W_T\) invertible its inverse is not Hilbert–Schmidt. These conclusions test a particular arithmetic-defined operator. Spectral equality with the zeros of xi, their multiplicities and the requested determinant remain open in this investigation.

The [Lean module](XiWeilWindowWeyl.lean) proves the overlap bound, the scalar Schur loss and strict identifiability given a monotone remainder. The closed-operator construction, block limit, inversion of the Weyl coefficient and ideal threshold above are manuscript arguments. The [finite controls](../../../scripts/verify_xi_weil_window_weyl.py) check the walk constraints with exact rational positions. Independent external review of (1) is unrecorded.

Native elaboration, fresh kernel replay and transitive axiom audits passed with Lean 4.34.1 and Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612 for XiWeilWindowWeyl at 6e11f22120cd15e219556f6f090449e959b0324b, XiWeilFourSiteWall at 337e975a2afba63e7625de162c822bb7cb415637. Across the declarations the reported axioms were propext, Classical.choice and Quot.sound.
