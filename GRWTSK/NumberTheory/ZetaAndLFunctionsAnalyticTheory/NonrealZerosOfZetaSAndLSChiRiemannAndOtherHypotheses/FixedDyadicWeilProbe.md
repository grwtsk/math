# A fixed dyadic Weil probe and the centered prime-correlation obstruction

By grwtsk contributors.

## Status, consumer, and source identity

This is a written analytical argument, not a Lean declaration, a proof of RH/GRH, or a claim of a new zero-free region. It uses the classical analytic continuation, functional equations, explicit formula, zero counting, and fixed-modulus prime number theorem for Dirichlet L-functions. Its consumer is the unresolved signed arithmetic cancellation premise for primitive Dirichlet GRH, including the conductor-one zeta source. It removes a countable test-selection quantifier and accounts for prime powers before identifying the remaining prime-pair problem.

Canonical comparison revision: `9faf3baa8307ffe27c78db2821945ecb7062ed05`. Coordination: [issue 1801](https://github.com/grwtsk/math/issues/1801). The existing `GRWTSK/MeasureAndIntegration/MeanSquareLaplaceHolomorphy.lean` treats cumulative-energy hypotheses and Laplace holomorphy for the signed primitive of a bounded coefficient sequence. The present note concerns a different, literal translated Weil probe and does not duplicate that interface or claim its arithmetic hypothesis. The existing `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilContourWeight.lean` provides source candidates for actual contour-weight regularity and decay; this note uses the classical explicit formula analytically and does not discharge its remaining formal contour/arithmetical suppliers.

Evidence: written derivations below; independent analytical review, formalization, Lean elaboration, fresh kernel replay, transitive axiom audit, and numerical certification are **NOT_RUN**. Originality is **UNASSESSED**; the dyadic bump and Laplace-pole mechanism are classical. Proposition labels are local exposition labels, not frontier claim IDs. No theorem in this note establishes the final cancellation inequality.

## 1. A fixed classical kernel

Let U_n be independent uniform random variables on [-1,1], and set

$$S=\sum_{n\ge1}2^{-n}U_n.$$

The series converges absolutely, and |S| <= 1. Its bilateral Laplace transform is

$$H(w)=\mathbb E(e^{wS})=\prod_{n\ge1}\frac{\sinh(2^{-n}w)}{2^{-n}w},\qquad H(0)=1.$$

This is the standard smooth dyadic infinite-convolution bump, also expressed through the up/Fabius construction. See Arias de Reyna [1], Theorem 1 and equation (4), with the change from his Fourier convention exp(-2 pi i x z) to exp(w x). The construction is not introduced as new here.

**Proposition 1.** The distribution of S has a real, nonnegative, even density h in C_c^infinity(R), supported in [-1,1], with integral 1. Its transform H is entire and has no zero off the imaginary axis.

**Proof.** The factors are 1+O_R(4^{-n}) uniformly on each disk |w| <= R, so the product converges normally to an entire function. The expectation identity follows by bounded convergence. If |Re w| <= B, then

$$\left|\frac{\sinh(aw)}{aw}\right|\le e^{aB}\min\{1,(a|w|)^{-1}\}.$$

The first bound is the uniform-distribution integral; the second follows from |sinh(x+iy)| <= cosh(x) <= exp(|x|). Taking the inverse-power bound in the first N factors and the integral bound thereafter gives, for w != 0,

$$|H(w)|\le e^B\,2^{N(N+1)/2}|w|^{-N}.$$

Thus its characteristic function and all polynomial multiples of it are integrable. Fourier inversion supplies a smooth density, and the probability construction supplies nonnegativity, mass, evenness, and support. Each factor has zeros only at w=i pi k 2^n, k a nonzero integer. At any other w the factors are nonzero and the summable deviation of the tail from 1 implies that the product is nonzero. This proves the assertion. In fact the zeros are w=2 pi i m, m a nonzero integer, with multiplicity 1+v_2(|m|). QED.

Put

$$k=h*h,\qquad c=H(1/2)^2=H(-1/2)^2>0.$$

Then k is real, nonnegative, even, smooth, supported in [-2,2], and has integral 1. Its bilateral Laplace transform is H(w)^2. This is an ordinary complex square, not a modulus square.

A boundary of this construction matters: H can vanish at some imaginary arguments. Therefore this one probe is not asserted to reconstruct all critical-line zeros. It detects every off-critical zero, which is sufficient for the growth criterion below.

## 2. Exact arithmetic scope

Let chi be a primitive Dirichlet character of conductor q. Include the unique conductor-one character, whose continued L-function is zeta. Define

$$a_\chi\in\{0,1\},\quad\chi(-1)=(-1)^{a_\chi},$$
$$\delta_\chi=\mathbf1_{\{q=1\}},\qquad
\kappa_\chi=\mathbf1_{\{\chi^2\text{ is principal modulo }q\}}.$$

Thus kappa is 1 precisely for real characters, including the conductor-one character. It is 0 for nonreal characters. Character values at primes dividing q are zero.

Let rho run over the distinct nontrivial zeros of the analytically continued L(s,chi), let m_rho be the positive integer multiplicity, and write

$$w_\rho=\rho-\tfrac12,\qquad
d_\chi=\max\left(0,\sup_\rho\Re w_\rho\right).$$

Unconditionally the nontrivial zeros lie in the critical strip and satisfy N_chi(T)=O_chi((T+1) log(T+2)); use [3] for Dirichlet zero counting and the usual Riemann-von Mangoldt formula for q=1. The functional equation relates chi to its dual, and conjugation then gives the same-character symmetry rho -> 1-conj(rho). It follows that d_chi=0 is exactly the critical-line assertion for this primitive character. Neither same-character symmetry about the real axis for complex chi nor simplicity is assumed.

Define, for real t,

$$F_\chi(t)=\sum_\rho m_\rho H(w_\rho)^2e^{tw_\rho}.$$

The strip bounds of Proposition 1 and the counting estimate make this sum absolutely convergent, locally uniformly in t. Multiplicities are weights at distinct zero locations, not independent interpolation nodes. Off-critical real zeros, central zeros, and coincident ordinates are all allowed.

## 3. Full arithmetic return for the translated test

For t>2, set f_t(u)=k(u-t). Its support is strictly positive, f_t(0)=0, and

$$\int_{\mathbb R}f_t(u)e^{wu}\,du=e^{tw}H(w)^2.$$

The primitive Dirichlet explicit formula, in this bilateral-transform convention, gives

$$F_\chi(t)=\delta_\chi c(e^{t/2}+e^{-t/2})
-\sum_p\sum_{r\ge1}\frac{\log p\,\chi(p)^r}{p^{r/2}}k(r\log p-t)
-A_\chi(t),\tag{1}$$

where

$$A_\chi(t)=\int_0^\infty k(u-t)\frac{e^{-(a_\chi+1/2)u}}{1-e^{-2u}}\,du.\tag{2}$$

For the primitive Dirichlet formula see [2], equation (2.1); for the full pole-inclusive zeta convention see [5], section 1.1. The GRH hypotheses used for prime-gap applications in [2] are not hypotheses of its explicit formula. Transforming the gamma term in equation (2.1) yields (2): the digamma integral uses the exponential exp(-(a+1/2)u)/(1-exp(-2u)). There is no principal-value issue here because the test vanishes near zero.

The vanishing terms have specific reasons. The log(q/pi) term is multiplied by f_t(0)=0. The negative-orientation prime sum with conj(chi(p)) vanishes because f_t(-log(p^r))=0. Both zeta pole orientations remain as c exp(t/2) and c exp(-t/2). They have not been replaced by one pole or removed by an unproved pole-neutral restriction. Every contributing prime power is retained, and the sum is finite because exp(t-2) <= p^r <= exp(t+2). This support fact is not a finite-height theorem.

The archimedean term satisfies the unconditional bound

$$0\le A_\chi(t)\le
\frac{e^{-(a_\chi+1/2)(t-2)}}{1-e^{-2(t-2)}}.\tag{3}$$

This follows from positivity, integral k=1, and u>=t-2 on the integration support.

## 4. Prime squares and higher powers

Write

$$P_\chi(t)=\sum_p\frac{\log p\,\chi(p)}{\sqrt p}k(\log p-t),$$
$$S_{\chi,2}(t)=\sum_p\frac{\log p\,\chi(p)^2}{p}k(2\log p-t),$$
$$S_{\chi,\ge3}(t)=\sum_p\sum_{r\ge3}\frac{\log p\,\chi(p)^r}{p^{r/2}}k(r\log p-t).$$

**Proposition 2.** For each fixed primitive chi,

$$S_{\chi,2}(t)=\kappa_\chi/2+o_\chi(1),\tag{4}$$

and, for t>=3,

$$|S_{\chi,\ge3}(t)|\le
\frac{e^{5/3}}{\log2}\,\|k\|_\infty(t+2)^2e^{-t/6}.\tag{5}$$

**Proof of (4).** The fixed-modulus prime number theorem in progressions gives

$$\Theta_{\chi^2}(x):=\sum_{p\le x}\chi(p)^2\log p
=\kappa_\chi x+o_\chi(x).$$

Indeed, sum the prime number theorem over the reduced residue classes modulo q with weights chi(a)^2, and use finite character orthogonality. The q=1 case is the ordinary prime number theorem. These are unconditional inputs; [4] supplies stronger explicit progressions estimates. No conductor-uniform little-o or exclusion of possible exceptional zeros is asserted.

Let Y=exp(t/2), g(v)=v^{-1}k(2 log v), supported in [exp(-1),exp(1)], and E(x)=Theta_chi^2(x)-kappa_chi x. Partial summation yields

$$S_{\chi,2}(t)=\int_0^\infty Y^{-1}g(x/Y)\,d\Theta_{\chi^2}(x),$$

with main term

$$\kappa_\chi\int_0^\infty g(v)\,dv
=\frac{\kappa_\chi}{2}\int_{-2}^2k(u)\,du
=\kappa_\chi/2.$$

There is an explicit error inequality

$$|S_{\chi,2}(t)-\kappa_\chi/2|
\le B_k\sup_{Y/e\le x\le eY}\frac{|E(x)|}{x},\quad
B_k=\frac12\int_{-2}^2|2k'(u)-k(u)|\,du.\tag{6}$$

To verify it, integrate the error by parts, using the zero endpoint values of g. Bound |E(x)| by x times the displayed supremum and substitute v=x/Y. Then integral v|g'(v)| dv equals B_k. The supremum tends to zero for fixed chi. This proves (4).

**Proof of (5).** If a summand is nonzero, r log p lies in [t-2,t+2]. Hence r <= (t+2)/log2, p <= exp((t+2)/r), p^(-r/2) <= exp(-(t-2)/2), and log p <= t+2. For each r>=3, comparison with all integers up to exp((t+2)/r), rather than just primes, bounds its absolute contribution by

$$\|k\|_\infty(t+2)\exp((t+2)/r-(t-2)/2)
\le\|k\|_\infty(t+2)e^{5/3}e^{-t/6}.$$

Multiply by the number of possible r. This proves (5), with no arithmetic cancellation input. QED.

The half-unit square bias is forced by the substitution u=2 log p-t. In particular it is not permissible to throw away squares as an o(1) term for real characters.

## 5. The centered prime-only residual

Define

$$D_\chi(t)=P_\chi(t)-\delta_\chi c e^{t/2}+\kappa_\chi/2.\tag{7}$$

Combining the exact identity (1) with the power decomposition gives the exact remainder identity

$$F_\chi(t)+D_\chi(t)=
\delta_\chi c e^{-t/2}
+\kappa_\chi/2-S_{\chi,2}(t)
-S_{\chi,\ge3}(t)-A_\chi(t).\tag{8}$$

Equations (3)--(6) therefore prove

$$F_\chi(t)+D_\chi(t)=o_\chi(1).\tag{9}$$

Both zeta poles, all prime powers, and gamma/parity were present before estimating the remainder. Equation (9) is a justified asymptotic prime-only representation, not an assertion of an exact prime-only explicit formula.

## 6. Exact pointwise growth

**Proposition 3.** For each fixed primitive chi,

$$d_\chi=\limsup_{t\to\infty}\frac{\log(1+|D_\chi(t)|)}{t}.\tag{10}$$

**Proof.** Absolute summability gives |F_chi(t)| <= C_chi exp(d_chi t). By (9) the same exponential upper indicator holds for D. The logarithm with 1 makes the indicator nonnegative, so this already proves equality if d_chi=0.

Suppose d_chi>0. For Re s>1/2, absolute integration permits

$$\int_0^\infty F_\chi(t)e^{-st}\,dt
=\sum_\rho\frac{m_\rho H(w_\rho)^2}{s-w_\rho}.\tag{11}$$

The series on the right converges locally normally away from the discrete zero set, by Proposition 1 and the counting estimate. At any w_0 with Re w_0>0 its residue is m_0 H(w_0)^2 != 0. Repeated zeros add their multiplicity at the same location; distinct poles do not cancel this residue.

If the indicator in (10) were smaller than Re w_0, choose alpha strictly between them and positive. Then D(t)=O(exp(alpha t)); (9) yields the same bound for F. Its one-sided Laplace transform is holomorphic on Re s>alpha. Equality (11), first on Re s>1/2 and then by the identity theorem on the punctured half-plane, would remove the nonzero pole at w_0. This is impossible. Take the supremum over w_0 with positive real part. QED.

This proof does not assume that a rightmost zero exists, nor that the supremum is attained, nor that only finitely many zeros are off the line. The one probe works because H has no zero at any possible off-line w_0.

## 7. Exact cumulative mean-square growth

Let

$$V_\chi(T)=\int_3^T|D_\chi(t)|^2\,dt,\qquad T\ge3.$$

**Proposition 4.**

$$d_\chi=\limsup_{T\to\infty}\frac{\log(1+V_\chi(T))}{2T}.\tag{12}$$

**Proof.** The exponential upper bound for F and boundedness of the remainder in (9) imply the upper bound d_chi. If d_chi=0, V(T)=O_chi(T), proving equality.

For the lower bound suppose the energy indicator is lambda<d_chi. Select an off-line zero w_0 and real numbers lambda<beta<alpha<Re w_0, with beta>0. Then V(T)<=C exp(2 beta T) for all sufficiently large T. Integration by parts in the positive Stieltjes integral gives

$$\int_3^\infty e^{-2\alpha t}|D_\chi(t)|^2dt<\infty.$$

Explicitly, its boundary term exp(-2 alpha T)V(T) tends to zero, and the remaining integral 2 alpha integral exp(-2 alpha t)V(t)dt converges. Equation (9) gives the same weighted L2 integrability for F on [0,infinity), since its initial segment is bounded. Cauchy--Schwarz then yields

$$\int_0^\infty |F_\chi(t)|e^{-\Re(s)t}dt<\infty\qquad(\Re s>\alpha).$$

The same argument with powers of t and a smaller positive half-plane margin gives local domination for complex differentiation. Thus the Laplace transform is holomorphic there, contradicting (11)'s nonzero pole at w_0. QED.

Using an absolute square here is legitimate: it is an auxiliary energy of the already source-identified signed observable. Its nonnegativity is automatic and supplies no upper growth estimate or positivity of the arithmetic Weil form.

**Corollary (exact source return).** Primitive Dirichlet GRH, with conductor-one RH included, is equivalent to

$$\forall\chi\text{ primitive}\ \forall\varepsilon>0\quad
V_\chi(T)=O_{\chi,\varepsilon}(e^{2\varepsilon T}).\tag{13}$$

For an individual chi this is also equivalent to D_chi being bounded, and to V_chi(T)=O_chi(T): critical-line location makes F bounded by absolute summability, (9) makes D bounded, and (12) proves the converse implications. These are equivalent targets, not established arithmetic bounds. Constants in (13) may depend on chi and epsilon. Finite characters, finite T, or an average over characters do not supply its quantifiers.

## 8. A fixed smoothing iteration cannot improve the exponent

Replace h by h convolved with itself r times, for a fixed positive integer r, and k accordingly. The new transform coefficient is H(w)^(2r), still nonzero at every off-critical zero. All convergence and pole arguments remain valid, with larger fixed support and changed constants. Consequently the exact exponential indicator is still d_chi.

Thus fixed repeated smoothing is not a contraction d -> Phi(d)<d. It may attenuate a residue but cannot remove its pole. This conclusion does not address a time-dependent family of kernels: such a method would require new uniform estimates, control of vanishing residues and tails, and a source-return proof. A known narrower zero strip can improve an upper bound for d, but reflection or this fixed convolution operation cannot force d to vanish.

## 9. The remaining prime-pair estimate

Set

$$a_p=\chi(p)\log p/\sqrt p,\qquad
m_\chi(t)=\delta_\chi c e^{t/2}-\kappa_\chi/2,$$

and define

$$K_T(x,y)=\int_3^T k(x-t)k(y-t)dt,$$
$$M_{\chi,T}(x)=\int_3^T k(x-t)\overline{m_\chi(t)}dt.$$

Expanding the finite sum P_chi(t) gives the exact arithmetic identity

$$V_\chi(T)=\sum_{p,r}a_p\overline{a_r}K_T(\log p,\log r)
-2\Re\sum_p a_p M_{\chi,T}(\log p)
+\int_3^T|m_\chi(t)|^2dt.\tag{14}$$

Only primes <= exp(T+2) occur. Also K_T(x,y)=0 if |x-y|>4, and K_T(x,x)<=||k||_2^2. The diagonal therefore satisfies

$$0\le\Delta_\chi(T):=\sum_p|a_p|^2K_T(\log p,\log p)
\le\|k\|_2^2\sum_{p\le e^{T+2}}\frac{(\log p)^2}{p}
=O_k((T+2)^2).\tag{15}$$

For completeness the last estimate needs only Chebyshev's theta(x)=O(x): partial summation with (log x)/x gives a boundary O(log X) and an integral O((log X)^2). It uses no zero-location hypothesis.

Let C_chi(T) be the off-diagonal term of (14), together with its two centering terms. Then V=Delta+C, and (13) is equivalent to

$$\forall\chi\text{ primitive}\ \forall\varepsilon>0\quad
|C_\chi(T)|=O_{\chi,\varepsilon}(e^{2\varepsilon T}).\tag{16}$$

The equivalence follows from (15), V>=0, and |C|<=V+Delta. For nonreal chi the centering terms vanish; for real nonprincipal chi the half-unit correction remains; for zeta the exponential main term must cancel jointly with the prime correlations.

**No estimate (16) is proved here.** Bounding the prime sum termwise yields only O_k((t+2) exp(t/2)) and hence an energy bound of exponential order exp(T), not (13). Orthogonality after averaging characters does not give the required estimate for each fixed character. Finite prime-pair computations do not cover unbounded T.

The advance is therefore precise: one fixed admissible probe suffices; the square correction and all higher powers are accounted for; the diagonal is polynomial; and the remaining signed, centered prime-pair term is isolated with its exact quantifiers. It remains an arithmetic cancellation problem, not a positivity property of a newly constructed Gram matrix.

## 10. Hostile checks and evidence boundaries

- An off-line zero cannot be hidden in a zero of the chosen transform; Proposition 1 proves this. Imaginary transform zeros are allowed and explicitly prevent claiming full critical-divisor reconstruction.
- A multiple L-zero contributes a nonzero multiple of the same residue. Distinct zero locations, even with identical ordinates, remain distinct poles.
- Character phases are never replaced by absolute values in an identity. Absolute values occur only in majorants and the separately defined mean-square energy.
- Both completed-zeta pole orientations occur in (1); their treatment in (8) is algebraic and their remaining exponential tail is bounded explicitly.
- The square limit is character dependent, uses only fixed-modulus PNT, and does not claim conductor uniformity.
- The higher-power bound is by comparison with all integers, so it does not presuppose prime cancellation.
- Laplace holomorphy is derived from the claimed growth hypothesis and is then contradicted by an actual nonzero residue; it is not assumed at the zero.
- No self-adjoint approximation, finite certification, source publication, or bounded defect is promoted to an unconditional arithmetic sign or growth theorem.

No actual off-critical arithmetic zero is asserted. No model of synthetic zeros is substituted for the actual Dirichlet source. No Lean import, dependency pin, canonical target, or pre-existing source is changed by this note.

## References and individual correspondence

[1] Juan Arias de Reyna, *An infinitely differentiable function with compact support: Definition and properties*, arXiv:1702.05442 (2017), English translation of the 1982 paper. Theorem 1 and equations (1)--(4) supply the classical dyadic bump; the probabilistic interpretation appears in section 3. Proposition 1 above restates the construction in the bilateral convention and spells out off-axis nonvanishing. https://arxiv.org/abs/1702.05442

[2] Andres Chirre, Valdir Jose Pereira Junior, David de Laat, *Primes in arithmetic progressions and semidefinite programming*, arXiv:2005.02393v3 (10 January 2021), section 2.1, equation (2.1). Input for (1) at primitive nonprincipal characters, after the specified transform change. Their GRH-dependent prime-gap conclusions are not used. https://arxiv.org/abs/2005.02393v3

[3] Michael A. Bennett, Greg Martin, Kevin O'Bryant, Andrew Rechnitzer, *Counting Zeros of Dirichlet L-Functions*, arXiv:2005.02989v1 (2020), Math. Comp. 90 (2021), 1455--1482. The unconditional counting bounds supply normal convergence and summability for q>1; the q=1 input is the classical Riemann-von Mangoldt formula. No numerical zero table is used. https://arxiv.org/abs/2005.02989

[4] The same authors, *Explicit bounds for primes in arithmetic progressions*, arXiv:1802.00085v3 (27 November 2018), Illinois J. Math. 62 (2018), 427--532. Classical fixed-modulus PNT consequences, not a new uniform or RH-strength error estimate, are used in (4). https://arxiv.org/abs/1802.00085v3

[5] Masatoshi Suzuki, *Weil's quadratic form via the screw function*, supplied arXiv:2606.09096v3, version of 24 September 2026, section 1.1. Input for the exact pole-inclusive zeta convention. Its positivity criterion and conditional Hilbert-space interpretations are not assumed as hypotheses here. https://arxiv.org/abs/2606.09096v3

[6] Payam Danesh, *A quantitative two-interval criterion for the Riemann hypothesis*, arXiv:2611.10726v1 (7 November 2026). Related prior-art comparator for translated Weil cross terms, off-line exponential growth, and the one-sided Laplace-pole obstruction. The fixed dyadic choice and prime-square calculation above are presented as worked consequences, not a claimed independent proof of RH or a claim of originality. https://arxiv.org/abs/2611.10726v1

Source publication records and any later source-bound verification belong in issue 1801. This document supplies no formal evidence for Propositions 1--4 and no verification result for any existing Lean dependency. The remaining mathematical consumer is inequality (16), with all its character, accuracy, and unbounded-scale quantifiers retained.
