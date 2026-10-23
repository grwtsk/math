# Rank-one Hecke, finite variance and convergent local-product bridges

New Lean source commit `0fcc97d3e9dee8ff29191448a8cfdecf39a8fa6a`; Lean `leanprover/lean4:v4.33.0`; mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`.

Ten new theorems in three subject-based modules. **Four completed optional/corrective obligations, ten verified partial results, 22 unresolved obligations. All seven manuscript-level claims remain open.** The newly partial obligations are K1 in each of the two distinct KL PDF versions and S5. E4 in each exceptional-group PDF version and S3 also advance without being discharged.

[Structured record](obligation-implementation-progress-v3.json) retains all 36 original specifications, exact dependencies, bibliographic metadata, page anchors and page-text hashes, and full earlier states for changed obligations. [Previous pass](obligation-implementation-progress-v2.md) remains historical. Owner understanding dates remain unknown; no historical influence is inferred.

Verification: the exact three-module `lake build … --wfail` command and external `Audit.lean` command in JSON both exited 0. All ten `#print axioms` readbacks contain only `propext`, `Classical.choice`, `Quot.sound`, with no `sorryAx`. Logs remain external under `MathematicsLibrary/.catalog/obligation-bridges-v3`. New results are local kernel-verified fragments with the hypotheses below; upstream variance/product infrastructure retains Mathlib attribution. No finite computation or analogy is promoted to a manuscript claim.

## Algebra

### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations

Owner-identified unpublished research by grwtsk contributors; printed byline `[]`. PDF SHA-256 `498a8b7e7583e8ecc94d4edd362eb71bb3170fb3e9d79a1c5f40342af81c899f`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates remain in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/i%20%283%29.pdf); original blob `9263622af06f0bdfd8d1f9dfe6a9add5eb19bad6`.

**E4, PDF pages 2 — kernel-verified-conditional-fragment.** Advanced finite comparison to transport of HasProd for inverse local determinant factors, given actual two-sided intertwiners at every place. Independently convergent products have equal values in a Hausdorff coefficient field. HasProd remains an explicit premise: no convergence, nonvanishing domain, bad-place/Archimedean factors, completed-function equality or analytic continuation is constructed. Totalized inversion is not asserted to be holomorphic at zeros.

- [`GRWTSK.LinearAlgebra.Matrix.hasProd_inverse_local_factors`](https://github.com/grwtsk/math/blob/0fcc97d3e9dee8ff29191448a8cfdecf39a8fa6a/GRWTSK/LinearAlgebra/Matrix/ConvergentLocalProduct.lean#L11); blob `acb378a8503fdc98b60105c247e8f6d252e69c54`.
- [`GRWTSK.LinearAlgebra.Matrix.local_product_limits_eq`](https://github.com/grwtsk/math/blob/0fcc97d3e9dee8ff29191448a8cfdecf39a8fa6a/GRWTSK/LinearAlgebra/Matrix/ConvergentLocalProduct.lean#L26); blob `acb378a8503fdc98b60105c247e8f6d252e69c54`.

**Other obligations retained:** E1 — unresolved; E2 — unresolved; E3 — kernel-verified-conditional-fragment; E5 — unresolved.

- **E1 missing construction:** Fix the base field and exact G2/F4/E8 forms, their pinned/split data and a representation r with explicitly defined V. Prove the claimed dimensions 7/26/248, homomorphism laws and faithfulness. A Lie-algebra representation alone needs an additional group-level integration/descent proof.
- **E2 missing construction:** Specify the required representation of the L-group (or dual group in an explicitly unramified split setting), an automorphic representation π of G and a proposed GL(V) transfer Π. Prove existence/automorphy; an ordinary embedding G→GL(V) does not define Π.
- **E5 missing construction:** Derive the divisor/residue comparison for the same completed sources from E4, including every extra factor’s divisor. Any critical-line theorem for the target family remains a separate premise or proof.

### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations

Owner-identified unpublished research by grwtsk contributors; printed byline `[]`. PDF SHA-256 `67b33f06a6094d0590d89ac6504cc0ad7f49d7a803f9e5b5fc9e7bc8bc269c8a`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates remain in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/i%20%282%29.pdf); original blob `71542562d4e167aaa8145eb43de20253dc111ae2`.

**E4, PDF pages 2 — kernel-verified-conditional-fragment.** Advanced finite comparison to transport of HasProd for inverse local determinant factors, given actual two-sided intertwiners at every place. Independently convergent products have equal values in a Hausdorff coefficient field. HasProd remains an explicit premise: no convergence, nonvanishing domain, bad-place/Archimedean factors, completed-function equality or analytic continuation is constructed. Totalized inversion is not asserted to be holomorphic at zeros.

- [`GRWTSK.LinearAlgebra.Matrix.hasProd_inverse_local_factors`](https://github.com/grwtsk/math/blob/0fcc97d3e9dee8ff29191448a8cfdecf39a8fa6a/GRWTSK/LinearAlgebra/Matrix/ConvergentLocalProduct.lean#L11); blob `acb378a8503fdc98b60105c247e8f6d252e69c54`.
- [`GRWTSK.LinearAlgebra.Matrix.local_product_limits_eq`](https://github.com/grwtsk/math/blob/0fcc97d3e9dee8ff29191448a8cfdecf39a8fa6a/GRWTSK/LinearAlgebra/Matrix/ConvergentLocalProduct.lean#L26); blob `acb378a8503fdc98b60105c247e8f6d252e69c54`.

**Other obligations retained:** E1 — unresolved; E2 — unresolved; E3 — kernel-verified-conditional-fragment; E5 — unresolved.

- **E1 missing construction:** Fix the base field and exact G2/F4/E8 forms, their pinned/split data and a representation r with explicitly defined V. Prove the claimed dimensions 7/26/248, homomorphism laws and faithfulness. A Lie-algebra representation alone needs an additional group-level integration/descent proof.
- **E2 missing construction:** Specify the required representation of the L-group (or dual group in an explicitly unramified split setting), an automorphic representation π of G and a proposed GL(V) transfer Π. Prove existence/automorphy; an ordinary embedding G→GL(V) does not define Π.
- **E5 missing construction:** Derive the divisor/residue comparison for the same completed sources from E4, including every extra factor’s divisor. Any critical-line theorem for the target family remains a separate premise or proof.

### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis

Owner-identified unpublished research by grwtsk contributors; printed byline `['grwtsk contributors']`. PDF SHA-256 `159cb12b34d5a425a822b19a204ca2dccff897363f8978d15bd17fa166ad9a2d`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates remain in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/C%20%287%29.pdf); original blob `321ef7c1fa5685faac750558754f8d0e2906fe14`.

**K1, PDF pages 2 — kernel-verified-conditional-fragment.** Constructed the rank-one matrix model T(q)=[[0,q],[1,q−1]] over any commutative ring, with T²=(q−1)T+qI, unique coordinates aI+bT and closed multiplication. With qqinv=1, qinv(T−(q−1)I) is a two-sided inverse. With v vinv=1 and q=v², C=vinv(T+I) satisfies C²=(v+vinv)C. This is an assistant-proposed rank-one construction under the intended convention. Arbitrary Coxeter generators, braid relations, Laurent coefficient implementation, bar involution and comparison with the manuscript remain missing; K1 is not discharged.

- [`GRWTSK.Algebra.Hecke.rankOne_quadratic`](https://github.com/grwtsk/math/blob/0fcc97d3e9dee8ff29191448a8cfdecf39a8fa6a/GRWTSK/Algebra/Hecke/RankOneQuadratic.lean#L15); blob `0266c97fd8ef7c09290cf977a198e13adc76dc23`.
- [`GRWTSK.Algebra.Hecke.rankOne_inverse`](https://github.com/grwtsk/math/blob/0fcc97d3e9dee8ff29191448a8cfdecf39a8fa6a/GRWTSK/Algebra/Hecke/RankOneQuadratic.lean#L22); blob `0266c97fd8ef7c09290cf977a198e13adc76dc23`.
- [`GRWTSK.Algebra.Hecke.rankOne_normalized_square`](https://github.com/grwtsk/math/blob/0fcc97d3e9dee8ff29191448a8cfdecf39a8fa6a/GRWTSK/Algebra/Hecke/RankOneQuadratic.lean#L30); blob `0266c97fd8ef7c09290cf977a198e13adc76dc23`.
- [`GRWTSK.Algebra.Hecke.rankOne_coordinates_unique`](https://github.com/grwtsk/math/blob/0fcc97d3e9dee8ff29191448a8cfdecf39a8fa6a/GRWTSK/Algebra/Hecke/RankOneQuadratic.lean#L39); blob `0266c97fd8ef7c09290cf977a198e13adc76dc23`.
- [`GRWTSK.Algebra.Hecke.rankOne_normalForm_mul`](https://github.com/grwtsk/math/blob/0fcc97d3e9dee8ff29191448a8cfdecf39a8fa6a/GRWTSK/Algebra/Hecke/RankOneQuadratic.lean#L47); blob `0266c97fd8ef7c09290cf977a198e13adc76dc23`.

**Other obligations retained:** K2 — unresolved; K3 — kernel-verified-correction-check; K4 — unresolved; K5 — unresolved.

- **K2 missing construction:** Construct the bar-invariant basis C′_w=v^{−ℓ(w)}Σ_{y≤w}P_{y,w}(v²)T_y, with P_{w,w}=1, P_{y,w}=0 if y≰w and deg P_{y,w}≤(ℓ(w)−ℓ(y)−1)/2 for y<w. Prove existence/uniqueness and derive a correct recurrence.
- **K4 missing construction:** Construct the relevant Schubert/stratum intersection-cohomology realization, with grading, normalization and coefficient conditions, then prove coefficient nonnegativity for this exact KL family. Define affine/quantum variants independently before reusing a theorem.
- **K5 missing construction:** Construct a source-specific realization from these graded classes to the analytic zero detector, prove the full signed/graded identity, and prove why its off-line nonzero class would lie in an actually vanishing group. Nonnegative coefficients alone do not force a residue to be zero.

### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis

Owner-identified unpublished research by grwtsk contributors; printed byline `['grwtsk contributors']`. PDF SHA-256 `553f237f431fc2991860dfb72890a3ebb6d02de0adc14daa7e6af901c5f74a1f`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates remain in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/C%20%289%29.pdf); original blob `68757e7d6f23427e3487d3166928241025ce0ea6`.

**K1, PDF pages 2 — kernel-verified-conditional-fragment.** Constructed the rank-one matrix model T(q)=[[0,q],[1,q−1]] over any commutative ring, with T²=(q−1)T+qI, unique coordinates aI+bT and closed multiplication. With qqinv=1, qinv(T−(q−1)I) is a two-sided inverse. With v vinv=1 and q=v², C=vinv(T+I) satisfies C²=(v+vinv)C. This is an assistant-proposed rank-one construction under the intended convention. Arbitrary Coxeter generators, braid relations, Laurent coefficient implementation, bar involution and comparison with the manuscript remain missing; K1 is not discharged.

- [`GRWTSK.Algebra.Hecke.rankOne_quadratic`](https://github.com/grwtsk/math/blob/0fcc97d3e9dee8ff29191448a8cfdecf39a8fa6a/GRWTSK/Algebra/Hecke/RankOneQuadratic.lean#L15); blob `0266c97fd8ef7c09290cf977a198e13adc76dc23`.
- [`GRWTSK.Algebra.Hecke.rankOne_inverse`](https://github.com/grwtsk/math/blob/0fcc97d3e9dee8ff29191448a8cfdecf39a8fa6a/GRWTSK/Algebra/Hecke/RankOneQuadratic.lean#L22); blob `0266c97fd8ef7c09290cf977a198e13adc76dc23`.
- [`GRWTSK.Algebra.Hecke.rankOne_normalized_square`](https://github.com/grwtsk/math/blob/0fcc97d3e9dee8ff29191448a8cfdecf39a8fa6a/GRWTSK/Algebra/Hecke/RankOneQuadratic.lean#L30); blob `0266c97fd8ef7c09290cf977a198e13adc76dc23`.
- [`GRWTSK.Algebra.Hecke.rankOne_coordinates_unique`](https://github.com/grwtsk/math/blob/0fcc97d3e9dee8ff29191448a8cfdecf39a8fa6a/GRWTSK/Algebra/Hecke/RankOneQuadratic.lean#L39); blob `0266c97fd8ef7c09290cf977a198e13adc76dc23`.
- [`GRWTSK.Algebra.Hecke.rankOne_normalForm_mul`](https://github.com/grwtsk/math/blob/0fcc97d3e9dee8ff29191448a8cfdecf39a8fa6a/GRWTSK/Algebra/Hecke/RankOneQuadratic.lean#L47); blob `0266c97fd8ef7c09290cf977a198e13adc76dc23`.

**Other obligations retained:** K2 — unresolved; K3 — kernel-verified-correction-check; K4 — unresolved; K5 — unresolved.

- **K2 missing construction:** Construct the bar-invariant basis C′_w=v^{−ℓ(w)}Σ_{y≤w}P_{y,w}(v²)T_y, with P_{w,w}=1, P_{y,w}=0 if y≰w and deg P_{y,w}≤(ℓ(w)−ℓ(y)−1)/2 for y<w. Prove existence/uniqueness and derive a correct recurrence.
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

**S3, PDF pages 1, 2 — kernel-verified-correction-fragment.** Added a finite probabilistic route alongside the earlier √n obstruction: square-integrable real observables under a probability measure, with exactly zero off-diagonal covariances, have aggregate variance equal to the sum of diagonal variances. A uniform diagonal bound C gives variance ≤NC; for N>0 the normalized average has variance ≤C/N. This is neither a deterministic uniform cumulative-error bound nor almost-sure convergence, and says nothing about bias without centering. Actual paper observables, probability law, exact covariance bounds, rate hypotheses and Fourier identity remain missing.

- [`GRWTSK.Probability.Moments.variance_sum_of_uncorrelated`](https://github.com/grwtsk/math/blob/0fcc97d3e9dee8ff29191448a8cfdecf39a8fa6a/GRWTSK/Probability/Moments/FiniteUncorrelatedBudget.lean#L16); blob `c3ded54f4ef5b4d9508d0cd1163d6e195623caf0`.
- [`GRWTSK.Probability.Moments.variance_sum_le_card_mul`](https://github.com/grwtsk/math/blob/0fcc97d3e9dee8ff29191448a8cfdecf39a8fa6a/GRWTSK/Probability/Moments/FiniteUncorrelatedBudget.lean#L31); blob `c3ded54f4ef5b4d9508d0cd1163d6e195623caf0`.
- [`GRWTSK.Probability.Moments.variance_average_le`](https://github.com/grwtsk/math/blob/0fcc97d3e9dee8ff29191448a8cfdecf39a8fa6a/GRWTSK/Probability/Moments/FiniteUncorrelatedBudget.lean#L42); blob `c3ded54f4ef5b4d9508d0cd1163d6e195623caf0`.

**S5, PDF pages 2 — kernel-verified-conditional-fragment.** Implemented the finite second-moment consumer under a supplied probability space, real L² observables and exact pairwise zero covariance. No independence conclusion is asserted; the converse would still require extra assumptions such as an actual joint Gaussian law. No arithmetic zero process, finite-family independence, limiting independence or joint Gaussian supplier is constructed.

- [`GRWTSK.Probability.Moments.variance_sum_of_uncorrelated`](https://github.com/grwtsk/math/blob/0fcc97d3e9dee8ff29191448a8cfdecf39a8fa6a/GRWTSK/Probability/Moments/FiniteUncorrelatedBudget.lean#L16); blob `c3ded54f4ef5b4d9508d0cd1163d6e195623caf0`.
- [`GRWTSK.Probability.Moments.variance_sum_le_card_mul`](https://github.com/grwtsk/math/blob/0fcc97d3e9dee8ff29191448a8cfdecf39a8fa6a/GRWTSK/Probability/Moments/FiniteUncorrelatedBudget.lean#L31); blob `c3ded54f4ef5b4d9508d0cd1163d6e195623caf0`.
- [`GRWTSK.Probability.Moments.variance_average_le`](https://github.com/grwtsk/math/blob/0fcc97d3e9dee8ff29191448a8cfdecf39a8fa6a/GRWTSK/Probability/Moments/FiniteUncorrelatedBudget.lean#L42); blob `c3ded54f4ef5b4d9508d0cd1163d6e195623caf0`.

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

## Hypotheses and remaining boundaries

**Rank-one Hecke:** arbitrary commutative ring R. Coordinates are recovered from matrix entries (0,0) and (1,0); normal-form multiplication is explicitly checked for all entries, not sampled parameter values. Invertibility requires an actual qqinv=1; normalized-square identity requires v vinv=1 and q=v². No assertion of a constructed general Coxeter Hecke algebra, braid relations, bar involution, KL recurrence, basis existence/uniqueness, positivity or geometric realization follows. K2–K5 keep their previous scopes.

**Finite second moments:** a specified probability measure μ, finite indexed real observables Xᵢ with MemLp Xᵢ 2 μ, and exactly cov(Xᵢ,Xⱼ)=0 for each i≠j. Uniform diagonal variance ≤C gives Var(ΣXᵢ)≤NC. If N>0, Var(N⁻¹ΣXᵢ)≤C/N. Neither independence nor zero expectation is inferred; this variance budget alone gives no deterministic error bound, tail bound, almost-sure law or arithmetic source estimate. Source-specific covariance-decay estimates do not supply exact zero covariance.

**Infinite local products:** arbitrary place index, finite decidable square matrix index, topological coefficient field, actual UₚVₚ=VₚUₚ=I and AₚUₚ=UₚBₚ at every place, and an actual HasProd premise for the inverse determinant factors at the supplied scalar parameters. Equality of two specified limits additionally requires Hausdorff topology and HasProd for the second limit. These statements do not assert either product exists without that premise, or compare completed L-functions outside a proved domain. Analytic use still needs actual parameters, nonvanishing and all bad/Archimedean factors and continuation bridges.
