# Actual completed Riemann-zeta logarithmic detector

New Lean source commit `08fb6663f5ee4cf0b7a45290ed23c6f3e95dd46f`; Lean `leanprover/lean4:v4.33.0`; mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`.

**Eight new theorems instantiate existing bridges with the actual completed Riemann zeta function. Counts remain four completed optional/corrective obligations, fifteen verified partial results, seventeen unresolved obligations. All seven manuscript-level claims remain open.** This is an explicitly assistant-proposed Riemann specialization for B3 and E5 in both exceptional-group versions; the unspecified high-rank manuscript functions are not silently identified with zeta. No manuscript-scope obligation is discharged.

[Structured record](obligation-implementation-progress-v8.json) retains all 36 original specifications, dependencies, acceptance checks, exact bibliographic fields, page anchors and page-text hashes. Every changed obligation retains its complete prior state; [the previous pass](obligation-implementation-progress-v7.md) remains historical. Owner understanding dates stay unknown.

Verification: the exact single-module `lake build … --wfail` and external `Audit.lean` commands in JSON exited 0. All eight `#print axioms` readbacks use only `propext`, `Classical.choice`, `Quot.sound`, with no `sorryAx`; exact per-declaration lists are recorded. Logs stay in the external `MathematicsLibrary/.catalog/obligation-bridges-v8` directory. New bridges are locally Lean-verified fragments. Imported matrix, probability and logarithmic-derivative infrastructure retains upstream attribution. No historical influence or new paper-reading event is inferred.

Imported suppliers: Mathlib completedRiemannZeta/completedRiemannZeta₀ identity and analyticity, the actual zeta/completion/Gamma identity and entire inverse Gamma factor. Exact upstream declarations, blobs and line numbers are recorded in `new_imported_mathlib_components`. The canonical zero predicate, multiplicity and finiteness suppliers retain separate pinned source bindings. No unrelated source-only leaf is promoted by this audit.

## Algebra

### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations

Owner-identified unpublished research by grwtsk contributors; printed byline `[]`. PDF SHA-256 `498a8b7e7583e8ecc94d4edd362eb71bb3170fb3e9d79a1c5f40342af81c899f`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates remain in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/i%20%283%29.pdf); original blob `9263622af06f0bdfd8d1f9dfe6a9add5eb19bad6`.

**E5, PDF pages 2 — kernel-verified-conditional-fragment.** Assistant-proposed source-specific Riemann completion comparison: actual riemannZeta and completedRiemannZeta have equal local analytic orders and identical scaled negative-logarithmic coefficients at each canonical nontrivial zero, because the actual inverse Gamma factor is analytic and nonzero there. This is not a comparison for the manuscript's exceptional-group transfers or arbitrary extra factors. Automorphic source identities, all bad-place/Archimedean comparisons, global divisor transport and target critical-line theorems remain missing.

- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedLogDetector.completed_analytic`](https://github.com/grwtsk/math/blob/08fb6663f5ee4cf0b7a45290ed23c6f3e95dd46f/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalCompletedLogDetector.lean#L19); blob `917fc9bcd9355c772137eda91188e172dff28b3e`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedLogDetector.completed_zero`](https://github.com/grwtsk/math/blob/08fb6663f5ee4cf0b7a45290ed23c6f3e95dd46f/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalCompletedLogDetector.lean#L29); blob `917fc9bcd9355c772137eda91188e172dff28b3e`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedLogDetector.completed_order_eq_zeta`](https://github.com/grwtsk/math/blob/08fb6663f5ee4cf0b7a45290ed23c6f3e95dd46f/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalCompletedLogDetector.lean#L35); blob `917fc9bcd9355c772137eda91188e172dff28b3e`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedLogDetector.completed_order_finite`](https://github.com/grwtsk/math/blob/08fb6663f5ee4cf0b7a45290ed23c6f3e95dd46f/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalCompletedLogDetector.lean#L51); blob `917fc9bcd9355c772137eda91188e172dff28b3e`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedLogDetector.completed_natural_order`](https://github.com/grwtsk/math/blob/08fb6663f5ee4cf0b7a45290ed23c6f3e95dd46f/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalCompletedLogDetector.lean#L57); blob `917fc9bcd9355c772137eda91188e172dff28b3e`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedLogDetector.completed_scaled_coefficient`](https://github.com/grwtsk/math/blob/08fb6663f5ee4cf0b7a45290ed23c6f3e95dd46f/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalCompletedLogDetector.lean#L62); blob `917fc9bcd9355c772137eda91188e172dff28b3e`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedLogDetector.completed_no_continuous_logDeriv_extension`](https://github.com/grwtsk/math/blob/08fb6663f5ee4cf0b7a45290ed23c6f3e95dd46f/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalCompletedLogDetector.lean#L70); blob `917fc9bcd9355c772137eda91188e172dff28b3e`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedLogDetector.zeta_scaled_coefficient`](https://github.com/grwtsk/math/blob/08fb6663f5ee4cf0b7a45290ed23c6f3e95dd46f/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalCompletedLogDetector.lean#L76); blob `917fc9bcd9355c772137eda91188e172dff28b3e`.

**Other obligations retained:** E1 — unresolved; E2 — unresolved; E3 — kernel-verified-conditional-fragment; E4 — kernel-verified-conditional-fragment.

- **E1 missing construction:** Fix the base field and exact G2/F4/E8 forms, their pinned/split data and a representation r with explicitly defined V. Prove the claimed dimensions 7/26/248, homomorphism laws and faithfulness. A Lie-algebra representation alone needs an additional group-level integration/descent proof.
- **E2 missing construction:** Specify the required representation of the L-group (or dual group in an explicitly unramified split setting), an automorphic representation π of G and a proposed GL(V) transfer Π. Prove existence/automorphy; an ordinary embedding G→GL(V) does not define Π.

### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations

Owner-identified unpublished research by grwtsk contributors; printed byline `[]`. PDF SHA-256 `67b33f06a6094d0590d89ac6504cc0ad7f49d7a803f9e5b5fc9e7bc8bc269c8a`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates remain in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/i%20%282%29.pdf); original blob `71542562d4e167aaa8145eb43de20253dc111ae2`.

**E5, PDF pages 2 — kernel-verified-conditional-fragment.** Assistant-proposed source-specific Riemann completion comparison: actual riemannZeta and completedRiemannZeta have equal local analytic orders and identical scaled negative-logarithmic coefficients at each canonical nontrivial zero, because the actual inverse Gamma factor is analytic and nonzero there. This is not a comparison for the manuscript's exceptional-group transfers or arbitrary extra factors. Automorphic source identities, all bad-place/Archimedean comparisons, global divisor transport and target critical-line theorems remain missing.

- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedLogDetector.completed_analytic`](https://github.com/grwtsk/math/blob/08fb6663f5ee4cf0b7a45290ed23c6f3e95dd46f/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalCompletedLogDetector.lean#L19); blob `917fc9bcd9355c772137eda91188e172dff28b3e`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedLogDetector.completed_zero`](https://github.com/grwtsk/math/blob/08fb6663f5ee4cf0b7a45290ed23c6f3e95dd46f/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalCompletedLogDetector.lean#L29); blob `917fc9bcd9355c772137eda91188e172dff28b3e`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedLogDetector.completed_order_eq_zeta`](https://github.com/grwtsk/math/blob/08fb6663f5ee4cf0b7a45290ed23c6f3e95dd46f/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalCompletedLogDetector.lean#L35); blob `917fc9bcd9355c772137eda91188e172dff28b3e`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedLogDetector.completed_order_finite`](https://github.com/grwtsk/math/blob/08fb6663f5ee4cf0b7a45290ed23c6f3e95dd46f/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalCompletedLogDetector.lean#L51); blob `917fc9bcd9355c772137eda91188e172dff28b3e`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedLogDetector.completed_natural_order`](https://github.com/grwtsk/math/blob/08fb6663f5ee4cf0b7a45290ed23c6f3e95dd46f/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalCompletedLogDetector.lean#L57); blob `917fc9bcd9355c772137eda91188e172dff28b3e`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedLogDetector.completed_scaled_coefficient`](https://github.com/grwtsk/math/blob/08fb6663f5ee4cf0b7a45290ed23c6f3e95dd46f/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalCompletedLogDetector.lean#L62); blob `917fc9bcd9355c772137eda91188e172dff28b3e`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedLogDetector.completed_no_continuous_logDeriv_extension`](https://github.com/grwtsk/math/blob/08fb6663f5ee4cf0b7a45290ed23c6f3e95dd46f/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalCompletedLogDetector.lean#L70); blob `917fc9bcd9355c772137eda91188e172dff28b3e`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedLogDetector.zeta_scaled_coefficient`](https://github.com/grwtsk/math/blob/08fb6663f5ee4cf0b7a45290ed23c6f3e95dd46f/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalCompletedLogDetector.lean#L76); blob `917fc9bcd9355c772137eda91188e172dff28b3e`.

**Other obligations retained:** E1 — unresolved; E2 — unresolved; E3 — kernel-verified-conditional-fragment; E4 — kernel-verified-conditional-fragment.

- **E1 missing construction:** Fix the base field and exact G2/F4/E8 forms, their pinned/split data and a representation r with explicitly defined V. Prove the claimed dimensions 7/26/248, homomorphism laws and faithfulness. A Lie-algebra representation alone needs an additional group-level integration/descent proof.
- **E2 missing construction:** Specify the required representation of the L-group (or dual group in an explicitly unramified split setting), an automorphic representation π of G and a proposed GL(V) transfer Π. Prove existence/automorphy; an ordinary embedding G→GL(V) does not define Π.

### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis

Owner-identified unpublished research by grwtsk contributors; printed byline `['grwtsk contributors']`. PDF SHA-256 `159cb12b34d5a425a822b19a204ca2dccff897363f8978d15bd17fa166ad9a2d`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates remain in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/C%20%287%29.pdf); original blob `321ef7c1fa5685faac750558754f8d0e2906fe14`.

**Other obligations retained:** K1 — kernel-verified-conditional-fragment; K2 — kernel-verified-conditional-fragment; K3 — kernel-verified-correction-check; K4 — unresolved; K5 — unresolved.

- **K4 missing construction:** Construct the relevant Schubert/stratum intersection-cohomology realization, with grading, normalization and coefficient conditions, then prove coefficient nonnegativity for this exact KL family. Define affine/quantum variants independently before reusing a theorem.
- **K5 missing construction:** Construct a source-specific realization from these graded classes to the analytic zero detector, prove the full signed/graded identity, and prove why its off-line nonzero class would lie in an actually vanishing group. Nonnegative coefficients alone do not force a residue to be zero.

### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis

Owner-identified unpublished research by grwtsk contributors; printed byline `['grwtsk contributors']`. PDF SHA-256 `553f237f431fc2991860dfb72890a3ebb6d02de0adc14daa7e6af901c5f74a1f`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates remain in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/C%20%289%29.pdf); original blob `68757e7d6f23427e3487d3166928241025ce0ea6`.

**Other obligations retained:** K1 — kernel-verified-conditional-fragment; K2 — kernel-verified-conditional-fragment; K3 — kernel-verified-correction-check; K4 — unresolved; K5 — unresolved.

- **K4 missing construction:** Construct the relevant Schubert/stratum intersection-cohomology realization, with grading, normalization and coefficient conditions, then prove coefficient nonnegativity for this exact KL family. Define affine/quantum variants independently before reusing a theorem.
- **K5 missing construction:** Construct a source-specific realization from these graded classes to the analytic zero detector, prove the full signed/graded identity, and prove why its off-line nonzero class would lie in an actually vanishing group. Nonnegative coefficients alone do not force a residue to be zero.

## GeometryTopology

### Boundary Regularization: A Framework for High-Rank Elimination

Owner-identified unpublished research by grwtsk contributors; printed byline `[]`. PDF SHA-256 `796ba01d4a02a5ba331fbe88ee80dbd4bd3e669712c11d6de4530a0e063c9362`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates remain in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/g%20%282%29.pdf); original blob `a6b1384d8b682feabc705eee0e058eb50c61df39`.

**B3, PDF pages 1 — kernel-verified-conditional-fragment.** Assistant-proposed actual Riemann specialization: at each canonical nontrivial zeta zero, proved analyticity and vanishing of Mathlib completedRiemannZeta, equality of its analytic order with riemannZeta via the actual nonvanishing Gamma inverse, finite natural order equal to the positive canonical multiplicity, scaled negative logarithmic coefficient equal to minus that multiplicity, and absence of a continuous logDeriv extension. Both completion poles and Gamma zeros are excluded by the exact nontrivial-zero predicate. No identification with the manuscript's unspecified high-rank completed source or geometric class is supplied; B3 remains partial at manuscript scope.

- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedLogDetector.completed_analytic`](https://github.com/grwtsk/math/blob/08fb6663f5ee4cf0b7a45290ed23c6f3e95dd46f/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalCompletedLogDetector.lean#L19); blob `917fc9bcd9355c772137eda91188e172dff28b3e`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedLogDetector.completed_zero`](https://github.com/grwtsk/math/blob/08fb6663f5ee4cf0b7a45290ed23c6f3e95dd46f/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalCompletedLogDetector.lean#L29); blob `917fc9bcd9355c772137eda91188e172dff28b3e`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedLogDetector.completed_order_eq_zeta`](https://github.com/grwtsk/math/blob/08fb6663f5ee4cf0b7a45290ed23c6f3e95dd46f/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalCompletedLogDetector.lean#L35); blob `917fc9bcd9355c772137eda91188e172dff28b3e`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedLogDetector.completed_order_finite`](https://github.com/grwtsk/math/blob/08fb6663f5ee4cf0b7a45290ed23c6f3e95dd46f/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalCompletedLogDetector.lean#L51); blob `917fc9bcd9355c772137eda91188e172dff28b3e`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedLogDetector.completed_natural_order`](https://github.com/grwtsk/math/blob/08fb6663f5ee4cf0b7a45290ed23c6f3e95dd46f/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalCompletedLogDetector.lean#L57); blob `917fc9bcd9355c772137eda91188e172dff28b3e`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedLogDetector.completed_scaled_coefficient`](https://github.com/grwtsk/math/blob/08fb6663f5ee4cf0b7a45290ed23c6f3e95dd46f/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalCompletedLogDetector.lean#L62); blob `917fc9bcd9355c772137eda91188e172dff28b3e`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedLogDetector.completed_no_continuous_logDeriv_extension`](https://github.com/grwtsk/math/blob/08fb6663f5ee4cf0b7a45290ed23c6f3e95dd46f/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalCompletedLogDetector.lean#L70); blob `917fc9bcd9355c772137eda91188e172dff28b3e`.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CompletedLogDetector.zeta_scaled_coefficient`](https://github.com/grwtsk/math/blob/08fb6663f5ee4cf0b7a45290ed23c6f3e95dd46f/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalCompletedLogDetector.lean#L76); blob `917fc9bcd9355c772137eda91188e172dff28b3e`.

**Other obligations retained:** B1 — unresolved; B2 — kernel-verified-conditional-fragment; B4 — unresolved; B5 — unresolved; B6 — unresolved.

- **B1 missing construction:** Fix the group/base, compactification j:U→X with boundary i:Z→X, coefficient complex K and the exact cohomology theory. Construct C_Z(K) and H^k(Z,K); do not identify arbitrary graph cohomology with these groups.
- **B4 missing construction:** For every nontrivial zero ρ of the exact source with Re(ρ)≠1/2, construct kρ, Kρ and vρ∈H^{kρ}(Z,Kρ), prove vρ≠0 and that kρ lies in the specific forbidden degree range.
- **B5 missing construction:** Prove H^k(Z,Kρ)=0 in that same range for the original Kρ, under verified properness/dimension/positivity hypotheses. Vanishing only after a positive twist requires a proved untwisting comparison.
- **B6 missing construction:** Combine vρ≠0 with B5 for every allowed off-line zero. This final contradiction is conditional until B1–B5 are constructed.

## LogicAndComputation

### Updated Verification of Recursive Refinement Framework

Owner-identified unpublished research by grwtsk contributors; printed byline `['grwtsk contributors']`. PDF SHA-256 `d7819c0364c77a97d9817f1089ef84d2cf5a24eec9ac9ad47fdb4b67fb29455b`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates remain in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/Updated_Verification_of_Recursive_Refinement_Framework%20%282%29.pdf); original blob `e7e459f64d4d145ea39d56f08721c2ba5b39372b`.

**Other obligations retained:** S1 — unresolved; S2 — unresolved; S3 — kernel-verified-correction-fragment; S4 — kernel-verified-conditional-fragment; S5 — kernel-verified-conditional-fragment; S6 — unresolved.

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

## Exact source, hypotheses and remaining boundaries

**Actual source:** Mathlib riemannZeta and completedRiemannZeta, not an arbitrary symbolic L-function. ZeroPoint is the canonical subtype with predicate riemannZeta(s)=0, exclusion of the negative even trivial zeros s=−2(n+1), and s≠1. The predicate also proves s≠0 and Gammaℝ(s)≠0. CanonicalZeroDivisor supplies finite positive analytic multiplicity, proved before conversion to ℕ. Exact dependency blobs are recorded in source_dependency_bindings.

**Completion comparison:** completedRiemannZeta=completedRiemannZeta₀−1/s−1/(1−s), with completedRiemannZeta₀ entire. Both pole locations are excluded. The actual identity ζ=Λ/Gammaℝ holds on a neighborhood avoiding zero; inverse Gammaℝ is entire and nonzero at the selected zero. Its order contribution is zero. Thus the full extended analytic orders agree and are finite; their natural multiplicity is the same canonical source value. No simplicity, RH, or nonvanishing of a derivative is assumed.

**Detector:** at every canonical nontrivial zero z, (s−z)(−logDeriv Λ(s)) tends on the punctured neighborhood to −multiplicity(z); the same holds for ζ. Λ vanishes at that actual point and its logDeriv has no continuous extension. This is a scaled logarithmic coefficient, not the residue of Λ itself. It applies to all canonical zeros and supplies no critical-line exclusion without a separate source-specific geometric bridge.

**Manuscript scope:** B3 remains partial because the boundary outline does not identify a supplied high-rank completed function with this Riemann specialization. E5 in the two distinct exceptional-group PDF versions remains partial because no actual exceptional transfer or completed-factor comparison is identified with this zeta/Gamma identity. B4/B5 geometry and same-sheaf vanishing, full automorphic transfer and all seventeen unresolved specifications remain missing, unchanged and version-bound. No historical influence, owner understanding date or new paper-reading event is inferred.
