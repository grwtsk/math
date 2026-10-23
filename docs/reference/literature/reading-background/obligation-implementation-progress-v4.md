# Normalized rank-one basis, approximate covariance and signed local orders

New Lean source commit `bc5acaa160c1d02ee9d3c847b16065ce286007d1`; Lean `leanprover/lean4:v4.33.0`; mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`.

**Eight new theorems. Four completed optional/corrective obligations, fourteen verified partial results, eighteen unresolved obligations. All seven manuscript-level claims remain open.** K2 in both distinct KL PDF versions and E5 in both distinct exceptional-group PDF versions acquire their first implemented fragments. S3/S5 advance without being discharged.

[Structured record](obligation-implementation-progress-v4.json) retains all 36 original specifications, dependencies, acceptance checks, exact bibliographic fields, page anchors and page-text hashes. Every changed obligation retains its complete prior state; [the previous pass](obligation-implementation-progress-v3.md) remains historical. Owner understanding dates stay unknown.

Verification: the exact three-module `lake build … --wfail` and external `Audit.lean` commands in JSON exited 0. All eight `#print axioms` readbacks use only `propext`, `Classical.choice`, `Quot.sound`, with no `sorryAx`; exact per-declaration lists are recorded. Logs stay in the external `MathematicsLibrary/.catalog/obligation-bridges-v4` directory. New bridges are locally Lean-verified fragments. Imported matrix, probability and logarithmic-derivative infrastructure retains upstream attribution. No historical influence or new paper-reading event is inferred.

## Algebra

### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations

Owner-identified unpublished research by grwtsk contributors; printed byline `[]`. PDF SHA-256 `498a8b7e7583e8ecc94d4edd362eb71bb3170fb3e9d79a1c5f40342af81c899f`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates remain in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/i%20%283%29.pdf); original blob `9263622af06f0bdfd8d1f9dfe6a9add5eb19bad6`.

**E5, PDF pages 2 — kernel-verified-conditional-fragment.** For actual punctured local factorizations f=(s−a)^k u and g=(s−a)^l v, multiplication yields order k+l. If u and v are analytic and nonzero at a, the scaled coefficient of −logDeriv(fg) tends to −(k+l). An analytic nonvanishing multiplier has order zero and preserves that coefficient. This is a local signed-order fragment, not a global divisor or residue theorem for the original completed functions. Actual completed sources, every extra factor, their local factorizations, convergence/continuation comparison and any target critical-line theorem remain missing.

- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.product_local_factorization`](https://github.com/grwtsk/math/blob/bc5acaa160c1d02ee9d3c847b16065ce286007d1/GRWTSK/Analysis/Complex/LocalFactorOrderProduct.lean#L10); blob `dcb736fbc9dd37ce44a3bb2405788f81876ae7b5`.
- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.product_scaled_neg_logDeriv`](https://github.com/grwtsk/math/blob/bc5acaa160c1d02ee9d3c847b16065ce286007d1/GRWTSK/Analysis/Complex/LocalFactorOrderProduct.lean#L21); blob `dcb736fbc9dd37ce44a3bb2405788f81876ae7b5`.
- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.analytic_unit_preserves_scaled_coefficient`](https://github.com/grwtsk/math/blob/bc5acaa160c1d02ee9d3c847b16065ce286007d1/GRWTSK/Analysis/Complex/LocalFactorOrderProduct.lean#L32); blob `dcb736fbc9dd37ce44a3bb2405788f81876ae7b5`.

**Other obligations retained:** E1 — unresolved; E2 — unresolved; E3 — kernel-verified-conditional-fragment; E4 — kernel-verified-conditional-fragment.

- **E1 missing construction:** Fix the base field and exact G2/F4/E8 forms, their pinned/split data and a representation r with explicitly defined V. Prove the claimed dimensions 7/26/248, homomorphism laws and faithfulness. A Lie-algebra representation alone needs an additional group-level integration/descent proof.
- **E2 missing construction:** Specify the required representation of the L-group (or dual group in an explicitly unramified split setting), an automorphic representation π of G and a proposed GL(V) transfer Π. Prove existence/automorphy; an ordinary embedding G→GL(V) does not define Π.

### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations

Owner-identified unpublished research by grwtsk contributors; printed byline `[]`. PDF SHA-256 `67b33f06a6094d0590d89ac6504cc0ad7f49d7a803f9e5b5fc9e7bc8bc269c8a`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates remain in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/i%20%282%29.pdf); original blob `71542562d4e167aaa8145eb43de20253dc111ae2`.

**E5, PDF pages 2 — kernel-verified-conditional-fragment.** For actual punctured local factorizations f=(s−a)^k u and g=(s−a)^l v, multiplication yields order k+l. If u and v are analytic and nonzero at a, the scaled coefficient of −logDeriv(fg) tends to −(k+l). An analytic nonvanishing multiplier has order zero and preserves that coefficient. This is a local signed-order fragment, not a global divisor or residue theorem for the original completed functions. Actual completed sources, every extra factor, their local factorizations, convergence/continuation comparison and any target critical-line theorem remain missing.

- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.product_local_factorization`](https://github.com/grwtsk/math/blob/bc5acaa160c1d02ee9d3c847b16065ce286007d1/GRWTSK/Analysis/Complex/LocalFactorOrderProduct.lean#L10); blob `dcb736fbc9dd37ce44a3bb2405788f81876ae7b5`.
- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.product_scaled_neg_logDeriv`](https://github.com/grwtsk/math/blob/bc5acaa160c1d02ee9d3c847b16065ce286007d1/GRWTSK/Analysis/Complex/LocalFactorOrderProduct.lean#L21); blob `dcb736fbc9dd37ce44a3bb2405788f81876ae7b5`.
- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.analytic_unit_preserves_scaled_coefficient`](https://github.com/grwtsk/math/blob/bc5acaa160c1d02ee9d3c847b16065ce286007d1/GRWTSK/Analysis/Complex/LocalFactorOrderProduct.lean#L32); blob `dcb736fbc9dd37ce44a3bb2405788f81876ae7b5`.

**Other obligations retained:** E1 — unresolved; E2 — unresolved; E3 — kernel-verified-conditional-fragment; E4 — kernel-verified-conditional-fragment.

- **E1 missing construction:** Fix the base field and exact G2/F4/E8 forms, their pinned/split data and a representation r with explicitly defined V. Prove the claimed dimensions 7/26/248, homomorphism laws and faithfulness. A Lie-algebra representation alone needs an additional group-level integration/descent proof.
- **E2 missing construction:** Specify the required representation of the L-group (or dual group in an explicitly unramified split setting), an automorphic representation π of G and a proposed GL(V) transfer Π. Prove existence/automorphy; an ordinary embedding G→GL(V) does not define Π.

### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis

Owner-identified unpublished research by grwtsk contributors; printed byline `['grwtsk contributors']`. PDF SHA-256 `159cb12b34d5a425a822b19a204ca2dccff897363f8978d15bd17fa166ad9a2d`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates remain in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/C%20%287%29.pdf); original blob `321ef7c1fa5685faac750558754f8d0e2906fe14`.

**K2, PDF pages 2 — kernel-verified-conditional-fragment.** Assistant-proposed rank-one specialization: for any commutative ring and v vinv=1, define C=vinv(T(v²)+I). Every actual standard normal form aI+bT has the explicit expansion (a−b)I+(bv)C; normalized coordinates are unique, hence exist uniquely. This is a proved change of coordinates in the rank-one normal-form span, not the general bar-invariant KL basis. Bar invariance, arbitrary Coxeter/Bruhat data, general polynomial degree conditions, recurrence and geometric realization remain missing.

- [`GRWTSK.Algebra.Hecke.rankOne_normalized_expansion`](https://github.com/grwtsk/math/blob/bc5acaa160c1d02ee9d3c847b16065ce286007d1/GRWTSK/Algebra/Hecke/RankOneNormalizedBasis.lean#L13); blob `9d00a3350f106d14807cef55a11545066de0cecc`.
- [`GRWTSK.Algebra.Hecke.rankOne_normalized_coordinates_unique`](https://github.com/grwtsk/math/blob/bc5acaa160c1d02ee9d3c847b16065ce286007d1/GRWTSK/Algebra/Hecke/RankOneNormalizedBasis.lean#L22); blob `9d00a3350f106d14807cef55a11545066de0cecc`.
- [`GRWTSK.Algebra.Hecke.rankOne_normalized_existsUnique`](https://github.com/grwtsk/math/blob/bc5acaa160c1d02ee9d3c847b16065ce286007d1/GRWTSK/Algebra/Hecke/RankOneNormalizedBasis.lean#L34); blob `9d00a3350f106d14807cef55a11545066de0cecc`.

**Other obligations retained:** K1 — kernel-verified-conditional-fragment; K3 — kernel-verified-correction-check; K4 — unresolved; K5 — unresolved.

- **K4 missing construction:** Construct the relevant Schubert/stratum intersection-cohomology realization, with grading, normalization and coefficient conditions, then prove coefficient nonnegativity for this exact KL family. Define affine/quantum variants independently before reusing a theorem.
- **K5 missing construction:** Construct a source-specific realization from these graded classes to the analytic zero detector, prove the full signed/graded identity, and prove why its off-line nonzero class would lie in an actually vanishing group. Nonnegative coefficients alone do not force a residue to be zero.

### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis

Owner-identified unpublished research by grwtsk contributors; printed byline `['grwtsk contributors']`. PDF SHA-256 `553f237f431fc2991860dfb72890a3ebb6d02de0adc14daa7e6af901c5f74a1f`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates remain in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/C%20%289%29.pdf); original blob `68757e7d6f23427e3487d3166928241025ce0ea6`.

**K2, PDF pages 2 — kernel-verified-conditional-fragment.** Assistant-proposed rank-one specialization: for any commutative ring and v vinv=1, define C=vinv(T(v²)+I). Every actual standard normal form aI+bT has the explicit expansion (a−b)I+(bv)C; normalized coordinates are unique, hence exist uniquely. This is a proved change of coordinates in the rank-one normal-form span, not the general bar-invariant KL basis. Bar invariance, arbitrary Coxeter/Bruhat data, general polynomial degree conditions, recurrence and geometric realization remain missing.

- [`GRWTSK.Algebra.Hecke.rankOne_normalized_expansion`](https://github.com/grwtsk/math/blob/bc5acaa160c1d02ee9d3c847b16065ce286007d1/GRWTSK/Algebra/Hecke/RankOneNormalizedBasis.lean#L13); blob `9d00a3350f106d14807cef55a11545066de0cecc`.
- [`GRWTSK.Algebra.Hecke.rankOne_normalized_coordinates_unique`](https://github.com/grwtsk/math/blob/bc5acaa160c1d02ee9d3c847b16065ce286007d1/GRWTSK/Algebra/Hecke/RankOneNormalizedBasis.lean#L22); blob `9d00a3350f106d14807cef55a11545066de0cecc`.
- [`GRWTSK.Algebra.Hecke.rankOne_normalized_existsUnique`](https://github.com/grwtsk/math/blob/bc5acaa160c1d02ee9d3c847b16065ce286007d1/GRWTSK/Algebra/Hecke/RankOneNormalizedBasis.lean#L34); blob `9d00a3350f106d14807cef55a11545066de0cecc`.

**Other obligations retained:** K1 — kernel-verified-conditional-fragment; K3 — kernel-verified-correction-check; K4 — unresolved; K5 — unresolved.

- **K4 missing construction:** Construct the relevant Schubert/stratum intersection-cohomology realization, with grading, normalization and coefficient conditions, then prove coefficient nonnegativity for this exact KL family. Define affine/quantum variants independently before reusing a theorem.
- **K5 missing construction:** Construct a source-specific realization from these graded classes to the analytic zero detector, prove the full signed/graded identity, and prove why its off-line nonzero class would lie in an actually vanishing group. Nonnegative coefficients alone do not force a residue to be zero.

## GeometryTopology

### Boundary Regularization: A Framework for High-Rank Elimination

Owner-identified unpublished research by grwtsk contributors; printed byline `[]`. PDF SHA-256 `796ba01d4a02a5ba331fbe88ee80dbd4bd3e669712c11d6de4530a0e063c9362`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates remain in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/g%20%282%29.pdf); original blob `a6b1384d8b682feabc705eee0e058eb50c61df39`.

**Other obligations retained:** B1 — unresolved; B2 — unresolved; B3 — kernel-verified-conditional-fragment; B4 — unresolved; B5 — unresolved; B6 — unresolved.

- **B1 missing construction:** Fix the group/base, compactification j:U→X with boundary i:Z→X, coefficient complex K and the exact cohomology theory. Construct C_Z(K) and H^k(Z,K); do not identify arbitrary graph cohomology with these groups.
- **B2 missing construction:** Construct the localization/excision triangle or long exact sequence. If a direct sum is needed, construct a splitting/projector and prove compatibility with Hecke actions; a set union does not produce a split cohomology decomposition.
- **B4 missing construction:** For every nontrivial zero ρ of the exact source with Re(ρ)≠1/2, construct kρ, Kρ and vρ∈H^{kρ}(Z,Kρ), prove vρ≠0 and that kρ lies in the specific forbidden degree range.
- **B5 missing construction:** Prove H^k(Z,Kρ)=0 in that same range for the original Kρ, under verified properness/dimension/positivity hypotheses. Vanishing only after a positive twist requires a proved untwisting comparison.
- **B6 missing construction:** Combine vρ≠0 with B5 for every allowed off-line zero. This final contradiction is conditional until B1–B5 are constructed.

## LogicAndComputation

### Updated Verification of Recursive Refinement Framework

Owner-identified unpublished research by grwtsk contributors; printed byline `['grwtsk contributors']`. PDF SHA-256 `d7819c0364c77a97d9817f1089ef84d2cf5a24eec9ac9ad47fdb4b67fb29455b`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates remain in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/Updated_Verification_of_Recursive_Refinement_Framework%20%282%29.pdf); original blob `e7e459f64d4d145ea39d56f08721c2ba5b39372b`.

**S3, PDF pages 1, 2 — kernel-verified-correction-fragment.** Extended the previous exact-decorrelation budget: real L² observables under a probability measure, with Var(Xi)≤C and cov(Xi,Xj)≤δ for every i≠j, give Var(ΣXi)≤NC+N(N−1)δ. For N>0, variance of the average is ≤C/N+(1−1/N)δ. The off-diagonal term is retained. Actual arithmetic observables, centering, probability law and a proved family-dependent δ rate are missing; no deterministic uniform bound, almost-sure law or Fourier sum-to-product identity follows.

- [`GRWTSK.Probability.Moments.variance_sum_le_covariance_budget`](https://github.com/grwtsk/math/blob/bc5acaa160c1d02ee9d3c847b16065ce286007d1/GRWTSK/Probability/Moments/FiniteCovarianceBudget.lean#L12); blob `9e5db02428bed7ba58bf6e411df17d84fb627246`.
- [`GRWTSK.Probability.Moments.variance_average_le_covariance_budget`](https://github.com/grwtsk/math/blob/bc5acaa160c1d02ee9d3c847b16065ce286007d1/GRWTSK/Probability/Moments/FiniteCovarianceBudget.lean#L34); blob `9e5db02428bed7ba58bf6e411df17d84fb627246`.

**S5, PDF pages 2 — kernel-verified-conditional-fragment.** The new finite second-moment consumer permits supplied nonzero upper bounds on off-diagonal covariances instead of replacing weak decorrelation by exact independence. No independence conclusion is drawn. Actual probability law, L² observables, uniform covariance estimates, family-dependent decay and any joint Gaussian or limiting-independence construction remain missing.

- [`GRWTSK.Probability.Moments.variance_sum_le_covariance_budget`](https://github.com/grwtsk/math/blob/bc5acaa160c1d02ee9d3c847b16065ce286007d1/GRWTSK/Probability/Moments/FiniteCovarianceBudget.lean#L12); blob `9e5db02428bed7ba58bf6e411df17d84fb627246`.
- [`GRWTSK.Probability.Moments.variance_average_le_covariance_budget`](https://github.com/grwtsk/math/blob/bc5acaa160c1d02ee9d3c847b16065ce286007d1/GRWTSK/Probability/Moments/FiniteCovarianceBudget.lean#L34); blob `9e5db02428bed7ba58bf6e411df17d84fb627246`.

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

**Normalized rank-one coordinates:** arbitrary commutative coefficient ring, actual inverse relation v vinv=1, concrete matrix T(v²) and C=vinv(T+I). The expansion, coordinate uniqueness and unique existence concern matrices aI+bT in that span. No arbitrary matrix spanning claim or general Coxeter KL existence/uniqueness is made; bar invariance and general Bruhat degree/recurrence properties are not proved.

**Approximate covariance budget:** a specified probability measure μ, finite indexed real observables with MemLp Xi 2 μ, a diagonal variance bound C and a uniform one-sided off-diagonal bound δ. No δ≥0 premise is needed for the algebraic inequality itself; applicability requires every supplied covariance bound. Normalization additionally needs N>0. This gives variance ≤NC+N(N−1)δ for the sum and ≤C/N+(1−1/N)δ for the average. A fixed nonzero δ does not disappear as N grows. Bias, actual centering, uniform/family-dependent rates and any probabilistic limit require separate proofs. No independence is inferred from covariance decay.

**Signed local order:** complex functions with actual punctured factorizations and integer orders k,l, allowing zeros and poles. The product factorization is algebraic; its scaled −logDeriv coefficient additionally requires analytic units nonzero at the center. The unit-multiplier specialization requires the actual extra factor analytic and nonzero at that same point. No residue of the original completed function, global divisor equality, infinite contour identity, completed-source supplier or critical-line result is asserted.

Still missing are the prime roadmap’s source binding and arithmetic estimate; the boundary outline’s geometry, actual localization, zero-to-class realization and same-sheaf vanishing; exceptional-group representations/automorphic transfers and all source-specific global factors; the KL geometric positivity and signed analytic realization; and the status note’s exact January-version binding, arithmetic sequences and noncircular replacement for RH/GRH premises. Conditional fragments do not discharge these suppliers.
