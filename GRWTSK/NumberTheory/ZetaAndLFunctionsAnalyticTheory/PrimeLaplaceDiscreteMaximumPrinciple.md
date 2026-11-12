# The arithmetic Laplace transform and a discrete maximum principle for the zeta Weil prime source

Local attribution: grwtsk contributors. Edition 1, 2026-11-12.
MSC2020 11M26 (zeta functions and their zeros), 11N05 (prime counting), 39A06 (difference equations).

**Status:** WRITTEN_ANALYTICAL_ARGUMENT, LEAN_ELABORATION_NOT_RUN, FRESH_KERNEL_NOT_RUN, TRANSITIVE_AXIOM_AUDIT_NOT_RUN, CERTIFIED_COMPUTATION_NOT_RUN, INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN; ORIGINALITY_UNASSESSED. No actual arithmetic all-height upper bound, finite-exception result, RH, or primitive Dirichlet GRH is proved. This is mathematical source exposition, not a proof-execution artifact.

**Owner and consumer:** grwtsk/math, GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory. Consumes the actual nonnegative von Mangoldt prime-power weights and WFDG-1's single fixed compact bump in WeilFixedBumpNegativeDepth.md. The original complete pole-inclusive Weil distribution is retained as the comparison in that source and in WeilTwoScaleArithmeticShiftCriterion.md (W2S-1--5). This note supplies (i) a direct, independent Euler-product check of the exact zero-pole response, (ii) a quantitative arithmetic restriction on the three-shift branch of W2S, and (iii) an unconditional positive Green-kernel budget with an exact prime source. None closes the unresolved W2S arithmetic sign inequality.

**Pinned inspection:** grwtsk/math/main dbdb726c06422d70e7d4b76a1078650f87d647a3, root policy and publication instructions, Lean leanprover/lean4:v4.34.1, mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. No imports, pins, or old declarations are modified. Coordination issue grwtsk/math#1801, scope comment 6837428191.

## 1. Source definitions

Let phi in C_c^infinity(R;R) be the original real, even, nonnegative mass-one bump of WFDG-1, supported in [-1/2,1/2]. Its bilateral Laplace transform
\[
\Phi(w)=\int_{\mathbb R}\phi(x)e^{wx}\,dx
\]
is entire and nonzero whenever Re w != 0. Let h=phi*phi, hence h is smooth, even, real, nonnegative, mass one and supported in [-1,1]. Write
\[
H(w)=\int h(v)e^{wv}\,dv=\Phi(w)^2,\qquad M=H(1/2)>0.
\tag{1}
\]
Define the actual prime-power source and its signed discrepancy
\[
S(t)=\sum_{n\ge2}\frac{\Lambda(n)}{\sqrt n}\,h(\log n-t),\qquad
D(t)=S(t)-Me^{t/2}.
\tag{2}
\]
Every prime power is included, and for each t only finitely many n occur. In particular S(t)=0 for t<log(2)-1.

The unconditional prime number theorem psi(x)=x+o(x), together with smooth Stieltjes integration by parts, gives
\[
D(t)=o(e^{t/2})\quad(t\to+\infty).
\tag{3}
\]
Indeed, integrating h(log x-t)x^(-1/2) against d(psi(x)-x) and using support endpoints yields a bound by O(e^(t/2)) times the supremum of |psi(x)-x|/x on e^(t-1)<=x<=e^(t+1), which tends to zero. The Korobov--Vinogradov error term further gives, for some b>0,
\[
D(t)=O\!\left(e^{t/2-bt^{3/5}/(\log t)^{1/5}}\right)\qquad(t\to\infty).
\tag{4}
\]
These are actual unconditional PNT estimates, not estimates assuming RH.

## PLMP-1: exact prime-source Laplace identity

**Theorem.** For any fixed T>=2, define
\[
E_T(w)=\int_{-\infty}^T S(t)e^{-wt}\,dt .
\]
Then E_T is entire (the integrand has bounded support on this interval, and only finitely many prime powers occur). For Re w>1/2,
\[
\boxed{
\int_T^\infty D(t)e^{-wt}\,dt
=-H(w)\frac{\zeta'(w+1/2)}{\zeta(w+1/2)}
-E_T(w)
-\frac{Me^{-(w-1/2)T}}{w-1/2}.
}
\tag{5}
\]

**Proof.** Absolute convergence in Re w>1/2 permits Fubini:
\[
\begin{aligned}
\int_{-\infty}^{\infty}S(t)e^{-wt}dt
&=\sum_{n\ge2}\frac{\Lambda(n)}{\sqrt n}
 \int_{-\infty}^{\infty}h(\log n-t)e^{-wt}\,dt\\
&=H(w)\sum_{n\ge2}\frac{\Lambda(n)}{n^{w+1/2}}
=-H(w)\frac{\zeta'(w+1/2)}{\zeta(w+1/2)} .
\end{aligned}
\tag{6}
\]
This is the logarithmic derivative of the Euler product in its ACTUAL convergence half-plane Re(w+1/2)>1. Subtract E_T and the elementary integral of M e^(t/2) over [T,infinity), obtaining (5). No divergent Dirichlet series is used in the critical strip.

The RHS of (5) is a meromorphic continuation of the prime-source Laplace transform. Its apparent pole at w=1/2 is REMOVABLE: -zeta'(s)/zeta(s) has residue +1 at s=1, and H(1/2)=M, matching the subtracted pole term. At each distinct nontrivial zero rho in the critical strip, with z_rho=rho-1/2 and multiplicity m_rho, its residue is exactly
\[
-m_\rho H(z_\rho)=-m_\rho\Phi(z_\rho)^2.
\tag{7}
\]
For Re z_rho !=0 it is nonzero, by the fixed-bump construction. These residues agree with the sign of K=-D-G in the original full Weil formula. Equation (5) is an independent arithmetic check of that source identity; it does NOT drop the gamma term from the Weil formula. QED.

**Pole-specific warning.** The subtraction in (5) is the s=1 zeta pole. The original Weil formula has BOTH pole orientations: in its separated-support form the s=0 pole contribution cancels the leading gamma integral, as proved in WFDG-2 and W2S-1. Equation (5) does not assert that the complete Weil gamma term vanishes; it is a different Laplace identity for the prime sum itself.

## PLMP-2: source-direct one-sided oscillation

**Theorem.** If D(t)<=C for every t>=T for some T>=2 and real C, then RH holds for the analytically continued Riemann zeta function.

**Proof.** Suppose an off-line zero exists. By the functional equation there is one with Re rho>1/2 and Im rho!=0. Put z=rho-1/2, so 0<Re z<1/2. Choose C' >= C and set g(t)=C'-D(t)>=0 on [T,infinity). By (3), g has finite Laplace abscissa sigma_g<=1/2. Its transform, obtained from (5) by subtracting from C'e^(-wT)/w, extends meromorphically to the plane and has a nonzero nonreal pole at w=z from (7). Hence sigma_g>=Re z>0: otherwise the original convergent integral would be holomorphic at z, contradicting the pole. Landau's nonnegative-Laplace singularity theorem requires the transform to have a singularity at the REAL point w=sigma_g>0.

But the meromorphic expression is holomorphic on the entire positive real w-axis. Indeed zeta(s)>0 for real s>1, zeta(s)<0 for real 0<s<1 (eta(s)>0 and 1-2^(1-s)<0), the s=1 pole cancels at w=1/2, and the artificial C'e^(-wT)/w pole lies only at w=0. Contradiction. Thus there is no off-line zero. QED.

The reverse implication uses the ORIGINAL full zeta Weil distribution: under RH,
\[
K(t)=\sum_{\rho}m_\rho|\Phi(i\gamma_\rho)|^2 e^{i\gamma_\rho t}
\]
is uniformly bounded by absolute convergence, while K(t)=-D(t)-G(t) for t>1 and
\[
G(t)=\int_{-1}^1 h(v)
\frac{e^{-5(t+v)/2}}{1-e^{-2(t+v)}}\,dv
\]
is uniformly bounded on t>=2. Therefore RH implies bounded D, in particular bounded above.

This proves the one-sided equivalence by the Euler product rather than deriving it solely from the zero-side Weil form. Its first direction still uses the classical PNT and Landau theorem, NOT an unproved prime bound.

## PLMP-3: strong discrete maximum principle with explicit constant

**Lemma (fully quantified).** Let a>1 and u: N -> R satisfy
\[
u_n=o(a^n),\qquad
(1+a^2)u_n-a(u_{n-1}+u_{n+1})\le C\quad(n>=1),
\tag{8}
\]
where C is any real constant. Then for every n>=0,
\[
\boxed{
u_n\le a^{-n}u_0+\frac{C}{(a-1)^2}(1-a^{-n}).
}
\tag{9}
\]

**Proof.** Define v_n by the RHS of (9). Direct substitution gives
\[
v_0=u_0,\quad (1+a^2)v_n-a(v_{n-1}+v_{n+1})=C;
\]
the key identities are L(a^n)=L(a^(-n))=0 and L(1)=(a-1)^2, where L is the tridiagonal difference operator in (8). Hence w_n=u_n-v_n satisfies w_0=0, Lw_n<=0 for n>=1, and w_n=o(a^n). Fix epsilon>0 and an integer n. Choose N>n sufficiently large that w_N<=epsilon a^N. On [0,N] the sequence x_k=w_k-epsilon a^k has x_0<=0, x_N<=0 and Lx_k<=0 at each interior point. If x attained a positive interior maximum m>0, then Lx_k>=(a-1)^2 m>0 there, contradiction. So x_k<=0 throughout. In particular w_n<=epsilon a^n. Let epsilon tend to zero to get w_n<=0. QED.

There is no uniform-in-n spectral assumption and no hidden use of RH in this lemma. The growth premise u_n=o(a^n) is critical: the growing homogeneous solution a^n would invalidate the conclusion if allowed.

## PLMP-4: an exact prime-only three-point test equivalent to RH

For any fixed real p>1 let
\[
a=\sqrt p,\quad b=\log p,\quad
\mathcal C_p(t)=(1+p)S(t)-\sqrt p\{S(t+b)+S(t-b)\}.
\tag{10}
\]
The main term cancels identically:
\[
(1+a^2)Me^{t/2}-aM(e^{(t+b)/2}+e^{(t-b)/2})=0,
\]
so
\[
\mathcal C_p(t)=(1+a^2)D(t)-a(D(t+b)+D(t-b)).
\tag{11}
\]

**Theorem.** For T>=2, if there exists a real C such that \(\mathcal C_p(t)\le C\) for all \(t\ge T+b\), then for each \(t_0\in[T,T+b)\) and n>=0,
\[
\boxed{
D(t_0+nb)\le
p^{-n/2}D(t_0)+
\frac{C}{(\sqrt p-1)^2}(1-p^{-n/2}).
}
\tag{12}
\]
In particular D is bounded above for all t>=T, and PLMP-2 proves RH.

**Proof.** Fix t_0. Put u_n=D(t_0+nb). Unconditional PNT (3) gives u_n=o((sqrt p)^n). The assumption and (11) give (8) for n>=1. Apply PLMP-3. Compactness of the initial interval and continuity of D give a uniform finite upper bound on D(t_0); the RHS of (12) then bounds D at every t>=T. Apply PLMP-2. QED.

Conversely under RH, D is bounded, so the finite linear combination \(\mathcal C_p(t)\) is bounded above. Therefore, with the explicit choice p=2 and T=2,
\[
\boxed{
\mathrm{RH}
\iff
\exists C\in\mathbb R\ \forall t\ge2+\log2:
3S(t)-\sqrt2\bigl[S(t+\log2)+S(t-\log2)\bigr]\le C.
}
\tag{13}
\]
The right side is a concrete statement about actual nonnegative von Mangoldt prime-power weights with a fixed compact smoothing. It has NOT been proved unconditionally; the maximum principle establishes only the implication FROM that inequality.

**Research disposition:** The pole-annihilating degree-one filter \(P(X)=X-\sqrt2\) is not a route to a weaker finite-exception theorem: its all-height upper bound already implies RH. The zero-side root condition agrees with this because e^((log2)z)=sqrt2 would force Re z=1/2, outside the open critical strip. This argument offers a source-only arithmetic verification of that strength. A genuine finiteness program still needs the unresolved W2S two-filter arithmetic estimates with roots potentially inside the strip.

## PLMP-5: unconditional exact Green kernel and signed tail budget

Let a>1. For n,k>=1 put
\[
G_{nk}=\frac{a^{-|n-k|}-a^{-(n+k)}}{a^2-1},
\qquad G_{0k}=0.
\tag{14}
\]
Every G_{nk} is strictly positive. Direct substitution gives
\[
(1+a^2)G_{nk}-a(G_{n-1,k}+G_{n+1,k})
=\begin{cases}1,&n=k,\\0,&n\ne k.\end{cases}
\tag{15}
\]

**Green representation theorem.** Suppose u_n=o(a^n), put
\(E_n=(1+a^2)u_n-a(u_{n-1}+u_{n+1})\) for n>=1, and assume
\(\sum_{n>=1}a^{-n}|E_n|<\infty\). Then the following series converges absolutely for every n:
\[
\boxed{
u_n=a^{-n}u_0+\sum_{k=1}^\infty G_{nk}E_k.
}
\tag{16}
\]
Consequently,
\[
u_n\le a^{-n}u_0+\sum_{k=1}^\infty G_{nk}(E_k)_+,\qquad
(E_k)_+=\max(E_k,0).
\tag{17}
\]
For N>=n, the remaining SIGNED tail is exactly
\[
\boxed{
\sum_{k>N}G_{nk}E_k
=\frac{a^n-a^{-n}}{a^2-1}
\sum_{k>N}a^{-k}E_k.
}
\tag{18}
\]

**Proof.** The weighted l1 hypothesis makes (16) absolutely convergent, since for k>n, \(G_{nk}=(a^n-a^{-n})a^{-k}/(a^2-1)\), while k<=n is finite. Let v_n denote its RHS. Equations (15) and the absolute convergence give Lv_n=E_n and v_0=u_0. Moreover v_n=o(a^n): divide the terms k>=n by a^n and use the vanishing weighted-l1 tail; for k<n the divided sum is an exponentially decaying convolution with the sequence a^(-k)|E_k|, which tends to zero. Thus w=u-v has Lw=0, w_0=0, and w=o(a^n). Apply PLMP-3 with C=0 to both w and -w, obtaining w=0. Formula (17) follows from positivity of G; formula (18) is the exact expression of G for k>N>=n. QED.

**Application to the ACTUAL prime source (unconditional).** Let p=2, a=sqrt2, b=log2, T>=2, t_0 in [T,T+b), u_n=D(t_0+nb) and E_n=\mathcal C_2(t_0+nb). From (4) and the finite shift in (10), for some constants depending on the fixed bump and b,
\[
|E_n|=O\!\left(a^n
\exp\{-c n^{3/5}/(\log(n+2))^{1/5}\}\right).
\tag{19}
\]
Thus the weighted l1 condition holds unconditionally. Equations (16)--(18) give an EXACT infinite signed reconstruction of the original zeta smoothed-prime discrepancy from its finite three-shift arithmetic stencils. They do not assert any uniform bound as n tends to infinity. For each FIXED n, a Korobov--Vinogradov envelope bounds the tail in (18); that fact does not certify all n or provide the missing constant C in (13).

For any candidate universal upper budget C, (12) is the more useful sharper consequence. For arbitrary error budgets, (17)--(18) retain the exact positive kernel and signed cancellation instead of replacing the entire Weil form by an absolute L2 operator norm.

## PLMP-6: exact removal of a local prime-power tower

This theorem is about the actual von Mangoldt source, not a synthetic spectral model. For a rational prime p, put b_p=log p, a_p=sqrt(p), and isolate all powers of that prime:
\[
S_p(t)=(\log p)\sum_{k=1}^{\infty}p^{-k/2}h(k\log p-t).
\tag{20}
\]
For each fixed t the sum is actually finite by the compact support of h. Let T_b F(t)=F(t+b) and define the real finite-shift operator
\[
\mathcal A_p=(p+1)I-\sqrt p(T_{b_p}+T_{-b_p}).
\tag{21}
\]

**Theorem (exact local arithmetic cancellation).** One has, for EVERY real t,
\[
\boxed{
\mathcal A_p S_p(t)
=(\log p)\bigl[\sqrt p\,h(t-\log p)-h(t)\bigr].
}
\tag{22}
\]
In particular, for t>1+log p, the entire prime-power tower of p contributes ZERO to the filtered source.

**Proof.** Reindex the geometric sums with a_p=sqrt(p):
\[
T_{b_p}S_p
=a_p^{-1}S_p+a_p^{-1}(\log p)h(-t),
\]
\[
T_{-b_p}S_p
=a_p S_p-(\log p)h(b_p-t).
\]
Substitute into (21). All terms involving S_p cancel because \(p+1=a_p^2+1\). What remains is
\[
(\log p)\bigl[a_p h(b_p-t)-h(-t)\bigr].
\]
Since h is even this is (22). Its support lies in the union of [-1,1] and [b_p-1,b_p+1], so it vanishes for t>b_p+1. No endpoint limit or omitted prime power is used. QED.

For p=2 the exact identity reads
\[
3S_2(t)-\sqrt2\bigl[S_2(t+\log2)+S_2(t-\log2)\bigr]
=(\log2)\bigl[\sqrt2 h(t-\log2)-h(t)\bigr].
\tag{23}
\]
This was also checked using a finite triangular test profile; the mathematical proof above is independent of that non-certified numerical check.

**Finite-place extension.** Let F be a NONEMPTY finite set of distinct rational primes, write
\[
\mathcal A_F=\prod_{p\in F}\mathcal A_p,\qquad
B_F=1+\sum_{p\in F}\log p .
\tag{24}
\]
All shift operators commute. Since the finite source \(S=\sum_\ell S_\ell\) is locally finite in t, for every t>B_F,
\[
\boxed{
\mathcal A_F S(t)=
\mathcal A_F\left(\sum_{\ell\notin F}S_\ell(t)\right).
}
\tag{25}
\]
Indeed for each p in F the factor A_p sends S_p to the compact function (22); the remaining A_q factors increase its upper support endpoint by at most sum_(q in F\{p}) log q. Thus the whole contribution from each removed prime tower is exactly zero for t>B_F. It is NOT claimed that the remaining infinitely many prime towers vanish.

The original main pole function M e^(t/2) is annihilated by every A_p, so A_F S=A_F D for nonempty F. This is a genuine finite-place arithmetic identity with the complete original prime-power weights, not a replacement sign-positive Weil form.

## PLMP-7: finite-place deletion does not weaken the RH-strength sign obligation

**Theorem.** For every fixed nonempty finite set F of rational primes,
\[
\boxed{
\mathrm{RH}\iff
\exists C\in\mathbb R\;\exists T<\infty:
\quad \mathcal A_F S(t)\le C\quad\text{for all }t\ge T .
}
\tag{26}
\]
Here S is the actual source in (2), so the condition concerns only prime-power towers OUTSIDE F once t>B_F by (25).

**Arithmetic proof of the nontrivial implication.** Enumerate F={p_1,...,p_m}. Because A_F kills M e^(t/2), the assumed eventual bound is a bound on A_(p1)...A_(pm)D. Every finite translation polynomial applied to D preserves the unconditional o(e^(t/2)) PNT growth. Let
\(U_1=\mathcal A_{p_2}\cdots\mathcal A_{p_m}D\)
(with empty product the identity). Its A_(p1)-image is bounded above. Apply PLMP-3 on the lattice with spacing log(p_1), and compactness of the initial interval, to infer that U_1 is eventually bounded above. Repeat with p_2, then p_3, until D itself is eventually bounded above. PLMP-2 then proves RH. All constants may depend on the FIXED finite set F and the initially chosen bound, not on the variable t. No finite numerical check or sign conclusion from an auxiliary model is used.

Conversely RH makes D bounded by the full source-exact Weil formula and absolute convergence of its zero sum, so every finite stencil A_F D=A_F S is bounded. QED.

**Independent Euler-product check.** The bilateral Laplace transform of A_F S in Re w>1/2 is
\[
-H(w)\frac{\zeta'(w+1/2)}{\zeta(w+1/2)}
\prod_{p\in F}\Bigl[(1+p)-\sqrt p(p^w+p^{-w})\Bigr].
\tag{27}
\]
Each factor equals \((\sqrt p-p^w)(\sqrt p-p^{-w})\) and vanishes only when Re w=+1/2 or -1/2. Therefore it cannot erase any nontrivial zero pole of zeta lying STRICTLY inside the critical strip. This agrees with the arithmetic maximum-principle proof; it does not establish boundedness.

**Research boundary:** Removing finitely many Euler towers is exact, but the infinite tail of remaining primes is the decisive unresolved arithmetic source. Trying to remove infinitely many primes would introduce a non-finite operator and require new all-scale convergence and source-return theorems, so the finite-place proof cannot be extrapolated. A bounded A_F S is already RH-strength, not a weaker proof of finitely many exceptions. The two-scale existential filters W2S with possible interior-strip roots remain a distinct weaker target.

## 8. Hostile checks, originality and open arithmetic premise

1. A PNT-like positive synthetic source does NOT automatically satisfy (13). Let \(S_*(t)=Me^{t/2}+e^{t/3}\cos(\pi t/\log2)\), which is eventually positive and satisfies \(S_*(t)=Me^{t/2}+o(e^{t/2})\). Its three-shift stencil equals
\[
\bigl(3+\sqrt2(2^{1/3}+2^{-1/3})\bigr)e^{t/3}
\cos(\pi t/\log2),
\]
unbounded in both signs. This is a SYNTHETIC FUNCTION, not a source with genuine von Mangoldt coefficients or an example of a zeta zero. It proves that nonnegativity plus the PNT asymptotic alone do not give the needed stencil bound.
2. The unconditional bound (4), even after applying the three shifts, allows magnitude \(e^{t/2-o(t)}\), larger than every fixed constant. Thus the current PNT envelope cannot discharge (13) by taking absolute values.
3. Omitting the growing mode restriction u=o(a^n) invalidates PLMP-3: u_n=a^n gives Lu=0, u_0=1, yet u_n>a^(-n)u_0 for n>0. This is a necessary boundary condition at infinity, not a harmless formal detail.
4. The entire correction E_T in (5) must be retained. Dropping it would incorrectly assert that a unilateral tail transform equals the whole-line Mellin transform. The real pole at w=1/2 must be explicitly cancelled, not presumed absent.
5. The analytic result is solely for the conductor-one zeta source; arbitrary primitive Dirichlet characters need their own phase-weighted arithmetic logarithmic derivative and functional equation. No silent GRH transfer is made.

**Prior art and individual provenance:** PLMP-1 derives the standard \(-\zeta'/\zeta=\sum \Lambda(n)n^{-s}\) identity directly in Re s>1 and uses the classical Weil comparison from M. Suzuki, *Weil's quadratic form via the screw function*, arXiv:2606.09096v3, p.1; see also B. Green, *The Prime Number Theorem*, Chapter 7 on smooth Mellin transforms. PLMP-2 is a direct application of the Pringsheim--Landau theorem for nonnegative Laplace transforms (as stated, for instance, in I. Gyori, G. Ladas and L. Pakula, *Oscillation theorems for delay differential equations via Laplace transforms*, Canadian Mathematical Bulletin 33 (1990), Lemma 1, DOI 10.4153/CMB-1990-053-4). WPOS-1 proves the same abstract lemma. PLMP-3--5 are explicit elementary one-dimensional tridiagonal comparison/Green calculations, standard in difference-equation theory; no novelty is asserted. The PNT bound (4) is the classical Korobov--Vinogradov estimate (see Tao and collaborators, *Distribution of primes: long ranges*, Theorem 14.4). This note claims only the written source-specific combination, with originality UNASSESSED, not any new unconditional RH theorem.

**First unresolved arithmetic premise:** Prove for some fixed finite C and T that the actual prime-power stencil in (13) is at most C for EVERY t>=T+log2, without assuming RH, a zero bound, or a substitute operator. Such a theorem would prove RH and is NOT supplied by the PNT or the Green reconstruction. For the weaker finite-exception goal, retain W2S's two-scale existence quantifiers and their original arithmetic sign obligations.

**Formal plan, no claimed checks:** Formalize the elementary sequence maximum-principle lemma and Green kernel as small reusable arithmetic/analysis declarations in grwtsk/math, then connect to the canonical von Mangoldt source and analytically continued zeta. Prove absolute convergence, exact Euler-product transform, real-axis pole cancellation, and zero-source return before any RH-level claim. No new Lean declarations, imports, research axioms, sorry, or admit are added in this edition. All elaboration, fresh kernel replay, axiom audit, certified computation and independent review remain NOT_RUN.

**Automation boundary:** The canonical source workflows/research/orchestration/skills/noe-proof-automation/SKILL.md in grwtsk/noeaaeue main aea93208c4ec14c9f14fd6a4a6b0c913fe42969d was unavailable (HTTP 404), with no verified local checkout. Dependent proof automation was not invoked. Source-only GitHub publication is separate and supplies no execution or proof-verification receipt.
