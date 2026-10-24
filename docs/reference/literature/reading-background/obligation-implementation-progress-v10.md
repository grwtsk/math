# Rank-one triangular bar uniqueness and exact-defect tracker

New Lean source commit `3d759c73173837820366c6d2fa71a94dd1cfc82e`; Lean `leanprover/lean4:v4.33.0`; mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`.

**Ten new theorems. Counts remain four completed optional/corrective obligations, fifteen partial results and seventeen unresolved obligations. All seven manuscript-level claims remain open.** K2 in both distinct KL versions gains concrete rank-one triangular uniqueness; S4 gains a constructed tracker whose net forcing is proved zero. General KL and arithmetic-access obligations remain open.

[Structured record](obligation-implementation-progress-v10.json) retains all 36 original specifications, dependencies, acceptance checks, bibliographic fields, exact page anchors and hashes, and complete earlier states. [Previous pass](obligation-implementation-progress-v9.md) remains historical.

Verification: the exact two-module `lake build … --wfail` and external `Audit.lean` commands in JSON exited 0. All ten `#print axioms` readbacks use only `propext`, `Classical.choice`, `Quot.sound`, with no `sorryAx`; exact lists are recorded. Logs remain outside Git under `MathematicsLibrary/.catalog/obligation-bridges-v10`. This is local Lean verification, not separate whole-environment kernel replay.

Imported suppliers: Mathlib Laurent coefficient/exponent-inversion identities. Exact upstream source bindings and maintained rank-one/residual-contraction dependencies are separate in JSON; upstream attribution is retained.

## Algebra

### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations

Owner-identified unpublished research by grwtsk contributors; printed byline `[]`. PDF SHA-256 `498a8b7e7583e8ecc94d4edd362eb71bb3170fb3e9d79a1c5f40342af81c899f`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates stay in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/i%20%283%29.pdf); original blob `9263622af06f0bdfd8d1f9dfe6a9add5eb19bad6`.

**Other obligations retained:** E1 — unresolved; E2 — unresolved; E3 — kernel-verified-conditional-fragment; E4 — kernel-verified-conditional-fragment; E5 — kernel-verified-conditional-fragment.

- **E1 missing construction:** Fix the base field and exact G2/F4/E8 forms, their pinned/split data and a representation r with explicitly defined V. Prove the claimed dimensions 7/26/248, homomorphism laws and faithfulness. A Lie-algebra representation alone needs an additional group-level integration/descent proof.
- **E2 missing construction:** Specify the required representation of the L-group (or dual group in an explicitly unramified split setting), an automorphic representation π of G and a proposed GL(V) transfer Π. Prove existence/automorphy; an ordinary embedding G→GL(V) does not define Π.

### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations

Owner-identified unpublished research by grwtsk contributors; printed byline `[]`. PDF SHA-256 `67b33f06a6094d0590d89ac6504cc0ad7f49d7a803f9e5b5fc9e7bc8bc269c8a`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates stay in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/i%20%282%29.pdf); original blob `71542562d4e167aaa8145eb43de20253dc111ae2`.

**Other obligations retained:** E1 — unresolved; E2 — unresolved; E3 — kernel-verified-conditional-fragment; E4 — kernel-verified-conditional-fragment; E5 — kernel-verified-conditional-fragment.

- **E1 missing construction:** Fix the base field and exact G2/F4/E8 forms, their pinned/split data and a representation r with explicitly defined V. Prove the claimed dimensions 7/26/248, homomorphism laws and faithfulness. A Lie-algebra representation alone needs an additional group-level integration/descent proof.
- **E2 missing construction:** Specify the required representation of the L-group (or dual group in an explicitly unramified split setting), an automorphic representation π of G and a proposed GL(V) transfer Π. Prove existence/automorphy; an ordinary embedding G→GL(V) does not define Π.

### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis

Owner-identified unpublished research by grwtsk contributors; printed byline `['grwtsk contributors']`. PDF SHA-256 `159cb12b34d5a425a822b19a204ca2dccff897363f8978d15bd17fa166ad9a2d`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates stay in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/C%20%287%29.pdf); original blob `321ef7c1fa5685faac750558754f8d0e2906fe14`.

**K2, PDF pages 2 — kernel-verified-conditional-fragment.** In the concrete Laurent rank-one model, proved that v^-1 has strictly negative support; every exponent-inversion-fixed Laurent polynomial with only negative exponents is zero. Consequently bar invariance plus strict triangularity uniquely determines the lower coefficient a=v^-1 when the leading T coefficient is v^-1. Proved unique existence of that element. This strengthens the rank-one specialization only: no arbitrary Coxeter/Bruhat data, general KL recurrence, G2 example, positivity or geometric realization is constructed.

- [`GRWTSK.Algebra.Hecke.inverse_parameter_strictly_negative`](https://github.com/grwtsk/math/blob/3d759c73173837820366c6d2fa71a94dd1cfc82e/GRWTSK/Algebra/Hecke/LaurentRankOneTriangular.lean#L13); blob `6447c0fa1c08a34abcc288a2b47e8ce2e7d423f3`.
- [`GRWTSK.Algebra.Hecke.negative_laurent_invert_fixed_zero`](https://github.com/grwtsk/math/blob/3d759c73173837820366c6d2fa71a94dd1cfc82e/GRWTSK/Algebra/Hecke/LaurentRankOneTriangular.lean#L20); blob `6447c0fa1c08a34abcc288a2b47e8ce2e7d423f3`.
- [`GRWTSK.Algebra.Hecke.laurent_rankOne_triangular_bar_unique`](https://github.com/grwtsk/math/blob/3d759c73173837820366c6d2fa71a94dd1cfc82e/GRWTSK/Algebra/Hecke/LaurentRankOneTriangular.lean#L33); blob `6447c0fa1c08a34abcc288a2b47e8ce2e7d423f3`.
- [`GRWTSK.Algebra.Hecke.laurent_rankOne_triangular_bar_existsUnique`](https://github.com/grwtsk/math/blob/3d759c73173837820366c6d2fa71a94dd1cfc82e/GRWTSK/Algebra/Hecke/LaurentRankOneTriangular.lean#L54); blob `6447c0fa1c08a34abcc288a2b47e8ce2e7d423f3`.

**Other obligations retained:** K1 — kernel-verified-conditional-fragment; K3 — kernel-verified-correction-check; K4 — unresolved; K5 — unresolved.

- **K4 missing construction:** Construct the relevant Schubert/stratum intersection-cohomology realization, with grading, normalization and coefficient conditions, then prove coefficient nonnegativity for this exact KL family. Define affine/quantum variants independently before reusing a theorem.
- **K5 missing construction:** Construct a source-specific realization from these graded classes to the analytic zero detector, prove the full signed/graded identity, and prove why its off-line nonzero class would lie in an actually vanishing group. Nonnegative coefficients alone do not force a residue to be zero.

### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis

Owner-identified unpublished research by grwtsk contributors; printed byline `['grwtsk contributors']`. PDF SHA-256 `553f237f431fc2991860dfb72890a3ebb6d02de0adc14daa7e6af901c5f74a1f`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates stay in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/C%20%289%29.pdf); original blob `68757e7d6f23427e3487d3166928241025ce0ea6`.

**K2, PDF pages 2 — kernel-verified-conditional-fragment.** In the concrete Laurent rank-one model, proved that v^-1 has strictly negative support; every exponent-inversion-fixed Laurent polynomial with only negative exponents is zero. Consequently bar invariance plus strict triangularity uniquely determines the lower coefficient a=v^-1 when the leading T coefficient is v^-1. Proved unique existence of that element. This strengthens the rank-one specialization only: no arbitrary Coxeter/Bruhat data, general KL recurrence, G2 example, positivity or geometric realization is constructed.

- [`GRWTSK.Algebra.Hecke.inverse_parameter_strictly_negative`](https://github.com/grwtsk/math/blob/3d759c73173837820366c6d2fa71a94dd1cfc82e/GRWTSK/Algebra/Hecke/LaurentRankOneTriangular.lean#L13); blob `6447c0fa1c08a34abcc288a2b47e8ce2e7d423f3`.
- [`GRWTSK.Algebra.Hecke.negative_laurent_invert_fixed_zero`](https://github.com/grwtsk/math/blob/3d759c73173837820366c6d2fa71a94dd1cfc82e/GRWTSK/Algebra/Hecke/LaurentRankOneTriangular.lean#L20); blob `6447c0fa1c08a34abcc288a2b47e8ce2e7d423f3`.
- [`GRWTSK.Algebra.Hecke.laurent_rankOne_triangular_bar_unique`](https://github.com/grwtsk/math/blob/3d759c73173837820366c6d2fa71a94dd1cfc82e/GRWTSK/Algebra/Hecke/LaurentRankOneTriangular.lean#L33); blob `6447c0fa1c08a34abcc288a2b47e8ce2e7d423f3`.
- [`GRWTSK.Algebra.Hecke.laurent_rankOne_triangular_bar_existsUnique`](https://github.com/grwtsk/math/blob/3d759c73173837820366c6d2fa71a94dd1cfc82e/GRWTSK/Algebra/Hecke/LaurentRankOneTriangular.lean#L54); blob `6447c0fa1c08a34abcc288a2b47e8ce2e7d423f3`.

**Other obligations retained:** K1 — kernel-verified-conditional-fragment; K3 — kernel-verified-correction-check; K4 — unresolved; K5 — unresolved.

- **K4 missing construction:** Construct the relevant Schubert/stratum intersection-cohomology realization, with grading, normalization and coefficient conditions, then prove coefficient nonnegativity for this exact KL family. Define affine/quantum variants independently before reusing a theorem.
- **K5 missing construction:** Construct a source-specific realization from these graded classes to the analytic zero detector, prove the full signed/graded identity, and prove why its off-line nonzero class would lie in an actually vanishing group. Nonnegative coefficients alone do not force a residue to be zero.

## GeometryTopology

### Boundary Regularization: A Framework for High-Rank Elimination

Owner-identified unpublished research by grwtsk contributors; printed byline `[]`. PDF SHA-256 `796ba01d4a02a5ba331fbe88ee80dbd4bd3e669712c11d6de4530a0e063c9362`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates stay in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/g%20%282%29.pdf); original blob `a6b1384d8b682feabc705eee0e058eb50c61df39`.

**Other obligations retained:** B1 — unresolved; B2 — kernel-verified-conditional-fragment; B3 — kernel-verified-conditional-fragment; B4 — unresolved; B5 — unresolved; B6 — unresolved.

- **B1 missing construction:** Fix the group/base, compactification j:U→X with boundary i:Z→X, coefficient complex K and the exact cohomology theory. Construct C_Z(K) and H^k(Z,K); do not identify arbitrary graph cohomology with these groups.
- **B4 missing construction:** For every nontrivial zero ρ of the exact source with Re(ρ)≠1/2, construct kρ, Kρ and vρ∈H^{kρ}(Z,Kρ), prove vρ≠0 and that kρ lies in the specific forbidden degree range.
- **B5 missing construction:** Prove H^k(Z,Kρ)=0 in that same range for the original Kρ, under verified properness/dimension/positivity hypotheses. Vanishing only after a positive twist requires a proved untwisting comparison.
- **B6 missing construction:** Combine vρ≠0 with B5 for every allowed off-line zero. This final contradiction is conditional until B1–B5 are constructed.

## LogicAndComputation

### Updated Verification of Recursive Refinement Framework

Owner-identified unpublished research by grwtsk contributors; printed byline `['grwtsk contributors']`. PDF SHA-256 `d7819c0364c77a97d9817f1089ef84d2cf5a24eec9ac9ad47fdb4b67fb29455b`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates stay in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/Updated_Verification_of_Recursive_Refinement_Framework%20%282%29.pdf); original blob `e7e459f64d4d145ea39d56f08721c2ba5b39372b`.

**S4, PDF pages 2 — kernel-verified-conditional-fragment.** Constructed a recursive tracker initialized arbitrarily and driven by the actual source stage defect. Its signed net forcing is exactly zero, its residual follows the homogeneous gain, and strict weighted column contraction gives weighted residual convergence without a separate forcing-decay premise. The first-step identity explicitly reads source(1). This does not provide arithmetic access to the source defect, computability, model positivity, an independent source readout or changing/growing channels. Exact next-source access remains a substantive supplier requirement.

- [`GRWTSK.Analysis.ErrorBounds.SourceResidualEvolution.exactDefectTracker_initial`](https://github.com/grwtsk/math/blob/3d759c73173837820366c6d2fa71a94dd1cfc82e/GRWTSK/Analysis/ErrorBounds/ExactDefectTracker.lean#L20); blob `f0d36bc217ba98a7d5fe28afed6981d1236779f9`.
- [`GRWTSK.Analysis.ErrorBounds.SourceResidualEvolution.exactDefectTracker_step`](https://github.com/grwtsk/math/blob/3d759c73173837820366c6d2fa71a94dd1cfc82e/GRWTSK/Analysis/ErrorBounds/ExactDefectTracker.lean#L25); blob `f0d36bc217ba98a7d5fe28afed6981d1236779f9`.
- [`GRWTSK.Analysis.ErrorBounds.SourceResidualEvolution.exactDefectTracker_first_step`](https://github.com/grwtsk/math/blob/3d759c73173837820366c6d2fa71a94dd1cfc82e/GRWTSK/Analysis/ErrorBounds/ExactDefectTracker.lean#L32); blob `f0d36bc217ba98a7d5fe28afed6981d1236779f9`.
- [`GRWTSK.Analysis.ErrorBounds.SourceResidualEvolution.exactDefectTracker_net_forcing_zero`](https://github.com/grwtsk/math/blob/3d759c73173837820366c6d2fa71a94dd1cfc82e/GRWTSK/Analysis/ErrorBounds/ExactDefectTracker.lean#L41); blob `f0d36bc217ba98a7d5fe28afed6981d1236779f9`.
- [`GRWTSK.Analysis.ErrorBounds.SourceResidualEvolution.exactDefectTracker_residual_step`](https://github.com/grwtsk/math/blob/3d759c73173837820366c6d2fa71a94dd1cfc82e/GRWTSK/Analysis/ErrorBounds/ExactDefectTracker.lean#L50); blob `f0d36bc217ba98a7d5fe28afed6981d1236779f9`.
- [`GRWTSK.Analysis.ErrorBounds.SourceResidualEvolution.exactDefectTracker_residual_vanishes`](https://github.com/grwtsk/math/blob/3d759c73173837820366c6d2fa71a94dd1cfc82e/GRWTSK/Analysis/ErrorBounds/ExactDefectTracker.lean#L59); blob `f0d36bc217ba98a7d5fe28afed6981d1236779f9`.

**Other obligations retained:** S1 — unresolved; S2 — unresolved; S3 — kernel-verified-correction-fragment; S5 — kernel-verified-conditional-fragment; S6 — unresolved.

- **S1 missing construction:** Bind each named January reference to an exact catalog SHA/version and exact theorem. Eight candidate versions of four title families were inspected; title matching alone does not prove that the status note invokes either particular version.
- **S2 missing construction:** Define each arithmetic sequence, its deterministic centering and e_n before choosing a target rate. Decide whether the needed claim is ∃C∀n |e_n|≤C, a variable envelope |e_n|≤C B(n), or a normalized o(n) statement.
- **S6 missing construction:** Retain every RH/GRH hypothesis printed in the Resolution draft §4.3. If the desired downstream theorem is unconditional RH/GRH, replace that supplier by an independently proved result rather than using it circularly.

## NumberTheory

### A Holistic Strategy for Deriving Properties of Prime Numbers

Owner-identified unpublished research by grwtsk contributors; printed byline `['grwtsk contributors']`. PDF SHA-256 `0b423568798d1ce34de5668b0b9f4af71ec11da133956d7c17ef45dff9559d1f`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates stay in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/A_Holistic_Strategy_for_Deriving_Properties_of_Prime_Numbers%20%283%29.pdf); original blob `28e3ee7aaf8f5b4fd1d85a32316654fea12e446c`.

**Other obligations retained:** P1 — unresolved; P2 — kernel-verified-optional-specialization; P3 — kernel-verified-optional-specialization; P4 — unresolved.

- **P1 missing construction:** Resolve each numbered Source 23/26/27/28/29 to a title, exact version and theorem/method, or explicitly leave the citation unresolved.
- **P4 missing construction:** For any proposed prime-distribution estimate, specify the actual counting/weighted source S(x), comparison M(x), domain x≥x0 and constants C≥0, then prove ∀x≥x0, |S(x)−M(x)|≤C B(x) for a named B. No bound B is supplied by this roadmap.

## Exact hypotheses and remaining boundaries

**Rank-one triangularity:** coefficients in LaurentPolynomial ℤ, actual exponent-inversion bar and q=v². StrictlyNegativeLaurent a means a.coeff n=0 for every integer n≥0. With leading T coefficient v^-1, bar fixedness and this strict support condition force a=v^-1. Existence uses the actual normalized fixed element; uniqueness uses that a strictly negative inversion-fixed Laurent polynomial must vanish. No arbitrary Coxeter, Bruhat-order, degree-recursion, G2 or geometric positivity claim follows.

**Constructed tracker:** one fixed finite channel type, arbitrary real source path and initial state, and a supplied gain. Recursively model(n+1)=gain(n) model(n)+stageDefect(gain,source,n). Thus source/model defect difference is identically zero and residual evolution is homogeneous. The explicit first step is model(1,i)=source(1,i)+Σj gain(0,i,j)(initial(j)-source(0,j)). This exposes next-source access; it is not an independently executable approximation from arithmetic data.

**Convergence:** nonnegative weights, real 0≤r<1 and all weighted absolute column sums bounded by r times the corresponding input weight. The constructed weighted residual mass vanishes without assuming forcing decay separately. Coordinate convergence still needs strictly positive relevant weights. No gain estimate, source-defect access, positive model, actual readout identity or growing-channel comparison is supplied.

All seventeen unresolved specifications remain unchanged and version-bound. General KL theory and arithmetic source constructions remain missing; source access is not obtained by defining a defect. Earlier geometry, automorphic and zero-detector gaps are not promoted by these proofs. No historical influence, owner understanding date or new paper-reading event is inferred.
