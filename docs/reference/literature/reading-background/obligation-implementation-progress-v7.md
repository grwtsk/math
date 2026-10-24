# Analytic zero detector, local-product continuation and triangular weak law

New Lean source commit `faf527ca46dd84d2b8ff97f269063184548325b5`; Lean `leanprover/lean4:v4.33.0`; mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`.

**Ten new theorems strengthen existing partial results. Counts remain four completed optional/corrective obligations, fifteen verified partial results, seventeen unresolved obligations. All seven manuscript-level claims remain open.** B3 gains local factorization from analytic order; E4/E5 in both exceptional-group PDF versions gain a product-to-domain identity and order-comparison route; S3/S5 gain a growing-family weak law from decaying covariance bounds. No new source-specific supplier is supplied or obligation discharged.

[Structured record](obligation-implementation-progress-v7.json) retains all 36 original specifications, dependencies, acceptance checks, exact bibliographic fields, page anchors and page-text hashes. Every changed obligation retains its complete prior state; [the previous pass](obligation-implementation-progress-v6.md) remains historical. Owner understanding dates stay unknown.

Verification: the exact three-module `lake build … --wfail` and external `Audit.lean` commands in JSON exited 0. All ten `#print axioms` readbacks use only `propext`, `Classical.choice`, `Quot.sound`, with no `sorryAx`; exact per-declaration lists are recorded. Logs stay in the external `MathematicsLibrary/.catalog/obligation-bridges-v7` directory. New bridges are locally Lean-verified fragments. Imported matrix, probability and logarithmic-derivative infrastructure retains upstream attribution. No historical influence or new paper-reading event is inferred.

Imported suppliers: Mathlib analytic-order factorization, the analytic identity theorem and reciprocal-natural limit. Exact declarations, upstream commit, blobs and line numbers are recorded separately in `new_imported_mathlib_components`. New source-derived adapters retain upstream attribution.

## Algebra

### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations

Owner-identified unpublished research by grwtsk contributors; printed byline `[]`. PDF SHA-256 `498a8b7e7583e8ecc94d4edd362eb71bb3170fb3e9d79a1c5f40342af81c899f`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates remain in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/i%20%283%29.pdf); original blob `9263622af06f0bdfd8d1f9dfe6a9add5eb19bad6`.

**E4, PDF pages 2 — kernel-verified-conditional-fragment.** Combined actual two-sided local intertwiners and convergent inverse determinant products on a nonempty open V with analytic source functions on a preconnected D containing V, proving equality throughout D. Source product identities, convergence and analytic continuation remain explicit premises. No actual automorphic transfer, bad-place/Archimedean factors, pole treatment or completed-function analytic suppliers are constructed.

- [`GRWTSK.Analysis.Complex.analytic_eqOn_of_local_products`](https://github.com/grwtsk/math/blob/faf527ca46dd84d2b8ff97f269063184548325b5/GRWTSK/Analysis/Complex/LocalProductAnalyticContinuation.lean#L14); blob `faaf6132cf4dcc6c04529e8a68afc63989622bf0`.
- [`GRWTSK.Analysis.Complex.germ_eq_of_eqOn_open`](https://github.com/grwtsk/math/blob/faf527ca46dd84d2b8ff97f269063184548325b5/GRWTSK/Analysis/Complex/LocalProductAnalyticContinuation.lean#L32); blob `faaf6132cf4dcc6c04529e8a68afc63989622bf0`.
- [`GRWTSK.Analysis.Complex.analytic_order_eq_of_eqOn_open`](https://github.com/grwtsk/math/blob/faf527ca46dd84d2b8ff97f269063184548325b5/GRWTSK/Analysis/Complex/LocalProductAnalyticContinuation.lean#L38); blob `faaf6132cf4dcc6c04529e8a68afc63989622bf0`.

**E5, PDF pages 2 — kernel-verified-conditional-fragment.** Proved that equality on an open domain supplies full-neighborhood germ equality and equality of analytic orders, including infinite order. Combined with the new product-to-domain identity, this supplies a conditional analytic order-comparison route. The actual completed functions and all extra factors, their product identities and analytic domain, and any meromorphic/global divisor comparison or target critical-line theorem remain missing.

- [`GRWTSK.Analysis.Complex.analytic_eqOn_of_local_products`](https://github.com/grwtsk/math/blob/faf527ca46dd84d2b8ff97f269063184548325b5/GRWTSK/Analysis/Complex/LocalProductAnalyticContinuation.lean#L14); blob `faaf6132cf4dcc6c04529e8a68afc63989622bf0`.
- [`GRWTSK.Analysis.Complex.germ_eq_of_eqOn_open`](https://github.com/grwtsk/math/blob/faf527ca46dd84d2b8ff97f269063184548325b5/GRWTSK/Analysis/Complex/LocalProductAnalyticContinuation.lean#L32); blob `faaf6132cf4dcc6c04529e8a68afc63989622bf0`.
- [`GRWTSK.Analysis.Complex.analytic_order_eq_of_eqOn_open`](https://github.com/grwtsk/math/blob/faf527ca46dd84d2b8ff97f269063184548325b5/GRWTSK/Analysis/Complex/LocalProductAnalyticContinuation.lean#L38); blob `faaf6132cf4dcc6c04529e8a68afc63989622bf0`.

**Other obligations retained:** E1 — unresolved; E2 — unresolved; E3 — kernel-verified-conditional-fragment.

- **E1 missing construction:** Fix the base field and exact G2/F4/E8 forms, their pinned/split data and a representation r with explicitly defined V. Prove the claimed dimensions 7/26/248, homomorphism laws and faithfulness. A Lie-algebra representation alone needs an additional group-level integration/descent proof.
- **E2 missing construction:** Specify the required representation of the L-group (or dual group in an explicitly unramified split setting), an automorphic representation π of G and a proposed GL(V) transfer Π. Prove existence/automorphy; an ordinary embedding G→GL(V) does not define Π.

### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations

Owner-identified unpublished research by grwtsk contributors; printed byline `[]`. PDF SHA-256 `67b33f06a6094d0590d89ac6504cc0ad7f49d7a803f9e5b5fc9e7bc8bc269c8a`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates remain in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/i%20%282%29.pdf); original blob `71542562d4e167aaa8145eb43de20253dc111ae2`.

**E4, PDF pages 2 — kernel-verified-conditional-fragment.** Combined actual two-sided local intertwiners and convergent inverse determinant products on a nonempty open V with analytic source functions on a preconnected D containing V, proving equality throughout D. Source product identities, convergence and analytic continuation remain explicit premises. No actual automorphic transfer, bad-place/Archimedean factors, pole treatment or completed-function analytic suppliers are constructed.

- [`GRWTSK.Analysis.Complex.analytic_eqOn_of_local_products`](https://github.com/grwtsk/math/blob/faf527ca46dd84d2b8ff97f269063184548325b5/GRWTSK/Analysis/Complex/LocalProductAnalyticContinuation.lean#L14); blob `faaf6132cf4dcc6c04529e8a68afc63989622bf0`.
- [`GRWTSK.Analysis.Complex.germ_eq_of_eqOn_open`](https://github.com/grwtsk/math/blob/faf527ca46dd84d2b8ff97f269063184548325b5/GRWTSK/Analysis/Complex/LocalProductAnalyticContinuation.lean#L32); blob `faaf6132cf4dcc6c04529e8a68afc63989622bf0`.
- [`GRWTSK.Analysis.Complex.analytic_order_eq_of_eqOn_open`](https://github.com/grwtsk/math/blob/faf527ca46dd84d2b8ff97f269063184548325b5/GRWTSK/Analysis/Complex/LocalProductAnalyticContinuation.lean#L38); blob `faaf6132cf4dcc6c04529e8a68afc63989622bf0`.

**E5, PDF pages 2 — kernel-verified-conditional-fragment.** Proved that equality on an open domain supplies full-neighborhood germ equality and equality of analytic orders, including infinite order. Combined with the new product-to-domain identity, this supplies a conditional analytic order-comparison route. The actual completed functions and all extra factors, their product identities and analytic domain, and any meromorphic/global divisor comparison or target critical-line theorem remain missing.

- [`GRWTSK.Analysis.Complex.analytic_eqOn_of_local_products`](https://github.com/grwtsk/math/blob/faf527ca46dd84d2b8ff97f269063184548325b5/GRWTSK/Analysis/Complex/LocalProductAnalyticContinuation.lean#L14); blob `faaf6132cf4dcc6c04529e8a68afc63989622bf0`.
- [`GRWTSK.Analysis.Complex.germ_eq_of_eqOn_open`](https://github.com/grwtsk/math/blob/faf527ca46dd84d2b8ff97f269063184548325b5/GRWTSK/Analysis/Complex/LocalProductAnalyticContinuation.lean#L32); blob `faaf6132cf4dcc6c04529e8a68afc63989622bf0`.
- [`GRWTSK.Analysis.Complex.analytic_order_eq_of_eqOn_open`](https://github.com/grwtsk/math/blob/faf527ca46dd84d2b8ff97f269063184548325b5/GRWTSK/Analysis/Complex/LocalProductAnalyticContinuation.lean#L38); blob `faaf6132cf4dcc6c04529e8a68afc63989622bf0`.

**Other obligations retained:** E1 — unresolved; E2 — unresolved; E3 — kernel-verified-conditional-fragment.

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

**B3, PDF pages 1 — kernel-verified-conditional-fragment.** Derived the actual local analytic-unit factorization from analyticity and finite analytic order, then derived the signed scaled −logDeriv coefficient, positive multiplicity at a zero and obstruction to continuous logDeriv extension. A proved nonzero source value on a preconnected analytic domain supplies the finite-order gate via the identity theorem. The exact completed source, its analytic domain/nonzero value, exceptional/trivial-zero classification and geometric realization remain missing.

- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.analytic_order_finite_of_nonzero_value`](https://github.com/grwtsk/math/blob/faf527ca46dd84d2b8ff97f269063184548325b5/GRWTSK/Analysis/Complex/AnalyticZeroOrderDetector.lean#L11); blob `cbfcd672b3ac88d8b40e404d15058f37529e2872`.
- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.analytic_finite_order_factorization`](https://github.com/grwtsk/math/blob/faf527ca46dd84d2b8ff97f269063184548325b5/GRWTSK/Analysis/Complex/AnalyticZeroOrderDetector.lean#L20); blob `cbfcd672b3ac88d8b40e404d15058f37529e2872`.
- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.analytic_finite_order_scaled_coefficient`](https://github.com/grwtsk/math/blob/faf527ca46dd84d2b8ff97f269063184548325b5/GRWTSK/Analysis/Complex/AnalyticZeroOrderDetector.lean#L29); blob `cbfcd672b3ac88d8b40e404d15058f37529e2872`.
- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.analytic_zero_order_pos`](https://github.com/grwtsk/math/blob/faf527ca46dd84d2b8ff97f269063184548325b5/GRWTSK/Analysis/Complex/AnalyticZeroOrderDetector.lean#L38); blob `cbfcd672b3ac88d8b40e404d15058f37529e2872`.
- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.analytic_zero_no_continuous_logDeriv_extension`](https://github.com/grwtsk/math/blob/faf527ca46dd84d2b8ff97f269063184548325b5/GRWTSK/Analysis/Complex/AnalyticZeroOrderDetector.lean#L49); blob `cbfcd672b3ac88d8b40e404d15058f37529e2872`.
- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.analytic_zero_detector_of_nonzero_value`](https://github.com/grwtsk/math/blob/faf527ca46dd84d2b8ff97f269063184548325b5/GRWTSK/Analysis/Complex/AnalyticZeroOrderDetector.lean#L57); blob `cbfcd672b3ac88d8b40e404d15058f37529e2872`.

**Other obligations retained:** B1 — unresolved; B2 — kernel-verified-conditional-fragment; B4 — unresolved; B5 — unresolved; B6 — unresolved.

- **B1 missing construction:** Fix the group/base, compactification j:U→X with boundary i:Z→X, coefficient complex K and the exact cohomology theory. Construct C_Z(K) and H^k(Z,K); do not identify arbitrary graph cohomology with these groups.
- **B4 missing construction:** For every nontrivial zero ρ of the exact source with Re(ρ)≠1/2, construct kρ, Kρ and vρ∈H^{kρ}(Z,Kρ), prove vρ≠0 and that kρ lies in the specific forbidden degree range.
- **B5 missing construction:** Prove H^k(Z,Kρ)=0 in that same range for the original Kρ, under verified properness/dimension/positivity hypotheses. Vanishing only after a positive twist requires a proved untwisting comparison.
- **B6 missing construction:** Combine vρ≠0 with B5 for every allowed off-line zero. This final contradiction is conditional until B1–B5 are constructed.

## LogicAndComputation

### Updated Verification of Recursive Refinement Framework

Owner-identified unpublished research by grwtsk contributors; printed byline `['grwtsk contributors']`. PDF SHA-256 `d7819c0364c77a97d9817f1089ef84d2cf5a24eec9ac9ad47fdb4b67fb29455b`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates remain in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/Updated_Verification_of_Recursive_Refinement_Framework%20%282%29.pdf); original blob `e7e459f64d4d145ea39d56f08721c2ba5b39372b`.

**S3, PDF pages 1, 2 — kernel-verified-correction-fragment.** Constructed a growing-family weak-law consumer for n+1 real L² observables under a probability measure: a uniform diagonal variance bound C and cross-covariance upper bounds δn→0 imply expectation-centered convergence in probability of the averages. The variance budget C/(n+1)+(1−1/(n+1))δn and its decay are derived, not supplied by the caller. No arithmetic family, bias comparison, δn decay proof, deterministic bounded error, almost-sure law or Fourier identity is supplied.

- [`GRWTSK.Probability.Moments.triangular_average_centered_tail_tendsto_zero`](https://github.com/grwtsk/math/blob/faf527ca46dd84d2b8ff97f269063184548325b5/GRWTSK/Probability/Moments/TriangularCovarianceWeakLaw.lean#L14); blob `09b94bc3dd37ee394ad07dcf427859c6c4b3481f`.

**S5, PDF pages 2 — kernel-verified-conditional-fragment.** Derived expectation-centered convergence in probability for an actual supplied triangular family from L² integrability, a uniform variance bound and a uniform cross-covariance budget tending to zero. No independence or Gaussian law is assumed or concluded. Actual zero observables, probability model and verified covariance/bias rates remain missing.

- [`GRWTSK.Probability.Moments.triangular_average_centered_tail_tendsto_zero`](https://github.com/grwtsk/math/blob/faf527ca46dd84d2b8ff97f269063184548325b5/GRWTSK/Probability/Moments/TriangularCovarianceWeakLaw.lean#L14); blob `09b94bc3dd37ee394ad07dcf427859c6c4b3481f`.

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

**Analytic zero detector:** for f:ℂ→ℂ analytic at a with analyticOrderAt f a≠∞, extract an analytic nonvanishing unit and factorization with natural multiplicity. At f(a)=0 that multiplicity is positive and no continuous extension of logDeriv exists. Alternatively analyticity on a preconnected D containing a,b and f(b)≠0 supplies finite order at a. No actual completed source or nonzero-value proof is supplied. The scaled coefficient is for −logDeriv, not a residue of f.

**Product continuation:** finite square matrix index, arbitrary place index, actual two-sided inverses and AU=UB at every place. Two analytic functions F,G on a preconnected D have actual HasProd identities for the corresponding inverse local factors on nonempty open V⊆D. This yields EqOn F G D by the identity theorem. Germ and analytic-order comparison at a additionally use D open and a∈D. No meromorphic continuation across poles, global divisor statement, bad-place factor or completed analytic source is constructed. Totalized inverse expressions are not asserted holomorphic at zeros.

**Growing-family weak law:** a specified probability measure, Xn,i with i:Fin(n+1), each real L², Var(Xn,i)≤C for one uniform real C, cov(Xn,i,Xn,j)≤δn for every i≠j, and δn→0. The proof derives variance decay for averages and expectation-centered convergence in probability at every ε>0. No independence, Gaussian law, actual arithmetic family, deterministic/ almost-sure bound, or comparison of the expectation to a named arithmetic model is inferred.

All seventeen unresolved specifications remain unchanged in the structured record. Source-specific geometric, arithmetic, representation-theoretic and KL suppliers retain their exact version and hypothesis gaps.
