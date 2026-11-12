# Fixed-bump arithmetic interactions and the negative depth of the Weil form

Local attribution: grwtsk contributors. Edition 1, 2026-11-12.

Primary mathematical classification: MSC2020 11M26. Consumer: the source-exact Weil negative-index route to finiteness of exceptional zeta zeros (arithmetic realization / Weil reconstruction / conjecture-level return, layers 05–07). This is maintained mathematical exposition, not an execution receipt or a new registry.

## Status and precise scope

The statements WFDG-1 through WFDG-5 below have written analytical proofs. They concern the analytically continued Riemann zeta function, not a model divisor. No finite bound on its off-line zeros, RH, or primitive Dirichlet GRH is proved. In particular, a bound on the *depth* of negative values is not a bound on the *number* of negative directions.

Formalization/declaration map: no Lean declaration for these statements is claimed in this edition. Lean elaboration, fresh kernel replay, transitive axiom audit, certified computation, and independent analytical review are NOT_RUN. Originality is UNASSESSED. Source publication does not promote any of these statuses. The remaining formal and arithmetic obligations are stated at the end.

Inspected canonical source: `grwtsk/math/main` at `05c3158365036f6eaa025d78cf2586dbbfb81f20`, root tree `49c727c41d7910d94a4a7c02c6574a239670c42c`. The unchanged source pins are Lean `leanprover/lean4:v4.34.1` and mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`. Root and scoped policy lookups and the publication policy were inspected; no local checkout or formal execution is claimed. Coordination: [math issue 1801](https://github.com/grwtsk/math/issues/1801), scope comment 6831071048.

The existing [WeilGammaWeightedQuadrature.lean](WeilGammaWeightedQuadrature.lean) provides a separate source candidate for exact physical gamma-cell enclosures. It explicitly does not prove all-test sign or universal certificate existence. This argument does not assume those missing results or treat an unchecked Lean source as a verified analytic input.

## 1. Original arithmetic form and conventions

All integrals are Lebesgue integrals. For `f` in `C_c^infinity(R; C)`, put

$$\widetilde f(x)=\overline{f(-x)},\qquad
F_f(s)=\int_{\mathbb R}f(x)e^{(s-1/2)x}\,dx,\qquad
Q(f,g)=W(f*\widetilde g),\quad Q(f)=Q(f,f).$$

Here W is the full zeta Weil distribution in Suzuki [S], page 1:

$$\begin{aligned}
W(k)={}&\int_{\mathbb R}k(x)(e^{x/2}+e^{-x/2})\,dx
-\sum_{n\ge2}\frac{\Lambda(n)}{\sqrt n}\{k(\log n)+k(-\log n)\}\\
&-(\log(4\pi)+\gamma)k(0)
-\int_0^\infty\{k(u)+k(-u)-2e^{-u/2}k(0)\}
\frac{e^{-u/2}}{1-e^{-2u}}\,du .
\end{aligned}\tag{1}$$

The prime sum includes every prime power; it is finite for a fixed compactly supported k. The integrand at zero is regularized by the displayed subtraction. Neither pole orientation is omitted.

Let Z be the set of distinct nontrivial zeta zeros and m_rho their positive integer multiplicities. Write

$$z_\rho=\rho-\tfrac12=\delta_\rho+i\gamma_\rho,\qquad
\tau\rho=1-\overline\rho,\qquad
\Theta=\sup_{\rho\in Z}|\delta_\rho|\in[0,\tfrac12].$$

The usual functional equation and conjugation preserve the divisor, including multiplicities. The explicit formula gives

$$W(k)=\sum_{\rho\in Z}m_\rho\int_{\mathbb R}k(x)e^{z_\rho x}\,dx,\qquad
Q(f)=\sum_{\rho\in Z}m_\rho F_f(\rho)\overline{F_f(\tau\rho)}.\tag{2}$$

Smooth compact support gives rapid vertical transform decay. The standard zero count `N(T)=O(T log(T+2))` therefore justifies absolute convergence of these smoothed zero sums and implies

$$S_0:=\sum_{\rho\in Z}\frac{m_\rho}{1+\gamma_\rho^2}<\infty.\tag{3}$$

These are classical inputs, not consequences of RH. In particular, the complex zero locations in (2) are not replaced by their real ordinates or by absolute squares. The references [B], [C], and [S] give the relevant explicit-formula and zero-counting context.

## 2. WFDG-1: one fixed smooth bump misses no off-line zero

For j >= 1 set `a_j=2^(-j-1)`, and let nu_j be the uniform probability measure on `[-a_j,a_j]`. Let phi be the probability density of the convergent independent sum with these laws. This is a scaled classical infinite-convolution construction; it is not a new bump function (see [A], Theorem 1 and equations (4), (9)).

Its properties are

$$\phi\in C_c^\infty(\mathbb R;\mathbb R),\quad
\phi\ge0,\quad \phi(x)=\phi(-x),\quad
\int\phi=1,\quad \operatorname{supp}\phi\subset[-\tfrac12,\tfrac12],$$

and its bilateral Laplace transform is

$$\Phi(z):=\int\phi(x)e^{zx}\,dx
=\prod_{j=1}^\infty\frac{\sinh(a_jz)}{a_jz},\tag{4}$$

where each factor takes value 1 at zero. Crucially,

$$\Re z\ne0\quad\Longrightarrow\quad\Phi(z)\ne0.\tag{5}$$

**Proof.** The random sum is absolutely bounded by `sum a_j=1/2`, so its law has the claimed compact support and is a symmetric positive probability measure. Its characteristic function is the product `prod sinc(a_j t)`. For every N, its absolute value is bounded by `prod_(j=1)^N min(1,1/(a_j |t|))`; hence it decays faster than every inverse power. Fourier inversion, with every power of t integrable against that bound, gives a smooth density. Nonnegativity, symmetry, mass and support follow from the original probability law. Bounded support identifies its entire Laplace transform with (4), first for finite products and then by dominated convergence of the random sums.

On every compact complex set the j-th factor is `1+O(a_j^2 |z|^2)` and `sum a_j^2<infinity`. Thus the product converges normally, and it is nonzero wherever no factor is zero. All zeros of each factor are nonzero purely imaginary points. This proves (5). There may be transform zeros on the critical line; they will remove only positive coordinates, never an off-line pair. No reciprocal bound on Phi at large heights is assumed. QED.

Set

$$h=\phi*\widetilde\phi=\phi*\phi,\quad
K(t)=W(h(\,\cdot-t)),\quad q=K(0)=Q(\phi),\quad
c_\phi=\|\phi\|_2^2+\|\phi'\|_2^2>0.$$

Then h is real, even, nonnegative, smooth, supported in [-1,1], and has integral one. K is real and even. From (2),

$$K(t)=\sum_{\rho\in Z}m_\rho\Phi(z_\rho)^2e^{z_\rho t}.\tag{6}$$

The coefficient is the complex square, NOT `|Phi(z_rho)|^2`. On the imaginary axis these agree, because phi is real and even; no such replacement is made off that axis. The coefficients in (6) are absolutely summable, with every fixed polynomial weight in |gamma_rho|.

## 3. WFDG-2: exact separated-bump prime identity

Let

$$M=\int_{-1}^1h(v)e^{v/2}\,dv=\Phi(1/2)^2,$$

$$D(t)=\sum_{n\ge2}\frac{\Lambda(n)}{\sqrt n}h(\log n-t)-Me^{t/2},\qquad t>1,$$

and

$$G(t)=\int_{-1}^1h(v)\frac{e^{-5(t+v)/2}}{1-e^{-2(t+v)}}\,dv.$$

Then the exact arithmetic identity and remainder estimate are

$$\boxed{K(t)=-D(t)-G(t)},\tag{7}$$

$$0\le G(t)\le
\frac{e^{-5(t-1)/2}}{1-e^{-2(t-1)}}.\tag{8}$$

Only prime powers with `exp(t-1) <= n <= exp(t+1)` occur in D(t); endpoint weights vanish. This is a relative multiplicative window, not a claim about unusually short additive intervals.

**Proof.** For t>1, the support of `h(.-t)` lies strictly on the positive half-line. Thus its value at zero and the negative-orientation prime and gamma evaluations vanish by support, not by a change of Weil form. Its two pole integrals are `M exp(t/2)` and `M exp(-t/2)`, using evenness of h. Split the gamma kernel exactly:

$$\frac{e^{-u/2}}{1-e^{-2u}}
=e^{-u/2}+\frac{e^{-5u/2}}{1-e^{-2u}}.\tag{9}$$

The leading gamma integral is `M exp(-t/2)` and cancels precisely the second pole integral. The first pole integral cancels the explicitly subtracted prime main term in D. Formula (1) now yields (7). The remaining kernel is positive and decreasing on the positive half-line; with `integral h=1` this gives (8). No PNT estimate, zero-free strip, absolute-value replacement of the prime discrepancy, or positivity hypothesis is used. QED.

For comparison with the preceding prime-remainder decomposition, put `R(x)=psi(x)-x+1`, so R(1)=0. Stieltjes integration by parts, with all endpoint terms zero, gives the alternative exact formula

$$D(t)=-\int_{-1}^1 e^{-(t+v)/2}R(e^{t+v})
\left(h'(v)-\tfrac12h(v)\right)\,dv.\tag{10}$$

This preserves the signed arithmetic cancellation. Applying absolute values to R before integration is not part of the argument.

## 4. WFDG-3: growth exactly recovers horizontal zero displacement

For A>0 let

$$\mathcal D_A=\{f\in C_c^\infty(\mathbb R;\mathbb C):
\operatorname{supp}f\subset[-A,A]\},$$

$$d_1(A)=\max\left(0,\sup_{0\ne f\in\mathcal D_A}
\frac{-Q(f)}{\|f\|_2^2+\|f'\|_2^2}\right).$$

These definitions use the original form and an explicitly specified Sobolev normalization. They do not assert that this is the bottom eigenvalue of an L2 realization.

The following equalities are unconditional:

$$\boxed{
\limsup_{t\to\infty}\frac{\log(1+|K(t)|)}t
=\limsup_{t\to\infty}\frac{\log(1+|D(t)|)}t
=\limsup_{A\to\infty}\frac{\log(1+d_1(A))}{2A}
=\Theta.}\tag{11}$$

**Upper bounds.** Absolute summability in (6) gives `|K(t)| <= C_phi exp(Theta t)` for t>=0. Equation (8) transfers this rate to D.

For any f in D_A, Cauchy-Schwarz and integration by parts give

$$|F_f(\rho)|^2\le 2Ae^{2\Theta A}\|f\|_2^2,\qquad
|z_\rho|^2|F_f(\rho)|^2\le2Ae^{2\Theta A}\|f'\|_2^2.$$

The boundary term vanishes because f is smooth on the whole line and compactly supported. Adding and using (3), together with the arithmetic-geometric mean inequality on each reflected pair, yields

$$|Q(f)|\le\sum_\rho m_\rho|F_f(\rho)|^2
\le 2AS_0e^{2\Theta A}(\|f\|_2^2+\|f'\|_2^2).\tag{12}$$

Consequently d_1(A) is finite and is bounded by `2 A S_0 exp(2 Theta A)`. All constants are independent of A and f.

**No-cancellation lower bound.** For `Re w>1/2`, (6) and absolute convergence give

$$L(w):=\int_0^\infty K(t)e^{-wt}\,dt
=\sum_{\rho\in Z}\frac{m_\rho\Phi(z_\rho)^2}{w-z_\rho}.\tag{13}$$

The series defines a meromorphic function on the plane: it converges normally on compact sets away from the discrete poles, since its coefficients are absolutely summable. At every off-line zero its residue is nonzero by (5). Distinct zero locations are grouped once with multiplicity, so no other summand can cancel that residue.

Suppose the first limsup in (11) were below Theta. Choose `c` strictly between it and Theta. It may be chosen positive. Then `K(t)=O(exp(c t))`, and its one-sided Laplace transform is holomorphic throughout `Re w>c`. But divisor symmetry and the definition of Theta give a zero with `Re z_rho>c`. Formula (13), initially on the rightmost half-plane and then by the identity theorem on the punctured connected half-plane, would make a function with a nonzero residue holomorphic at that point. This is impossible. Hence the first limsup is Theta. The proof does not require a rightmost zero, isolation of one dominant exponential, an ordinate separation bound, or a noncancellation assumption about oscillatory sums. If Theta=0 the upper bound and nonnegativity of log(1+|K|) already give equality. Since G decays exponentially, the D limsup is identical.

**Two-bump return to negative depth.** Put `T_b phi(x)=phi(x-b)`. For t>1 the two bumps `T_(t/2) phi` and `T_(-t/2) phi` have disjoint supports. Their Q Gram matrix is

$$\begin{pmatrix}q&K(t)\\K(t)&q\end{pmatrix},$$

and their H1 Gram matrix is `c_phi I`. The two tests with coefficients `(1,1)` and `(1,-1)` therefore give

$$d_1((t+1)/2)\ge
\frac{(|K(t)|-q)_+}{c_\phi}
=\frac{(|D(t)+G(t)|-q)_+}{c_\phi}.\tag{14}$$

Here `x_+=max(x,0)`. In particular `|K(t)| <= |q|+c_phi d_1((t+1)/2)`. Combining this with the first equality and (12) proves the third equality in (11). QED.

An equivalent practical reading is: for every `0<c<Theta`, both the exact smoothed discrepancy and the actual negative depth exceed the corresponding exponential rate along arbitrarily late sequences. This is a limsup statement; no effective first detection height or eventual pointwise lower bound is supplied.

## 5. WFDG-4: the fixed generator preserves the whole negative index

Let V_phi be the complex span of all real translates of phi. Let `ind_-(Q)` be the supremum of dimensions of subspaces on which Q is strictly negative away from zero. Then

$$\boxed{\operatorname{ind}_-(Q|V_\phi)
=\operatorname{ind}_-(Q)
=\#\{\text{distinct off-line pairs under }\tau\}.}\tag{15}$$

The equality includes the possibility of infinity. Counts are by distinct pairs, not by multiplicity. Multiplicities remain positive weights in Q.

**Proof.** Let `Z_*= {rho : Phi(z_rho) != 0}` and let `Sf=(sqrt(m_rho) F_f(rho))` on this set. It is invariant under tau, because `Phi(-conj z)=conj Phi(z)`, and it contains every off-line zero by (5). If an l2 vector a annihilates samples of every translate of phi, then

$$\sum_{\rho\in Z_*}\overline{a_\rho}\sqrt{m_\rho}
\Phi(z_\rho)e^{z_\rho t}=0\quad(t\in\mathbb R).$$

Its coefficients are absolutely summable by Cauchy-Schwarz. Taking a one-sided Laplace transform and extracting each meromorphic residue, exactly as in (13), shows `a_rho=0` for every rho in Z_*. Thus S(V_phi) is dense in l2(Z_*).

On this l2 space Q is the pullback of the bounded self-adjoint involution J permuting rho with tau rho. Each fixed point contributes a positive coordinate; each distinct nonfixed pair contributes one negative and one positive coordinate. Density simultaneously approximates any finite orthonormal set in the negative coordinate space; sufficiently close approximations have a negative-definite Gram matrix. Conversely, projection onto the negative coordinate space is injective on any negative-definite subspace. This proves the index of the restriction.

For arbitrary smooth compactly supported f the full sample sequence lies in l2(Z), and the same projection bound applies. Since V_phi is a subspace of the full test space, both inequalities give (15). Only positive fixed coordinates can be missing from Z_*. QED.

This also gives a completely specified finite-source return. For every rational `Delta>0` and integer `n>=1`, define the real Hermitian Toeplitz matrix

$$T_{n,\Delta}=(K((j-k)\Delta))_{0\le j,k<n}.$$

Then

$$\boxed{\operatorname{ind}_-(Q)
=\sup_{\Delta\in\mathbb Q_{>0},\ n\ge1} n_-(T_{n,\Delta}).}\tag{16}$$

Indeed, its entries are exactly Q evaluated on the consecutive translates `phi, T_Delta phi, ..., T_((n-1)Delta) phi`. A negative subspace of any finite real-translate Gram matrix survives a small perturbation of the translation parameters because K is continuous. Approximate those finitely many parameters by rationals; subtract the smallest parameter, using common-translation invariance; and choose a common rational grid. The resulting finite matrix is a principal submatrix of some T_(n,Delta). Negative index cannot increase upon restriction. The converse inclusion is immediate. This proves (16), including the infinite-index case.

For separations >1, (7) is the direct arithmetic evaluation of each entry. Separations <=1 and the diagonal are evaluated by the full formula (1), not by (7). Both all grid sizes and all rational spacings are retained. A single fixed spacing is NOT asserted to suffice: complex exponentials can alias at that spacing.

## 6. WFDG-5: consequences and the boundary of the finiteness strategy

The following are equivalent for the actual zeta function:

1. RH.
2. `d_1(A)=O_epsilon(exp(2 epsilon A))` as A tends to infinity, for every epsilon>0.
3. `D(t)=O_epsilon(exp(epsilon t))` as t tends to infinity, for every epsilon>0.
4. Both `Q(T_(t/2)phi + T_(-t/2)phi)` and `Q(T_(t/2)phi - T_(-t/2)phi)` are nonnegative for every sufficiently large t.

The first three equivalences follow from (11) and divisor symmetry. Under RH, (6) is a positive weighted real-frequency sum with total mass q, so `|K(t)|<=q`; this proves (4). Conversely (4) gives `|K(t)|<=q` eventually, so its growth rate is zero and (11) gives RH. In particular, a global or polynomial H1 lower bound for Q would already prove RH; it is not merely a finiteness theorem.

The desired weaker conclusion is instead

$$\exists r\in\mathbb N\ \forall\Delta\in\mathbb Q_{>0}\ \forall n\ge1:
 n_-(T_{n,\Delta})\le r.\tag{17}$$

By (15)–(16), (17) is exactly finiteness of distinct off-line zeta zeros (each multiplicity is finite). Nothing in this note establishes (17).

A proposed finite-rank lower bound `Q(f)>=-sum_(j=1)^r |ell_j(f)|^2` with support-local estimates `|ell_j(f)|<=C_j(A)||f||_(H1)` that are subexponential in A would imply RH by (11). Finitely many exceptions, if present, can require exponentially growing correction norms. The distinction is mathematical, not a choice of notation.

### Hostile checks and limitations

A synthetic divisor consisting of one off-line quartet has exactly two negative pair directions, while the same two-bump/residue calculation gives positive exponential negative-depth rate equal to that quartet's horizontal displacement. This is a counterexample to inferring infinitely many exceptions from exponential depth, not a counterexample to RH and not evidence that actual zeta has an exceptional quartet.

The classical dyadic bump may annihilate critical-line coordinates. Section 5 explicitly allows this and proves that no negative coordinate is lost. No unstable division by small transform values is performed.

There is no passage from finite matrix positivity to infinite coverage without the quantifiers in (17). Formula (8) bounds the complete gamma remainder, while (6) and (13) use absolutely convergent infinite zero sums, not a finite zero catalogue. The limsup in (11) must not be strengthened to a limit, a monotone rate, or an effective exceptional height without another proof.

The argument is for conductor-one zeta. A primitive-character extension must rederive the character-weighted arithmetic expression, conductor/parity terms, and appropriate dual-character symmetries. It is not obtained by silently reusing the real-even zeta kernel.

## 7. Individual provenance and remaining obligations

**WFDG-1:** direct scaled use of the classical construction in [A], Theorem 1, equations (4) and (9), with the probability/infinite-product proof included above. The normalization here is phi(x)=2 u(2x), where u is the mass-one function supported on [-1,1]; hence a_j=2^(-j-1). Consumer: nonvanishing residues in WFDG-3 and preservation of all negative coordinates in WFDG-4. No novelty claimed for the bump.

**WFDG-2:** local consequence of [S], page 1's full arithmetic Weil distribution. Both pole cancellations are proved explicitly in (7)–(10), without assuming a prime-error estimate. Consumer: a direct finite prime-power expression for the actual interaction, with a proved source return.

**WFDG-3:** written synthesis of the original explicit formula, classical zero counting, the WFDG-1 nonvanishing transform, and a one-sided Laplace-transform residue argument. The H1 normalization and limsup are part of the statement. This is not an adaptation of an already verified Lean theorem. Consumer: reject lower-bound strategies that silently demand RH-strength control, and quantify the growth of actual arithmetic discrepancy.

**WFDG-4:** the finite-pair inertia convention agrees with [B], Theorem 8, printed page 213, but the complete proof here concerns the global cyclic translate space and then all rational grids. [B]'s fixed-window limiting arguments are not used to assume the missing uniform index bound. Consumer: the exact finite-exception target (17).

**WFDG-5:** local consequences of the preceding statements. The equivalence is not a proof of any of its unproved arithmetic premises. The finite-quartet hostile check is shared with the same signed-pair mechanism, not an independent proof of the actual-zeta claim.

Dated prior-art comparison: 2026-11-12. Sources [A]–[S] and the relevant current repository surface were inspected. Public searches also located other contemporary discussions of localized spectra and finite negative tests, but a complete originality audit has not been performed; no absence of prior work is claimed. Mathematical originality remains UNASSESSED.

Open arithmetic obligation WFDG-O1: prove (17) for the exact entries, uniformly in both rational spacing and matrix size. Open arithmetic obligation WFDG-O2: derive a source-exact finite-rank lower-sign estimate without assuming finiteness, RH, or a spectral identification that already requires them. These are not discharged by (11).

Formal obligations: connect (1) to the canonical actual zeta explicit-formula declarations; construct the classical bump and justify normal convergence in Lean; formalize the Cauchy-series continuation/residue argument; prove the H1 majorant and cyclic-density/inertia return; audit transitive axioms and exact statement correspondence. No replacement zeta target, research axiom, `sorry`, or `admit` is introduced because no Lean source is added in this edition. Every formal check remains NOT_RUN. Independent review remains NOT_RUN.

The required canonical execution skill path `workflows/research/orchestration/skills/noe-proof-automation/SKILL.md` was inaccessible (404) at `grwtsk/noeaaeue/main` revision `1d5f33f44c6b4e64d420b7279d09324d2b8e7268`; dependent execution was not invoked. This source-only publication does not imply execution authority or execution evidence.

## References

[A] Juan Arias de Reyna, *An infinitely differentiable function with compact support: Definition and properties*, arXiv:1702.05442v1 (17 February 2017), English translation of the 1982 paper. Theorem 1 and equations (4), (9), pages 2–3. https://arxiv.org/abs/1702.05442v1

[B] Enrico Bombieri, *Remarks on Weil's quadratic functional in the theory of prime numbers, I*, Rendiconti Lincei, series 9, 11 (2000), 183–233. Section 2: full explicit formula; Section 3: positivity criterion; Theorem 8, printed page 213: distinct-pair inertia of finite matrices; Sections 10–11: conditional limiting arguments. https://www.bdim.eu/item?id=RLIN_2000_9_11_3_183_0

[C] Alain Connes, *Trace formula in noncommutative Geometry and the zeros of the Riemann zeta function*, arXiv:math/9811068v1 (10 November 1998). Introduction, equations (1)–(3), page 4: zero-counting main term and logarithmic oscillatory remainder. The global trace formula is not assumed here. https://arxiv.org/abs/math/9811068v1

[S] Masatoshi Suzuki, *Weil's quadratic form via the screw function*, arXiv:2606.09096v3, supplied edition dated 24 September 2026. Page 1: full additive Weil distribution and test domain; page 2: localized lower-bounded form versus the all-window problem. https://arxiv.org/abs/2606.09096v3
