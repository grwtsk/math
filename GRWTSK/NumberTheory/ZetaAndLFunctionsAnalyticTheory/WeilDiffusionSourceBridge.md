# Reconstructing the Hilbert–Pólya route with Weil/GNS diffusion, verified against Alpöge

**Source authors:** grwtsk contributors.  
**Mathematical consumer:** [`grwtsk/math#1849`](https://github.com/grwtsk/math/issues/1849); signed Weil source consumer [`#1819`](https://github.com/grwtsk/math/issues/1819).  
**Starting main:** `grwtsk/math@326b1cdcbebe55455d3f61e1ab2d03f46b785dcf` (2026-11-22).  
**Root toolchain:** Lean `v4.34.1`, Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.  
**External Route A source inspected:** `tamnd/riemann-lean@af705e0d9a5904326eb0693310e36d9484df7f8f` (release mirror, **not** authoritative original checkout). The source uses Lean `v4.33.1` with a different Mathlib pin.  
**New finite Lean candidate:** [WeilDiffusionSourceBridge.lean](WeilDiffusionSourceBridge.lean).  
**Finite exact test:** [verify_weil_diffusion_bridge.py](../../../scripts/verify_weil_diffusion_bridge.py).  
**Evidence:** Full primary mathematical argument and falsifier below; finite rational checks executed locally; new Lean elaboration/kernel/axiom audit **NOT_RUN**. Neither a new independent RH proof nor a compiler-verified GNS construction is asserted.

## 1. Three different spectral objects must not be identified

Let `p_n = Nat.nth Nat.Prime n`, with `p_0=2`. The existing independent arithmetic Jacobi operator on finite-support sequences is

\[
(Ju)_0=p_0u_1,\qquad (Ju)_n=p_{n-1}u_{n-1}+p_nu_{n+1}\quad(n\ge1).
\]

Its closure is essentially self-adjoint by the classical Carleman Jacobi criterion, because the *actual* reciprocal primes are not summable; this is a mathematical fact, **not** a checked Lean theorem about the infinite domain. The cyclic root measure `μ_J` has total mass 1 and root second moment

\[
\int\lambda^2\,d\mu_J(\lambda)=\|Je_0\|_2^2=p_0^2=4.\tag{1}
\]

The zeta-zero **divisor measure**, assuming RH to regard all heights as real, is instead

\[
\nu_\zeta=\sum_{\rho\colon\xi(\rho)=0}m_\rho\,\delta_{\gamma_\rho},\qquad
\rho=\tfrac12+i\gamma_\rho.\tag{2}
\]

It is a locally finite positive measure of **infinite** total mass, not a probability measure; its weights encode analytic zero orders. For any probability measure `ν` supported on its ordinates, certified completeness of the first zeros gives `|γ|>14` and hence

\[
\int \lambda^2\,d\nu(\lambda)\ge196>4.\tag{3}
\]

This proves a **no-go theorem**: `μ_J` cannot be identified with *any* normalized zeta-zero measure on the same spectral coordinate. An arbitrary claimed Jacobi–xi equality must explain the nontrivial transformation that changes this second moment.

**Diffusion makes the obstruction quantitative.** Put

\[
h_J(t)=\int e^{-t\lambda^2}\,d\mu_J(\lambda).
\]

The elementary inequality `e^{-x}≥1−x` gives `h_J(t)≥1−4t`, whereas every normalized zeta-zero measure has heat observable `h_ζ(t)≤e^{-196t}`. At `t=1/16` the respective bounds are **3/4** and **e^{-49/4} < 0.000005**. This refutes direct equality without having to diagonalize even one infinite section. The zero-height exclusion is *external verified data* (Platt, *Isolating Some Non-trivial Zeros of Zeta*, Math. Comp. 86 (2017), and the rigorously complete [LMFDB zero data](https://www.lmfdb.org/zeros/zeta/Source)); it is not produced by the finite script.

**Correction:** Retain `J` as an exact **arithmetic encoder**. Build a *different* spectral Hilbert space from the complete arithmetic Weil form. Do not rename an operator made from zero ordinates as the independent prime Jacobi operator.

## 2. Exact arithmetic return from the prime-Jacobi encoder

For finite principal Jacobi sections define root moments `m_k=(J_N^k)_{00}` and principal Hankel determinants `D_k`. The existing [`PrimeJacobiKrylovFrontier.lean`](../../Combinatorics/GraphTheory/PrimeJacobiKrylovFrontier.lean) source candidates and mathematical arguments prove in conventional mathematics, for an adequate section size,

\[
D_k=\prod_{j=0}^{k-2}p_j^{2(k-1-j)},\qquad
p_j^2=\frac{D_{j+2}D_j}{D_{j+1}^2}.\tag{4}
\]

Thus moments reconstruct the *entire ordered arithmetic prime sequence*, at successively increasing finite resolutions, with no reference to zeta zeros. The finite-section-to-infinite-moment stability lemma is still pending Lean formalization. The separate source [`PrimeJacobiSymbolPerturbation.md`](../../Combinatorics/GraphTheory/PrimeJacobiSymbolPerturbation.md) proves triangular first appearance and exact symbol errors.

This is **not yet a Hilbert–Pólya spectrum**. The reconstructed primes must be passed to a new arithmetic object that retains the real gamma place and pole terms. Merely forming a positive moment Gram matrix, applying a graph Laplacian, or smoothing an arbitrary matrix does not generate the Weil sign criterion.

## 3. The complete arithmetic Weil quadratic form (source independent of zeros)

For `f∈C_c^∞(ℝ;ℂ)` supported in `[-A,A]` set

\[
C_f(r)=\int_{\mathbb R}\overline{f(t)}f(t+r)\,dt,
\qquad W_f(s)=\int_{\mathbb R}C_f(r)e^{(s-1/2)r}\,dr.\tag{5}
\]

Define `Q_W(f)` by the **full original arithmetic side** of [`WeilGammaPhysicalReturn.zeta_hasSum_physical_arithmetic`](WeilGammaPhysicalReturn.lean):

\[
\begin{aligned}
Q_W(f)={}&\gammaConstant(1,0)\,energy(f)
 +\int_{r>0}\gammaCorrectionDensity(0,f;r)\,dr\\
&-2\sum_{n\in activePrimePowers(A)}primeWeight(n)\,\Re C_f(\log n)
 +W_f(0)+W_f(1).\tag{6}
\end{aligned}
\]

The existing source proves a candidate `HasSum` equality between (6) and the actual critical-strip zero sum, counting each zero with its original multiplicity. The source theorem is presently **SOURCE_PROOF_CANDIDATE / Lean NOT_RUN**; this document uses the classical zeta explicit formula as a mathematical input, and does not promote that repository candidate to verified.

The exact arithmetic contract (6) retains both zeta pole orientations, the complete gamma integral and every active prime power, with the exact sign and normalization from source. In particular it is not the arithmetic statistic `G_z(x)` of Alpöge's proof, although both read from the recovered primes. The existence of an all-test, all-window return between their estimates is a separate problem.

Under **Route A** (`RiemannHypothesis` for the actual zeta function), every nontrivial zero is `ρ=1/2+iγ` with real γ. By the autocorrelation Fourier identity,

\[
W_f(\rho)=\int C_f(r)e^{i\gamma r}\,dr
   =|\widehat f(\gamma)|^2,
\qquad\widehat f(\gamma)=\int f(r)e^{i\gamma r}\,dr.\tag{7}
\]

Therefore the actual explicit formula and RH imply

\[
\boxed{Q_W(f)=\sum_\gamma m_\gamma|\widehat f(\gamma)|^2\ge0.}\tag{8}
\]

The sum converges because `f` is smooth compact and the classical zero count is `N(T)=O(T log T)`. Equation (8) is *Route A validation of the arithmetic source*, not an independent estimate. Conversely, classical **Weil positivity** implies RH when imposed on the full original test class. A more restrictive real-odd test version and explicit RH equivalence already appear as the source candidate `WeilZetaOddCriterion.riemannHypothesis_iff_literal_odd_nonneg` (blob `8541fb4c406ca8e3d965996509ccb3d5874e9230`); that candidate also remains Lean NOT_RUN. Standard literary comparison: Suzuki, *Aspects of the screw function corresponding to the Riemann zeta-function* (J. Lond. Math. Soc. 2023), Section 3.2, presenting Weil's positive-type criterion.

## 4. Construct a genuine self-adjoint Hilbert–Pólya generator by GNS

Assume that (6) is a continuous positive semidefinite Hermitian quadratic form on the compact smooth test domain (as verified mathematically from Route A by (8)). Let `Q_W(f,g)` be the associated Hermitian polarization. Form

\[
\mathcal N=\{f:Q_W(f,f)=0\},\qquad
\mathcal H_W=\overline{C_c^\infty(\mathbb R)/\mathcal N}^{\;Q_W}.\tag{9}
\]

**Theorem (conditional Weil/GNS Hilbert–Pólya representation).** Under the classical explicit formula, RH, the zero-counting bound and their domain/convergence hypotheses, (9) has a strongly continuous unitary translation group. Its self-adjoint Stone generator `H_W` has point-spectrum **set** equal to the actual real zeta-zero ordinates, with no extraneous points.

**Argument.** Translation `(τ_a f)(r)=f(r−a)` preserves `C_f` and hence the original arithmetic `Q_W`, without invoking a zero in its *definition*. Thus it descends to isometries on (9), with group inverse `τ_{-a}`. Via (8), the isometry

\[
\mathcal F:[f]\mapsto(\widehat f(\gamma))_\gamma
\]

lands in `L²(ν_ζ)`. This is onto after completion: if an ℓ² vector `v` is orthogonal to the image, then the complex atomic distribution `Σ_γ m_γ v_γ δ_γ` annihilates Fourier transforms of every compact smooth test. This distribution is tempered by Cauchy–Schwarz and the polynomial zero count; its Fourier transform therefore vanishes, forcing every atomic coefficient to be zero. Thus the image is dense.

Under this isometry `τ_a` is multiplication by `e^{iaγ}`, which is strongly continuous by dominated convergence. Stone's theorem gives a self-adjoint `H_W` corresponding to multiplication by γ. The zeta ordinates form a discrete set with no finite accumulation, so its spectral set is exactly the ordinate set, with no spurious continuous spectrum. **This is a real self-adjoint generator**, not an arbitrary diagonal graph re-labelling; its Hilbert-space *definition* is the full arithmetic quadratic form (6). The identification of its spectrum with zeta zeros uses Route A and the explicit formula. This is the classical Weil/GNS strategy, not an independent second proof of RH. The Hilbert-space completion, Fourier-density proof and Stone-generator transport are **not yet formalized in Lean** in `grwtsk/math`.

**Multiplicity warning:** the scalar GNS space `L²(Σ m_γ δ_γ)` has **one eigendirection per distinct γ**, even when a zeta zero has analytic multiplicity `m_γ>1`. The mass `m_γ` in its spectral measure records the zero order but does *not* automatically give eigenspace dimension `m_γ`. Therefore the construction identifies the **support and weighted spectral measure** exactly, but it does not yet construct a Hilbert-space operator with analytic zero multiplicities as geometric eigenspace multiplicities. A multiplicity-resolving fiber or jet construction, justified from arithmetic data, is a **separate obligation**. Do not silently identify a weighted heat distribution with the ordinary trace of scalar `H_W`.

## 5. Diffusion is the analytic verifier, not a sign factory

The mathematically appropriate heat is the positive operator

\[
T_t=e^{-tH_W^2},\qquad t\ge0.\tag{10}
\]

On the spectral side it acts by `(T_t v)(γ)=e^{-tγ²}v(γ)`. On the original smooth-test coordinate it is the Gaussian diffusion `f↦G_t*f`, where

\[
G_t(r)=(4\pi t)^{-1/2}\exp(-r^2/(4t)),\qquad t>0.\tag{11}
\]

This is an actual heat semigroup: `T_tT_s=T_{t+s}`, self-adjoint, positive and contractive, with `T_t→I` strongly as `t↓0`. Crucially Gaussian convolution does **not** preserve compact support. To pass an independently calculated arithmetic source through (6), first approximate by compactly supported cutoffs and prove convergence of **all** gamma, prime and pole terms; no unbounded inverse heat or informal interchange of sums is admissible. Under Route A this is automatic after transporting to `L²(ν_ζ)` and using dominated convergence, but the arithmetic-only verification still needs explicit source-tied tail budgets.

A positive-definite, finite heat-kernel observation is

\[
\boxed{K_t(a,b)=\sum_\gamma m_\gamma e^{-t\gamma^2}e^{i(a-b)\gamma},\quad t>0.}\tag{12}
\]

Indeed for any finite complex coefficients `c_j`,

\[
\sum_{j,k}c_j\overline{c_k}K_t(a_j,a_k)
=\sum_\gamma m_\gamma e^{-t\gamma^2}
  \left|\sum_jc_je^{ia_j\gamma}\right|^2\ge0.\tag{13}
\]

This is the **weighted zeta-zero heat kernel**, not the root heat of the raw prime Jacobi operator. The distributional heat statistic `Θ_ζ(t)=Σ_γ m_γe^{-tγ²}` is finite for each `t>0` by zero counting. It is **not automatically** `Tr(e^{-tH_W²})` on the scalar GNS space when zeros have multiplicity greater than one; the ordinary scalar trace counts distinct ordinates once. A separately justified multiplicity lift or weighted trace is required.

For signed arithmetic source tests, diffusion cannot create positivity. In finite dimension, if `M` is a complete source matrix and `D_t` is invertible, then

\[
\forall x,\ x^*M x\ge0\quad\Longleftrightarrow\quad
\forall x,\ x^*D_t^* M D_t x\ge0.\tag{14}
\]

A negative source witness `v` remains negative after diffusion at input `D_t^{-1}v`. The new [WeilDiffusionSourceBridge.lean](WeilDiffusionSourceBridge.lean) states these claims using exactly the existing complex `WindowFilterLedger.orderedPairing` and a complex-linear equivalence. It does not claim that an arbitrary user-specified matrix is a genuine heat semigroup or that a constrained subspace is preserved without proof. The existing `WeilConductorThreeFourCellCertificate.lean` contains source candidates for both a constrained positive matrix and an **unconstrained negative witness**; diffusion must not suppress the latter.

In infinite dimension, if the diffused tests tend to the original ones in the topology on which `Q_W` is continuous, positivity for *all* diffused tests and arbitrarily small times implies unsmoothed positivity by taking the limit. **The convergence proof is indispensable**; inspecting only a finite number of times or matrix sizes cannot imply the universal Weil criterion.

## 6. Route A as an independent checker, and the exact RH endpoint

The external [Lean/Mathlib statement](https://leanprover-community.github.io/blog/posts/riemann-hypothesis/) reports independent kernel verification of Alpöge's actual Mathlib `RiemannHypothesis`. The exact inspected mirror source has

- `lean/src/Main.lean`, blob `dbd5db70bc11b35f18fa5751216ab335321e7bfc`, `riemannHypothesis : RiemannHypothesis := rhOfAll`;
- `lean/src/Supplements/Kernels/MainTheorems.lean`, blob `6a542d7ce969a791fd12ce575f587e6bc29044bf`, `rhOfAll := Formalism.VW.rh_of_every allChi`;
- `lean/src/Formalism/GammaFactorNonvanishing/CritLine.lean`, blob `95fa4da5c50119db164aa93944d106f22fdb576d`, `rh_of_every`;
- `lean/src/Formalism/StatementOC.lean`, blob `12ab19c0176bd4135c2b23a7ee3ac22888df0122`, `Sz`, `Gz`, character terms;
- `lean/src/Formalism/SharpRestriction/RamificationFrobenius/TotientGaloisClasses/ExplicitFormulaErrorOfHostConditions.lean`, blob `ed60b4b997cd4703713660b185b9e43fd95559a1`, `Level.Gm`.

The **proposed full logical chain**, with statuses at their original proof boundaries, is

\[
\begin{array}{c}
\text{actual Jacobi root moments}\xrightarrow[\text{source candidates}]{\text{inverse}}
\text{ordered true primes}
\xrightarrow[\text{source candidate}]{\text{explicit formula}}
Q_W(f)\\
\xrightarrow[\text{Route A verifies}]{\text{RH}\Rightarrow Q_W\ge0}
\mathcal H_W\xrightarrow[\text{Stone}]{\text{translations}}H_W
\xrightarrow[\text{Route A+explicit formula}]{\text{Fourier/GNS}}
\operatorname{Spec}(H_W)=\{\gamma_\rho\}.\\
\text{Independent Route B to RH instead requires: }\quad
Q_W\ge0\ \text{proved from arithmetic alone}
\xrightarrow[\text{Weil/Yoshida criterion}]{ }
\text{Mathlib }\mathrm{RiemannHypothesis}.
\end{array}\tag{15}
\]

The first chain is a **mathematically valid conditional construction of a genuine self-adjoint spectral generator**, *assuming* the Weil formula, RH and standard Fourier/Stone results. The second is the desired independent RH proof but its leftmost all-test positivity supplier is not known from current prime-Jacobi reconstruction or diffusion. Importing Alpöge to establish that supplier verifies Route B **relative to Route A**; it must never be described as an independent proof of the same theorem.

## 7. Verification gates and next minimal obligations

| Gate | Current evidence | Required acceptance |
|---|---|---|
| Original Mathlib RH target (Route A) | Independent Lean-community certification, incompatible with `grwtsk/math` root pin | Preserve external source proof and exact target identity; isolated compatible environment for direct import |
| Jacobi `J` arithmetic source | Existing finite symmetry, chiral, moment-inverse source candidates | Re-run pinned Lean compilation and independent kernel replay; prove infinite finite-section moment stability |
| Direct raw `μ_J = normalized ν_ζ` | **DISPROVED** by exact `m₂=4` vs zero height `>14` | Do not reinstate without a mathematically specified spectral transformation |
| Full arithmetic Weil source | `WeilGammaPhysicalReturn.zeta_hasSum_physical_arithmetic` source candidate | Compile/replay original theorem and keep gamma + poles + signed powers |
| Diffused finite form positivity | Four new Lean source candidates; exact rational finite stress tests | Compile/replay and verify actual source matrix orientation, kernel support and every constraint |
| Arithmetic GNS to Stone operator | Complete mathematical construction under the source, RH and zero-count assumptions above | Formalize positive form, null quotient, completion, translation continuity, Stone generator and spectral-transform density |
| All-scale arithmetic positivity | **OPEN independently**; Route A supplies it conditionally | Prove all compact-test signed Weil nonnegativity without importing RH or assumptions equivalent to RH |
| Multiplicity source return | `ν_ζ` weights `m_γ` correctly; scalar eigenspace dimension generally 1 | Construct multiplicity-corrected spectral fibers from arithmetic or declare the result support-only |
| Actual RH from Route B | Classical Weil positivity criterion; `WeilZetaOddCriterion` source candidate | Full exact-source Lean check and independent arithmetic positivity supplier; no target reuse |

**Bounded computational receipts:** The standalone standard-library checker verifies nine prime-Jacobi finite second moments, six invertible rational heat scales, 36 semigroup products, 24 signed/positive Gram directions, and 3,750 exact finite Fourier-kernel quadratic inequalities. These checks test the algebraic diffusion machinery and its hostile controls; none verifies the infinite source equality or RH. The first-zero data remain external rigorously computed input, not new numerical validation.

**Next implementation:** check the new finite diffusion module against pinned Lean/Mathlib; explicitly link a complete signed Weil source kernel to the existing ordered pairing; prove compact Gaussian cutoff/source error convergence; build the positive-form completion and its translation representation in an isolated, source-pinned formalization. Run Route A as a **comparison oracle** for signed source equalities and positivity, never as an unstated premise of an independent Route B RH theorem.