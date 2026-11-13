# Exact Weil prime-pair energy and its zero-displacement threshold

Local attribution: grwtsk contributors. Edition 1, 2026-11-12. MSC2020 11M06, 11M26, 11N05, 11N13.

EVIDENCE: WRITTEN_ANALYTICAL_ARGUMENT; Lean elaboration NOT_RUN; fresh kernel replay NOT_RUN; transitive axiom audit NOT_RUN; certified computation NOT_RUN; independent review NOT_RUN; mathematical novelty UNASSESSED. No all-height mean-square upper bound, finite exceptional-zero theorem, RH, or primitive Dirichlet GRH is proved. The statements below give an UNCONDITIONAL boundary-weighted energy estimate, exact source identities, and a precise open prime-pair cancellation target.

Canonical inputs: WeilFixedBumpNegativeDepth.md (actual full pole-inclusive zeta source and fixed dyadic smooth test); WeilPrimeSquareTail.md (prime-square and all k>=3 return); PrimitivePrimeSourceConductorBounds.md (actual primitive Dirichlet zero-side contour and dual-character functional equation); WeilPrimeCharacterMoments.md (PNT prime-window diagonal); WeilPrimeOscillationResidues.md (externally certified critical zeta zero and rational residue). Consumer: the first unproved all-height signed arithmetic premise underlying the WPOS/W2S finite-negative-index route and actual primitive GRH targets. Initial inspected math/main 17305d0984f693954a725c50f5a405cfa4b1dcc7; concurrent changes reconciled at e9e56bc167d7de60304074be675e79ee2fc3f979, with no existing source edited. Toolchain Lean leanprover/lean4:v4.34.1; mathlib d13f23b723b8a846827a245b89c10fc7d3f11612. Coordination issue #1801, scope comment 6842246877.

## 1. Source and centering (all poles and prime powers retained)

Let phi be the real even nonnegative mass-one smooth dyadic convolution bump, supported in [-1/2,1/2], and h=phi*phi. Write
\[
\Phi(z)=\int_{\mathbb R}\phi(x)e^{zx}dx,\quad H(z)=\Phi(z)^2,\quad M=H(1/2).
\tag{1}
\]
Phi has no zero when Re z !=0. This complex-square convention is NOT replaced by a modulus square off the critical line.

Fix a PRIMITIVE character chi of conductor q>=1, extended by zero on nonunits. q=1 is the conductor-one zeta source; primitive q>1 is nonprincipal. Put
\[
\delta_\zeta={\bf1}_{q=1},\quad
\delta_2={\bf1}_{\chi^2=\chi_0\pmod q},
\]
\[
S_{\chi,1}(t)=\sum_{p}\frac{\chi(p)\log p}{\sqrt p}h(\log p-t),\quad
S_{\chi,\rm all}(t)=\sum_{n\ge2}\frac{\Lambda(n)\chi(n)}{\sqrt n}h(\log n-t),
\]
\[
D_{\chi,\rm all}(t)=S_{\chi,\rm all}(t)-\delta_\zeta Me^{t/2},\qquad
\boxed{E_\chi(t)=S_{\chi,1}(t)-\delta_\zeta Me^{t/2}+\delta_2/2.}
\tag{2}
\]
All sums are FINITE at each t. The pole term applies ONLY to q=1; the original complete Weil form also retains its second pole orientation, the origin term, gamma/parity, conductor and every prime power. Those are not omitted in this arithmetic normalization. The exact k>=2 decomposition of WeilPrimeSquareTail.md proves for FIXED chi
\[
B_{\chi,h}(t):=S_{\chi,\rm all}(t)-S_{\chi,1}(t)
=\delta_2/2+o_\chi(1),
\quad
E_\chi(t)-D_{\chi,\rm all}(t)=\delta_2/2-B_{\chi,h}(t)=o_\chi(1).
\tag{3}
\]
For q<=t^A this error is uniform in q,chi (with the ineffective Siegel--Walfisz constants) by PCUB-2. The offset delta_2/2 is essential: a quadratic character has a nonvanishing prime-square main term. Complex phases chi(p)^k are retained exactly. For conductor-one zeta the correctly centered ordinary-prime source is S_1(t)-Me^(t/2)+1/2.

Let Z_chi denote DISTINCT nontrivial zeros of the analytically continued L(s,chi), with positive multiplicities m_rho. Define
\[
\Theta_\chi=\sup_{\rho\in Z_\chi}|\Re\rho-1/2|\in[0,1/2].
\tag{4}
\]
The same-character zero reflection rho->1-conjugate(rho) is obtained from the ACTUAL dual-character functional equation plus conjugation; one cannot simply assume conjugation preserves an individual complex character's divisor.

## WPE-1. Unconditional boundary-energy control in the Siegel--Walfisz conductor range

**Theorem (unconditional).** Fix A>0. There exist c_A,C_{A,h}>0 and T_A such that
\[
\boxed{|E_\chi(t)|\le C_{A,h}(e^{t/2-c_A\sqrt t}+1)
\qquad(t\ge T_A,\quad q\le t^A,\quad \chi\text{ primitive}).}
\tag{5}
\]
The constants/threshold from Siegel--Walfisz are INEFFECTIVE. Consequently, for T>=T_A,
\[
\boxed{
\sup_{q,\chi\ \mathrm{primitive}}
\int_{\max(T,q^{1/A})}^\infty e^{-t}|E_\chi(t)|^2dt
\ll_{A,h}(1+\sqrt T)e^{-2c_A\sqrt T}+e^{-T}.
}
\tag{6}
\]
For every FIXED primitive chi (no RH/GRH assumed),
\[
\boxed{\int_2^\infty e^{-t}|E_\chi(t)|^2dt<\infty.}
\tag{7}
\]

**Proof.** Write \(\Psi_\chi(x)=\sum_{n\le x}\Lambda(n)\chi(n)\). The character form of Siegel--Walfisz supplies, uniformly for q<=(log x)^(A+1),
\[
|\Psi_\chi(x)-\delta_\zeta x|\le C_A x e^{-c_A\sqrt{\log x}}.
\tag{8}
\]
For x in [e^(t-1),e^(t+1)], q<=t^A implies q<=(log x)^(A+1) for large t. Apply exact Stieltjes integration by parts with
\(w_t(x)=x^{-1/2}h(\log x-t)\) and
\(w_t'(x)=x^{-3/2}(h'(\log x-t)-h(\log x-t)/2)\).
Both endpoint contributions vanish by smooth compact support. The term from \(\delta_\zeta dx\) is EXACTLY
\[
\delta_\zeta\int x^{-1/2}h(\log x-t)dx
=\delta_\zeta e^{t/2}\int e^{v/2}h(v)dv
=\delta_\zeta Me^{t/2}.
\]
Thus
\[
|D_{\chi,\rm all}(t)|\le C_Ae^{t/2-c_A\sqrt t}
\int_{-1}^1e^{v/2}(|h'(v)|+|h(v)|/2)dv.
\]
The higher-power correction in (3) is O(1) UNIFORMLY over all q,chi for large t, since |chi(p)^k|<=1 and the unweighted zeta k>=2 source is bounded by WPSQ-1. This proves (5). Its square times e^-t is bounded by a constant times \(e^{-2c_A\sqrt t}+e^{-t}\). Integrating from max(T,q^(1/A)) ensures q<=t^A at every integration point; the exact integral of e^(-2c sqrt t) is
\[
(\sqrt T/c+1/(2c^2))e^{-2c\sqrt T}.
\]
This proves (6). Every fixed q satisfies q<=t^A eventually, and its finite initial interval contributes a finite continuous integral, proving (7). No character zero-free assumption beyond the classical unconditional Siegel--Walfisz theorem is used. QED.

## WPE-2. The precise weighted L2 threshold equals horizontal zero displacement

For sigma>0 define the possibly infinite energy
\[
\mathscr E_\chi(\sigma)=\int_2^\infty e^{-2\sigma t}|E_\chi(t)|^2dt.
\tag{9}
\]
**Theorem (unconditional, source-return reduction).**
\[
\boxed{
\sigma>\Theta_\chi\Rightarrow\mathscr E_\chi(\sigma)<\infty,\quad
0<\sigma<\Theta_\chi\Rightarrow\mathscr E_\chi(\sigma)=+\infty,
\quad
\inf\{\sigma>0:\mathscr E_\chi(\sigma)<\infty\}=\Theta_\chi.
}
\tag{10}
\]
No general assertion is made at sigma=Theta_chi; the unconditional boundary point sigma=1/2 in (7) remains separately true.

**Proof.** PPCG-2 derives from the actual completed primitive Dirichlet explicit formula, including the q=1 pole, the gamma/parity/trivial-zero term and the DUAL-character functional equation,
\[
|D_{\chi,\rm all}(t)|\ll_h\log(q+2)e^{\Theta_\chi t}\qquad(t\ge2).
\]
The bounded correction (3) proves the finite implication for sigma>Theta_chi.

Conversely, if \(\mathscr E_\chi(\sigma)<\infty\), Cauchy--Schwarz implies the unilateral Laplace transform
\[
F_{\chi,T}(w)=\int_T^\infty E_\chi(t)e^{-wt}dt
\]
is holomorphic for EVERY Re w>sigma: multiply \(E_\chi(t)e^{-\sigma t}\in L^2\) by \(e^{-(\Re w-\sigma)t}\in L^2\). But PPCG-1 supplies its exact meromorphic continuation from the REAL Euler-product convergence half-plane Re w>1/2 to Re w>0:
\[
\begin{aligned}
F_{\chi,T}(w)={}&-H(w)\frac{L'}{L}(w+1/2,\chi)
-H(w)R_{\chi,\ge2}(w+1/2)-I_{\chi,T}(w)\\
&-\delta_\zeta\frac{Me^{-(w-1/2)T}}{w-1/2}
+\delta_2\frac{e^{-wT}}{2w}.
\end{aligned}
\tag{11}
\]
Here R_chi,>=2 is the normally holomorphic k>=2 Euler-logarithm series in Re(w+1/2)>1/2, and I_chi,T is the ENTIRE initial-edge prime integral. At q=1 the s=1 pole cancels with the exact displayed main term. The added square centering has its only pole at w=0, not in Re w>0. At any actual nontrivial zero rho with Re rho>1/2, (11) has residue
\[
-m_\rho H(\rho-1/2)\ne0
\tag{12}
\]
because Phi is nonzero off the critical line. Same-character reflection guarantees such a zero with Re(rho-1/2)>sigma whenever 0<sigma<Theta_chi. This contradicts holomorphy of the convergent integral. Thus (10) holds without assuming RH/GRH. QED.

## WPE-3. A CESARO mean-square source criterion and exact GRH-conditional limit

Let \(J_\chi(T)=\int_2^T|E_\chi(t)|^2dt\), T>2. Then
\[
\boxed{
\text{ALL nontrivial zeros of }L(s,\chi)\text{ lie on Re}s=1/2
\iff
\exists C_\chi<\infty\ \forall T>2:\ J_\chi(T)\le C_\chi(T-2).
}
\tag{13}
\]
Taking every primitive chi including q=1 is equivalent to RH PLUS primitive Dirichlet GRH, with individual C_chi, not a proved bound.

**Proof.** If the Cesaro bound holds, the nondecreasing function J_chi obeys J_chi(T)=O_chi(T). Integration by parts gives for EVERY sigma>0
\[
\mathscr E_\chi(\sigma)=2\sigma\int_2^\infty e^{-2\sigma t}J_\chi(t)dt<\infty.
\]
Equation (10) forces Theta_chi=0. Conversely under GRH for fixed chi, the ORIGINAL complete source contour formula plus (3) gives
\[
E_\chi(t)=-\sum_{\rho\in Z_\chi}m_\rho|\Phi(i\gamma_\rho)|^2e^{i\gamma_\rho t}+o_\chi(1),
\qquad \gamma_\rho=\Im\rho.
\tag{14}
\]
The zero sum is absolutely and uniformly convergent in t by smooth transform decay and classical primitive zero counting. Therefore E_chi is bounded and (13) holds. Uniform convergence and orthogonality of distinct Fourier frequencies yield the EXACT long-window mean and Parseval energy:
\[
\boxed{
\lim_{T\to\infty}\frac1{T-2}\int_2^T E_\chi(t)dt=-m_{1/2,\chi},\qquad
\lim_{T\to\infty}\frac{J_\chi(T)}{T-2}
=\sum_{\rho\in Z_\chi}m_\rho^2|\Phi(i\gamma_\rho)|^4.
}
\tag{15}
\]
The first term records the multiplicity of a possible central zero, NOT an assumed absence of central zeros. For complex primitive chi the nonzero ordinates need not come in +/- pairs INSIDE that character; no such symmetry is imposed. Repeated zero multiplicities are weights, not independent nodes. The sum is finite and may be bounded by O_h(log²(q+2)) using the standard zero count and multiplicity bound, without asserting simple zeros. QED.

The Abel-weighted normalized energy \(2\sigma\int_2^\infty e^{-2\sigma(t-2)}|E_\chi(t)|^2dt\) tends to the same finite sum in (15) under GRH. If GRH fails, (10) makes it infinite at every sufficiently small positive sigma.

## WPE-4. Exact finite prime-pair correlation and the required quadratic cancellation

For any T>2 and primes p,r<=e^(T+1), define
\[
w_p=\frac{\log p}{\sqrt p},\qquad
V_T(p,r)=\int_2^T h(\log p-t)h(\log r-t)dt,
\quad
b_\chi(t)=\delta_2/2-\delta_\zeta Me^{t/2}.
\tag{16}
\]
This nonnegative real kernel V_T vanishes whenever \(|\log(p/r)|\ge2\); thus only multiplicatively nearby prime pairs p/r in [e^-2,e²] contribute. Expanding the actual source square proves the FINITE EXACT IDENTITY
\[
\boxed{\begin{aligned}
J_\chi(T)={}&
\sum_{p,r\le e^{T+1}}\chi(p)\overline{\chi(r)}w_pw_rV_T(p,r)\\
&+2\Re\sum_{p\le e^{T+1}}\chi(p)w_p
\int_2^T h(\log p-t)b_\chi(t)dt
+\int_2^T b_\chi(t)^2dt.
\end{aligned}}
\tag{17}
\]
No numerical or arithmetic tail is omitted: all primes outside the indicated cutoff are identically zero on [2,T]. The full-prime-power analogue, retaining all p^k, follows with indices m,n>=2 and w_n=Lambda(n)/sqrt(n), and baseline b(t)=-delta_zeta M e^(t/2); the exact source return (3) connects their asymptotic energy conditions.

For a FIXED primitive nonprincipal chi (q>1), define the DIAGONAL arithmetic prime-pair term
\[
\mathrm{Diag}_\chi(T)=\sum_{\substack{p\le e^{T+1}\\p\nmid q}}\frac{(\log p)^2}{p}V_T(p,p).
\tag{18}
\]
The finitely many p|q contribute only a bounded initial t-range. WPCM-2's unconditional PNT/Stieltjes diagonal variance gives
\[
\boxed{\mathrm{Diag}_\chi(T)=\frac12\|h\|_2^2T^2+o_\chi(T^2).}
\tag{19}
\]
Let Off_chi(T) be the ordered off-diagonal p!=r part of the first line in (17), preserving the signed COMPLEX phases chi(p)conj(chi(r)); conjugate pairs make the total real. Since q>1 has no zeta pole, b_chi(t)=delta_2/2 is just a constant. The Cesaro energy boundedness of E_chi is equivalent to the same boundedness for S_chi,prime, by Cauchy--Schwarz and addition of a fixed constant. Therefore WPE-3 proves the exact unproved arithmetic criterion
\[
\boxed{
\mathrm{GRH\ for\ fixed\ primitive}\ \chi,\ q>1
\iff
\mathrm{Off}_\chi(T)=-\mathrm{Diag}_\chi(T)+O_\chi(T)
\quad(T\to\infty).
}
\tag{20}
\]
In particular under GRH, a NECESSARY cancellation would be
\[
\boxed{\mathrm{Off}_\chi(T)
=-\tfrac12\|h\|_2^2T^2+o_\chi(T^2).}
\tag{21}
\]
The arithmetic diagonal is PROVED unconditionally to be quadratic, while the required off-diagonal cancellation to a residual O(T) is NOT PROVED. This is the first substantive signed prime-pair arithmetic obligation, not a result of character averages or a model operator. For q=1 zeta, b_zeta(t)=1/2-Me^(t/2) MUST be retained in (17); discarding it loses an exponentially large pole contribution and is invalid.

Dual-character check: since h is real and b_chi is real and unchanged by conjugation, E_{bar chi}(t)=conjugate(E_chi(t)) and J_{bar chi}(T)=J_chi(T) exactly. This does not equate chi and bar chi zeros without their true dual-character equation.

## WPE-5. Unconditional positive energy of the actual centered zeta prime source

The published and externally verified first critical zero rho1=1/2+i gamma1, 14<gamma1<15, together with the dyadic sinc bound in WeilPrimeOscillationResidues.md gives \(a_1=m_{\rho_1}|\Phi(i\gamma_1)|^2>1/1000\). Its distinct conjugate zero has the same coefficient. Thus
\[
\boxed{
\limsup_{T\to\infty}\frac1{T-2}
\int_2^T\left|
\sum_p\frac{\log p}{\sqrt p}h(\log p-t)
-Me^{t/2}+\tfrac12\right|^2dt
\ge 2a_1^2>\frac2{10^6}.
}
\tag{22}
\]
**Proof.** If RH is true, (15) is an EXACT limit, including both certified critical zeros, so it is >=2a1². If RH is false, (13) implies the Cesaro mean-square cannot have bounded limsup, hence its extended limsup is +infinity. In either case (22) holds unconditionally. It is NOT an eventual per-window bound, an effective detection height or a proof of finite negative index. QED.

## Prior-art comparison, falsification and remaining obligations

WPE-1: classical Siegel--Walfisz estimate for primitive character Chebyshev sums, e.g. Kevin Ford, large sieve notes, Theorem SW, and openmaths.org/courses/NT-DIRL/NT-DIRL-11.html Theorem 2.1. Constants are ineffective. WPE-2: source-exact primitive Euler logarithmic derivative and meromorphic pole, PPCG-1/2; elementary Cauchy--Schwarz Laplace holomorphy. WPE-3: classical uniform almost-periodic Fourier series and Parseval; exact analytic source from PPCG-2. WPE-4: finite prime-pair algebra and WPCM-2 PNT variance. WPE-5: WPSO-2 externally certified first zero via Platt--Trudgian (2021) and FLINT. Compare, but DO NOT CONFUSE with, Brent--Platt--Trudgian, *The mean square of the error term in the prime number theorem*, J. Number Theory 238 (2022), 740--762, DOI 10.1016/j.jnt.2021.09.016: their weighted UNSMOOTHED Chebyshev discrepancy is a DIFFERENT arithmetic statistic, and their results are NOT imported as proof of (22). All mathematical novelty remains UNASSESSED.

Hostile checks: a finite or conductor-averaged character experiment cannot establish (20) for each FIXED chi over all T; q dependence is not eliminated by Siegel--Walfisz. The positive diagonal in (19) must not be mistaken for positivity of the full complex Weil form. For q=1 zeta both poles are preserved in the source and the large exponential baseline b_zeta is retained. No finite zero list replaces the infinite zero sum or proves GRH. The central zero, multiplicities, complex zero locations and true dual-character symmetry are explicit.

**Open arithmetic step:** Prove the O_chi(T) signed prime-pair residual in (20) for EACH actual primitive chi and the analogous full-pole zeta formula (17), or a legitimate weaker finite-index source inequality, without assuming the corresponding zeros are on the line. The unconditional energy at exponential weight 1/2 in (7) and the diagonal estimate (19) do NOT prove this. No Lean declaration, source axiom, sorry, admit, dependency or root import change. Formal execution and independent mathematical review NOT_RUN; novelty UNASSESSED. No Noe proof automation or cross-chat execution was dispatched.
