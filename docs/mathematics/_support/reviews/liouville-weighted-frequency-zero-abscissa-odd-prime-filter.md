# Weighted Liouville energy as a zeta zero-abscissa and an exact frequency interface

Local attribution: grwtsk contributors. Research date: 2026-10-31.

**Analytic disposition:** The growth-abscissa, damping threshold, frequency-domain criterion, odd/fixed-prime filter energy comparison, and critical linear lower-growth floor are deduced from the *actual Liouville signs*, elementary finite-prime combinatorics, the classical zeta/Liouville power-abscissa correspondence, and Fourier–Plancherel. This is a quantified synthesis of classical inputs with the existing weighted-prefix source. **It does not prove the requested all-positive-rate bound, Problem P, or RH.** The attached Lean file contains finite prefix identities as proof candidates, but the odd weighted interval-energy comparison and zero-abscissa result are **analytic results, not kernel-accepted Lean theorems**.

Repository sources inspected at `grwtsk/math/main` commit `ac417f3895d28e7a7d965f228a5c435a6539eac7` (refresh before publication):

- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleCausalEnergyTarget.lean`: actual `coefficient n = ArithmeticFunction.liouville n`, original causal birth response and source energy, blob `a00aaa07c067b4c88203372870b5d5d151de0de4`.
- `.../LiouvilleWeightedPrefixSquareCriterion.lean`: actual `liouvillePrefix`, `weightedPrefixSquareMoment`, `WeightedPrefixSquareAllRate`, blob `d62ab5b81eb8cec7b95964c88f875d3c2ef1f244`.
- `.../LiouvilleWeightedPrefixDoubling.lean`: source-derived `coefficient_doubling`, exact negative doubling packet and full signed non-doubling remainder, blob `d3e65086541a95b27edf6faad3d47a956dce92c7`.
- `.../LiouvilleWeightedPrefixChannelReturn.lean`: arbitrary finite or infinite ambient color types, finite occupied colors, exact weighted pair kernels and signed cross-color return, blob `8d3868eac539f2e1a7664973f5fd27da3254a918`.
- `GRWTSK/ProbabilityTheoryAndStochasticProcesses/FiniteWeightedChannelCovariance.lean`: fully generic deterministic/choice covariance, blob `1e88479b60ade504d9da34a700f8a75d1d6d6991`.

No arbitrary DFT cutoff, color count, pseudo-random source, or Gödel geometric simulation is an assumption of the results below.

## 1. The exact weighted-prefix source

Let `lambda(n)=(-1)^Omega(n)` for every positive integer, including prime powers. Put

\[
L(x)=\sum_{1\le n\le x}\lambda(n),\qquad
J(T)=\int_1^{e^T}\frac{L(x)^2}{x^2}\,dx,\quad T\ge0.
\tag{1}
\]

For integers `N>=1`, the exact finite analogue is

\[
J_N=\sum_{k=1}^N\frac{L(k)^2}{k(k+1)}
=J(\log(N+1)),
\tag{2}
\]

where the second equality is a standard interval partition into the integer birth cells `[k,k+1)` and retains the literal `N+1` endpoint. It remains a named unelaborated source comparison in the pre-existing Lean `WeightedPrefixSquareContinuousDiscreteIdentity`; do not transfer analytic proof into a completed Lean claim.

Set `Theta=sup{Re rho:zeta(rho)=0,0<Re rho<1}`. The classical functional equation implies `1/2<=Theta<=1`. The exact Dirichlet series is

\[
\sum_{n\ge1}\frac{\lambda(n)}{n^s}=\frac{\zeta(2s)}{\zeta(s)}\quad(\Re s>1),
\qquad
\int_1^\infty L(x)x^{-s-1}dx=\frac{\zeta(2s)}{s\zeta(s)}.
\tag{3}
\]

## 2. Quantitative zero-abscissa theorem

**Theorem A (analytic, classical inputs stated):**

\[
\boxed{\limsup_{T\to\infty}\frac{\log(1+J(T))}{T}=2\Theta-1.}
\tag{4}
\]

**Upper bound.** The classical Liouville/zero-free-half-plane power-abscissa theorem says that, for every `theta>Theta`, `L(x)=O_theta(x^theta)` (use the trivial bound for theta>1). Then `J(T)=O_theta(e^((2theta-1)T))`, taking `theta>1/2`, and letting `theta` decrease to `Theta` proves the upper bound. This invokes an established theorem, not an independently derived zero-free region. Literature comparator: Borwein–Choi–Rooney–Weirathmueller, *The Riemann Hypothesis*, Theorem 1.2 (Liouville/Landau criterion); discussion https://mathoverflow.net/questions/269474/seek-a-reference-for-theorem-1-2-on-p-6-of-the-riemann-hypothesis-sourcebook-of ; classical abscissa and Perron arguments in Montgomery–Vaughan, *Multiplicative Number Theory I*.

**Lower bound.** Put `f(u)=e^(-u/2)L(e^u)`, hence `J(T)=integral_0^T f(u)^2 du`. Suppose `J(T)=O(e^(delta*T))` for `delta>=0`. By Tonelli, for every `sigma>delta`, `integral_0^infty e^(-sigma*u)|f(u)|²du` converges. Cauchy–Schwarz makes the causal Laplace transform `F(z)=integral_0^infty e^(-z*u)f(u)du` holomorphic for `Re z>delta/2`. Initially for `Re z>1/2`, (3) gives

\[
F(z)=\frac{\zeta(2z+1)}{(z+1/2)\zeta(z+1/2)}.
\tag{5}
\]

A zeta zero `rho` at `beta>1/2` forces a nonremovable pole of the right side at `z=rho-1/2` (because `Re(2rho)>1` so the numerator is nonzero). Thus `delta>=2beta-1`. If the limsup in (4) were less than `2beta-1`, choose such a `delta` strictly between and contradict the pole. Take the supremum over beta; if Theta=1/2 the lower bound is zero automatically. This proves (4) independently of the unverified historical Lean return.

**Consequences:** for any fixed `0<=delta<1`, a uniform `J(T)<<e^(delta*T)` would exclude zeros with `Re s>(1+delta)/2`. A zero at beta>1/2 forces `limsup_(T->infty)e^(-delta*T)J(T)=infty` for every `delta<2beta-1`. The existing all-positive-rate `WeightedPrefixSquareAllRate` holds if and only if RH. Neither statement proves the missing upper estimate.

## 3. Exact damping threshold and frequency identity

For `a>0` define the **true causal damped energy**

\[
D(a)=\int_0^\infty e^{-2au}|f(u)|^2du
=\int_1^\infty\frac{L(x)^2}{x^{2+2a}}dx.
\tag{6}
\]

Positive Tonelli gives a useful identity without integration-by-parts boundary assumptions:

\[
D(a)=2a\int_0^\infty e^{-2aT}J(T)\,dT.
\tag{7}
\]

Equation (4) implies the exact threshold, with NO claim at the endpoint:

\[
\boxed{\inf\{a>0:D(a)<\infty\}=\Theta-1/2.}
\tag{8}
\]

For every `a>Theta-1/2`, `L(x)=O_theta(x^theta)` for a `theta<1/2+a`, so `e^{-au}f(u)` belongs to L1 and L2. With `s=1/2+a+it`, (3) identifies its Fourier transform. Fourier–Plancherel (normalization `hat g(t)=integral_R g(u)e^{-itu}du`) yields

\[
\boxed{
D(a)=\frac1{2\pi}\int_{-\infty}^{\infty}
\left|\frac{\zeta(1+2a+2it)}{(1/2+a+it)\zeta(1/2+a+it)}\right|^2dt.
}
\tag{9}
\]

**Theorem B (frequency criterion).** Define the meromorphic quotient in (9) wherever it exists, with pole neighborhoods interpreted as nonintegrable. Then

\[
\boxed{
\mathrm{RH}\quad\Longleftrightarrow\quad
\forall a>0,\quad\int_{\mathbb R}
\left|\frac{\zeta(1+2a+2it)}{(1/2+a+it)\zeta(1/2+a+it)}\right|^2dt<\infty.
}
\tag{10}
\]

Proof RH→: `Theta=1/2`, so (9) applies to every `a>0`. Reverse: any off-critical zero `rho=beta+i gamma` has `beta>1/2` after functional-equation reflection. On the line `a=beta-1/2`, at frequency `t=gamma`, the numerator is nonzero and a zero of order `m>=1` of the denominator produces a `|t-gamma|^(-2m)` singularity; its local integral diverges. Thus (10) fails. This is a **continuous all-damping/all-frequency criterion**, not a finite-grid simulation result or an already established zero-free region.

For a countable measurable partition of the real frequency axis into channels `B_gamma`, (9) partitions the **squared spectral density**, not the sum of complex amplitudes:

\[
D(a)=\sum_\gamma\frac1{2\pi}\int_{B_\gamma}
\left|\frac{\zeta(1+2a+2it)}{(1/2+a+it)\zeta(1/2+a+it)}\right|^2dt.
\tag{11}
\]

This follows by monotone convergence whenever (9) holds. At a bad zero line, a **finite** partition must contain at least one divergent channel; for a countable partition the divergent total may be distributed across infinitely many individually finite bins. A bounded meromorphic quotient on one vertical line left of other zeros does NOT certify causal Laplace/Hardy membership or a zero-free half-plane to its right. That additional analytic-source identification is essential.

References for the Fourier/Mellin normalization: DLMF §1.14(iv), https://dlmf.nist.gov/1.14 ; Fourier Plancherel, https://mathworld.wolfram.com/PlancherelsTheorem.html . Zeta zeros and reflection: DLMF §25.10, https://dlmf.nist.gov/25.10 .

## 4. A fixed prime-indexed channel retains the entire RH obstruction

For any fixed finite set of primes `P`, `Q_P=product_{p in P}p`, define the source-actual P-free Liouville prefix

\[
O_P(x)=\sum_{\substack{1\le n\le x\\(n,Q_P)=1}}\lambda(n),
\qquad J_P(T)=\int_1^{e^T}\frac{O_P(x)^2}{x^2}dx.
\tag{12}
\]

Complete multiplicativity and finite divisor inclusion/exclusion give the exact **signed source** identity

\[
\boxed{O_P(x)=\sum_{d\mid Q_P}L(x/d)=\prod_{p\in P}(I+S_p)L(x),\quad S_pf(x)=f(x/p),}
\tag{13}
\]

where `L(y)=0` for `y<1`. The coefficient in front of each dilation is +1 *because lambda(p)=-1*, not an invented random sign or independent phase. Each causal dilation contracts weighted L2 by the exact bound

\[
\|S_pf\|_{L^2([1,e^T],dx/x^2)}\le p^{-1/2}\|f\|_{L^2([1,e^T],dx/x^2)}.
\tag{14}
\]

Successive upper/reverse triangle inequalities, for every `T>=0`, yield

\[
\boxed{
\prod_{p\in P}(1-p^{-1/2})^2J(T)
\le J_P(T)\le
\prod_{p\in P}(1+p^{-1/2})^2J(T).
}
\tag{15}
\]

For the **odd-integer channel** `P={2}`, (13) becomes

\[
\boxed{O_2(x)=L(x)+L(x/2),}
\tag{16}
\]

and (15) becomes

\[
\boxed{(1-1/\sqrt2)^2J(T)\le J_{\rm odd}(T)
\le(1+1/\sqrt2)^2J(T).}
\tag{17}
\]

Therefore **the odd Liouville channel alone has the same exact exponential growth exponent** `2Theta-1`, and `J_odd(T)<<_epsilon e^(epsilon*T)` for all epsilon>0 is itself RH-equivalent. These are genuine bounds on the original arithmetic source. They do NOT supply the missing all-rate estimate.

For fixed `P`, its genuine Dirichlet series is

\[
\sum_{\substack{n\ge1\\(n,Q_P)=1}}\frac{\lambda(n)}{n^s}
=\Big(\prod_{p\in P}(1+p^{-s})\Big)\frac{\zeta(2s)}{\zeta(s)}\qquad(\Re s>1).
\tag{18}
\]

For `Re s>0` each factor `1+p^(-s)` is nonzero, so this fixed prime filter cannot cancel an off-critical zeta zero. If `P=P_T` moves with T, freeze P_T throughout the inner x-integral and do **not** pretend (18) is one fixed Dirichlet series.

## 5. An unconditional critical linear lower-growth floor

**Theorem C (analytic consequence, no RH assumption):**

\[
\boxed{
\limsup_{T\to\infty}\frac{J(T)}{T}
\ge\frac{1}{\zeta(1/2)^2}>0.
}
\tag{19}
\]

The constant is approximately `0.4689034285573065`; `zeta(1/2)` is real and nonzero. More generally, for each fixed finite prime set P,

\[
\boxed{
\limsup_{T\to\infty}\frac{J_P(T)}{T}
\ge \frac{\prod_{p\in P}(1+p^{-1/2})^2}{\zeta(1/2)^2}.
}
\tag{20}
\]

**Proof.** If RH is false, (4) and (15) give `limsup J_P(T)/T=infty`, so both (19)–(20) hold. If RH is true, the genuine Liouville bound permits the absolutely convergent causal Laplace transform for every real `a>0`; from (5) and the simple pole `zeta(1+2a)~1/(2a)` we have

\[
\lim_{a\downarrow0} a\int_0^\infty e^{-au}f(u)du=\frac1{\zeta(1/2)}.
\tag{21}
\]

For the prime-filtered source the RHS is multiplied by `product_(p in P)(1+p^(-1/2))`. Cauchy–Schwarz gives

\[
\left|a\int_0^\infty e^{-au}f_P(u)du\right|^2
\le a\int_0^\infty e^{-au}f_P(u)^2du
=a^2\int_0^\infty e^{-aT}J_P(T)dT.
\tag{22}
\]

If `K=limsup_(T->infty)J_P(T)/T` is finite, then for every epsilon>0 the right-hand side has limsup at most `K+epsilon` as `a downarrow0` because `a² integral_0^infty T e^(-aT)dT=1`, and bounded initial T contributes `o(1)`. Let epsilon decrease to zero and use the nonzero limit (21). If K is infinite the conclusion is immediate. This finishes the unconditional two-case proof.

The odd-channel explicit floor in (20) is approximately `1.3664847309449463`. This is a **lower** limsup floor, not an RH proof, an upper bound, an `O(T)` assertion, or a uniform-in-T lower bound. In particular the request for an `O(1)` bound on the entire weighted moment would be false.

## 6. What a hypothetical off-line zero forces in arbitrary channels

Reuse the exact existing arbitrary-frequency/color source from `LiouvilleWeightedPrefixChannelReturn.lean`. With actual finite source prefixes and original weights, write

\[
B_{N,\gamma}(k)=\sum_{\substack{1\le n\le k\\c_N(n)=\gamma}}\lambda(n),
\quad G_{\gamma\eta}(N)=\sum_{k=1}^N\frac{B_{N,\gamma}(k)B_{N,\eta}(k)}{k(k+1)}.
\tag{23}
\]

The matrix G is positive semidefinite, by its exact Gram construction. Let `K_N` be the number of occupied channels. Then

\[
J_N={\bf1}^{\!T}G(N){\bf1},\qquad
\operatorname{tr}G(N)=\sum_\gamma G_{\gamma\gamma}(N),\qquad
J_N-\operatorname{tr}G(N)=\sum_{\gamma\ne\eta}G_{\gamma\eta}(N).
\tag{24}
\]

An orthogonal independent channel sign law averages to `tr G(N)` and **not** to `J_N`, except if the complete signed off-channel covariance vanishes. The original arithmetic signs remain deterministic.

Finite Cauchy gives

\[
\boxed{J_N\le K_N\operatorname{tr}G(N)\le K_N^2\max_\gamma G_{\gamma\gamma}(N).}
\tag{25}
\]

If `log K_N=o(log N)` and an off-critical zero has real part `beta>1/2`, (4), the exact `J(log(N+1))=J_N` and (25) imply for each `delta<2beta-1` an unbounded sequence of N with

\[
\max_\gamma G_{\gamma\gamma}(N)\ge (N+1)^\delta
\tag{26}
\]

(after allowing an arbitrary small gap between the exponent and the actual limsup rate). If the channel palette is a fixed finite type, at least one **fixed channel** has such spikes along a subsequence by finite pigeonhole. With growing channel types, only the maximum over occupied channels is ensured. Under RH, individual channel Gram energies may still grow rapidly and be compensated by the off-channel signed covariance, so no converse to (26) is claimed for arbitrary channels.

This is a diagnostic consequence of a hypothetical bad zero, not evidence that a bad zero exists. A finite color/frequency visualization cannot establish or exclude the infinitely many scales and all damping parameters.

## 7. Completion and source-verification boundaries

The attached `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleOddPrimeWeightedPrefixAbscissa.lean` adds proof candidates for:

- `oddPrefixNat_succ`, `oddPrefixNat_eq_full_add_half`: exact original integer Liouville sign and all positive prefixes;
- `oddWeightedPrefixSquare_eq_original_add_mixed`: literal k(k+1) denominator and both signed half-shift orientations;
- `oddWeightedPrefixSquare_nonneg`: exact finite square positivity;
- `OddWeightedEnergyComparison`: named **OPEN Lean proposition** for the analytically proved two-sided comparison (17), NOT a theorem silently assumed or an axiom.

The new Lean module intentionally does not claim to prove any of (4), (8)–(10), (15), (19)–(20), or the existing `WeightedPrefixSquareAllRate`. Source-level proof scripts require actual elaboration and audits before becoming accepted. The external Mellin/Plancherel and classical arithmetic power-abscissa inputs need their own Mathlib source/type adapters if this analytic route is later formalized in Lean.

The independent rational reference `liouville_odd_frequency_rh_reference.py` tested all N<=512 for the exact odd/full/half prefix identity, the discrete 1/2 half-dilation contraction and full signed Cauchy residual, arbitrary finite nonlinear channel assignments, and hostile opposite-sign controls: **8,605 exact integer/rational assertions**. Finite tests do not establish any limsup, zero exclusion, spectral integral, or Lean acceptance.

Current pinned Lean `leanprover/lean4:v4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`; keep root import and pins unchanged. **COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN**. No new source axiom, `sorry`, native verifier, workflow dispatch, Noe automation or independent review claim. The source-specific mathematical result is a reduction and diagnostic, NOT an unconditional RH-strength upper bound.
