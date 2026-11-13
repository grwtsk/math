# A conductor-uniform fixed-window negative-index bound for the original primitive Weil forms

Local mathematical attribution: grwtsk contributors. Edition 1, 2026-11-12.
MSC2020: 11M06, 11M26, 11M41, 42A38.

**Evidence:** COMPLETE_WRITTEN_ANALYTICAL_ARGUMENT; LEAN_ELABORATION_NOT_RUN; FRESH_KERNEL_REPLAY_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN; INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN; NOVELTY_UNASSESSED. These are unconditional quantitative FIXED-WINDOW statements about the actual primitive Dirichlet source, with conductor-one zeta treated explicitly. They do NOT prove RH, primitive GRH, a conductor-independent ALL-WINDOW sign, or global finite negative index. This source is a consumer of existing classical and canonical Fourier/high-frequency estimates rather than a claim of a novel sign principle.

**Canonical declarations and source dependency:** Reuse WeilFullFrequencyTail.md and WeilFullFrequencyTail.lean (the original signed full source, high-frequency gamma estimate), WeilSupportedFourierBessel.md and WeilSupportedFourierBessel.lean (actual supported complex L2 pointwise Bessel inequality), WeilSignedDeficitNegativeIndex.md and WeilSignedDeficitNegativeIndex.lean (existing fixed-character fixed-window negative-index theorem), WeilCorrelationFourier.lean / WeilSmoothWindowPoleReturn.lean (true signed two-orientation zeta pole), and the original primitive Dirichlet character/conductor/parity definitions in those sources. None of their formalization statuses is promoted: exact full-source Fourier/Plancherel return and the combined negative-index theorem are WRITTEN and not kernel-replayed Lean declarations. This note derives one quantitative improvement: the fixed-window index budget can be chosen UNIFORMLY over ALL primitive conductors, including q=1, and decreases explicitly with q. The main analytical prior art is Bombieri (2000), Section 12, and the current canonical WSDI source; no novelty asserted.

**Inspected repository and pins:** grwtsk/math/main at 6df8ecc0e16f123c476c1418fb611e73ff13e86c (with subsequent concurrent changes preserved by create-only publication), root AGENTS.md, CONTRIBUTING.md, scoped-policy lookup. Lean leanprover/lean4:v4.34.1, mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. Coordination issue #1801, scope comment 6843604719. No Lean code, imports, axioms, sorry/admit, toolchain, CI or publication protections changed.

## 1. Actual Weil source and the uniform arithmetic envelope

Let A>0. For any smooth complex test f supported in (-A,A), write
\[
\|f\|_2^2=\int_{\mathbb R}|f(x)|^2dx,\qquad
F_f(\xi)=\int_{\mathbb R}f(x)e^{-i\xi x}dx.
\tag{1}
\]
The original Weil quadratic form Q_chi(f) uses the complete primitive Dirichlet explicit formula, including ALL von Mangoldt prime powers, the actual complex phases of chi, the conductor q, the parity gamma factor and (for conductor one) BOTH pole orientations. Nontrivial L-zero locations and their reflected complex pairings are not projected to ordinates.

Let chi be primitive of conductor q>=1, with gamma parity a in {0,1}, b_a=a+1/2 in {1/2,3/2}, and sigma_a=b_a/2=1/4+a/2. Write psi=Gamma'/Gamma for the analytic digamma function. Define the EXACT ORIGINAL finite-prime-power inventory and its conservative (absolute) upper envelope
\[
I_A=\{n\ge2:\log n<2A\},\qquad
P_A=2\sum_{n\in I_A}\frac{\Lambda(n)}{\sqrt n}.
\tag{2}
\]
Terms not equal to prime powers have Lambda(n)=0, but EVERY active actual prime power is included. The strict endpoint is source-exact: a smooth test supported in (-A,A) has autocorrelation zero at separation 2A.

Put
\[
\boxed{
c_*=\log\pi-\psi(1/4)
=\gamma_E+\frac{\pi}{2}+3\log2+\log\pi>0,
\qquad C_A=c_*+P_A.
}
\tag{3}
\]
The digamma identity follows from the classical reflection and duplication formulas; for real positive arguments psi is increasing, so psi(sigma_a)>=psi(1/4).

For primitive q>1, the literal physical Weil source from FullFrequencyTail is
\[
Q_\chi(f)=
\left[\log(q/\pi)+\psi(\sigma_a)\right]\|f\|_2^2
+\Gamma_a(f)-S_{\chi,A}(f),
\tag{4}
\]
\[
\Gamma_a(f)=\int_0^\infty
\frac{e^{-b_ar}}{1-e^{-2r}}
\|f(\cdot+r)-f\|_2^2\,dr\ge0,
\quad
S_{\chi,A}(f)=2\sum_{n\in I_A}
\frac{\Lambda(n)}{\sqrt n}
\Re\left(\overline{\chi(n)}\,C_f(\log n)\right),
\tag{5}
\]
where \(C_f(r)=\int\overline{f(x)}f(x+r)dx\). Complex chi(n) phases are RETAINED in the exact source; at primes dividing q they vanish, and \(|\chi(n)|\le1\). By Cauchy--Schwarz on actual translation autocorrelations,
\[
\boxed{|S_{\chi,A}(f)|\le P_A\|f\|_2^2.}
\tag{6}
\]

For q=1 (zeta), the SAME formula includes the separate, genuinely SIGNED two-orientation pole
\[
P_\zeta(f)=M_+(f)\overline{M_-(f)}
+M_-(f)\overline{M_+(f)},\quad
M_\pm(f)=\int_{\mathbb R}e^{\pm x/2}f(x)dx.
\tag{7}
\]
It is NOT \(|M_+|^2+|M_-|^2\). In fact,
\[
\boxed{P_\zeta(f)=\frac12|M_+(f)+M_-(f)|^2
-\frac12|M_+(f)-M_-(f)|^2.}
\tag{8}
\]
Consequently its negative index is at most ONE complex dimension and it is nonnegative on the original source hyperplane \(\ker(M_+-M_-)\). This exactly preserves BOTH zeta pole orientations rather than imposing an unjustified pole-neutral test restriction.

## 2. Exact Fourier multiplier and a stronger uniform high-frequency barrier

Let
\[
\Psi_a(\xi)=2\int_0^\infty
\frac{e^{-b_ar}}{1-e^{-2r}}(1-\cos(\xi r))dr.
\tag{9}
\]
This is finite, nonnegative and EVEN for all real xi; the numerator removes the origin singularity. The canonical Gamma/Fourier source gives for q>1
\[
Q_\chi(f)=\frac1{2\pi}\int_{\mathbb R}
m_{\chi,A}(\xi)|F_f(\xi)|^2d\xi,
\tag{10}
\]
\[
m_{\chi,A}(\xi)=
\log(q/\pi)+\psi(\sigma_a)+\Psi_a(\xi)
-2\sum_{n\in I_A}\frac{\Lambda(n)}{\sqrt n}
\Re\left(\overline{\chi(n)}e^{i\xi\log n}\right).
\tag{11}
\]
For q=1 the exact right side has the SIGNED pole (7) added. When chi is complex, m need not be even; it is nevertheless REAL and the Fourier integral yields the actual Hermitian form. This is not a totalized Euler series outside convergence.

**Elementary gamma lower bound (independent proof of the canonical supplier):**
\[
\boxed{\Psi_a(\xi)\ge\frac12\log(1+\xi^2/b_a^2).}
\tag{12}
\]
For the proof, expand \((1-e^{-2r})^{-1}=\sum_{j\ge0}e^{-2jr}\) under the nonnegative integral and use
\[
\Psi_a(\xi)=2\sum_{j\ge0}
\frac{\xi^2}{(b_a+2j)((b_a+2j)^2+\xi^2)}.
\]
The summand as a function of b_a+2j is nonnegative and decreasing, so its sum bounds half the integral of the same function over v>=b_a. That integral equals \((1/2)\log(1+\xi^2/b_a^2)\); multiplying by the outer factor 2 gives (12). The same result is the already-existing canonical OddMultiplierBounds.log_lower_le_periodicMultiplier. No RH/GRH assumption occurs.

Since q>=1, psi(sigma_a)>=psi(1/4), and |chi(n)|<=1, (11) implies the CONDUCTOR-SENSITIVE exact original-source lower bound
\[
\boxed{
m_{\chi,A}(\xi)
\ge\log q-C_A+\frac12\log(1+\xi^2/b_a^2)
\qquad(\forall\xi\in\mathbb R).
}
\tag{13}
\]

## WUCI-1. Every sufficiently large primitive conductor has zero negative index

**Theorem (unconditional, all actual smooth complex tests).**
For EVERY A>0, EVERY primitive q>1 and chi of that conductor,
\[
\boxed{
Q_\chi(f)\ge(\log q-C_A)\|f\|_2^2,
\qquad f\in C_c^\infty((-A,A);\mathbb C).
}
\tag{14}
\]
Consequently,
\[
\boxed{
q\ge e^{C_A}\Rightarrow\operatorname{ind}_{-}(Q_{\chi,A})=0,
\quad
q>e^{C_A}\Rightarrow
Q_\chi(f)>0\text{ for every nonzero }f.
}
\tag{15}
\]

**Proof.** Discard only the genuine NONNEGATIVE gamma energy in (4), estimate the complete signed finite prime-power term by (6), and use psi(sigma_a)>=psi(1/4). This gives (14). No individual prime phase is changed in the exact Q definition; the absolute envelope is applied solely for a conservative lower bound. Both parity possibilities are included. The conclusion follows. The conductor-one case is NOT obtained by this argument: its original pole term has one negative direction as (8) shows. QED.

The threshold is explicit but VERY crude; newer canonical Weil conductor-window estimates already give substantially better bounds in several ranges. This theorem is included because its threshold is the source of the next genuinely uniform INDEX quantifier.

## WUCI-2. Quantitative index decays with conductor below the positivity threshold

Let 1<q<e^{C_A} be a primitive conductor and define
\[
D_{A,q}=C_A-\log q>0,\qquad
T_{A,q}=\frac32 e^{D_{A,q}+1}
=\frac{3e^{C_A+1}}{2q}.
\tag{16}
\]
By (13), \(\Psi_a>=0\) and b_a<=3/2, the ACTUAL full-source Fourier multiplier satisfies
\[
\boxed{
m_{\chi,A}(\xi)\ge-D_{A,q}\quad\text{for every }\xi,
\qquad
m_{\chi,A}(\xi)\ge1\quad\text{if }|\xi|\ge T_{A,q}.
}
\tag{17}
\]
Indeed for nonzero xi, (12) gives \(\Psi_a(\xi)\ge\log(|\xi|/b_a)\); for |xi|>=T, this is at least D+1. Thus for the genuine low-frequency energy
\[
E_T(f)=\frac1{2\pi}\int_{-T}^{T}|F_f(\xi)|^2d\xi,\quad
\|f\|_2^2=\frac1{2\pi}\int_{\mathbb R}|F_f(\xi)|^2d\xi,
\]
Plancherel applied to (10),(17) gives
\[
\boxed{
Q_\chi(f)\ge\|f\|_2^2-(D_{A,q}+1)E_{T_{A,q}}(f).
}
\tag{18}
\]

**Theorem (uniformly valid for ALL primitive phases and ALL original compact tests).**
\[
\boxed{
\operatorname{ind}_{-}(Q_{\chi,A})
\le\left\lceil
\frac{3A\,e^{C_A+1}}{\pi q}
(1+C_A-\log q)
\right\rceil,
\qquad 1<q<e^{C_A}.
}
\tag{19}
\]

**Proof (finite-dimensional negative test space, no operator model).**
Let V be ANY N-dimensional strictly Q-negative subspace of the ORIGINAL smooth complex test space. Apply L2 Gram--Schmidt to obtain f_1,...,f_N, all smooth supported and L2-orthonormal, preserving V. Each satisfies Q_chi(f_j)<0, so (18) implies
\[
E_T(f_j)>\frac1{D_{A,q}+1}.
\]
For EACH REAL frequency xi, the true supported Fourier evaluation is
\(F_{f_j}(\xi)=\langle{\bf1}_{[-A,A]}e^{i\xi\cdot},f_j\rangle_{L^2}\).
That vector has squared norm 2A. The ordinary complex L2 Bessel inequality gives
\[
\sum_{j=1}^N|F_{f_j}(\xi)|^2\le2A.
\]
Integrate over xi in [-T,T], with the original angular 1/(2pi) factor:
\[
\sum_{j=1}^N E_T(f_j)\le\frac{2AT}{\pi}.
\]
It follows that \(N<\frac{2AT}{\pi}(D_{A,q}+1)\). Substitute (16), and use that N is an integer to deduce (19). This retains the original finite-source Fourier pairing; no restriction to a finite Fourier model or arbitrary spectral assumptions. QED.

The allowance on the right DECREASES as q grows toward e^{C_A}. It may be reduced further by keeping the FULL signed deficit \(d_{\chi,A,\eta}\) of the existing WSDI theorem instead of the conservative absolute prime-power envelope. Here the purpose is the explicit conductor quantifier rather than optimizing constants.

## WUCI-3. Conductor-one zeta: the signed pole contributes at most one direction

Set
\[
T_{A,1}=\frac32e^{C_A+1}.
\tag{20}
\]
The nonpole zeta Fourier symbol satisfies (17)--(18) with q=1 and D=C_A. Let V be an N-dimensional strictly negative subspace of the ORIGINAL zeta form. The single complex linear functional
\(\ell(f)=M_+(f)-M_-(f)\)
has kernel of codimension at most one inside V, so \(V_0=V\cap\ker\ell\) has dimension >=N-1. By (8), P_zeta(f)>=0 for every f in V_0; hence the nonpole original frequency integral is strictly negative for every nonzero f in V_0. Apply the exact same Fourier-Bessel counting argument to V_0 to conclude
\[
\boxed{
\operatorname{ind}_{-}(Q_{\zeta,A})
\le
1+\left\lceil
\frac{3Ae^{C_A+1}}{\pi}(1+C_A)
\right\rceil.
}
\tag{21}
\]
This is a bound on the TRUE pole-inclusive conductor-one quadratic form. Replacing (7) by positive moment squares would be FALSE and would erase the justified extra direction.

## WUCI-4. Uniform ALL-CONDUCTOR fixed-window index statement and its strict limitation

Combining (15),(19),(21), and using monotonicity of \(e^{D+1}(D+1)\) for D>=0,
\[
\boxed{
\begin{gathered}
\forall A>0,\quad
\sup_{\substack{q\ge1\\\chi\text{ primitive of conductor }q}}
\operatorname{ind}_{-}\left(Q_\chi
\big|_{C_c^\infty(-A,A;\mathbb C)}\right)
\\
\le
\boxed{1+\left\lceil\frac{3Ae^{C_A+1}}{\pi}(1+C_A)\right\rceil}
<\infty.
\end{gathered}}
\tag{22}
\]
This is a uniform bound ACROSS ALL CONDUCTORS at FIXED support width A, including conductor-one zeta. It is an unconditional arithmetic consequence of the canonical source: gamma/log(q) high-frequency coercivity and true supported Fourier Bessel trace. It does NOT assert a constant uniform in A; the right side grows very rapidly as A increases.

A related exact conductor statement is
\[
\boxed{
\forall A>0,\quad
\#\{q\ge1:\exists\chi\text{ primitive conductor }q
\text{ and }\operatorname{ind}_{-}(Q_{\chi,A})>0\}
<e^{C_A}.
}
\tag{23}
\]
This follows because all nonprincipal q>=e^{C_A} have nonnegative original form, while q=1 is separately allowed. The finite count does NOT imply that only finitely many character L-zeros are off the critical line: a fixed A cannot necessarily detect all hypothetical zeros of any given character.

## Prior art, falsification and unresolved arithmetic return

- **Existing stronger native index theorem:** grwtsk/math WeilSignedDeficitNegativeIndex.md, WSDI-A--E, already proves a sharper fixed-character/source index bound \(\mathrm{ind}_{-}\le (A/(\pi\eta))\int(\eta-m_{\chi,A})_+\) and adds at most one genuine signed zeta pole direction; this source does NOT duplicate or supersede that theorem. It adds explicit ALL-CONDUCTOR uniformity and the decreasing q bound (19), obtained by a conservative gamma/prime envelope. The unchanged native FullFrequencyTail and SupportedFourierBessel Lean SOURCE_PROOF_CANDIDATES supply modular consumers. Their formal proof status is NOT_RUN.
- **Classical prior art:** E. Bombieri, *Remarks on Weil's quadratic functional in the theory of prime numbers, I*, Rend. Lincei 11 (2000), pp. 183--233, §12 printed pp. 226--227, especially (12.3)--(12.9), uses logarithmic gamma Fourier growth and compact-support Fourier concentration for local positivity. The present conductor-uniform rank count is a source-local quantitative combination of those classical steps and WSDI; originality UNASSESSED, no novelty claimed.
- **Full primitive source prior art:** Guinand--Weil explicit formula specialized to primitive Dirichlet chi (e.g. *Fourier Optimization and Quadratic Forms*, Quarterly Journal of Mathematics 73 (2022), §5.4, and the canonical FullFrequencyTail source). The conductor/parity gamma factor and phases in (4)--(11) have actual arithmetic interpretations. Imprimitive characters are NOT covered here, and no GRH transfer is asserted.
- **Falsification 1 (pole):** The q=1 pole is an indefinite CROSS term with at most one negative square, not a sum of two positive norms. A uniform index bound that omits its extra allowance is not justified by the present comparison.
- **Falsification 2 (support):** Since \(P_A\) grows with A and \(T_A\) grows exponentially in P_A, (22) has NO uniform all-window content. One cannot take A->infinity and infer global finite index, finite off-line zeros or RH/GRH. In the WFDG global negative-index criterion, detecting distinct off-line zero pairs may require larger and larger support.
- **Falsification 3 (phase and normalization):** The original prime response retains \(\chi(n)\) with all complex phases and zeros at ramified n, and every active prime power; only the bound (6) takes absolute values. The Fourier 1/(2pi) and Bessel 2A factors are actual Lebesgue normalizations, not periodic or auxiliary proxy operators.
- **Falsification 4 (fixed q vs moving q):** The large-conductor fixed-A positivity (15) is not fixed-character positivity for ALL A; even if q is enormous, P_A eventually grows and the sufficient threshold fails as A increases. Likewise fixed-window uniform index (22) says nothing about all-height prime discrepancy or all-support zero localization.
- **Falsification 5 (formal status):** No Lean code is authored and no builds, elaboration, kernel or axiom audits were run; existing WSDI/Fourier/Bessel source candidates remain hypotheses at their documented verification status. Written mathematical argument is complete subject to the classical Guinand--Weil source formula and Fourier bounds, but independent analytical review is NOT_RUN.

**First unresolved substantive premise:** Prove positivity or uniformly bounded negative index of the ORIGINAL pole-inclusive zeta and primitive Dirichlet Weil forms with a bound independent of BOTH character and support width A, using arithmetic cancellation in the exact signed prime-power sum. The present conductor uniformity settles only the q quantifier at each FIXED A; it does not settle the A quantifier or the GRH target. No Noe proof automation, scheduler, browser-chat orchestration or cross-chat messaging was invoked; the required canonical skill remained inaccessible (404) at the inspected noeaaeue/main.
