# Certified-zero residue forces unconditional oscillation in the actual zeta prime source

Local attribution: grwtsk contributors. 2026-11-12. MSC2020 11M26, 11N05.
Status: WRITTEN_ANALYTICAL_ARGUMENT; LEAN_ELABORATION_NOT_RUN; FRESH_KERNEL_NOT_RUN; TRANSITIVE_AXIOM_AUDIT_NOT_RUN; CERTIFIED_LOCAL_COMPUTATION_NOT_RUN; INDEPENDENT_REVIEW_NOT_RUN; NOVELTY_UNASSESSED. This source proves no RH, GRH, finite exceptional divisor or finite negative index claim. Its one external rigorously certified zero is a published input, not a locally executed check.

Consumer/dependencies: WFDG-1/2 in WeilFixedBumpNegativeDepth.md supplies the fixed smooth dyadic convolution test and full pole-inclusive original Weil distribution; WPOS-1 in WeilPolynomialOneSidedPrimeCriterion.md supplies Landau's theorem; WPSQ-1/2 in WeilPrimeSquareTail.md proves the actual higher-power correction. The theorem here is an ACTUAL arithmetic lower-sign obstruction relevant to WPOS/W2S's unresolved all-window upper sign premise. Initial source head inspected grwtsk/math/main 83f3cdac0bb22ad41c745710d29cf79a1f1ec4de; concurrent changes to unrelated sources were preserved by an independent single-file Contents API publication on main. Lean v4.34.1, mathlib d13f23b723b8a846827a245b89c10fc7d3f11612 unchanged. Issue #1801, scope comment 6841567869.

## Exact full source and transform

Let phi be the nonnegative real even C-infinity mass-one bump supported [-1/2,1/2], obtained by convolution of uniform distributions on [-a_j,a_j], a_j=2^(-j-1), j>=1. Its bilateral Laplace transform is
\[
\Phi(z)=\prod_{j>=1}\frac{\sinh(a_jz)}{a_jz}.
\]
Let h=phi*phi, supported [-1,1], real even nonnegative with integral 1. Put
\[
M=\Phi(1/2)^2,\quad
S_{\mathrm{all}}(t)=\sum_{n>=2}\frac{\Lambda(n)}{\sqrt n}h(\log n-t),\quad
D_{\mathrm{all}}(t)=S_{\mathrm{all}}(t)-Me^{t/2}.
\tag{1}
\]
The ACTUAL sum includes every prime power and is finite at each t. The original Weil distribution W retains BOTH pole orientations, all prime powers, the origin term and the complete gamma term. WFDG-2 proves for t>1:
\[
D_{\mathrm{all}}(t)=-K(t)-G(t),\quad
K(t)=W(h(\cdot-t))
=\sum_{\rho\ \mathrm{distinct}}m_\rho\Phi(z_\rho)^2e^{z_\rho t},\quad
z_\rho=\rho-1/2,
\tag{2}
\]
\[
G(t)=\int_{-1}^1h(v)\frac{e^{-5(t+v)/2}}{1-e^{-2(t+v)}}dv=O(e^{-5t/2}).
\tag{3}
\]
In this EXACT two-pole cancellation the s=0 pole matches the leading gamma term; the s=1 pole supplies Me^(t/2). No assumption RH is made. Coefficients in (2) are complex SQUARES off the line, with positive multiplicities. Rapid transform decay and classical zeta zero counting justify absolute uniform convergence on compact t-sets.

For T>=2, the one-sided transform \(F_T(w)=\int_T^\infty D_{\mathrm{all}}(t)e^{-wt}dt\), initially defined for Re w>1/2, has the meromorphic continuation to Re w>0
\[
F_T(w)=-
\sum_\rho m_\rho\Phi(z_\rho)^2
\frac{e^{(z_\rho-w)T}}{w-z_\rho}
-\int_T^\infty G(t)e^{-wt}dt.
\tag{4}
\]
The final integral is analytic for Re w>-5/2. The expression has NO poles at NONNEGATIVE REAL w: zeta has no real zeros in (0,1) and \(\zeta(1/2)<0\). A critical zero \(\rho=1/2+i\gamma\) with Phi(i gamma)!=0 gives a pole at w=i gamma with residue \(-m_\rho|\Phi(i\gamma)|^2\). The distinct zero locations and their multiplicities remain explicit.

## WPSO-1. Quantitative Landau--Abel sign lemma

**Lemma.** Let f:[T0,infinity)->R be continuous of exponential order. Suppose its unilateral Laplace transform has meromorphic continuation to a neighborhood of Re w>=0, is analytic at every NONNEGATIVE REAL w (including 0), and has a NONREAL pole at w=i gamma, gamma!=0, with residue r!=0. Then
\[
\boxed{\limsup_{t\to\infty}f(t)\ge|r|,\quad
\liminf_{t\to\infty}f(t)\le-|r|.}
\tag{5}
\]

**Proof.** Suppose f<=c eventually, enlarge T and define g(t)=c-f(t)>=0 for t>=T. Then
\[
F_g(w)=\frac{ce^{-wT}}w-F_T(w)
\]
where the integral initially converges. Let sigma_c be its Laplace abscissa. It is finite above by exponential order. The pole at i gamma forces sigma_c>=0, otherwise the defining integral would be holomorphic at i gamma. If sigma_c>0, the classical Landau theorem for nonnegative Laplace transforms forces a singularity at the REAL point sigma_c, contradicting the stated real-axis holomorphy of the continuation. Hence sigma_c=0.

For every real sigma>0, positivity gives
\[
|\sigma F_g(\sigma+i\gamma)|\le\sigma F_g(\sigma).
\tag{6}
\]
By meromorphic residues the left side tends to |r| as sigma decreases to zero. The right side tends to c, because F_T is analytic at w=0, while ce^(-sigma T)/sigma has coefficient c. Thus |r|<=c. Since every eventual upper bound obeys this inequality, limsup f>=|r|. Apply the same reasoning to -f for the lower limit. QED. The Abel inequality (6), beyond Landau alone, is what gives an EXPLICIT sign amplitude.

## WPSO-2. Explicit first-zero coefficient and ACTUAL prime oscillation

**Externally certified fact:** The first nontrivial zeta zero has \(\rho_1=1/2+i\gamma_1\), with 14<gamma_1<15. The existence/interval and critical-line location are independently certified by Platt--Trudgian (2021) and explicitly enclosed in FLINT's rigorous zero-isolation documentation. Only existence with positive multiplicity is needed.

For gamma in (14,15), Phi(i gamma) is the real infinite product
\[
\Phi(i\gamma)=\prod_{j>=1}\frac{\sin(a_j\gamma)}{a_j\gamma}.
\]
The first three bounds are elementary:
(i) \(|\sin(\gamma/4)|>1/3\), since 5/14<gamma/4-pi<pi/2 using 3.14<pi<22/7 and sin(5/14)>1/3 by sin(x)>=x-x³/6. Therefore \(|\operatorname{sinc}(\gamma/4)|>4/45\).
(ii) \(\gamma/8\) lies within 0.305 of pi/2; \(\cos u>=1-u²/2\) gives \(\sin(\gamma/8)>19/20\), and the second sinc factor >38/75.
(iii) For j>=3, a_j gamma<=15/16<1, so sinc(a_j gamma)>=1-a_j² gamma²/6. Since \(\sum_{j>=3}a_j²=1/192\) and \(\prod(1-b_j)>=1-\sum b_j\), the remaining product exceeds \(1-225/1152=927/1152>4/5\).
Thus
\[
\boxed{
|\Phi(i\gamma_1)|>\frac4{45}\frac{38}{75}\frac45
=\frac{608}{16875},\qquad
a_1=m_{\rho_1}|\Phi(i\gamma_1)|^2
>\frac{369664}{284765625}>\frac1{1000}.
}
\tag{7}
\]
This bound uses exact rational inequalities, not uncertified numerical rounding. The transform (4) satisfies WPSO-1 with a pole at w=i gamma_1 and residue -a_1, so unconditionally
\[
\boxed{
\limsup_{t\to\infty}D_{\mathrm{all}}(t)\ge\frac1{1000},
\qquad
\liminf_{t\to\infty}D_{\mathrm{all}}(t)\le-\frac1{1000}.
}
\tag{8}
\]
Indeed for EVERY T there exist t_+,t_->T with D_all(t_+)>1/1000 and D_all(t_-)< -1/1000, because the residue strictly exceeds 1/1000. This holds whether RH is true or false. It does not assert bounded gaps between crossings or any finite-index bound.

## WPSO-3. Prime-only centering and filtered margins

Let \(D_{\mathrm{prime}}(t)=\sum_p(\log p)p^{-1/2}h(\log p-t)-Me^{t/2}\). WPSQ-1/2 gives the UNCONDITIONAL SOURCE-EXACT higher-prime-power return
\[
D_{\mathrm{all}}(t)=D_{\mathrm{prime}}(t)+\tfrac12+o(1).
\tag{9}
\]
Thus the same explicit two-sided oscillation holds for the correctly centered ORDINARY-prime discrepancy:
\[
\boxed{
\limsup_{t\to\infty}(D_{\mathrm{prime}}(t)+\tfrac12)\ge1/1000,\quad
\liminf_{t\to\infty}(D_{\mathrm{prime}}(t)+\tfrac12)\le-1/1000.
}
\tag{10}
\]
The offset 1/2 is ESSENTIAL: simply discarding prime squares would give a false center.

For any real differential polynomial P with P(i gamma_1)!=0, the original filtered Weil kernel has critical-line pole residue \(-a_1|P(i\gamma_1)|²\). Hence its ACTUAL full-prime-power discrepancy has limsup >=a_1|P(i gamma_1)|² and liminf <=-a_1|P(i gamma_1)|², with prime-only centering +P(0)²/2 from WPSQ-3. For real finite-shift filters at spacing Delta, the residue becomes \(-a_1|P(e^{i\Delta\gamma_1})|²\), centered at +P(1)²/2 in the prime-only version. No positive margin is claimed for a filter deliberately annihilating the selected critical zero; no polynomial-independent lower bound is inferred.

## Prior art, hostile checks, and open premise

Published certified critical zero: Dave Platt and Tim Trudgian, *The Riemann hypothesis is true up to 3*10^12*, Bulletin of the London Mathematical Society 53 (2021), 792--797, DOI 10.1112/blms.12460; FLINT https://flintlib.org/doc/acb_dirichlet/zeta-zeros.html provides the explicit ball enclosure around 14.1347251417. This external finite certificate is not represented as a local verification of all zeros.

Classical Landau nonnegative-Laplace theorem: Gyori--Ladas--Pakula, *Oscillation theorems for delay differential equations via Laplace transforms*, Canadian Mathematical Bulletin 33 (1990), Lemma 1, DOI 10.4153/CMB-1990-053-4. Related prime-counting sign oscillations are classical: Montgomery--Vaughan, *Multiplicative Number Theory I*, Chapter 15, Section 15.2, Theorem 15.8. No novelty is claimed for this fixed-bump application.

Original complete Weil distribution: Masatoshi Suzuki, *Weil's quadratic form via the screw function*, arXiv:2606.09096v3, page 1. Exact two-pole source return WFDG-2, and complete prime-square tail WPSQ-1/2. No ordinate-only projection or absolute-square replacement off the line.

**Hostile checks:** (8) rules out an eventual fixed sign D_all>=0, D_all<=0, or D_all=o(1). It does NOT rule out an eventual upper bound D_all<=C for C>=1/1000 (which would be RH-strength), nor does it bound the number of negative directions of the full Weil form. A synthetic single off-line quartet can cause unbounded oscillation while possessing finite negative index. This is a LOWER amplitude constraint, not the missing upper bound.

**First unresolved arithmetic premise:** Prove the source-exact all-height upper-sign inequality for an admissible polynomial-filtered actual zeta discrepancy without assuming RH, finite exceptional zeros, or a substitute positive model. Formalization at the canonical analytically continued zeta source and independent audit remain unperformed. No Lean source, root import, mathlib pin, axiom, sorry or admit has been changed or introduced. No Noe proof automation or cross-chat execution was invoked.
