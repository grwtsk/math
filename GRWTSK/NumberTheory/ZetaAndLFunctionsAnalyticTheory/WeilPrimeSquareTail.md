# Exact prime-square main term and higher-prime-power tail in Weil logarithmic windows

Local attribution: grwtsk contributors. Edition 1, 2026-11-12. MSC2020 11M26; 11N13; 11N05.

**Evidence boundary:** WRITTEN_ANALYTICAL_ARGUMENT. Lean elaboration NOT_RUN; fresh kernel checking NOT_RUN; transitive axiom audit NOT_RUN; certified computation NOT_RUN; independent analytical review NOT_RUN. Novelty UNASSESSED; the prime-square mechanism is classical. These source-level results are arithmetic lemmas. The existence of off-critical zeta zeros, their finiteness, RH, and primitive Dirichlet GRH are **not proved**.

**Canonical consumer:** The pole-inclusive actual zeta Weil distribution, fixed bump, and exact all-prime-power arithmetic forms in WeilFixedBumpNegativeDepth.md (WFDG), WeilPolynomialDefinitization.md (WPD), WeilPolynomialOneSidedPrimeCriterion.md (WPOS), WeilTwoScaleArithmeticShiftCriterion.md (W2S), and PrimeLaplaceDiscreteMaximumPrinciple.md (PLMP). This note discharges the asymptotic **higher-prime-power tail**, not the still-open ordinary-prime cancellation. Every use of a prime-only criterion below is justified by a proved return to the full source; no prime power is deleted from the original explicit formula.

**Source and pins:** Inspected grwtsk/math/main c23965a54c7483fddc69c72cbe5f12f9aa1af760, root and scoped instructions, publication policy; Lean leanprover/lean4:v4.34.1, mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. No import, declaration, mathlib pin, or workflow change. Coordination grwtsk/math#1801, scope comment 6837882761.

## 1. Test domain, character phases, and quantitative error budget

Fix a modulus q>=1 and a Dirichlet character chi modulo q, extended by zero on nonunits. Write chi_0 for the principal character modulo q. Let g in C_c^1(R;C) be supported in [-R,R], R>=0, with
\[
m_g=\int_{\mathbb R}g(v)\,dv,\quad \delta_\chi=
\begin{cases}1,&\chi^2=\chi_0,\\0,&\chi^2\ne\chi_0.\end{cases}
\]
All powers chi(p)^k are retained, not replaced by absolute squares. Define, for t>R,
\[
B_{\chi,g}(t)=
\sum_{k=2}^{\infty}\sum_{p\ {\rm prime}}
\frac{\log p}{p^{k/2}}\chi(p)^k\,g(k\log p-t).
\tag{1}
\]
The sum is FINITE for each fixed t: nonzero terms have e^(t-R)<=p^k<=e^(t+R). For a dual-character convention the same statements hold with bar chi, because (bar chi)^2 is principal exactly when chi^2 is principal.

Let
\[
\theta_{\chi^2}(x)=\sum_{p\le x}\chi(p)^2\log p,\quad
E_{\chi^2}(x)=\theta_{\chi^2}(x)-\delta_\chi x,
\]
and for y>=1 let
\[
\eta_{\chi^2}(y)=\sup_{x\ge y}\frac{|E_{\chi^2}(x)|}{x}.
\tag{2}
\]
For fixed q, the unconditional PNT in arithmetic progressions implies
\(\eta_{\chi^2}(y)\to0\): for principal chi^2, theta_{chi^2}(x)=x+o_q(x) (only primes dividing q are omitted); for nonprincipal chi^2, theta_{chi^2}(x)=o_q(x). The convergence is also uniform in chi over the FINITE character group modulo a FIXED q. No conductor-uniform error is asserted as q varies.

## WPSQ-1: the complete higher-prime-power asymptotic

**Theorem (written analytical proof, unconditional).** For t>R,
\[
\boxed{
\left|B_{\chi,g}(t)-\frac{\delta_\chi m_g}{2}\right|
\le
\eta_{\chi^2}(e^{(t-R)/2})
\left(\|g'\|_{L^1}+\tfrac12\|g\|_{L^1}\right)
+\frac{\|g\|_{\infty}}{\log2}(t+R)^2
\exp(-t/6+5R/6).
}
\tag{3}
\]
In particular,
\[
B_{\chi,g}(t)=\frac{\delta_\chi}{2}\int g+o_{q,\chi,g,R}(1)
\quad(t\to+\infty).
\tag{4}
\]
The k>=3 tail has the explicit exponential majorant in (3), independent of the modulus and character. The k=2 remainder has the exact signed Chebyshev-function budget (2).

**Proof: squares.** Put x_-=e^((t-R)/2), x_+=e^((t+R)/2), and
\[
w_t(x)=x^{-1}g(2\log x-t).
\]
The prime-square sum is the Stieltjes integral
\[
B_{\chi,g}^{(2)}(t)=\int_{x_-}^{x_+}w_t(x)\,d\theta_{\chi^2}(x).
\]
The main term from d(delta_chi x) is
\[
\delta_\chi\int_{x_-}^{x_+}x^{-1}g(2\log x-t)\,dx
=\frac{\delta_\chi}{2}\int_{-R}^R g(v)\,dv.
\]
Since g vanishes at the support endpoints, integration by parts has NO boundary contributions. Moreover
\[
w_t'(x)=x^{-2}\left(2g'(2\log x-t)-g(2\log x-t)\right).
\]
It follows from |E_{\chi^2}(x)|<=x eta_{\chi^2}(x_-) that
\[
\begin{aligned}
|B_{\chi,g}^{(2)}(t)-\delta_\chi m_g/2|
&\le\eta_{\chi^2}(x_-)
\int_{x_-}^{x_+}
\frac{2|g'(2\log x-t)|+|g(2\log x-t)|}{x}\,dx\\
&=\eta_{\chi^2}(x_-)
(\|g'\|_1+\tfrac12\|g\|_1).
\end{aligned}
\]
This is an exact quantitative error bound and does not assume RH or GRH.

**Proof: k>=3.** A nonzero term requires k <= (t+R)/log2 and p<=exp((t+R)/k). Each term has modulus at most
\[
\|g\|_\infty (t+R)\exp(-(t-R)/2),
\]
because log p <=(t+R)/k<=t+R and p^(-k/2)<=exp(-(t-R)/2). For k>=3, there are at most exp((t+R)/3) candidate integers p, a bound that does NOT use the prime number theorem. There are at most (t+R)/log2 candidate exponents. Thus
\[
\left|\sum_{k\ge3,p}\frac{\log p}{p^{k/2}}\chi(p)^kg(k\log p-t)\right|
\le
\frac{\|g\|_\infty}{\log2}(t+R)^2
e^{-(t-R)/2+(t+R)/3},
\]
which is the second term in (3). QED.

For chi trivial conductor 1, use the classical Korobov--Vinogradov estimate for theta(x)-x to strengthen the first term of (3) to
\[
O_{g,R}\!\left(\exp(-b t^{3/5}/(\log t)^{1/5})\right)
\]
for some b>0 and t sufficiently large. This constant is not asserted to be explicitly certified; Johnston--Yang (2023), Theorem 1.4, is an available source for explicit versions of the underlying theta estimate. For general fixed chi mod q the unqualified o(1) of (4) suffices; it is not promoted to a uniform-in-conductor bound.

## WPSQ-2: exact return to the original zeta prime-power source

Take the real-even mass-one compact smooth h=phi*phi from WFDG-1; support [-1,1], ∫h=1. Define
\[
S_{\rm all}(t)=
\sum_{n\ge2}\frac{\Lambda(n)}{\sqrt n}h(\log n-t),\qquad
S_{\rm prime}(t)=
\sum_{p}\frac{\log p}{\sqrt p}h(\log p-t).
\tag{5}
\]
Both are finite at each t. Unique prime-power factorization gives the EXACT identity
\[
S_{\rm all}(t)-S_{\rm prime}(t)=B_{1,h}(t)
\]
for t>1, with no omitted terms or totalized infinite series. WPSQ-1 yields
\[
\boxed{
S_{\rm all}(t)=S_{\rm prime}(t)+\frac12+
O_h\!\left(e^{-b t^{3/5}/(\log t)^{1/5}}+(1+t)^2e^{-t/6}\right).
}
\tag{6}
\]
The Riemann zeta full Weil formula STILL contains both poles, every prime power, and the gamma contribution. Equation (6) is a controlled arithmetic decomposition of one source term, not a replacement explicit formula.

Set M=Phi(1/2)^2 and D_all(t)=S_all(t)-M e^(t/2), D_prime(t)=S_prime(t)-M e^(t/2). Then
\[
D_{\rm all}(t)-D_{\rm prime}(t)=\frac12+o(1).
\tag{7}
\]
Consequently D_all is eventually bounded above if and only if D_prime is eventually bounded above. In conjunction with WPOS-2 / PLMP-2, the *prime-only* exact boundedness criterion is
\[
\boxed{
\mathrm{RH}\iff
\exists T,C\in\mathbb R,\ \forall t\ge T:\quad
\sum_p\frac{\log p}{\sqrt p}h(\log p-t)-M e^{t/2}\le C.
}
\tag{8}
\]
This is an equivalent UNPROVED arithmetic inequality, not a conclusion of WPSQ-1. WFDG-3's previously written horizontal-displacement growth law also transfers from D_all to D_prime because their difference stays bounded; this is a dependent consequence, not a second independent proof of WFDG-3.

## WPSQ-3: rank-one higher-prime-power correction for complete finite filter families

**Differential polynomial filters.** Fix degree r>=0, real coefficients a=(a_0,...,a_r), and P_a(X)=sum a_jX^j. Let f_j=(-partial_x)^j phi, f_a=sum a_j f_j, and
\[
h_{jk}=\tfrac12(f_j*\widetilde f_k+f_k*\widetilde f_j).
\]
These are real even compactly supported smooth tests (tilde f(x)=f(-x) for real f). Since ∫f_0=1 and ∫f_j=0 for j>=1,
\[
\int h_{jk}=\mathbf1_{j=0}\mathbf1_{k=0}.
\]
Let A_full^(r)(t), A_prime^(r)(t) be the full and ordinary-prime-only real symmetric arithmetic matrices constructed with these h_jk, respectively, with the SAME pole main-term matrix subtracted in both. WPSQ-1 applied to all finitely many entries gives
\[
\boxed{
A_{\rm full}^{(r)}(t)-A_{\rm prime}^{(r)}(t)
=\frac12 e_0e_0^{\mathsf T}+E_r(t),
\qquad \|E_r(t)\|_{\rm op}\to0
\quad(t\to\infty).
}
\tag{9}
\]
The convergence is UNIFORM over real coefficient vectors ||a||_2=1, because
\[
|a^{\mathsf T}E_r(t)a|\le\|E_r(t)\|_{\rm op}
\]
and the finitely many entry bounds (3) are independent of a. Thus for every fixed r,
\[
D_{P_a,\rm all}(t)-D_{P_a,\rm prime}(t)
=\tfrac12a_0^2+o_r(1)
\]
uniformly over the coefficient unit sphere. In particular, the WPOS-3 finite-prefix feasibility criterion can use prime-only matrices with a uniformly bounded, source-proved tail; changing coefficients between finite prefixes does not invalidate this assertion.

**Finite-shift polynomial filters.** For fixed r>=0 and Delta>0 set f_j(x)=phi(x-j Delta). Then ∫f_j=1, and each symmetrized correlation h_jk has integral one. The same argument yields
\[
\boxed{
A_{\rm full,shift}^{(r,\Delta)}(t)
-A_{\rm prime,shift}^{(r,\Delta)}(t)
=\frac12\mathbf1\mathbf1^{\mathsf T}+E_{r,\Delta}(t),
\quad \|E_{r,\Delta}(t)\|_{\rm op}\to0.
}
\tag{10}
\]
Consequently a shift filter P_a has an asymptotic correction (1/2)P_a(1)^2. This includes the two-scale W2S filters, with one independently fixed degree and spacing on each side.

**Fixed Dirichlet-character variant.** Replacing Λ(p^k) by χ(p)^k log p in these same finite families gives, for each FIXED q, the same rank-one matrices multiplied by δ_chi=1_{chi² principal}, with errors uniform over all characters mod that fixed q, by the finitely many character PNTs. The dual-character convention follows by conjugation. This is an arithmetic source lemma only: it does NOT purport to transfer the complete Weil form, character parity, gamma factors, conductor, poles, or any GRH target.

## WPSQ-4: prime-only finiteness target, proof dependencies, and falsification

Let P be a nonzero real differential polynomial filter of WPOS; let h_P be its ORIGINAL autocorrelation test and M_P its exact original two-pole moment. Define
\[
D_{P,\rm prime}(t)=
\sum_{p}\frac{\log p}{\sqrt p}h_P(\log p-t)-M_Pe^{t/2}.
\]
Since ∫h_P=P(0)^2, WPSQ-1 gives
\[
D_{P,\rm all}(t)-D_{P,\rm prime}(t)
=\frac12P(0)^2+o(1).
\tag{11}
\]
Thus (using WPOS-2, itself a WRITTEN unreviewed argument),
\[
\boxed{
\begin{aligned}
&\text{Only finitely many off-critical zeta zeros}\\
&\iff
\exists P\in\mathbb R[X]\setminus\{0\},\ \exists C,T:
D_{P,\rm prime}(t)\le C\quad\forall t\ge T.
\end{aligned}
}
\tag{12}
\]
Its minimal possible degree remains twice the number of distinct off-line quartets. This exact prime-only conclusion is backed by the *bounded* higher-power correction (11); no prime power was silently discarded or an all-scale implication weakened. The corresponding two-incommensurate-shift conditional criterion W2S-2 transfers to prime-only stencils by (10). It still lacks the requisite upper-bound proof.

## WPSQ-5: independent Euler-product Laplace proof for the prime-only criterion

The prime-only implication to RH in (8) can be proved DIRECTLY from the convergent Euler-product logarithmic derivative, without assuming WPD/WPOS's polynomial index representation. This is an independent derivation of the *reduction*, not an independent proof of RH.

Define for Re(s)>1/2
\[
R_{\ge2}(s)=\sum_{k\ge2}\sum_p(\log p)\,p^{-ks}.
\tag{13}
\]
This series converges ABSOLUTELY and normally on every closed half-plane Re(s)>=1/2+epsilon, since
\[
\sum_{k\ge2,p}(\log p)p^{-k\sigma}
\le \frac{1}{1-2^{-\sigma}}\sum_{n\ge2}\frac{\log n}{n^{2\sigma}}<\infty
\quad(\sigma>1/2).
\]
For Re s>1 (the ACTUAL convergence region of the Euler product),
\[
\sum_p\frac{\log p}{p^s}
=-\frac{\zeta'(s)}{\zeta(s)}-R_{\ge2}(s).
\tag{14}
\]
The right side, not the prime Dirichlet series itself, is used to continue this identity to Re(s)>1/2.

Fix T>=2, set
\[
E_T^{(1)}(w)=\int_{-\infty}^{T}S_{\rm prime}(t)e^{-wt}\,dt.
\]
The integrand has bounded t-support on (-infinity,T], hence E_T^(1) is entire. Fubini in Re w>1/2, followed by (14), gives
\[
\boxed{
\int_T^\infty D_{\rm prime}(t)e^{-wt}\,dt
=
-H(w)\frac{\zeta'(w+1/2)}{\zeta(w+1/2)}
-H(w)R_{\ge2}(w+1/2)
-E_T^{(1)}(w)
-\frac{Me^{-(w-1/2)T}}{w-1/2}.
}
\tag{15}
\]

**Pole audit.** The principal pole of zeta at s=1 has residue +M in the term -H(w)zeta'/zeta, cancelled EXACTLY by the last term at w=1/2. The remainder R_ge2 is holomorphic for Re w>0. The edge E_T^(1) is entire. At each nontrivial zeta zero rho with Re rho>1/2, let z=rho-1/2. The residue of (15) is -m_rho H(z), nonzero because the original fixed bump has Phi(z)!=0 whenever Re z!=0. Distinct zeros are grouped with their multiplicities; no critical-strip prime-power singularity was silently subtracted.

**Theorem (direct prime-only Landau implication).** If there exist T>=2 and C in R with D_prime(t)<=C for all t>=T, then RH holds.

**Proof.** Set g(t)=C-D_prime(t)>=0 for t>=T. By unconditional PNT and the bounded higher-power difference (7), g is of exponential order with finite Laplace abscissa sigma_g<=1/2. Suppose RH fails. The functional equation gives an actual zero rho with 1/2<Re rho<1, so (15) gives a nonzero nonreal pole at z=rho-1/2 with Re z>0. Therefore sigma_g>=Re z>0; otherwise the defining convergent Laplace integral would already be holomorphic at z. The classical Landau singularity theorem for Laplace transforms of nonnegative functions now forces a singularity of the transform at the REAL positive point sigma_g. But the continuation from (15), with the extra elementary term Ce^{-wT}/w, is holomorphic on the positive real axis: the s=1 pole was cancelled; zeta has no real zero in the open critical strip; the other terms are holomorphic there. Contradiction. The reverse direction of (8) is the full source-exact zero expansion under RH, with the higher prime powers controlled by (6). QED.

This derivation retains the **analytically continued** zeta function and uses the Euler-product Dirichlet series only for Re s>1; it is not a divergent-series argument in the strip. The gamma and both poles in the original Weil form remain in the separate exact source formula; (15) is the independent ordinary-prime Mellin/Laplace identity.

**Hostile check:** R_ge2(s) has a boundary singularity at Re s=1/2 due to prime squares; it is NOT entire and the argument cannot move (15) across that boundary without extra analytic continuation. The right-half-strip domain Re w>0 is all that the Landau contradiction requires. For nonreal Dirichlet characters the prime-only source is complex-valued, so the nonnegative-Laplace argument does not transfer to primitive GRH by merely replacing zeta with L(s,chi).

**First unresolved arithmetic premise:** establish the required one-sided upper bound for the ordinary-prime source in (8), (12), or the W2S pair, without assuming RH, finite exceptional zeros, or a replacement positive form. The unconditional PNT error for the ordinary-prime discrepancy remains of order e^(t/2-o(t)), far larger than a constant. WPSQ-1 eliminates only the genuinely lower-order prime powers and provides no new cancellation among the ordinary primes near e^t.

**Falsification and quantifiers:**
- The test g may be COMPLEX and change sign; (3) uses absolute values only for certified remainder control. Character phases are preserved in its exact source sum.
- χ² principal is a test on the character modulo FIXED q, not a statement that χ is principal or that GRH holds. For quadratic χ, the prime-square limit is 1/2 times ∫g; for nonreal χ with χ² nonprincipal, it is zero.
- The k>=3 estimate is uniform in modulus and character, whereas the square-error eta_chi² is NOT conductor-uniform. No fixed-q bound is promoted to all-q GRH.
- The rank-one limits (9)--(10) are for FIXED r and, in (10), FIXED Delta; no all-r or all-window uniformity is claimed. For differential filters with P(0)=0 the main square correction vanishes, but the error remains and cannot simply be ignored in a finite certificate.
- Finite calculations, even with exact arithmetic for selected t, do not prove universal upper bounds or the existence of polynomial certificates.
- The difference between (11) and the whole Weil formula is source-side asymptotic control ONLY. Both pole orientations, character conductor/parity and all archimedean terms remain in the exact source as required.

**Primary literature comparison:** This is the classical prime-square / higher-power separation, not a novelty claim: the unconditional PNT in arithmetic progressions is standard, e.g. Zeev Rudnick, *Primes in arithmetic progressions: fixed modulus*, Section 2 (2015), https://www.math.tau.ac.il/~rudnick/courses/sieves2015/fixed%20progressions.pdf; the PNT and its Korobov--Vinogradov error are collected in Tao et al., *Distribution of primes: long ranges*, Theorem 14.4, https://teorth.github.io/expdb/blueprint/chap-prime_counting_function.html; explicit theta estimates in D. Johnston and A. Yang, *Some explicit estimates for the error term in the prime number theorem*, J. Math. Anal. Appl. 2023, Theorem 1.4, DOI 10.1016/j.jmaa.2023.127460. The exact Weil source and full test domain are Masatoshi Suzuki, *Weil's quadratic form via the screw function*, arXiv:2606.09096v3, pp. 1--2, and Enrico Bombieri, *Remarks on Weil's quadratic functional in the theory of prime numbers, I*, Rendiconti Lincei 11 (2000), §§2--3 and Theorem 8. Individual local source-return dependencies are WFDG, WPD, WPOS, W2S and PLMP adjacent to this note. No Lean paper-to-declaration correspondence is claimed here.

**Formal work not performed:** Natural small modules would establish the exact k>=3 combinatorial tail in Lean, then the Stieltjes-PNT transfer and fixed-family matrix convergence, before returning to the original arithmetic explicit formula. No Lean source, sorry, admit, new axiom, dependency or execution claim is introduced. All formal verification remains NOT_RUN; independent review NOT_RUN; novelty UNASSESSED.

**Automation boundary:** Canonical noe-proof-automation SKILL.md at workflows/research/orchestration/skills/noe-proof-automation in grwtsk/noeaaeue/main was inaccessible (HTTP 404) at inspected revision 310b110367972b0211c0f80f5b9428710c63a5b6. No dependent proof automation was dispatched. This source-only publication supplies no execution authority or execution receipt.
