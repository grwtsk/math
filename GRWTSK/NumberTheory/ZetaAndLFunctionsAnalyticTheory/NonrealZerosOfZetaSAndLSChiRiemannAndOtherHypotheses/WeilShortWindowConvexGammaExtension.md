# Convex gamma boundary: full Weil positivity on enlarged short windows

Local attribution: grwtsk contributors. Edition 1, 2026-11-12.
MSC2020: 11M26 (zeta zeros), 11M06 (Dirichlet L-functions), 26D15 (inequalities), 46E35 (function spaces).

**WSGC-v1-1 through WSGC-v1-4 — written analytic argument and an executed exact rational scalar certificate.** Lean elaboration, dependency build, fresh kernel replay, transitive axiom audit, mathematical independent review, universal all-window positivity: NOT_RUN/UNASSESSED. Novelty UNASSESSED; small-support Weil positivity is classical and the boundary convexity is elementary. RH and primitive Dirichlet GRH remain unproved.

## 1. Canonical source and exact target

This is a *source-exact* improvement of [WeilShortWindowBridgeCertificate.md](WeilShortWindowBridgeCertificate.md) (WSWB-v1-1/2). It consumes precisely the original physical zero-extension gamma form, conductor/parity scalar, all von Mangoldt prime powers and both zeta pole orientations described there; it neither introduces a substitute positive operator nor assumes RH or GRH.

For real \(L>0\), let \(I_L=(0,L)\); complex \(f\in V_{L,b}\subseteq L^2(I_L)\) is zero-extended to \(\mathbb R\), and \(V_{L,b}\) is the actual logarithmic gamma form domain
\[
\Gamma_b(f)=\int_0^\infty k_b(s)\|f(\cdot+s)-f\|_2^2\,ds<\infty,\quad
k_b(s)=\frac{e^{-bs}}{1-e^{-2s}},\quad b=\tfrac12\text{ or }\tfrac32.
\]
For primitive \(\chi\) of conductor \(q\ge1\), parity \(a\in\{0,1\}\), \(b=a+1/2\), the original full arithmetic quadratic form is
\[
Q_{\chi,L}(f)=c_{q,a}\|f\|_2^2+\Gamma_b(f)
-\langle f,P_{\chi,L}f\rangle+\delta_\chi\langle f,R_L f\rangle,
\quad
c_{q,a}=\log(q/\pi)+\psi(\tfrac14+\tfrac a2).
\tag{WSGC.1}
\]
The actual \(P_{\chi,L}\) contains **every** prime power \(\Lambda(n)\chi(n)/\sqrt n\) and its conjugate translation, with the strict native cutoff \(\log n<L\). The pole kernel \(R_L(x,y)=e^{(x-y)/2}+e^{-(x-y)/2}\) has **both** orientations and is included only for conductor-one zeta, \(\delta_\chi=\mathbf1_{q=1}\). For \(L\le 1/3<\log2\), the entire prime operator is **exactly zero**, not approximated by a small tail.

## WSGC-v1-1: optimal pointwise bound for the original gamma boundary weight

Let \(K_b(r)=\int_r^\infty k_b(s)\,ds\). The actual zero-extension identity (WSWB §1) is
\[
\Gamma_b(f)=\int_{0<x<y<L}k_b(y-x)|f(y)-f(x)|^2\,dx\,dy+
\int_0^L[K_b(x)+K_b(L-x)]|f(x)|^2\,dx.
\tag{WSGC.2}
\]
Here all integrands are nonnegative, and Tonelli justifies the decomposition on the **actual** form domain without presuming \(f\in H^1\).

**Theorem.** For every \(L>0\), both \(b=1/2,3/2\), and every complex \(f\in V_{L,b}\),
\[
\boxed{\Gamma_b(f)\ge 2K_b(L/2)\|f\|_2^2.}
\tag{WSGC.3}
\]
This improves the earlier \(2K_b(L)\) bound and is the sharp pointwise minimum of the boundary weight in (WSGC.2); no sharpness claim is made for the **whole** gamma form.

**Proof.** \(k_b(s)>0\) is decreasing on \(s>0\), since its numerator decreases and its positive denominator increases. Thus \(K_b'(s)=-k_b(s)\) is increasing, so \(K_b\) is convex. For any \(0<x<L\), Jensen's inequality (or pairing the equal-length integrals of decreasing \(k_b\) on \([x,L/2]\) and \([L/2,L-x]\)) gives
\(K_b(x)+K_b(L-x)\ge2K_b(L/2)\).
Discard only the **nonnegative interior difference term** of (WSGC.2) and integrate. QED.

The original gamma tails remain infinite and are evaluated exactly:
\[
K_{1/2}(r)=\operatorname{atanh}(e^{-r/2})+\arctan(e^{-r/2}),\quad
K_{3/2}(r)=\operatorname{atanh}(e^{-r/2})-\arctan(e^{-r/2}).
\tag{WSGC.4}
\]

## WSGC-v1-2: doubled zeta full-test window

**Theorem.** For every \(0<L\le1/6\) and **every** \(f\in V_{L,1/2}\),
\[
\boxed{Q_{\zeta,L}(f)\ge \tfrac1{200}\|f\|_2^2.}
\tag{WSGC.5}
\]
This retains exactly the preceding WSWB-v1-1 coercivity constant but doubles its proven support range from \(1/12\) to \(1/6\).

**Proof.** With \(z=e^{-L/4}\), \(z\ge1-L/4\ge23/24\). Formula (WSGC.4) and
\(\arctan z=\pi/4-\arctan((1-z)/(1+z))\), \(\arctan u\le u\) give
\[
2K_{1/2}(L/2)=\log\frac{1+z}{1-z}+2\arctan z
\ge\log47+\pi/2-2/47.
\tag{WSGC.6}
\]
The original signed pole operator has eigenvalues
\(L+2\sinh(L/2)\) and \(L-2\sinh(L/2)\). Its **negative** orientation therefore obeys
\[
\langle f,R_L f\rangle\ge-[2\sinh(L/2)-L]\|f\|_2^2,\quad
0<2\sinh(L/2)-L<\frac{L^3}{20}\le\frac1{4320}.
\tag{WSGC.7}
\]
The second inequality follows from the entire positive power series and
\(2\sinh(L/2)-L\le L^3/[24(1-L^2/4)]<L^3/20\)
for \(L\le1/6\).

Since \(c_{\zeta}=-\log\pi-\gamma-\pi/2-3\log2\), (WSGC.1), (WSGC.3), (WSGC.6) and (WSGC.7) yield
\[
Q_{\zeta,L}(f)>
A_\zeta\|f\|_2^2,\qquad
A_\zeta=\log47-\log\pi-\gamma-3\log2-\frac2{47}-\frac1{4320}.
\tag{WSGC.8}
\]
The independent exact-fraction certificate
[WeilShortWindowConvexGammaExtension.py](WeilShortWindowConvexGammaExtension.py)
proves \(A_\zeta>1/200\) with rational outward enclosures, rather than a decimal sign guess. At \(f=0\), (WSGC.5) holds by equality. No pole contribution has been omitted. QED.

## WSGC-v1-3: fourfold nonprincipal primitive full-test window, both parities

**Theorem.** For **every** primitive nonprincipal Dirichlet character \(\chi\) of conductor \(q>1\), both possible parities, every \(0<L\le1/3\) and every \(f\in V_{L,a+1/2}\),
\[
\boxed{Q_{\chi,L}(f)\ge\tfrac13\|f\|_2^2.}
\tag{WSGC.9}
\]
The proof is uniform in \(q\) and \(\chi\) for **this fixed short support range**, not for all window lengths.

**Proof.** Since the unit group modulo \(2\) is trivial, its unique character is induced from conductor \(1\); there is **no primitive character of conductor \(2\)**. Hence \(q>1\) primitive implies \(q\ge3\). There are no pole terms for \(q>1\), and \(P_{\chi,L}=0\) throughout \(L\le1/3\).

The parity constants are \(c_{q,0}=c_\zeta+\log q\) and
\(c_{q,1}=c_\zeta+\log q+\pi\).
Put \(z=e^{-L/4}\in(0,1)\).
Using (WSGC.4), the **odd** boundary scalar exceeds the even one:
\[
[c_{q,1}+2K_{3/2}(L/2)]-
[c_{q,0}+2K_{1/2}(L/2)]
=\pi-4\arctan z\ge0.
\tag{WSGC.10}
\]
Thus the smaller even-parity expression controls **both** gamma parities.
For \(L\le1/3\), \(z\ge1-L/4\ge11/12\), hence
\[
2K_{1/2}(L/2)
\ge\log23+\pi/2-2/23.
\tag{WSGC.11}
\]
Therefore every primitive nonprincipal source has the explicit lower bound
\[
Q_{\chi,L}(f)\ge A_{\rm np}\|f\|_2^2,\quad
A_{\rm np}=\log69-\log\pi-\gamma-3\log2-\frac2{23}.
\tag{WSGC.12}
\]
The adjacent **executed exact-fraction certificate** proves \(A_{\rm np}>1/3\), establishing (WSGC.9). This retains all conductor and parity contributions and treats arbitrary complex \(f\), including boundary-jumping and antisymmetric directions, without replacing the original form. QED.

## WSGC-v1-4: exact scalar certificate and all-window boundary

The sibling Python 3 standard-library certificate uses exact rational arithmetic throughout: positive \(\operatorname{atanh}\)-series with explicit tails for logarithms, Machin's \(\pi\) identity with alternating arctangent remainders, and the classical harmonic-number enclosure
\[
H_{100}-\log100-\frac1{200}\le\gamma\le
H_{100}-\log100-\frac1{200}+\frac1{80000}.
\tag{WSGC.13}
\]
The second allowance exceeds \(1/(12\cdot100^2)\) and is conservative. All signs are rational strict comparisons (not binary floating point), and Python \`-O\` mode fails explicitly rather than dropping test assertions.

Executed locally on 2026-11-12 (Debian GNU/Linux 13, Python 3 standard library):
\`\`\`
python3 WeilShortWindowConvexGammaExtension.py
PASS WSWB_CONVEX_GAMMA_RATIONAL_V1
nonprincipal_all_test_L_le_1/3_bound_gt_1/3=PASS
nonprincipal_all_q_ge_2_L_le_1/4_bound_gt_1/4=PASS
zeta_all_test_L_le_1/6_bound_gt_1/200=PASS
old_zeta_scalar_L_le_1/12_bound_gt_1/200=PASS
nonprincipal_long_lower_millionths_floor=345758
nonprincipal_short_lower_millionths_floor=261226
zeta_lower_millionths_floor=5971
arithmetic=EXACT_FRACTIONS; full_Weil_identity=WRITTEN; lean=NOT_RUN; RH_GRH=UNPROVED
\`\`\`
The floor-millionths values are diagnostics only. Script SHA-256:
\`c20e2b3b0fa2d654f0328287a013ecce1c9eb9fd853f74f6a50153168c4f18f8\`.
\`python3 -m py_compile\` passed, and \`python3 -O\` intentionally exited nonzero.

**Consumer.** (WSGC.5) supplies a genuine full-complex-form-domain lower sign for the zeta Weil source on \(0<L\le1/6\); (WSGC.9) supplies it for **every** nonprincipal primitive character on \(0<L\le1/3\). The previous WSWB endpoint-span positivity remains valid through \(\log1024\) without any inferred full-form extension beyond these short windows.

**First unresolved premise.** These theorems do not imply RH/GRH. The unchanged critical-strip consumer still needs unconditional \(Q_{\chi,L}(f)\ge0\) on **all** admissible supports \(L>0\), every original test \(f\), and every primitive character; the cross-window prime-power signed couplings, conductor/gamma competition and both pole orientations remain. The stronger boundary estimate does not supply the missing long-window lower sign, infinite-tail return or a universal certificate-existence theorem. No formal Lean compilation, kernel replay or axiom audit was run. No new Lean imports, declarations, definitions, axioms or conjecture targets were changed.

**Prior-art comparison and falsification.** The gamma-boundary decomposition comes from the unchanged [WeilGammaPhaseCoercivity.md](WeilGammaPhaseCoercivity.md), §3; WSWB-v1-1/2 used only monotonicity \(K_b(x)\ge K_b(L)\), rather than midpoint convexity. Unlike the zeta exponential endpoint certificates, this estimate controls **every** original complex test in the stated form domain. It is not a claim of originality over Bombieri, *Remarks on Weil's quadratic functional in the theory of prime numbers, I* (Rend. Lincei 2000), §§1–3, or Yoshida's local Weil positivity results; independent comparative review is UNASSESSED. Hostile checks retain the negative zeta pole eigenvalue, prohibit application past the zero-prime cutoff \(\log2\), distinguish \(q=1\) from \(q>1\), and do not treat \(q=2\) as a primitive conductor. No finite computation establishes universal support coverage.

**Source/pins/coordination.** Initial inspected \`grwtsk/math/main\` \`42210191a69cdd35046ff3f452fe9df8f0185610\`; Lean \`leanprover/lean4:v4.34.1\`, mathlib \`d13f23b723b8a846827a245b89c10fc7d3f11612\`. Mathematical coordination issue \`grwtsk/math#1801\`. The canonical proof-automation skill \`workflows/research/orchestration/skills/noe-proof-automation/SKILL.md\` at \`grwtsk/noeaaeue/main\` \`45b0447fd8f061f8d041b8ef21ed5c29ccfdbd3d\` returned HTTP 404; no covered Lean/proof automation was attempted.
