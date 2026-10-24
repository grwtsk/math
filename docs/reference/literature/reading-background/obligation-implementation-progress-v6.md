# Concrete Laurent bar, retraction splitting and variance-budget convergence

New Lean source commit `0ddb5f1f2175e79c9ab554c435f537f06dd342e3`; Lean `leanprover/lean4:v4.33.0`; mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`.

**Nine new theorems strengthen existing partial results. Counts remain four completed optional/corrective obligations, fifteen verified partial results, seventeen unresolved obligations. All seven manuscript-level claims remain open.** The concrete Laurent construction removes coefficient-inversion premises from the rank-one K1/K2 fragments in both PDF versions. B2 gains a full conditional linear equivalence; S3/S5 gain bias-aware tails and probability convergence. No new source-specific obligation is discharged.

[Structured record](obligation-implementation-progress-v6.json) retains all 36 original specifications, dependencies, acceptance checks, exact bibliographic fields, page anchors and page-text hashes. Every changed obligation retains its complete prior state; [the previous pass](obligation-implementation-progress-v5.md) remains historical. Owner understanding dates stay unknown.

Verification: the exact three-module `lake build … --wfail` and external `Audit.lean` commands in JSON exited 0. All nine `#print axioms` readbacks use only `propext`, `Classical.choice`, `Quot.sound`, with no `sorryAx`; exact per-declaration lists are recorded. Logs stay in the external `MathematicsLibrary/.catalog/obligation-bridges-v6` directory. New bridges are locally Lean-verified fragments. Imported matrix, probability and logarithmic-derivative infrastructure retains upstream attribution. No historical influence or new paper-reading event is inferred.

Imported coefficient supplier: Mathlib `LaurentPolynomial.invert` (line 579) and `LaurentPolynomial.involutive_invert` (line 591), pinned to `db584cd6d46c92f209a44c0f1c829460d327499d`, `Mathlib/Algebra/Polynomial/Laurent.lean`, blob `ce2a095caf6ad1ff8954f0e0b628bd6d8754512d`. The new rank-one specialization uses these imported results; no authorship or historical influence is inferred.

## Algebra

### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations

Owner-identified unpublished research by grwtsk contributors; printed byline `[]`. PDF SHA-256 `498a8b7e7583e8ecc94d4edd362eb71bb3170fb3e9d79a1c5f40342af81c899f`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates remain in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/i%20%283%29.pdf); original blob `9263622af06f0bdfd8d1f9dfe6a9add5eb19bad6`.

**Other obligations retained:** E1 — unresolved; E2 — unresolved; E3 — kernel-verified-conditional-fragment; E4 — kernel-verified-conditional-fragment; E5 — kernel-verified-conditional-fragment.

- **E1 missing construction:** Fix the base field and exact G2/F4/E8 forms, their pinned/split data and a representation r with explicitly defined V. Prove the claimed dimensions 7/26/248, homomorphism laws and faithfulness. A Lie-algebra representation alone needs an additional group-level integration/descent proof.
- **E2 missing construction:** Specify the required representation of the L-group (or dual group in an explicitly unramified split setting), an automorphic representation π of G and a proposed GL(V) transfer Π. Prove existence/automorphy; an ordinary embedding G→GL(V) does not define Π.

### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations

Owner-identified unpublished research by grwtsk contributors; printed byline `[]`. PDF SHA-256 `67b33f06a6094d0590d89ac6504cc0ad7f49d7a803f9e5b5fc9e7bc8bc269c8a`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates remain in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/i%20%282%29.pdf); original blob `71542562d4e167aaa8145eb43de20253dc111ae2`.

**Other obligations retained:** E1 — unresolved; E2 — unresolved; E3 — kernel-verified-conditional-fragment; E4 — kernel-verified-conditional-fragment; E5 — kernel-verified-conditional-fragment.

- **E1 missing construction:** Fix the base field and exact G2/F4/E8 forms, their pinned/split data and a representation r with explicitly defined V. Prove the claimed dimensions 7/26/248, homomorphism laws and faithfulness. A Lie-algebra representation alone needs an additional group-level integration/descent proof.
- **E2 missing construction:** Specify the required representation of the L-group (or dual group in an explicitly unramified split setting), an automorphic representation π of G and a proposed GL(V) transfer Π. Prove existence/automorphy; an ordinary embedding G→GL(V) does not define Π.

### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis

Owner-identified unpublished research by grwtsk contributors; printed byline `['grwtsk contributors']`. PDF SHA-256 `159cb12b34d5a425a822b19a204ca2dccff897363f8978d15bd17fa166ad9a2d`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates remain in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/C%20%287%29.pdf); original blob `321ef7c1fa5685faac750558754f8d0e2906fe14`.

**K1, PDF pages 2 — kernel-verified-conditional-fragment.** Instantiated the rank-one coefficient bar over the actual Laurent polynomial ring ℤ[v,v⁻¹], using Mathlib exponent inversion. Parameter q=T(2), inverse T(−2), coefficient involutivity and inversion identities no longer need caller-supplied hypotheses. The resulting rank-one bar is involutive and multiplicative. General Coxeter generators, braid relations and the full Hecke algebra are still missing; the scope is the rank-one normal-form coordinate algebra.

- [`GRWTSK.Algebra.Hecke.laurentRankOneBar_involutive`](https://github.com/grwtsk/math/blob/0ddb5f1f2175e79c9ab554c435f537f06dd342e3/GRWTSK/Algebra/Hecke/LaurentRankOneBar.lean#L15); blob `76ba3801890540fd9decf1b8d6c9394adcdf892b`.
- [`GRWTSK.Algebra.Hecke.laurentRankOneBar_mul`](https://github.com/grwtsk/math/blob/0ddb5f1f2175e79c9ab554c435f537f06dd342e3/GRWTSK/Algebra/Hecke/LaurentRankOneBar.lean#L23); blob `76ba3801890540fd9decf1b8d6c9394adcdf892b`.
- [`GRWTSK.Algebra.Hecke.laurentRankOneBar_normalized_fixed`](https://github.com/grwtsk/math/blob/0ddb5f1f2175e79c9ab554c435f537f06dd342e3/GRWTSK/Algebra/Hecke/LaurentRankOneBar.lean#L32); blob `76ba3801890540fd9decf1b8d6c9394adcdf892b`.
- [`GRWTSK.Algebra.Hecke.laurentRankOne_normalized_existsUnique`](https://github.com/grwtsk/math/blob/0ddb5f1f2175e79c9ab554c435f537f06dd342e3/GRWTSK/Algebra/Hecke/LaurentRankOneBar.lean#L41); blob `76ba3801890540fd9decf1b8d6c9394adcdf892b`.

**K2, PDF pages 2 — kernel-verified-conditional-fragment.** The actual Laurent normalized coordinates (T(−1),T(−1)) are bar-fixed. The earlier normalized expansion now has unique existence over ℤ[v,v⁻¹] without a caller-supplied inverse-parameter premise. This does not construct a general Coxeter KL basis, Bruhat degree theorem, recurrence or geometric realization; those suppliers remain missing.

- [`GRWTSK.Algebra.Hecke.laurentRankOneBar_involutive`](https://github.com/grwtsk/math/blob/0ddb5f1f2175e79c9ab554c435f537f06dd342e3/GRWTSK/Algebra/Hecke/LaurentRankOneBar.lean#L15); blob `76ba3801890540fd9decf1b8d6c9394adcdf892b`.
- [`GRWTSK.Algebra.Hecke.laurentRankOneBar_mul`](https://github.com/grwtsk/math/blob/0ddb5f1f2175e79c9ab554c435f537f06dd342e3/GRWTSK/Algebra/Hecke/LaurentRankOneBar.lean#L23); blob `76ba3801890540fd9decf1b8d6c9394adcdf892b`.
- [`GRWTSK.Algebra.Hecke.laurentRankOneBar_normalized_fixed`](https://github.com/grwtsk/math/blob/0ddb5f1f2175e79c9ab554c435f537f06dd342e3/GRWTSK/Algebra/Hecke/LaurentRankOneBar.lean#L32); blob `76ba3801890540fd9decf1b8d6c9394adcdf892b`.
- [`GRWTSK.Algebra.Hecke.laurentRankOne_normalized_existsUnique`](https://github.com/grwtsk/math/blob/0ddb5f1f2175e79c9ab554c435f537f06dd342e3/GRWTSK/Algebra/Hecke/LaurentRankOneBar.lean#L41); blob `76ba3801890540fd9decf1b8d6c9394adcdf892b`.

**Other obligations retained:** K3 — kernel-verified-correction-check; K4 — unresolved; K5 — unresolved.

- **K4 missing construction:** Construct the relevant Schubert/stratum intersection-cohomology realization, with grading, normalization and coefficient conditions, then prove coefficient nonnegativity for this exact KL family. Define affine/quantum variants independently before reusing a theorem.
- **K5 missing construction:** Construct a source-specific realization from these graded classes to the analytic zero detector, prove the full signed/graded identity, and prove why its off-line nonzero class would lie in an actually vanishing group. Nonnegative coefficients alone do not force a residue to be zero.

### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis

Owner-identified unpublished research by grwtsk contributors; printed byline `['grwtsk contributors']`. PDF SHA-256 `553f237f431fc2991860dfb72890a3ebb6d02de0adc14daa7e6af901c5f74a1f`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates remain in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/C%20%289%29.pdf); original blob `68757e7d6f23427e3487d3166928241025ce0ea6`.

**K1, PDF pages 2 — kernel-verified-conditional-fragment.** Instantiated the rank-one coefficient bar over the actual Laurent polynomial ring ℤ[v,v⁻¹], using Mathlib exponent inversion. Parameter q=T(2), inverse T(−2), coefficient involutivity and inversion identities no longer need caller-supplied hypotheses. The resulting rank-one bar is involutive and multiplicative. General Coxeter generators, braid relations and the full Hecke algebra are still missing; the scope is the rank-one normal-form coordinate algebra.

- [`GRWTSK.Algebra.Hecke.laurentRankOneBar_involutive`](https://github.com/grwtsk/math/blob/0ddb5f1f2175e79c9ab554c435f537f06dd342e3/GRWTSK/Algebra/Hecke/LaurentRankOneBar.lean#L15); blob `76ba3801890540fd9decf1b8d6c9394adcdf892b`.
- [`GRWTSK.Algebra.Hecke.laurentRankOneBar_mul`](https://github.com/grwtsk/math/blob/0ddb5f1f2175e79c9ab554c435f537f06dd342e3/GRWTSK/Algebra/Hecke/LaurentRankOneBar.lean#L23); blob `76ba3801890540fd9decf1b8d6c9394adcdf892b`.
- [`GRWTSK.Algebra.Hecke.laurentRankOneBar_normalized_fixed`](https://github.com/grwtsk/math/blob/0ddb5f1f2175e79c9ab554c435f537f06dd342e3/GRWTSK/Algebra/Hecke/LaurentRankOneBar.lean#L32); blob `76ba3801890540fd9decf1b8d6c9394adcdf892b`.
- [`GRWTSK.Algebra.Hecke.laurentRankOne_normalized_existsUnique`](https://github.com/grwtsk/math/blob/0ddb5f1f2175e79c9ab554c435f537f06dd342e3/GRWTSK/Algebra/Hecke/LaurentRankOneBar.lean#L41); blob `76ba3801890540fd9decf1b8d6c9394adcdf892b`.

**K2, PDF pages 2 — kernel-verified-conditional-fragment.** The actual Laurent normalized coordinates (T(−1),T(−1)) are bar-fixed. The earlier normalized expansion now has unique existence over ℤ[v,v⁻¹] without a caller-supplied inverse-parameter premise. This does not construct a general Coxeter KL basis, Bruhat degree theorem, recurrence or geometric realization; those suppliers remain missing.

- [`GRWTSK.Algebra.Hecke.laurentRankOneBar_involutive`](https://github.com/grwtsk/math/blob/0ddb5f1f2175e79c9ab554c435f537f06dd342e3/GRWTSK/Algebra/Hecke/LaurentRankOneBar.lean#L15); blob `76ba3801890540fd9decf1b8d6c9394adcdf892b`.
- [`GRWTSK.Algebra.Hecke.laurentRankOneBar_mul`](https://github.com/grwtsk/math/blob/0ddb5f1f2175e79c9ab554c435f537f06dd342e3/GRWTSK/Algebra/Hecke/LaurentRankOneBar.lean#L23); blob `76ba3801890540fd9decf1b8d6c9394adcdf892b`.
- [`GRWTSK.Algebra.Hecke.laurentRankOneBar_normalized_fixed`](https://github.com/grwtsk/math/blob/0ddb5f1f2175e79c9ab554c435f537f06dd342e3/GRWTSK/Algebra/Hecke/LaurentRankOneBar.lean#L32); blob `76ba3801890540fd9decf1b8d6c9394adcdf892b`.
- [`GRWTSK.Algebra.Hecke.laurentRankOne_normalized_existsUnique`](https://github.com/grwtsk/math/blob/0ddb5f1f2175e79c9ab554c435f537f06dd342e3/GRWTSK/Algebra/Hecke/LaurentRankOneBar.lean#L41); blob `76ba3801890540fd9decf1b8d6c9394adcdf892b`.

**Other obligations retained:** K3 — kernel-verified-correction-check; K4 — unresolved; K5 — unresolved.

- **K4 missing construction:** Construct the relevant Schubert/stratum intersection-cohomology realization, with grading, normalization and coefficient conditions, then prove coefficient nonnegativity for this exact KL family. Define affine/quantum variants independently before reusing a theorem.
- **K5 missing construction:** Construct a source-specific realization from these graded classes to the analytic zero detector, prove the full signed/graded identity, and prove why its off-line nonzero class would lie in an actually vanishing group. Nonnegative coefficients alone do not force a residue to be zero.

## GeometryTopology

### Boundary Regularization: A Framework for High-Rank Elimination

Owner-identified unpublished research by grwtsk contributors; printed byline `[]`. PDF SHA-256 `796ba01d4a02a5ba331fbe88ee80dbd4bd3e669712c11d6de4530a0e063c9362`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates remain in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/g%20%282%29.pdf); original blob `a6b1384d8b682feabc705eee0e058eb50c61df39`.

**B2, PDF pages 1 — kernel-verified-conditional-fragment.** Constructed the actual linear equivalence M ≃ B × ker r from linear maps i,r with r∘i=id, with explicit coordinates and inverse. Proved that the complementary projector vanishes exactly on range i. This strengthens the earlier projector into a direct-product splitting but does not construct an actual cohomological localization sequence, geometric retraction or compatible Hecke action. Those geometric suppliers remain missing.

- [`GRWTSK.LinearAlgebra.retractionSplitEquiv_coordinates`](https://github.com/grwtsk/math/blob/0ddb5f1f2175e79c9ab554c435f537f06dd342e3/GRWTSK/LinearAlgebra/RetractionSplitEquiv.lean#L34); blob `4e39fbf33bc1146254562bd88f6c5ca8f839037c`.
- [`GRWTSK.LinearAlgebra.retractionSplitEquiv_inverse`](https://github.com/grwtsk/math/blob/0ddb5f1f2175e79c9ab554c435f537f06dd342e3/GRWTSK/LinearAlgebra/RetractionSplitEquiv.lean#L41); blob `4e39fbf33bc1146254562bd88f6c5ca8f839037c`.
- [`GRWTSK.LinearAlgebra.retractionComplement_zero_iff_range`](https://github.com/grwtsk/math/blob/0ddb5f1f2175e79c9ab554c435f537f06dd342e3/GRWTSK/LinearAlgebra/RetractionSplitEquiv.lean#L46); blob `4e39fbf33bc1146254562bd88f6c5ca8f839037c`.

**Other obligations retained:** B1 — unresolved; B3 — kernel-verified-conditional-fragment; B4 — unresolved; B5 — unresolved; B6 — unresolved.

- **B1 missing construction:** Fix the group/base, compactification j:U→X with boundary i:Z→X, coefficient complex K and the exact cohomology theory. Construct C_Z(K) and H^k(Z,K); do not identify arbitrary graph cohomology with these groups.
- **B4 missing construction:** For every nontrivial zero ρ of the exact source with Re(ρ)≠1/2, construct kρ, Kρ and vρ∈H^{kρ}(Z,Kρ), prove vρ≠0 and that kρ lies in the specific forbidden degree range.
- **B5 missing construction:** Prove H^k(Z,Kρ)=0 in that same range for the original Kρ, under verified properness/dimension/positivity hypotheses. Vanishing only after a positive twist requires a proved untwisting comparison.
- **B6 missing construction:** Combine vρ≠0 with B5 for every allowed off-line zero. This final contradiction is conditional until B1–B5 are constructed.

## LogicAndComputation

### Updated Verification of Recursive Refinement Framework

Owner-identified unpublished research by grwtsk contributors; printed byline `['grwtsk contributors']`. PDF SHA-256 `d7819c0364c77a97d9817f1089ef84d2cf5a24eec9ac9ad47fdb4b67fb29455b`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates remain in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/Updated_Verification_of_Recursive_Refinement_Framework%20%282%29.pdf); original blob `e7e459f64d4d145ea39d56f08721c2ba5b39372b`.

**S3, PDF pages 1, 2 — kernel-verified-correction-fragment.** Added a bias-aware model tail: if |E[Y]−model|≤bias<ε, the model-centered deviation probability is bounded by Var(Y)/(ε−bias)². Separately, actual variance budgets tending to zero imply expectation-centered convergence in probability for a supplied L² sequence. No arithmetic variance/bias decay, deterministic uniform bound, almost-sure result or Fourier identity is supplied. The expectation/model comparison is an explicit premise.

- [`GRWTSK.Probability.Moments.model_tail_le_variance_of_bias`](https://github.com/grwtsk/math/blob/0ddb5f1f2175e79c9ab554c435f537f06dd342e3/GRWTSK/Probability/Moments/VarianceBudgetConvergence.lean#L12); blob `742824137da63aee8e62dbeae335baa34a6892ce`.
- [`GRWTSK.Probability.Moments.centered_tail_tendsto_zero`](https://github.com/grwtsk/math/blob/0ddb5f1f2175e79c9ab554c435f537f06dd342e3/GRWTSK/Probability/Moments/VarianceBudgetConvergence.lean#L26); blob `742824137da63aee8e62dbeae335baa34a6892ce`.

**S5, PDF pages 2 — kernel-verified-conditional-fragment.** Added convergence in probability of expectation-centered deviations under actual L² integrability, a supplied variance majorant and its proved limit zero. No independence or Gaussian law is inferred, and no actual arithmetic zero process or covariance-decay supplier is constructed. Bias transfer to a source model still requires its own bound.

- [`GRWTSK.Probability.Moments.model_tail_le_variance_of_bias`](https://github.com/grwtsk/math/blob/0ddb5f1f2175e79c9ab554c435f537f06dd342e3/GRWTSK/Probability/Moments/VarianceBudgetConvergence.lean#L12); blob `742824137da63aee8e62dbeae335baa34a6892ce`.
- [`GRWTSK.Probability.Moments.centered_tail_tendsto_zero`](https://github.com/grwtsk/math/blob/0ddb5f1f2175e79c9ab554c435f537f06dd342e3/GRWTSK/Probability/Moments/VarianceBudgetConvergence.lean#L26); blob `742824137da63aee8e62dbeae335baa34a6892ce`.

**Other obligations retained:** S1 — unresolved; S2 — unresolved; S4 — kernel-verified-conditional-fragment; S6 — unresolved.

- **S1 missing construction:** Bind each named January reference to an exact catalog SHA/version and exact theorem. Eight candidate versions of four title families were inspected; title matching alone does not prove that the status note invokes either particular version.
- **S2 missing construction:** Define each arithmetic sequence, its deterministic centering and e_n before choosing a target rate. Decide whether the needed claim is ∃C∀n |e_n|≤C, a variable envelope |e_n|≤C B(n), or a normalized o(n) statement.
- **S6 missing construction:** Retain every RH/GRH hypothesis printed in the Resolution draft §4.3. If the desired downstream theorem is unconditional RH/GRH, replace that supplier by an independently proved result rather than using it circularly.

## NumberTheory

### A Holistic Strategy for Deriving Properties of Prime Numbers

Owner-identified unpublished research by grwtsk contributors; printed byline `['grwtsk contributors']`. PDF SHA-256 `0b423568798d1ce34de5668b0b9f4af71ec11da133956d7c17ef45dff9559d1f`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates remain in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/A_Holistic_Strategy_for_Deriving_Properties_of_Prime_Numbers%20%283%29.pdf); original blob `28e3ee7aaf8f5b4fd1d85a32316654fea12e446c`.

**Other obligations retained:** P1 — unresolved; P2 — kernel-verified-optional-specialization; P3 — kernel-verified-optional-specialization; P4 — unresolved.

- **P1 missing construction:** Resolve each numbered Source 23/26/27/28/29 to a title, exact version and theorem/method, or explicitly leave the citation unresolved.
- **P4 missing construction:** For any proposed prime-distribution estimate, specify the actual counting/weighted source S(x), comparison M(x), domain x≥x0 and constants C≥0, then prove ∀x≥x0, |S(x)−M(x)|≤C B(x) for a named B. No bound B is supplied by this roadmap.

## Exact hypotheses and remaining boundaries

**Concrete Laurent rank-one bar:** coefficient ring LaurentPolynomial ℤ; Mathlib LaurentPolynomial.invert maps T(n) to T(−n), and is involutive. Parameters are actual T(2),T(−2), with v=T(1), vinv=T(−1). Involutivity, multiplication, normalized fixedness and unique normalized expansion have no extra inverse or coefficient-automorphism premise. The scope is rank one, not a constructed general Coxeter Hecke/KL algebra.

**Retraction splitting:** modules over a commutative ring, actual linear maps i:B→M and r:M→B, and r(i b)=b for every b. The map x↦(rx,Px), P=id−i∘r, is a linear equivalence with inverse (b,k)↦i b+k. The new zero-locus theorem identifies ker P with range i. This does not produce a geometric retraction or prove an actual localization sequence splits; compatibility with a supplied action retains the previous two intertwining premises.

**Probability convergence:** a specified probability measure μ, a sequence of real L² observables Yn, a real budget with Var(Yn)≤budget n and budget→0. For each ε>0, μ{ε≤|Yn−E[Yn]|}→0 in ℝ≥0∞. This is convergence in probability, not deterministic or almost-sure convergence. A separate tail transfers to a model only under |E[Y]−model|≤bias<ε, with denominator (ε−bias)². No arithmetic process, variance/bias estimate, independence or global RH consequence is constructed.

All seventeen unresolved specifications are retained verbatim in JSON and summarized by taxonomy below. Missing source bindings, prime estimates, boundary geometry/zero-to-class/vanishing, exceptional representations/automorphic transfers, KL geometry/signed realization, arithmetic centering and noncircular RH/GRH suppliers remain open.
