# Polynomial definitization of the actual zeta Weil kernel

Local attribution: grwtsk contributors. Edition 1, 2026-11-12. MSC2020 11M26.

STATUS: WRITTEN_ANALYTICAL_ARGUMENT, LEAN_ELABORATION_NOT_RUN, KERNEL_REPLAY_NOT_RUN, AXIOM_AUDIT_NOT_RUN, INDEPENDENT_REVIEW_NOT_RUN, NOVELTY_UNASSESSED. No proof of finite exceptional zeros, RH, or primitive Dirichlet GRH.

Canonical input: WeilFixedBumpNegativeDepth.md (WFDG-1--WFDG-5). Examined grwtsk/math/main at 12927e41d566974d2210a3209c007e54b7b4e169. Lean v4.34.1 and mathlib d13f23b723b8a846827a245b89c10fc7d3f11612; unchanged. Consumer: WFDG-O1, the full actual-zeta finite-index question, not a substitute divisor.

## Source-exact kernel

Take the original pole-inclusive Weil distribution W as in Suzuki (2026), page 1, with every prime power, both pole orientations, and the complete gamma term. Let phi be the real even compactly supported smooth bump from WFDG-1, supported in [-1/2,1/2], with bilateral Laplace transform Phi nonzero for Re z != 0. Let h=phi*phi and K(t)=W(h(.-t)). For distinct nontrivial zeta zeros rho, with multiplicity m_rho and z_rho=rho-1/2, the exact zero-side formula is
\[
K(t)=\sum_\rho m_\rho\Phi(z_\rho)^2e^{z_\rho t}. \tag{1}
\]
The complex square is essential off the axis. This series and every differentiated series converge absolutely locally uniformly, by rapid vertical transform decay and the classical zero counting estimate.

For a nonzero real polynomial P, define
\[
L_P=P(\partial_t)P(-\partial_t),\qquad K_P=L_PK
=\sum_\rho m_\rho\Phi(z_\rho)^2P(z_\rho)P(-z_\rho)e^{z_\rho t}. \tag{2}
\]
A real even continuous function H is positive definite precisely if every matrix [H(t_j-t_k)] for finite real shifts is positive semidefinite (over complex coefficient vectors).

## WPD-1: minimum polynomial degree equals negative index

**Theorem (written analytical proof).** Let M be the number (possibly infinite) of distinct off-line zeta quartets under conjugation and reflection about 1/2. Then
\[
M<\infty \iff \exists P\in\mathbb R[X]\setminus\{0\}:\ K_P\text{ is positive definite}. \tag{3}
\]
If M is finite, the smallest possible degree is exactly 2M, which equals the full complex-test negative index of Q(f)=W(f*tilde f), using distinct off-line pairs, not multiplicities.

**Forward proof.** Zeta has no real zero in (0,1): the alternating eta series is positive for 0<s<1 and its factor (1-2^{1-s}) is negative. Thus off-line zeros occur in disjoint quartets. For each choose z_j=delta_j+i gamma_j with delta_j,gamma_j>0, and put
\[
P(X)=\prod_{j=1}^M(X-z_j)(X-\overline{z_j}). \tag{4}
\]
This has real coefficients and degree 2M. On each off-line quartet either P(z_rho)=0 or P(-z_rho)=0. Therefore its contribution to (2) vanishes. At each on-line zero z=i gamma, the coefficient in (2) is
\[
m_\rho|\Phi(i\gamma)|^2|P(i\gamma)|^2\ge0. \tag{5}
\]
Hence K_P is a uniformly convergent sum of nonnegative-weight characters and is positive definite. This is conditional on the FINITENESS hypothesis; it does not prove that hypothesis.

**Reverse proof.** Positive definiteness gives |K_P(t)| <= K_P(0) by a two-by-two principal minor. For Re w>1/2, its one-sided Laplace transform is
\[
\int_0^\infty K_P(t)e^{-wt}\,dt
=\sum_\rho\frac{m_\rho\Phi(z_\rho)^2P(z_\rho)P(-z_\rho)}{w-z_\rho}. \tag{6}
\]
The right side extends meromorphically to the plane, normally convergent away from the discrete poles; the left side is holomorphic on Re w>0 by boundedness. Analytic continuation forces every residue with Re z_rho>0 to vanish. Since m_rho>0 and Phi(z_rho)!=0 off the line,
\[
P(z_\rho)P(-z_\rho)=0 \qquad(\Re z_\rho>0). \tag{7}
\]
For each quartet, its two positive-real-part elements z_j, conjugate(z_j) must either both be zeros of P or their negatives must both be zeros, because P is real. Distinct quartets require disjoint conjugate pairs of polynomial roots. Thus 2M <= deg P. Together with (4) this gives minimum degree 2M. WFDG-4 identifies the full Weil negative index as two per quartet, completing the claim. QED.

In particular, positive definiteness for a real polynomial of degree 0 or 1 would already imply RH; degree 2 could accommodate at most one distinct exceptional quartet. An arbitrary quadratic polynomial is NOT claimed to work.

## WPD-2: unaltered arithmetic source return

Define phi_P=P(-partial_x)phi and h_P=phi_P*tilde(phi_P). Integration by parts and uniqueness of bilateral Laplace transforms give
\[
\int\phi_P(x)e^{zx}dx=P(z)\Phi(z),\quad h_P=L_Ph,\quad
K_P(t)=W(h_P(.-t)). \tag{8}
\]
For t>1 all negative-orientation prime evaluations and the origin term vanish by support, while both pole terms remain until cancellation. Let
\[
M_P=P(1/2)P(-1/2)\Phi(1/2)^2,
\quad D_P(t)=\sum_{n\ge2}\frac{\Lambda(n)}{\sqrt n}h_P(\log n-t)-M_Pe^{t/2},
\]
\[
G_P(t)=\int_{-1}^1h_P(v)
\frac{e^{-5(t+v)/2}}{1-e^{-2(t+v)}}\,dv.
\]
Then the exact complete Weil formula and gamma decomposition imply
\[
\boxed{K_P(t)=-D_P(t)-G_P(t)\qquad(t>1).} \tag{9}
\]
Every prime power is preserved, and for any fixed t only exp(t-1)<=n<=exp(t+1) occur. The filtered h_P can change sign: do NOT claim G_P>=0. Instead,
\[
|G_P(t)|\le\|h_P\|_1
\frac{e^{-5(t-1)/2}}{1-e^{-2(t-1)}}. \tag{10}
\]
For smaller shifts, always use the full distribution (8), not the separated-support simplification. Neither pole was discarded in deriving (9).

## WPD-O1: first unresolved arithmetic premise

Construct a nonzero real polynomial P *without assuming or enumerating finitely many exceptional zeros* such that
\[
\forall n\ge1\ \forall t_1,\ldots,t_n\in\mathbb R:
[K_P(t_j-t_k)]_{j,k=1}^n\succeq0, \tag{11}
\]
with entries from (8)--(9). This would prove finite exceptions, bounded by deg(P), and the actual number of off-line pairs by the minimum degree. No such polynomial or all-test sign proof is supplied. Finite interval matrices, compact errors, positive auxiliary forms, and depth bounds do NOT establish (11). The statement explicitly quantifies all matrix sizes and real shifts.

## Comparison, falsification, provenance

Conceptual prior art: M.G. Krein's functions with finitely many negative squares and definitizing polynomials, summarized by James Stewart, *Functions with a finite number of negative squares*, Canadian Mathematical Bulletin 15 (1972), 399ff, DOI 10.4153/CMB-1972-073-9. The polynomial-filter mechanism is not claimed as novel. Individual source correspondence: WPD-1 uses Weil's original criterion, WFDG-1's bump nonvanishing, WFDG-4's distinct-zero density/index, and standard Laplace meromorphic residues; compare Enrico Bombieri, *Remarks on Weil's quadratic functional in the theory of prime numbers, I* (2000), Theorem 8, p.213 (finite distinct-pair count). WPD-2 is the full source-exact additive formula in Masatoshi Suzuki, *Weil's quadratic form via the screw function*, arXiv:2606.09096v3 (September 2026), p.1, with the same two-pole cancellation as WFDG-2. WPD-O1 is the UNSOLVED arithmetic input.

Hostile check: a hypothetical synthetic quartet z,bar z,-z,-bar z, with Re z and Im z both nonzero, is killed by quadratic P=(X-z)(X-bar z) but cannot be killed by a real linear P. This does NOT construct an actual zeta zero. Multiplicities are weights, not independent interpolation nodes. Requiring P real is essential for the nonnegative coefficients (5). If P has roots on the imaginary axis, it may erase positive coordinates but not change the off-line count.

The authoring is source-only; no Lean declarations, new axioms, import or pin changes. No experimental or certified numerical claim. Independent review and all formal checks NOT_RUN. Originality UNASSESSED. Canonical automation skill workflows/research/orchestration/skills/noe-proof-automation/SKILL.md was inaccessible (404) at grwtsk/noeaaeue/main revision 09e3d70c0e284bfd177451865da8713b32119675; no dependent automation was performed.
