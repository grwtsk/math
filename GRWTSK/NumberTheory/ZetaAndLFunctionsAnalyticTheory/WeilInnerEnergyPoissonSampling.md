# Poisson sampling of the original physical Weil integrals

Authors: grwtsk contributors.  
Date: 2026-11-12. Edition: 1.  
MSC2020: primary 11M06; secondary 11M26, 42A38, 65D30.  
Consumer: `GammaWeightedQuadrature.primitiveArithmeticValue_weighted_enclosure` in the namespace `GRWTSK.NumberTheory.WeilQuadraticForm`.  
Coordination: [issue #1789](https://github.com/grwtsk/math/issues/1789), [scope comment](https://github.com/grwtsk/math/issues/1789#issuecomment-6830163809).

## Status and precise purpose

This is a **written analytical argument, not a Lean theorem or a numerical certificate**. All new estimates below have complete written derivations. Their Lean formalization, elaboration, fresh kernel replay, transitive axiom audit, certified numerical evaluation, and independent analytical review are **NOT_RUN**. No mathematical novelty is claimed; originality is **UNASSESSED**. Existing source declarations retain their own evidence status.

The existing weighted outer quadrature still contains actual whole-line energy integrals and complex prime correlations. The purpose here is to replace those integrals by finite physical samples with explicit errors. The result is an evaluation tool for the original form, not a proof of its sign. The unresolved all-test arithmetic cancellation estimate remains unresolved.

The Fermat formalization is used to discover and inspect an applicable proof method. The actual one-dimensional supplier is already in native pinned Mathlib. No FLT dependency, provider-specific tactic, copied Lean implementation, root import, dependency migration, or new research axiom is introduced.

## 1. Exact source ledger and comparison

Native source baseline: `grwtsk/math@68d976d55601e8b827dd9e93bb45678eb074265d`; root tree `66b6e6fc9a44f82d662b4dd8a7541d86850d52f1`. Lean: `leanprover/lean4:v4.34.1`. Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

Relevant native files in this directory:

- [WeilSourcePrimeCorrelation.lean](WeilSourcePrimeCorrelation.lean), blob `6bc8c1ac043ae5b7f8fb2f7608cd56524bb965a6`: the actual antilinear-first correlation and Lebesgue energy.
- [CharacterWeilWindowBounds.lean](CharacterWeilWindowBounds.lean), blob `668ff53ae7c8a905ef5b6d827517ba8cb1142558`: `twistedPrime`, the complete active inventory, and its phase convention.
- [WeilExactGammaTail.lean](WeilExactGammaTail.lean), blob `c4bfc64a0a4aa2d319fa9aa4f1bb8b5cee166aed`: exact physical kernel tail, finite prefix, and upper remainder.
- [WeilGammaWeightedQuadrature.lean](WeilGammaWeightedQuadrature.lean), blob `dabea1b0042188b914e41dcdb8cc5478333cec8c`: `gamma_finite_sampling_error` and `primitiveArithmeticValue_weighted_enclosure`. Their sampled energies remain integrals at this baseline.

External source inspected on 2026-11-12:

1. The contributors to `anthropics/fermats-last-theorem`, revision `6e837e75355538c7f80bab5b956861e86c4eacc2`, [Theorems/Thm_SchwartzMap_tsum_eq_tsum_fourier_euclideanSpace.lean](https://github.com/anthropics/fermats-last-theorem/blob/6e837e75355538c7f80bab5b956861e86c4eacc2/Theorems/Thm_SchwartzMap_tsum_eq_tsum_fourier_euclideanSpace.lean), blob `bfdb9dfffca31556405fa034d87e856795262e00`. This is translated Poisson summation on finite-dimensional Euclidean space for Schwartz functions. The theorem statement and the initial proof-method segment in the corresponding `P2M/Sol/` file were inspected; its entire transitive proof closure was not audited here.
2. David Loeffler and the Mathlib contributors, [Mathlib/Analysis/Fourier/PoissonSummation.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Fourier/PoissonSummation.lean) at the native pin: `Real.tsum_eq_tsum_fourier`, the decay variants, and the documented Schwartz specialization. The one-dimensional translated theorem is already sufficient. The native file identifies Stein and Weiss, *Introduction to Fourier Analysis on Euclidean Spaces*, Corollary VII.2.6, as context for its decay formulation; that book edition was not independently inspected here.
3. The FLT source's [PROOF-PATH.md](https://github.com/anthropics/fermats-last-theorem/blob/6e837e75355538c7f80bab5b956861e86c4eacc2/PROOF-PATH.md), blob `5a5d69b8f946ddc7587e300632cf924d6bf3373c`, limits its semistable modularity statement to matching good-prime coefficients and explicitly does not supply an L-function theorem. Its [lakefile.lean](https://github.com/anthropics/fermats-last-theorem/blob/6e837e75355538c7f80bab5b956861e86c4eacc2/lakefile.lean) pins Mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`, not the native pin. The upstream reported FLT verification is not verification of an adaptation in this repository.

Thus the reuse is **proof-method reuse with an existing native theorem**, not a newly imported formalization of Fermat, Wiles, Poisson summation, or RH. The targeted search is not an exhaustive prior-art or repository-wide duplicate audit.

## 2. Normalization and finite sampling

Let `f : R -> C` be smooth with support in `[-A,A]`, where `A > 0`. This is the original compactly supported smooth test class, not a replacement by arbitrary sampled vectors. Fix a physical grid spacing `h > 0` and offset `theta in R`. All statements below quantify over every such f, h, and theta.

Use the cycle-frequency convention

\[
 \widehat g(\xi)=\int_{\mathbb R}g(t)e^{-2\pi i t\xi}\,dt,
 \qquad T_{h,\theta}(g)=h\sum_{n\in\mathbb Z}g(\theta+nh).
\]

The native physical Fourier convention uses `exp(-i omega t)`; its transform at `omega=2*pi*xi` equals this transform. There is no hidden change of the physical translation variable in the Weil form.

For compactly supported g the sampling sum is finite. The original quantities are

\[
 E(f)=\int |f(t)|^2dt,\qquad
 C_f(r)=\int\overline{f(t)}f(t+r)dt,\qquad
 E_r(f)=\int|f(t+r)-f(t)|^2dt.
\]

Define their approximants by applying `T_{h,theta}` to these same integrands, denoted `E_h`, `C_h(r)`, and `E_{r,h}`. In particular, translated values are sampled at `theta+nh+r`; r need not be a grid multiple. Do not round `log n` to a grid index in the prime term without an additional error bound.

The energy integrand has support in `[-A,A]`. The correlation integrand has support in the intersection of that interval with `[-A-r,A-r]`. The difference-energy integrand has support in their union. These explicit supports give finite index sets even when r is not commensurable with h.

## 3. WIPS-1: translated Poisson sampling error

For every smooth compactly supported complex g,

\[
 \boxed{\left|T_{h,\theta}(g)-\int g\right|
       \le \frac{h^2}{12}\|g''\|_{L^1}.}                 \tag{1}
\]

Apply translated Poisson summation to `x -> g(h*x)`. Fourier scaling gives the exact identity

\[
 T_{h,\theta}(g)=\sum_{k\in\mathbb Z}
    \widehat g(k/h)e^{2\pi i k\theta/h}.
\]

The k=0 term is the original integral. Twice integrating by parts, with no boundary terms because g is smooth and compactly supported, gives, for nonzero xi,

\[
 |\widehat g(\xi)|\le
       \frac{\|g''\|_1}{4\pi^2\xi^2}.
\]

This also proves absolute summability of the sampled Fourier values; no totalized divergent sum is used. Taking the modulus of the remaining series and using `sum_{k != 0} 1/k^2 = pi^2/3` proves (1), uniformly in theta. Only this error series is bounded absolutely; the arithmetic expression being evaluated keeps its signs and phases.

### Alternative analytical derivation

There is a direct integration-by-parts check not using Poisson summation. Let `B2(x)=x^2-x+1/6` on `[0,1]`, extended periodically, and put

\[
 P(t)=\frac{h^2}{2}B_2(\{(t-\theta)/h\}).
\]

P is continuous at grid points. Between grid points `P''=1`, while its first derivative has jump `-h` at each grid point. Integrating by parts on the finitely many cells meeting the support of g and adding the boundary contributions therefore gives

\[
 \int Pg''=\int g-h\sum_n g(\theta+nh).
\]

The outside endpoint terms vanish. Since `sup_[0,1] |B2|=1/6`, this proves the same bound. The argument applies componentwise to complex g and then bounds the modulus of its integral. This is a second written derivation by the same authoring process, not independent review or a second kernel check.

## 4. WIPS-2: original complex correlations and shift energies

Set

\[
 M_j=\|f^{(j)}\|_2\quad(0\le j\le3),\qquad
 B_0=2M_0M_2+2M_1^2,\qquad B_1=2M_1M_3+2M_2^2.
\]

For `g_r(t)=conj(f(t))*f(t+r)`, the product rule gives

\[
 g_r''=\overline{f''}f(\cdot+r)
      +2\overline{f'}f'(\cdot+r)
      +\overline f f''(\cdot+r).
\]

Cauchy-Schwarz and translation invariance give `||g_r''||_1 <= B0` for every real r. Consequently,

\[
 \boxed{|C_h(r)-C_f(r)|\le h^2B_0/12,\qquad
        |E_h-E(f)|\le h^2B_0/12.}                       \tag{2}
\]

The correlation remains complex throughout this argument. Its actual antilinear-first convention is the one in `WeilSourcePrimeCorrelation.lean`.

For the shift energy, write `u_r=f(.+r)-f`. For `j=0,1,2`, translation invariance, the fundamental theorem of calculus, and the L2 triangle inequality for the integral give

\[
 \|u_r^{(j)}\|_2\le d_j(r),\qquad
 d_j(r)=\min(2M_j,|r|M_{j+1}).
\]

Indeed, the first bound follows by subtracting two translates, and the second follows from
`u_r^(j)(t)=integral_0^r f^(j+1)(t+s) ds`, with reversed orientation when r<0. Define

\[
 B_r=2d_0(r)d_2(r)+2d_1(r)^2.
\]

Applying the product-rule estimate to `|u_r|^2` and then (1) yields

\[
 \boxed{|E_{r,h}-E_r(f)|\le\frac{h^2}{12}B_r,\qquad
 B_r\le\min(4B_0,r^2B_1).}                              \tag{3}
\]

Both inequalities in the minimum are proved separately by choosing the respective bounds for each d_j. In particular the error is zero at r=0 and vanishes quadratically as r tends to zero. A bound independent of r would lose the cancellation needed at the gamma singularity.

### Removing hidden norm integrals from the error constants

Certified pointwise derivative bounds `|f^(j)(t)| <= D_j` for all t, with `D_j >= 0`, imply `M_j <= sqrt(2*A)*D_j`. The derivatives have the same compact support. Thus one may replace B0 and B1 by explicit upper bounds

\[
 B_0\le4A(D_0D_2+D_1^2),\qquad
 B_1\le4A(D_1D_3+D_2^2).                                \tag{4}
\]

A concrete numerical certificate must prove these derivative bounds for its specified test function; they are not obtained from point samples. The same D1 is an admissible global Lipschitz constant.

## 5. WIPS-3: finite gamma error without a lower-cutoff logarithmic loss

Keep exactly the native parity kernel and exact cell weights:

\[
 K_a(r)=\frac{e^{-(a+1/2)r}}{1-e^{-2r}},\qquad
 w_i=\int_{u_i}^{v_i}K_a(r)dr\ge0,
\]

where `a=0` or `1`, `0<epsilon<=R`, and the disjoint cells `(u_i,v_i]` cover `(epsilon,R]`. The selected translation `s_i` lies in `[u_i,v_i]`. The cell weights are integrals of the kernel, not point values of its singular density.

Equation (3) gives

\[
 \left|\sum_iw_iE_{s_i,h}-\sum_iw_iE_{s_i}(f)\right|
       \le\frac{h^2}{12}\sum_iw_iB_{s_i}.               \tag{5}
\]

For a geometric-cell bound assume explicitly `v_i <= kappa*u_i` for every cell, with `kappa >= 1`. For every r in cell i, `s_i <= kappa*r`. Therefore

\[
 \sum_iw_iB_{s_i}\le
   \kappa^2B_1\int_\epsilon^Rr^2K_a(r)dr
   \le\kappa^2B_1J_a,\qquad
 J_a=\int_0^\infty r^2K_a(r)dr.                         \tag{6}
\]

For `lambda=a+1/2>0`, the nonnegative geometric expansion of the kernel and Tonelli's theorem give

\[
 J_a=2\sum_{k=0}^{\infty}(\lambda+2k)^{-3}
       \le\frac{2}{\lambda^3}+\frac{1}{2\lambda^2}.
                                                               \tag{7}
\]

To prove the last inequality, separate k=0 and bound the decreasing sum over k>=1 by the integral of `(lambda+2*x)^(-3)` on `[0,infinity)`, which equals `1/(4*lambda^2)`. In particular `J_0 <= 18` and `J_1 <= 22/27`.

Combining (5)-(7) proves an inner gamma sampling error at most

\[
 \boxed{\frac{h^2\kappa^2B_1}{12}
   \left(\frac{2}{(a+1/2)^3}
        +\frac{1}{2(a+1/2)^2}\right).}                \tag{8}
\]

This bound is uniform in epsilon and R for fixed f, h, and kappa. It does not assert uniformity in the test function or its derivative norms. It concerns the **inner physical sampling error only**. The existing outer quadrature bound, head remainder, tail remainder, and arithmetic term still have their separate costs. In particular, a fixed outer mesh error must not be passed through epsilon->0 without controlling its own kernel mass.

## 6. WIPS-4: return to the unchanged primitive arithmetic enclosure

Let chi be primitive and nonprincipal of conductor q, and impose all the support, cutoff, cell-cover, disjointness, and Lipschitz hypotheses of the existing `primitiveArithmeticValue_weighted_enclosure`. In particular `R>=2*A`. Write a for its actual character parity and N for its finite gamma-tail prefix length.

Use the native notations

\[
 c=\operatorname{gammaConstant}(q,a)
      +\operatorname{tailPrefix}(a,N,R),
\]

\[
 P_\chi(C)=2\sum_{n\in\operatorname{activePrimePowers}(A)}
       \operatorname{primeWeight}(n)
       \Re\big(\overline{\chi(n)}C(\log n)\big).
\]

Keep the complete original finite inventory and cutoff convention; the von Mangoldt weight makes non-prime-powers contribute zero. Let

\[
 S_h=cE_h+\sum_iw_iE_{s_i,h}-P_\chi(C_h),
\]

\[
 \eta_0=h^2B_0/12,\qquad
 \eta_{\rm in}=\frac{h^2}{12}
    \left(|c|B_0+\sum_iw_iB_{s_i}
                   +\operatorname{primeMass}(A)B_0\right).
                                                               \tag{9}
\]

Every absolute value in (9) pays an evaluation error, not the value of an arithmetic summand. The character phases are not removed from S_h.

Let S be the same expression with the exact integrals. Equations (2)-(3), nonnegativity of the weights, and `|chi(n)|<=1` imply

\[
 |S_h-S|\le\eta_{\rm in}.                               \tag{10}
\]

The factor 2 in the prime expression is already included in native `primeMass`. The coefficient c need not be positive, which is why its absolute value is necessary. A smaller error may retain `|chi(n)|` individually, but deleting prime powers from the evaluated expression is not permitted.

Denote the existing outer error, head budget and tail coefficient by

\[
 \eta_{\rm out}=\operatorname{shiftEnergySlope}(A,R,L)
       \delta\,\operatorname{kernelCellMass}(a,\epsilon,R),
\]
\[
 H=\operatorname{headConstant}(A,R,L)\epsilon^2/2,
 \qquad U=\operatorname{tailUpper}(a+2N,R)\ge0.
\]

The native written/source enclosure is `S-eta_out <= Q <= S+eta_out+H+U*E(f)`, where Q is the **same** `primitiveArithmeticValue`. Since `E(f)<=E_h+eta0`, (10) gives the explicit source return

\[
 \boxed{
 S_h-\eta_{\rm in}-\eta_{\rm out}\le Q
 \le S_h+\eta_{\rm in}+\eta_{\rm out}+H+U(E_h+\eta_0).
 }                                                        \tag{11}
\]

This is a complete written consequence of the stated native enclosure and the estimates proved here. It is not a newly checked Lean application of that source theorem. The gamma contribution in (9) can use (6)-(8), and (4) can remove the remaining derivative-norm integrals when explicit derivative sup bounds are available.

For an actual interval certificate, also enclose all finite sampled products, the logarithmic sample locations, character values, gamma constants, exponential tail expressions, cell weights, and arithmetic weights. A proved total rounding/evaluation error must widen (11). No such enclosure or numerical sign is supplied in this document.

The growing primeMass coefficient in (9) is an error-budget cost, not an all-window cancellation theorem. Improving evaluation alone cannot establish that every test has nonnegative Q.

## 7. WIPS-5: conductor-one zeta keeps both signed pole orientations

Conductor-one zeta is not covered by the nonprincipal theorem in section 6. Its pole functional on the actual autocorrelation can be handled separately without changing the source.

Define

\[
 M_\pm=\int f(t)e^{\pm t/2}dt,\qquad
 m_\pm=T_{h,\theta}(f(t)e^{\pm t/2}).
\]

Compact support justifies Fubini, and direct substitution `u=t+r` proves

\[
 \int C_f(r)e^{r/2}dr=M_+\overline{M_-},\qquad
 \int C_f(r)e^{-r/2}dr=M_-\overline{M_+}.
\]

Thus the sum of the two pole orientations is

\[
 \mathcal P(f)=2\Re(M_+\overline{M_-}),                 \tag{12}
\]

not `|M_+|^2+|M_-|^2`. This identity retains complex phases and does not assert that the pole term is nonnegative.

By (1), `|M_+-m_+|<=epsilon_+` and `|M_--m_-|<=epsilon_-`, with

\[
 \epsilon_\pm=\frac{h^2}{12}
                  \|(e^{\pm t/2}f)''\|_1.
\]

Product expansion, including the product of the two errors, gives

\[
 \boxed{|\mathcal P(f)-2\Re(m_+\overline{m_-})|
 \le2\big(\epsilon_+|m_-|+\epsilon_-|m_+|
                       +\epsilon_+\epsilon_-\big).}   \tag{13}
\]

The derivative identity is
`(e^(+/-t/2)*f)''=e^(+/-t/2)*(f'' +/- f' + f/4)`. Hence either derivative norm is at most

\[
 e^{A/2}(\|f''\|_1+\|f'\|_1+\|f\|_1/4)
 \le2Ae^{A/2}(D_2+D_1+D_0/4).                          \tag{14}
\]

Equation (13) is a pole-evaluation lemma only. Applying it to a complete zeta enclosure still requires the actual full zeta source identity and all its other error terms. Neither a pole-neutral restriction nor the primitive nonprincipal source theorem is substituted for that identity.

## 8. Hostile checks, limitations, and exact remaining work

**Invisible samples.** A nonzero smooth bump supported strictly between two consecutive grid points has `E_h=0` but `E(f)>0`. Thus finite sample positivity cannot be universal test positivity. Its derivatives pay the missing energy through (1)-(4).

**Complex phases.** At the scalar level chi=i and C=i give `Re(conj(chi)*C)=1`, whereas `Re(chi)*Re(C)=0`. The sampled source in (9) retains the correct complex product. This scalar check is not a claim about a realized zero or a particular Dirichlet character value at a chosen prime.

**Gamma endpoint.** A uniform-in-r shift error integrated against K_a would lose a logarithm at zero. The r^2 factor in (3) prevents that loss. The geometric-cell ratio assumption is essential to the particular uniform bound (8); arbitrary cells still have the explicit finite bound (5).

**Regularity.** A sharply cut off indicator or a jumping exponential endpoint is not covered by the smooth-function derivations. Distributional boundary terms cannot be discarded. No H1/H2 energy is assigned to such a jumping source.

**High oscillation.** Modulating f can increase its derivative norms. There is no frequency-uniform assertion concealed by keeping B0 or B1 fixed.

**Character scope.** The modulus may enter c as the conductor only under the stated primitiveness hypothesis. Imprimitive transfer, dual-character functional equations, and wider L-function families are not supplied here.

**Infinite coverage.** All grids, offsets, shifts and cutoff parameters in the written inequalities are quantified. Nevertheless, their correctness does not produce a nonnegative certificate for every f, window, conductor or accuracy. The original all-test signed-prime/gamma/pole inequality remains open in this work.

The next formal obligations are the analytic suppliers (1)-(3), not a generic certificate structure: Fourier scaling and translated sampling; the derivative L1 bounds for the actual correlation; the L2 translation-difference estimate; finite support reduction; and the gamma moment/cell estimate. They should be formalized against native Mathlib and then composed with the existing consumer. No new Lean declarations, declaration aliases, or formalization claims are introduced by this edition.

The source inspection and publication are ordinary authorized GitHub work. The canonical proof-automation skill read at `grwtsk/noeaaeue@3a22e1022074ecc99d5cdeaabeb5dc919711a55b:workflows/research/orchestration/skills/noe-proof-automation/SKILL.md` returned 404, so no dependent proof execution was attempted. This does not change historical source verification. Publication readback and its actual evidence belong in the coordinating issue; no operational execution receipt is manufactured here.
