# Weighted-prefix supplier through arbitrary frequency/channel covariance: exact source return and open RH gate

Local mathematical attribution: grwtsk contributors. Research date: 2026-10-31.

**Disposition:** Analytically proved finite identities, arbitrary-channel Cauchy comparison, and **conditional** source-exact colored-energy suppliers. The actual `WeightedPrefixSquareAllRate` remains UNPROVED and is RH-strength. The source modules are Lean proof **candidates** with `COMPILATION_NOT_RUN`, `EXPECTED_TYPES_NOT_RUN`, `FRESH_KERNEL_NOT_RUN`, `TRANSITIVE_AXIOM_AUDIT_NOT_RUN`. No root import, dependency pin, arithmetic sign or original analytic premise is changed.

## 1. Scope is not a simulation

Let `I` be ANY finite source inventory in an arbitrary type; let `F` be ANY frequency or address space, let `Γ` be ANY channel type, even infinite; take maps `frequency:I→F` and `color:F→Γ`. Only the finite **occupied image** of Γ enters the finite sum. Let `Τ` be ANY time or prefix type and `t` range over a finite observation set, with an arbitrary activation predicate `live(i,t)`, scalar amplitude `a_i∈ℝ` and real weight `w_t`. Put

\[
B_\gamma(t)=\sum_{i\in I:\operatorname{live}(i,t),\;\operatorname{color}(\operatorname{frequency}(i))=\gamma}a_i,
\quad
U(t)=\sum_{i\in I:\operatorname{live}(i,t)}a_i.
\]

Then **without probabilistic assumptions**, reindexing and Cauchy prove

\[
U(t)=\sum_{\gamma\in\Gamma_I}B_\gamma(t),\quad
U(t)^2=\sum_\gamma B_\gamma(t)^2+
\sum_{\gamma\ne\eta}B_\gamma(t)B_\eta(t),\quad
U(t)^2\le K_I\sum_\gamma B_\gamma(t)^2,
\tag{1}
\]

where `Γ_I` is the finite occupied image and `K_I=|Γ_I|` (even if the ambient channel space is infinite). For nonnegative `w_t` the same Cauchy inequality holds after multiplying by `w_t` and summing every time. No omission of the ordered mixed pairs is allowed.

The completely general signed real weighted overlap kernel is
\[
G(i,j)=\sum_{t:\operatorname{live}(i,t)\wedge\operatorname{live}(j,t)}w_t,
\quad
\sum_t w_tU(t)^2=\sum_{i,j\in I}a_i a_jG(i,j).
\tag{2}
\]

This is a source-agnostic exact Fubini theorem; source-specific cancellation requires independent arithmetic information.

## 2. General finite random-choice law, no independence assumption hidden

Let Ω be an arbitrary finite outcome type, `m_ω∈ℝ` arbitrary masses and `ε_ω(γ)∈ℝ` the chosen channel multipliers. The **exact** covariance is
\[
R_{\gamma\eta}=\sum_{\omega\in\Omega}m_\omega\varepsilon_\omega(\gamma)\varepsilon_\omega(\eta).
\]

Finite expansion, with no positivity or independence premise, gives
\[
\boxed{\sum_{\omega\in\Omega}m_\omega
  \Big(\sum_\gamma \varepsilon_\omega(\gamma)B_\gamma\Big)^2
=\sum_{\gamma,\eta}R_{\gamma\eta}B_\gamma B_\eta.}
\tag{3}
\]

Only if one **separately proves** `R_{γη}=1[γ=η]` does the choice-law mean reduce to `Σ_γ B_γ²`. A fair independent ±1 assignment to each occupied channel provides one such law (by the standard finite sign-flip involution). This fair joint-law existence is explained here mathematically; the new Lean generic module proves the implication from a source-supplied orthogonality witness, and an exact four-outcome independent two-sign identity. It does not claim that the actual deterministic Liouville signs arise from such a law. Independence over channels is not independence over integers, since all integer contributions assigned the same color retain their signed cross-products.

The elementary hostile two-channel state `B_1=x`, `B_2=-x` has original square 0 while orthogonal choice averaging has energy `2x²`. An artificially randomized energy can be **much larger** than the original deterministic source even when the latter cancels perfectly.

## 3. Exact Liouville original-source specialization

Use the EXISTING GRWTSK types and coefficients:

- `LiouvilleCausalEnergy.coefficient n = λ(n)` (including `λ(1)=1` and all prime powers);
- `LiouvilleWeightedPrefixSquareCriterion.liouvillePrefixNat k`;
- `LiouvilleWeightedPrefixSquareCriterion.discreteWeightedPrefixSquare N`;
- original full closed integer inventory `S_N={1,...,N}` and complete time prefix set `S_N`;
- activation `live(n,k) ↔ n≤k`;
- exact terminal-face weight `w_k=1/[k(k+1)]`.

The original discrete weighted moment is
\[
J_N=\sum_{k=1}^N\frac{L(k)^2}{k(k+1)}.
\]

Formula (2) gives a **true complete all-ordered-pairs** expression with no model signs:
\[
J_N=\sum_{m,n=1}^N\lambda(m)\lambda(n)
\left(\frac1{\max(m,n)}-\frac1{N+1}\right).
\tag{4}
\]

The displayed closed terminal kernel follows from the elementary telescoping sum
`Σ_{k=max(m,n)}^N 1/[k(k+1)]`. The Lean consumer currently proves the *kernel-valued* exact identity; the last rational telescoping simplification in (4), and the older exact named `WeightedPrefixSquareShiftIdentity`, are not newly accepted Lean theorems in this increment. Equation (4) is a standard finite elementary argument.

For ANY `frequency_N:ℕ→F` and `color_N:F→Γ`, possibly dependent on N, let
`B_{N,γ}(k)=Σ_{n≤k, color_N(frequency_N(n))=γ} λ(n)`. Then exactly
\[
\boxed{J_N=E_N+C_N},\quad
E_N=\sum_{k=1}^N\frac{\sum_\gamma B_{N,\gamma}(k)^2}{k(k+1)},\quad
C_N=\sum_{k=1}^N\frac{\sum_{\gamma\ne\eta}B_{N,\gamma}(k)B_{N,\eta}(k)}{k(k+1)}.
\tag{5}
\]

Under a supplied pairwise-orthogonal finite choice law, the **randomized mean equals `E_N`**, not `J_N`; `C_N` is the complete *actual arithmetic* cross-channel discrepancy. This result holds for any finite image in an infinite ambient channel type, arbitrary relabeling, arbitrary frequencies, and every N. The specific Gödel DFT `Fin 64→Fin 33→Fin 7` is ONE optional example, not a mathematical parameter in either new Lean file.

The **deterministic** Cauchy estimate is
\[
\boxed{0\le J_N\le K_N E_N},\quad K_N=|\Gamma_{S_N}|.
\tag{6}
\]

Even if the channel set changes with N, if one independently proves for every ε>0 both
`K_N≪_ε(N+1)^ε` and `E_N≪_ε(N+1)^ε`, then choosing ε=η/2 proves
`J_N≪_η(N+1)^η` for every η>0, with constants paid. This exact *conditional* implication is formalized in `subpolynomialDiscrete_of_dynamicChannelEstimates`. The two premises are NOT supplied by color construction, fair randomness, simulation, or available short-interval Liouville theorems.

## 4. Rigorous sign-blind countermodels to unearned all-rate conclusions

**All +1 source.** If `a_n=1`, the original prefix is k and
\[
J_N^{(+)}=\sum_{k=1}^N\frac{k}{k+1}
=N+1-H_{N+1}\ge N/2.
\]

For ANY K_N-channel assignment and an orthogonal choice law,
`E_N^{(+)}≥J_N^{(+)}/K_N≥N/(2K_N)` by Cauchy. If `K_N=N^{o(1)}`, this is `N^{1-o(1)}`, NOT a subpolynomial expected-channel energy. The same channel architecture and independent choices therefore do not prove an all-positive-rate supplier for arbitrary signs. This is NOT a counterexample to actual Liouville.

**Alternating deterministic source.** Let `a_n=(-1)^n` and color by parity. Every original prefix sum has magnitude at most one, so `J_N≤Σ_{k≥1}1/[k(k+1)]<1`. But its two channel prefixes have magnitudes `floor(k/2)` and `ceil(k/2)`; consequently their squared sum is at least `k²/2`, hence `E_N≥N/4`. Randomizing the two colors **destroys the original cross-color cancellation** and increases the mean energy to linear order. This is a second counterexample to treating random color signs as a proved arithmetic saving.

**Independent sign per INTEGER** has a genuinely different law, with exact mean `E[J_N]=Σ_{k=1}^N k/[k(k+1)]=H_{N+1}-1`. The actual Liouville arithmetic obeys `λ(2n)=-λ(n)` and is not such an independent sequence. No inference from the model expectation to actual Liouville is valid without a source-bound coupling, correlation theorem or deterministic signed remainder estimate.

## 5. Analytic boundary and known literature

`GRWTSK.NumberTheory.LiouvilleWeightedPrefixSquareCriterion.WeightedPrefixSquareAllRate` asks
\[
\forall\eta>0\ \exists A_\eta\ge0\ \forall T\ge0:\quad
J(T)=\int_1^{e^T}\frac{L(x)^2}{x^2}\,dx\le A_\eta e^{\eta T}.
\]

The old `WeightedPrefixSquareContinuousDiscreteIdentity` and `WeightedPrefixSquareShiftIdentity` are separately named open formalized gates. The new source does NOT assert the continuous all-T supplier, prove the actual arithmetic subpolynomial channel energy, or conclude RH. The already published doubling packet `LiouvilleWeightedPrefixDoubling.lean` (blob `d3e65086541a95b27edf6faad3d47a956dce92c7`) provides a source-specific negative diagonal compensation and leaves all **non-doubling** signed correlations open. The general channel equations here preserve that exact complement rather than overwriting it with random iid signs.

Classical available short-interval information is weaker than the all-N, all-positive-rate condition: Matomäki, Radziwiłł, Tao, Teräväinen, Ziegler, *Higher uniformity of bounded multiplicative functions in short intervals on average*, Annals of Mathematics 197 (2023), 739–857, DOI https://doi.org/10.4007/annals.2023.197.2.3. It proves averaged short-interval cancellation under its exact ranges, not (5) with subpolynomial `E_N` for arbitrary growing channel assignments. The unconditional zeta zero-free-region approach similarly gives exponent `1-o(1)`, not the all-positive-rate boundary. No authorship or novelty claim for classical finite covariance, Cauchy, Euler products or short-interval Liouville cancellation is made.

## 6. Formal source and validation ledger

Added under the matching mathematics MSC subjects:

- `GRWTSK/ProbabilityTheoryAndStochasticProcesses/FiniteWeightedChannelCovariance.lean` — truly generic finite support: exact arbitrary frequency/color reconstruction, full pair kernel, signed cross-channel return, arbitrary finite joint-law second moment, orthogonal-law specialization, exact independent fair two-sign fixture, occupied-channel Cauchy and pointwise/weighted transfer, opposite-channel hostile cancellation.
- `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/LiouvilleWeightedPrefixChannelReturn.lean` — EXACT original Liouville prefix, real terminal weights, complete pair kernel, arbitrary channel adapter, mixed covariance, paid-cardinality and growing-cardinality all-rate *conditional* reductions. Does not import the simulation or replace its source coefficients.
- `documentation/mathematics/_support/reviews/weighted-prefix-general-channel-covariance-disposition.md` — this mathematical comparison.
- `documentation/mathematics/_verification/targets/weighted-prefix-general-channel-covariance.json` — static, passive verification target.

Independent exact-rational fixture `general_weighted_prefix_channel_reference.py`: **864** source/channel/independent-choice fixtures for N=1..48, K in {1,2,3,5,7,11}, actual Liouville and two hostile sign sequences, plus separate all-ones checks. Checked full pair kernel with exact terminal N+1, diagonal + complete ordered off-diagonal, exact cross-color identity, Cauchy channel count, and explicit full fair-sign outcome enumeration when the number of occupied colors is at most 5. This is **FINITE_DIAGNOSTICS** only, not infinite mathematical proof or kernel evidence.

No new `sorry`, `admit`, research `axiom`, `native_decide`, root import, toolchain or dependency changes were intended. The current environment has no Lean/Lake/elan on PATH; strict compilation, expected-type consumers, fresh independent kernel replay and transitive axiom closure are **NOT_RUN**, not claimed passing. A separately authorized clean pinned verifier must compile the exact bytes before promotion. A passive GitHub issue is not a verification execution receipt.

**Mathematical stop condition:** an independently proved subpolynomial bound for the ACTUAL Liouville channel energy `E_N` with an explicitly paid occupied-channel count, or an independently controlled full signed arithmetic covariance `C_N` combined with some other bound. A purely random-choice expectation does NOT discharge the RH-strength problem.
