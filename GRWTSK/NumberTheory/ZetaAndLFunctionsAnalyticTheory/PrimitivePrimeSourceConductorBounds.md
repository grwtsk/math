# Conductor-uniform higher prime powers and the primitive Dirichlet prime-source growth law

Local attribution: grwtsk contributors. Edition 1, 2026-11-12.
MSC2020: 11M06, 11M26, 11N05, 11N13.

EVIDENCE: WRITTEN_ANALYTICAL_ARGUMENT; Lean elaboration NOT_RUN; fresh kernel checking NOT_RUN; transitive axiom audit NOT_RUN; certified computation NOT_RUN; independent analytical review NOT_RUN; originality UNASSESSED. The results below do NOT prove finite exceptional zeros, RH, or primitive Dirichlet GRH. The last two statements are GRH-equivalent reductions whose needed arithmetic bounds are NOT established.

Canonical consumer: GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilPrimeSquareTail.md (WPSQ-1--6), WeilFixedBumpNegativeDepth.md (WFDG-1), and original primitive Dirichlet L-function zero targets, explicitly including conductor-one zeta. Source inspected: grwtsk/math/main commit 22b35beac4418868db05ed53b32c7f5e9480be18; root/scoped policy and publication instructions; Lean v4.34.1, mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. No imports, pins, declarations, CI or workflows are changed. Coordination: grwtsk/math#1801, scope comment 6840470116.

## Actual prime-power source

Let chi be a Dirichlet character modulo q>=1, zero on nonunits, and chi_0 the principal character modulo q. Let g in C_c^1(R;C) be supported in [-R,R] for fixed R>0. Set
\[
B_{\chi,g}(t)=\sum_{k\ge2}\sum_{p\ \rm prime}
(\log p)\chi(p)^kp^{-k/2}g(k\log p-t),\quad
m_g=\int_{\mathbb R}g,\quad t>R.
\tag{1}
\]
The sum is FINITE at any fixed t. Every prime power and character phase is retained. The k>=3 bound from WPSQ-1 is unconditional, uniform over all q,chi:
\[
\left|\sum_{k\ge3,p}(\log p)\chi(p)^kp^{-k/2}g(k\log p-t)\right|
\le\frac{\|g\|_\infty}{\log2}(t+R)^2e^{-t/6+5R/6}.
\tag{2}
\]

### PCUB-1: large-conductor quadratic estimate, no Siegel--Walfisz needed

**Theorem (unconditional).** If chi^2=chi_0, then for t sufficiently large
\[
\boxed{\left|B_{\chi,g}(t)-\tfrac12m_g\right|
\le C_{g,R}e^{-b t^{3/5}/(\log t)^{1/5}}
+\|g\|_\infty e^{-(t-R)/2}\log q
+\frac{\|g\|_\infty}{\log2}(t+R)^2e^{-t/6+5R/6}}
\tag{3}
\]
for some b>0, with constants independent of q,chi. Consequently (3) tends uniformly to zero for any fixed epsilon>0 in the growing-conductor family
\[
\chi^2=\chi_0,\quad
1\le q\le \exp(\exp((\tfrac12-\epsilon)t)),
\quad 0<\epsilon<\tfrac12.
\tag{4}
\]
This includes primitive quadratic characters and the conductor-one zeta character.

**Proof.** For every prime p, chi(p)^2 equals 1 if p does not divide q and 0 otherwise. Therefore the prime-square part differs from the conductor-one zeta square part by the EXACT missing Euler-factor sum
\[
B_{\chi,g}^{(2)}(t)-B_{1,g}^{(2)}(t)
=-\sum_{p\mid q}\frac{\log p}{p}g(2\log p-t).
\tag{5}
\]
A nonzero summand requires p>=exp((t-R)/2). Thus
\[
|B_{\chi,g}^{(2)}(t)-B_{1,g}^{(2)}(t)|
\le\|g\|_\infty e^{-(t-R)/2}\sum_{p\mid q}\log p
\le\|g\|_\infty e^{-(t-R)/2}\log q.
\tag{6}
\]
WPSQ-1 gives \(B_{1,g}^{(2)}(t)=m_g/2+O_{g,R}(\exp(-b t^{3/5}/(\log t)^{1/5}))\) using classical Korobov--Vinogradov theta(x)-x bounds; add (2). Under (4), the omitted factor is at most \(\|g\|_\infty e^{R/2}e^{-\epsilon t}\). Neither RH nor Dirichlet GRH is used. QED.

### PCUB-2: Siegel--Walfisz uniformity for arbitrary characters

**Theorem (unconditional, INEFFECTIVE constants).** For every fixed A>0, g and R, there exist c_A>0 and C_{A,g,R}<infinity such that for all sufficiently large t,
\[
\boxed{
\sup_{\substack{1\le q\le t^A\\\chi\bmod q}}
\left|B_{\chi,g}(t)-\tfrac12\mathbf1_{\chi^2=\chi_0}m_g\right|
\le C_{A,g,R}e^{-c_A\sqrt t}
+\frac{\|g\|_\infty}{\log2}(t+R)^2e^{-t/6+5R/6}.}
\tag{7}
\]
This includes all primitive characters, imprimitive characters for this arithmetic lemma only, and q=1. It does NOT give a conductor-uniform GRH theorem or an effective interval certificate.

**Proof.** The unconditional Siegel--Walfisz theorem gives, uniformly for reduced residue classes a and q<=(log x)^B,
\[
\theta(x;q,a)=x/\varphi(q)+O_B(xe^{-c\sqrt{\log x}})
\tag{8}
\]
with an ineffective constant/threshold. For x>=exp((t-R)/2), q<=t^A is at most (log x)^(A+1) for all sufficiently large t. Multiply (8) by chi(a)^2 and sum over all reduced classes, preserving the phi(q) factor in the error:
\[
\theta_{\chi^2}(x)=\sum_{p\le x}\chi(p)^2\log p
=\mathbf1_{\chi^2=\chi_0}x+
O_{A+1}(\varphi(q)x e^{-c\sqrt{\log x}}).
\tag{9}
\]
Since phi(q)<=t^A, a polynomial factor is absorbed by lowering the positive sqrt exponent constant. Applying WPSQ-1's exact Stieltjes integration-by-parts bound to the square window [exp((t-R)/2), exp((t+R)/2)] gives the first term of (7). The remaining powers satisfy (2). The thresholds and constants inherited from Siegel--Walfisz are NOT asserted effective. QED.

**Finite-test-family consequence.** Fix a finite collection of real smooth compactly supported correlation tests g_jk (0<=j,k<=r) with \(\int g_{jk}=v_jv_k\). The complex arithmetic matrix of the exact k>=2 sums satisfies
\[
\left\|[B_{\chi,g_{jk}}(t)]-\tfrac12\mathbf1_{\chi^2=\chi_0}vv^{\mathsf T}\right\|_{\rm op}
=O_{A,r,g_{jk}}(e^{-c_A\sqrt t}+t^2e^{-t/6})
\tag{10}
\]
uniformly for q<=t^A, all chi. This follows entrywise from (7) and the finite-dimensional norm inequality. For chi^2 principal, (3) gives the stronger conductor-dependent bound. The arithmetic matrix for complex chi need NOT be Hermitian. (10) asserts no full Weil positivity and no uniformity in an expanding test degree/window.

### PCUB-3: rigorous counterexample to unrestricted-conductor uniformity

**Theorem (actual primitive characters, unconditional).** Fix g>=0 in C_c^1([-R,R]) with R>0 and m_g>0. There are arbitrarily large t and primitive quadratic chi_t of conductor q_t such that
\[
B_{\chi_t,g}^{(2)}(t)=0,\quad
B_{\chi_t,g}(t)=O_{g,R}(t^2e^{-t/6})\longrightarrow0,
\tag{11}
\]
while chi_t^2=chi_0 and its proposed principal square main term is m_g/2>0. In fact
\[
\boxed{\log q_t\sim(e^{R/2}-e^{-R/2})e^{t/2}.}
\tag{12}
\]
Thus a uniform limit across ALL primitive quadratic conductors would be FALSE.

**Proof.** Let \(\mathcal P_t\) be the set of odd primes in [exp((t-R)/2), exp((t+R)/2)], nonempty for t large by the PNT. Form the odd squarefree product d_t=prod_{p in P_t}p. Choose its POSITIVE fundamental discriminant q_t=d_t if d_t is 1 mod 4, otherwise q_t=4d_t (d_t is 3 mod 4 in the latter case). The Kronecker character (q_t / .) is primitive quadratic, zero at every p|q_t. Every prime able to appear in the k=2 window divides q_t, so its entire prime-square contribution is exactly zero. The uniform k>=3 estimate (2) proves (11). Finally log q_t=sum_{p in P_t}log p+O(1); applying theta(x)=x+o(x) at both endpoints gives (12). This is a counterexample to a false UNIFORM ESTIMATE, not to RH or GRH. QED.

## Original primitive Dirichlet L-source, not a model divisor

For the remaining statements chi is PRIMITIVE of conductor q>=1. Conductor one means zeta; q>1 is nonprincipal. Retain the same real-even nonnegative mass-one bump phi from WFDG-1, supported [-1/2,1/2], with bilateral Laplace transform Phi(z) nonzero whenever Re z!=0. Put h=phi*phi, H(w)=Phi(w)^2, M=H(1/2)>0. For t real define
\[
S_{\chi,\rm all}(t)=\sum_{n\ge2}\Lambda(n)\chi(n)n^{-1/2}h(\log n-t),
\quad S_{\chi,\rm prime}(t)=\sum_p\chi(p)(\log p)p^{-1/2}h(\log p-t),
\]
\[
D_{\chi,*}(t)=S_{\chi,*}(t)-\mathbf1_{q=1}Me^{t/2}.
\tag{13}
\]
All sources are actually finite for fixed t, with every character phase retained. Only q=1 has the zeta pole. Distinct nontrivial zeros of the analytically continued L(s,chi) are Z_chi, weighted by m_rho, and
\[
\Theta_\chi=\sup_{\rho\in Z_\chi}|\Re\rho-\tfrac12|\in[0,\tfrac12].
\tag{14}
\]
The primitive completed L-function has parity a_chi in {0,1} and dual-character functional equation
\[
\Lambda(s,\chi)=(q/\pi)^{(s+a_\chi)/2}
\Gamma((s+a_\chi)/2)L(s,\chi)
=\epsilon_\chi\Lambda(1-s,\bar\chi)
\tag{15}
\]
for q>1 (with the standard pole-adjusted zeta completion at q=1). Together with complex conjugation, this gives SAME-chi symmetry rho -> 1-conj(rho). In general rho -> conj(rho) belongs to the DUAL character, not automatically the same character; no ordinate projection is used.

### PPCG-1: exact prime-only logarithmic-derivative return

For Re s>1/2 the higher Euler-power function
\[
R_{\chi,\ge2}(s)=\sum_{k\ge2,p}(\log p)\chi(p)^k p^{-ks}
\tag{16}
\]
converges absolutely normally: its absolute value is bounded by
\((1-2^{-\sigma})^{-1}\sum_{n\ge2}(\log n)n^{-2\sigma}\)
for sigma=Re s>1/2. In the ACTUAL Euler-product half-plane Re s>1,
\[
\sum_p \chi(p)(\log p)p^{-s}
=-L'(s,\chi)/L(s,\chi)-R_{\chi,\ge2}(s).
\tag{17}
\]

**Theorem (exact unilateral transform).** For T>=2, Re w>1/2,
\[
\boxed{\begin{aligned}
\int_T^\infty D_{\chi,\rm prime}(t)e^{-wt}dt
={}&-H(w)L'(w+\tfrac12,\chi)/L(w+\tfrac12,\chi)
-H(w)R_{\chi,\ge2}(w+\tfrac12)\\
&-E_{\chi,T}(w)
-\mathbf1_{q=1} M e^{-(w-1/2)T}/(w-\tfrac12),
\end{aligned}}
\tag{18}
\]
where \(E_{\chi,T}(w)=\int_{-\infty}^T S_{\chi,\rm prime}(t)e^{-wt}dt\) is entire since the integrand has bounded t-support on the left. This is a MEROMORPHIC CONTINUATION to Re w>0, not an assertion that the prime Dirichlet series converges there. At q=1 the zeta pole w=1/2 cancels exactly. At each actual zero rho with Re rho>1/2 the residue of the right side is
\[
-m_\rho H(\rho-\tfrac12)\ne0.
\tag{19}
\]

**Proof.** For Re w>1/2, Fubini and the bilateral Laplace transform of h evaluate the whole-line prime sum as H(w)sum_p chi(p)log(p)p^(-(w+1/2)). Split off the entire initial edge E and subtract the explicit q=1 pole main integral. Apply (17) and its normally convergent higher-power correction to obtain (18). Since -zeta'/zeta has residue +1 at s=1 and H(1/2)=M, the displayed q=1 subtraction cancels that pole. At a nontrivial L-zero, the log derivative has residue m_rho; its coefficient H(z) is nonzero off the critical line by construction. Neither a prime power nor an infinite zero tail was silently discarded. QED.

### PPCG-2: exact primitive zero-displacement growth law

**Theorem (unconditional written analytical argument).** For every FIXED primitive chi, explicitly including q=1 zeta,
\[
\boxed{\limsup_{t\to\infty}
\frac{\log(1+|D_{\chi,\rm prime}(t)|)}{t}
=\Theta_\chi.}
\tag{20}
\]
Consequently
\[
\boxed{
\text{All nontrivial zeros of }L(s,\chi)\text{ have Re }s=\tfrac12
\iff
\sup_{t\ge2}|D_{\chi,\rm prime}(t)|<\infty.
}
\tag{21}
\]
The upper-bound premise on the right is NOT proved without the zero-location hypothesis. Taking every primitive chi, including conductor-one, yields an exact RH + primitive GRH criterion with constants allowed to depend on the character.

**Proof of the upper rate and the GRH-to-boundedness direction.** For c>1/2, the genuine Euler product and inverse Mellin/Laplace transform give
\[
S_{\chi,\rm all}(t)=\frac1{2\pi i}
\int_{(c)}[-L'/L(w+\tfrac12,\chi)]H(w)e^{wt}\,dw.
\tag{22}
\]
H is entire and rapidly decreasing along all vertical strips with bounded real parts. Shift the contour to Re w=-1, along horizontal heights chosen away from zeros. Classical Dirichlet zero counting (including multiplicities) and log-derivative bounds justify the shift and absolute convergence of the residue sum. The conductor-one zeta pole yields +M e^(t/2), exactly subtracted in D. The even primitive nonprincipal character has its parity-forced simple trivial zero at s=0, contributing -H(-1/2)e^(-t/2); no other trivial zero lies between s=-1/2 and the initial right line. Therefore the exact residue identity is
\[
\boxed{\begin{aligned}
D_{\chi,\rm all}(t)
={}&-\sum_{\rho\in Z_\chi}m_\rho H(\rho-\tfrac12)
e^{(\rho-\frac12)t}\\
&-\mathbf1_{q>1,\,a_\chi=0}H(-\tfrac12)e^{-t/2}
+R_\chi(t),
\end{aligned}}
\tag{23}
\]
with the actual remaining contour integral
\[
R_\chi(t)=\frac1{2\pi i}\int_{(-1)}
[-L'/L(w+\tfrac12,\chi)]H(w)e^{wt}\,dw.
\tag{24}
\]
The DUAL-character functional equation retains conductor q, gamma factor and parity and bounds the log derivative on Re(s)=-1/2 by O(log(q(|u|+3))) using the Euler product on the reflected line Re(s)=3/2. Thus \(|R_\chi(t)|\ll_h e^{-t}\log(q+2)\). Classical zero counting gives
\(\sum_\rho m_\rho |H(\rho-\frac12)|\ll_h\log(q+2)\)
because the zero count in any unit ordinate window is O(log(q(|u|+3))) and H is rapidly decaying. Hence
\[
|D_{\chi,\rm all}(t)|\ll_h \log(q+2)e^{\Theta_\chi t}\qquad(t\ge2).
\tag{25}
\]
Also the higher-prime-power difference \(D_{\chi,\rm all}-D_{\chi,\rm prime}=B_{\chi,h}\) is uniformly bounded independently of q and chi: use absolute values, the nonnegative conductor-one k=2 square sum (bounded by the unconditional PNT), and the uniform k>=3 tail (2). This establishes the same upper bound for \(D_{\chi,\rm prime}\). Under GRH for chi, Theta_chi=0, giving boundedness.

**Proof of the lower rate and converse.** If Theta_chi>0, the SAME-character symmetry rho ->1-conj(rho), obtained through the true dual-character equation, supplies a zero with Re(rho-1/2)>c for any 0<c<Theta_chi. If the limsup in (20) were smaller than c, the unilateral Laplace transform of D_{chi,prime} would be holomorphic on Re w>c by exponential convergence. Formula (18) provides its meromorphic continuation with a nonremovable pole at that z=rho-1/2 by (19), whereas the omitted prime-power correction is holomorphic and the only q=1 pole was cancelled. Analytic continuation yields a contradiction. The case Theta_chi=0 follows from the upper bound and log(1+|D|)>=0. This proves (20); boundedness is equivalent to Theta_chi=0 and hence the original GRH for the given primitive source. QED.

**Quantified all-primitive strengthening.** The proof of (25) has a constant independent of chi and q for this fixed bump h, so
\[
\boxed{\begin{gathered}
\mathrm{RH}+\text{primitive Dirichlet GRH}\\
\iff
\exists C_h<\infty\ \forall q\ge1\
\forall\chi\text{ primitive conductor }q\
\forall t\ge2:\
|D_{\chi,\rm prime}(t)|\le C_h\log(q+2).
\end{gathered}}
\tag{26}
\]
The universal upper bound in (26) is an UNPROVED GRH-strength arithmetic premise, not a new theorem of bounded primes. For complex chi the source is complex and the bound must be in modulus; a one-sided real sign inequality cannot simply replace it. For primitive real chi, possible real zeros in (1/2,1) cannot be ruled out by transplanting the zeta-only one-sided Landau argument. No imprimitive Euler-factor transfer is claimed.

## 3. Hostile checks, comparisons, and open obligations

1. **Actual large-conductor counterexample:** PCUB-3 falsifies a too-strong uniform arithmetic limit using PRIMITIVE characters, without claiming any counterexample to GRH. The conductor is so large that log q is of the same order as e^(t/2), identifying the scale of the exact missing-prime correction (6).
2. **Ineffectivity:** PCUB-2's constants depend ineffectively on Siegel--Walfisz; they cannot act as a certified universal interval error without a separate effective theorem.
3. **Distinct exponents and characters:** Chi^2 principal is different from chi principal. Quadratic characters contribute 1/2 in the square window; complex characters with nonprincipal square have zero main term. All phases remain in the exact source and the error bounds.
4. **Finite-dimensional restrictions:** Formula (10) applies at FIXED dimension and support, even as chi and q vary in its stated range. No uniform all-window negative-index conclusion follows.
5. **Actual zeros and poles:** PPCG-1/2 use complex zero coordinates and multiplicities and distinguish q=1 zeta pole, the q>1 primitive parity-forced s=0 zero, and the dual-character functional equation. The contour integral (24) retains the conductor/gamma dependence; it is not identified with a gamma-free Weil positivity criterion.
6. **No unconditional RH/GRH:** (20) is an unconditional relation between two unknown objects, and (26) is an equivalence whose source inequality is unproved. Higher-prime-power bounds do not control the ordinary prime discrepancy.

**Prior-art source locators:** classical Siegel--Walfisz (Siegel 1935; Walfisz 1936), as stated in Kontorovich, *An invitation to additive prime number theory*, Theorem 7, and https://openmaths.org/courses/NT-DIRL/NT-DIRL-11.html Theorem 2.1 (ineffectivity recorded); classical Korobov--Vinogradov PNT error in WPSQ-1 and Johnston--Yang, *Some explicit estimates for the error term in the prime number theorem*, JMAA 2023, Theorem 1.4. Primitive zero counts: Bennett et al., *Counting zeros of Dirichlet L-functions*, Math. Comp. 2021, Theorem 1.1. Primitive Dirichlet explicit formula and gamma/parity: Cohen, *Computing L-functions: a survey*, Theorem 7.1, and https://dms.umontreal.ca/~koukoulo/documents/publications/primes.pdf Theorem 11.3/Lemma 11.4. Conductor-one original full Weil form: Suzuki, *Weil's quadratic form via the screw function*, arXiv:2606.09096v3, p.1; Bombieri 2000, Theorem 8, is about distinct-pair finite inertia and does NOT establish finite exceptions. Fixed-bump nonvanishing: WFDG-1 (classical infinite-convolution bump). No novelty or independent proof of RH/GRH is claimed.

**First unresolved arithmetic premise:** Prove the one-sided bounded ordinary-prime discrepancy needed by the WPOS/W2S finite-exception program, or the fully quantified complex magnitude bound in (26) for primitive GRH, using signed arithmetic cancellation rather than RH/GRH or another positive form as an assumption. The latter is strictly stronger than proving finite exceptional zeta zeros. No such estimate is supplied by (3), (7), or the ordinary PNT.

**Formalization not performed:** Need actual canonical DirichletCharacter.LFunction declarations, a source-exact analytic continuation/log-derivative and zero-count bridge, and the contour/dual-character functional equation in Lean before any theorem correspondence claim. No new Lean axioms, sorry, admit, imports, or pin changes. All formal checks NOT_RUN, originality UNASSESSED, independent review NOT_RUN.

**Automation boundary:** The canonical noe-proof-automation SKILL.md in grwtsk/noeaaeue/main was inaccessible (404) at revision 45b0447fd8f061f8d041b8ef21ed5c29ccfdbd3d; no verified local checkout and no dependent proof automation.
