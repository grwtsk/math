# Rank-one bar, probability tails, local comparison and conditional projector

New Lean source commit `20fae001d414e572b649166da32d250d8885921f`; Lean `leanprover/lean4:v4.33.0`; mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`.

**Thirteen new theorems. Four completed optional/corrective obligations, fifteen verified partial results, seventeen unresolved obligations. All seven manuscript-level claims remain open.** B2 acquires its first implemented conditional fragment. K1/K2 in both KL versions, E5 in both exceptional-group versions, B3 and S3/S5 advance without being discharged.

[Structured record](obligation-implementation-progress-v5.json) retains all 36 original specifications, dependencies, acceptance checks, exact bibliographic fields, page anchors and page-text hashes. Every changed obligation retains its complete prior state; [the previous pass](obligation-implementation-progress-v4.md) remains historical. Owner understanding dates stay unknown.

Verification: the exact four-module `lake build … --wfail` and external `Audit.lean` commands in JSON exited 0. All thirteen `#print axioms` readbacks use only `propext`, `Classical.choice`, `Quot.sound`, with no `sorryAx`; exact per-declaration lists are recorded. Logs stay in the external `MathematicsLibrary/.catalog/obligation-bridges-v5` directory. New bridges are locally Lean-verified fragments. Imported matrix, probability and logarithmic-derivative infrastructure retains upstream attribution. No historical influence or new paper-reading event is inferred.

## Algebra

### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations

Owner-identified unpublished research by grwtsk contributors; printed byline `[]`. PDF SHA-256 `498a8b7e7583e8ecc94d4edd362eb71bb3170fb3e9d79a1c5f40342af81c899f`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates remain in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/i%20%283%29.pdf); original blob `9263622af06f0bdfd8d1f9dfe6a9add5eb19bad6`.

**E5, PDF pages 2 — kernel-verified-conditional-fragment.** Two analytic-unit factorizations of the same complex function have equal signed integer orders. An actual equality on a punctured neighborhood transports that order between supplied factorizations. No completed-source equality is inferred from an embedding or finite factor match; analytic continuation, all extra factors and completed-function identification remain missing. No global divisor or residue theorem for the original completed functions is supplied.

- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.local_factorization_order_unique`](https://github.com/grwtsk/math/blob/20fae001d414e572b649166da32d250d8885921f/GRWTSK/Analysis/Complex/LocalOrderComparison.lean#L10); blob `dd8b5c5ee814f1d79520465082ac5df503c57f82`.
- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.local_order_eq_of_germ_eq`](https://github.com/grwtsk/math/blob/20fae001d414e572b649166da32d250d8885921f/GRWTSK/Analysis/Complex/LocalOrderComparison.lean#L21); blob `dd8b5c5ee814f1d79520465082ac5df503c57f82`.

**Other obligations retained:** E1 — unresolved; E2 — unresolved; E3 — kernel-verified-conditional-fragment; E4 — kernel-verified-conditional-fragment.

- **E1 missing construction:** Fix the base field and exact G2/F4/E8 forms, their pinned/split data and a representation r with explicitly defined V. Prove the claimed dimensions 7/26/248, homomorphism laws and faithfulness. A Lie-algebra representation alone needs an additional group-level integration/descent proof.
- **E2 missing construction:** Specify the required representation of the L-group (or dual group in an explicitly unramified split setting), an automorphic representation π of G and a proposed GL(V) transfer Π. Prove existence/automorphy; an ordinary embedding G→GL(V) does not define Π.

### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations

Owner-identified unpublished research by grwtsk contributors; printed byline `[]`. PDF SHA-256 `67b33f06a6094d0590d89ac6504cc0ad7f49d7a803f9e5b5fc9e7bc8bc269c8a`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates remain in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/i%20%282%29.pdf); original blob `71542562d4e167aaa8145eb43de20253dc111ae2`.

**E5, PDF pages 2 — kernel-verified-conditional-fragment.** Two analytic-unit factorizations of the same complex function have equal signed integer orders. An actual equality on a punctured neighborhood transports that order between supplied factorizations. No completed-source equality is inferred from an embedding or finite factor match; analytic continuation, all extra factors and completed-function identification remain missing. No global divisor or residue theorem for the original completed functions is supplied.

- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.local_factorization_order_unique`](https://github.com/grwtsk/math/blob/20fae001d414e572b649166da32d250d8885921f/GRWTSK/Analysis/Complex/LocalOrderComparison.lean#L10); blob `dd8b5c5ee814f1d79520465082ac5df503c57f82`.
- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.local_order_eq_of_germ_eq`](https://github.com/grwtsk/math/blob/20fae001d414e572b649166da32d250d8885921f/GRWTSK/Analysis/Complex/LocalOrderComparison.lean#L21); blob `dd8b5c5ee814f1d79520465082ac5df503c57f82`.

**Other obligations retained:** E1 — unresolved; E2 — unresolved; E3 — kernel-verified-conditional-fragment; E4 — kernel-verified-conditional-fragment.

- **E1 missing construction:** Fix the base field and exact G2/F4/E8 forms, their pinned/split data and a representation r with explicitly defined V. Prove the claimed dimensions 7/26/248, homomorphism laws and faithfulness. A Lie-algebra representation alone needs an additional group-level integration/descent proof.
- **E2 missing construction:** Specify the required representation of the L-group (or dual group in an explicitly unramified split setting), an automorphic representation π of G and a proposed GL(V) transfer Π. Prove existence/automorphy; an ordinary embedding G→GL(V) does not define Π.

### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis

Owner-identified unpublished research by grwtsk contributors; printed byline `['grwtsk contributors']`. PDF SHA-256 `159cb12b34d5a425a822b19a204ca2dccff897363f8978d15bd17fa166ad9a2d`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates remain in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/C%20%287%29.pdf); original blob `321ef7c1fa5685faac750558754f8d0e2906fe14`.

**K1, PDF pages 2 — kernel-verified-conditional-fragment.** Constructed the semilinear rank-one coordinate bar (a,b)↦(σa+(qinv−1)σb,qinv σb). With qqinv=1 and σq=qinv it respects the actual rank-one multiplication; with coefficient involutivity and σqinv=q it is involutive. Identity and generator images agree with the inverse-generator convention. The coefficient ring automorphism and inversion laws are premises; no Laurent automorphism, arbitrary Coxeter generators or braid relations are constructed.

- [`GRWTSK.Algebra.Hecke.rankOne_bar_generators`](https://github.com/grwtsk/math/blob/20fae001d414e572b649166da32d250d8885921f/GRWTSK/Algebra/Hecke/RankOneBarCoordinates.lean#L19); blob `58dac61a28644df3cf2717934e55800843562911`.
- [`GRWTSK.Algebra.Hecke.rankOne_bar_involutive`](https://github.com/grwtsk/math/blob/20fae001d414e572b649166da32d250d8885921f/GRWTSK/Algebra/Hecke/RankOneBarCoordinates.lean#L25); blob `58dac61a28644df3cf2717934e55800843562911`.
- [`GRWTSK.Algebra.Hecke.rankOne_bar_mul`](https://github.com/grwtsk/math/blob/20fae001d414e572b649166da32d250d8885921f/GRWTSK/Algebra/Hecke/RankOneBarCoordinates.lean#L36); blob `58dac61a28644df3cf2717934e55800843562911`.
- [`GRWTSK.Algebra.Hecke.rankOne_bar_normalized_fixed`](https://github.com/grwtsk/math/blob/20fae001d414e572b649166da32d250d8885921f/GRWTSK/Algebra/Hecke/RankOneBarCoordinates.lean#L46); blob `58dac61a28644df3cf2717934e55800843562911`.

**K2, PDF pages 2 — kernel-verified-conditional-fragment.** Added fixedness of the normalized C coordinates (vinv,vinv) under the rank-one bar, given σ(vinv)=v and v vinv=1, with inverse parameter vinv². This complements the earlier unique rank-one normalized expansion. It is not a general Coxeter KL basis, recurrence or geometric realization. A concrete Laurent coefficient involution and all general Bruhat/degree and basis suppliers remain missing.

- [`GRWTSK.Algebra.Hecke.rankOne_bar_generators`](https://github.com/grwtsk/math/blob/20fae001d414e572b649166da32d250d8885921f/GRWTSK/Algebra/Hecke/RankOneBarCoordinates.lean#L19); blob `58dac61a28644df3cf2717934e55800843562911`.
- [`GRWTSK.Algebra.Hecke.rankOne_bar_involutive`](https://github.com/grwtsk/math/blob/20fae001d414e572b649166da32d250d8885921f/GRWTSK/Algebra/Hecke/RankOneBarCoordinates.lean#L25); blob `58dac61a28644df3cf2717934e55800843562911`.
- [`GRWTSK.Algebra.Hecke.rankOne_bar_mul`](https://github.com/grwtsk/math/blob/20fae001d414e572b649166da32d250d8885921f/GRWTSK/Algebra/Hecke/RankOneBarCoordinates.lean#L36); blob `58dac61a28644df3cf2717934e55800843562911`.
- [`GRWTSK.Algebra.Hecke.rankOne_bar_normalized_fixed`](https://github.com/grwtsk/math/blob/20fae001d414e572b649166da32d250d8885921f/GRWTSK/Algebra/Hecke/RankOneBarCoordinates.lean#L46); blob `58dac61a28644df3cf2717934e55800843562911`.

**Other obligations retained:** K3 — kernel-verified-correction-check; K4 — unresolved; K5 — unresolved.

- **K4 missing construction:** Construct the relevant Schubert/stratum intersection-cohomology realization, with grading, normalization and coefficient conditions, then prove coefficient nonnegativity for this exact KL family. Define affine/quantum variants independently before reusing a theorem.
- **K5 missing construction:** Construct a source-specific realization from these graded classes to the analytic zero detector, prove the full signed/graded identity, and prove why its off-line nonzero class would lie in an actually vanishing group. Nonnegative coefficients alone do not force a residue to be zero.

### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis

Owner-identified unpublished research by grwtsk contributors; printed byline `['grwtsk contributors']`. PDF SHA-256 `553f237f431fc2991860dfb72890a3ebb6d02de0adc14daa7e6af901c5f74a1f`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates remain in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/C%20%289%29.pdf); original blob `68757e7d6f23427e3487d3166928241025ce0ea6`.

**K1, PDF pages 2 — kernel-verified-conditional-fragment.** Constructed the semilinear rank-one coordinate bar (a,b)↦(σa+(qinv−1)σb,qinv σb). With qqinv=1 and σq=qinv it respects the actual rank-one multiplication; with coefficient involutivity and σqinv=q it is involutive. Identity and generator images agree with the inverse-generator convention. The coefficient ring automorphism and inversion laws are premises; no Laurent automorphism, arbitrary Coxeter generators or braid relations are constructed.

- [`GRWTSK.Algebra.Hecke.rankOne_bar_generators`](https://github.com/grwtsk/math/blob/20fae001d414e572b649166da32d250d8885921f/GRWTSK/Algebra/Hecke/RankOneBarCoordinates.lean#L19); blob `58dac61a28644df3cf2717934e55800843562911`.
- [`GRWTSK.Algebra.Hecke.rankOne_bar_involutive`](https://github.com/grwtsk/math/blob/20fae001d414e572b649166da32d250d8885921f/GRWTSK/Algebra/Hecke/RankOneBarCoordinates.lean#L25); blob `58dac61a28644df3cf2717934e55800843562911`.
- [`GRWTSK.Algebra.Hecke.rankOne_bar_mul`](https://github.com/grwtsk/math/blob/20fae001d414e572b649166da32d250d8885921f/GRWTSK/Algebra/Hecke/RankOneBarCoordinates.lean#L36); blob `58dac61a28644df3cf2717934e55800843562911`.
- [`GRWTSK.Algebra.Hecke.rankOne_bar_normalized_fixed`](https://github.com/grwtsk/math/blob/20fae001d414e572b649166da32d250d8885921f/GRWTSK/Algebra/Hecke/RankOneBarCoordinates.lean#L46); blob `58dac61a28644df3cf2717934e55800843562911`.

**K2, PDF pages 2 — kernel-verified-conditional-fragment.** Added fixedness of the normalized C coordinates (vinv,vinv) under the rank-one bar, given σ(vinv)=v and v vinv=1, with inverse parameter vinv². This complements the earlier unique rank-one normalized expansion. It is not a general Coxeter KL basis, recurrence or geometric realization. A concrete Laurent coefficient involution and all general Bruhat/degree and basis suppliers remain missing.

- [`GRWTSK.Algebra.Hecke.rankOne_bar_generators`](https://github.com/grwtsk/math/blob/20fae001d414e572b649166da32d250d8885921f/GRWTSK/Algebra/Hecke/RankOneBarCoordinates.lean#L19); blob `58dac61a28644df3cf2717934e55800843562911`.
- [`GRWTSK.Algebra.Hecke.rankOne_bar_involutive`](https://github.com/grwtsk/math/blob/20fae001d414e572b649166da32d250d8885921f/GRWTSK/Algebra/Hecke/RankOneBarCoordinates.lean#L25); blob `58dac61a28644df3cf2717934e55800843562911`.
- [`GRWTSK.Algebra.Hecke.rankOne_bar_mul`](https://github.com/grwtsk/math/blob/20fae001d414e572b649166da32d250d8885921f/GRWTSK/Algebra/Hecke/RankOneBarCoordinates.lean#L36); blob `58dac61a28644df3cf2717934e55800843562911`.
- [`GRWTSK.Algebra.Hecke.rankOne_bar_normalized_fixed`](https://github.com/grwtsk/math/blob/20fae001d414e572b649166da32d250d8885921f/GRWTSK/Algebra/Hecke/RankOneBarCoordinates.lean#L46); blob `58dac61a28644df3cf2717934e55800843562911`.

**Other obligations retained:** K3 — kernel-verified-correction-check; K4 — unresolved; K5 — unresolved.

- **K4 missing construction:** Construct the relevant Schubert/stratum intersection-cohomology realization, with grading, normalization and coefficient conditions, then prove coefficient nonnegativity for this exact KL family. Define affine/quantum variants independently before reusing a theorem.
- **K5 missing construction:** Construct a source-specific realization from these graded classes to the analytic zero detector, prove the full signed/graded identity, and prove why its off-line nonzero class would lie in an actually vanishing group. Nonnegative coefficients alone do not force a residue to be zero.

## GeometryTopology

### Boundary Regularization: A Framework for High-Rank Elimination

Owner-identified unpublished research by grwtsk contributors; printed byline `[]`. PDF SHA-256 `796ba01d4a02a5ba331fbe88ee80dbd4bd3e669712c11d6de4530a0e063c9362`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates remain in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/g%20%282%29.pdf); original blob `a6b1384d8b682feabc705eee0e058eb50c61df39`.

**B2, PDF pages 1 — kernel-verified-conditional-fragment.** Constructed the explicit linear projector P=id−i∘r. An actual retraction r(i b)=b implies r(Px)=0, P(i b)=0 and P²=P; x=i(rx)+Px reconstructs the state. If the supplied action intertwines both i and r, P commutes with that action. This is a conditional splitting component, not a localization/excision triangle or geometric cohomological splitting. Actual group/base, cohomology, inclusion/retraction and Hecke intertwining suppliers remain missing.

- [`GRWTSK.LinearAlgebra.retractionComplement_in_kernel`](https://github.com/grwtsk/math/blob/20fae001d414e572b649166da32d250d8885921f/GRWTSK/LinearAlgebra/RetractionComplement.lean#L15); blob `10de52251b1390c30ecf1b568d8876b5bd635338`.
- [`GRWTSK.LinearAlgebra.retractionComplement_on_image`](https://github.com/grwtsk/math/blob/20fae001d414e572b649166da32d250d8885921f/GRWTSK/LinearAlgebra/RetractionComplement.lean#L20); blob `10de52251b1390c30ecf1b568d8876b5bd635338`.
- [`GRWTSK.LinearAlgebra.retractionComplement_idempotent`](https://github.com/grwtsk/math/blob/20fae001d414e572b649166da32d250d8885921f/GRWTSK/LinearAlgebra/RetractionComplement.lean#L25); blob `10de52251b1390c30ecf1b568d8876b5bd635338`.
- [`GRWTSK.LinearAlgebra.retractionComplement_decomposition`](https://github.com/grwtsk/math/blob/20fae001d414e572b649166da32d250d8885921f/GRWTSK/LinearAlgebra/RetractionComplement.lean#L33); blob `10de52251b1390c30ecf1b568d8876b5bd635338`.
- [`GRWTSK.LinearAlgebra.retractionComplement_commutes`](https://github.com/grwtsk/math/blob/20fae001d414e572b649166da32d250d8885921f/GRWTSK/LinearAlgebra/RetractionComplement.lean#L38); blob `10de52251b1390c30ecf1b568d8876b5bd635338`.

**B3, PDF pages 1 — kernel-verified-conditional-fragment.** Added uniqueness of local factorization order and transport under an actual punctured-germ equality, with analytic units nonzero at the center. The exact completed function, its zero detector, factorization and exceptional/trivial-zero classification remain missing; no geometric zero-to-class construction is inferred.

- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.local_factorization_order_unique`](https://github.com/grwtsk/math/blob/20fae001d414e572b649166da32d250d8885921f/GRWTSK/Analysis/Complex/LocalOrderComparison.lean#L10); blob `dd8b5c5ee814f1d79520465082ac5df503c57f82`.
- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.local_order_eq_of_germ_eq`](https://github.com/grwtsk/math/blob/20fae001d414e572b649166da32d250d8885921f/GRWTSK/Analysis/Complex/LocalOrderComparison.lean#L21); blob `dd8b5c5ee814f1d79520465082ac5df503c57f82`.

**Other obligations retained:** B1 — unresolved; B4 — unresolved; B5 — unresolved; B6 — unresolved.

- **B1 missing construction:** Fix the group/base, compactification j:U→X with boundary i:Z→X, coefficient complex K and the exact cohomology theory. Construct C_Z(K) and H^k(Z,K); do not identify arbitrary graph cohomology with these groups.
- **B4 missing construction:** For every nontrivial zero ρ of the exact source with Re(ρ)≠1/2, construct kρ, Kρ and vρ∈H^{kρ}(Z,Kρ), prove vρ≠0 and that kρ lies in the specific forbidden degree range.
- **B5 missing construction:** Prove H^k(Z,Kρ)=0 in that same range for the original Kρ, under verified properness/dimension/positivity hypotheses. Vanishing only after a positive twist requires a proved untwisting comparison.
- **B6 missing construction:** Combine vρ≠0 with B5 for every allowed off-line zero. This final contradiction is conditional until B1–B5 are constructed.

## LogicAndComputation

### Updated Verification of Recursive Refinement Framework

Owner-identified unpublished research by grwtsk contributors; printed byline `['grwtsk contributors']`. PDF SHA-256 `d7819c0364c77a97d9817f1089ef84d2cf5a24eec9ac9ad47fdb4b67fb29455b`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates remain in JSON.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/Updated_Verification_of_Recursive_Refinement_Framework%20%282%29.pdf); original blob `e7e459f64d4d145ea39d56f08721c2ba5b39372b`.

**S3, PDF pages 1, 2 — kernel-verified-correction-fragment.** Added Chebyshev probability bounds for the sum and average from the finite covariance budgets, centered at each observable's actual expectation. Threshold ε>0 gives the variance budget divided by ε²; the average additionally requires N>0. No arithmetic model is substituted for that expectation, and no deterministic bounded-error, almost-sure or family-limit statement follows. Arithmetic observables, centering comparison, probability law and proved C/δ rates remain missing.

- [`GRWTSK.Probability.Moments.sum_tail_le_covariance_budget`](https://github.com/grwtsk/math/blob/20fae001d414e572b649166da32d250d8885921f/GRWTSK/Probability/Moments/FiniteCovarianceTail.lean#L13); blob `1c49ae90144e6520060bc1268c0d25e8df9a577c`.
- [`GRWTSK.Probability.Moments.average_tail_le_covariance_budget`](https://github.com/grwtsk/math/blob/20fae001d414e572b649166da32d250d8885921f/GRWTSK/Probability/Moments/FiniteCovarianceTail.lean#L28); blob `1c49ae90144e6520060bc1268c0d25e8df9a577c`.

**S5, PDF pages 2 — kernel-verified-conditional-fragment.** Added probability-tail consumers under real L² observables, an actual probability measure, diagonal variance bounds and uniform off-diagonal covariance upper bounds. These do not infer independence from covariance decay. Actual zero processes, joint Gaussian laws or independence suppliers, and uniform family-dependent rates remain missing.

- [`GRWTSK.Probability.Moments.sum_tail_le_covariance_budget`](https://github.com/grwtsk/math/blob/20fae001d414e572b649166da32d250d8885921f/GRWTSK/Probability/Moments/FiniteCovarianceTail.lean#L13); blob `1c49ae90144e6520060bc1268c0d25e8df9a577c`.
- [`GRWTSK.Probability.Moments.average_tail_le_covariance_budget`](https://github.com/grwtsk/math/blob/20fae001d414e572b649166da32d250d8885921f/GRWTSK/Probability/Moments/FiniteCovarianceTail.lean#L28); blob `1c49ae90144e6520060bc1268c0d25e8df9a577c`.

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

**Rank-one bar:** a commutative ring with a supplied ring automorphism σ and inverse parameters q qinv=1. Multiplication compatibility requires σq=qinv. Involutivity additionally requires Function.Involutive σ and σqinv=q. Normalized fixedness uses σ(vinv)=v, v vinv=1 and inverse parameter vinv². These are coordinate identities for the uniquely represented rank-one normal forms. They do not construct a coefficient Laurent involution or a general Coxeter Hecke/KL framework.

**Chebyshev tails:** an actual probability measure, a finite indexed real L² family, variance bound C and uniform one-sided cross-covariance bound δ. For ε>0 the sum tail is bounded by ENNReal.ofReal((NC+N(N−1)δ)/ε²). For N>0 the average tail is bounded by ENNReal.ofReal((C/N+(1−1/N)δ)/ε²). Both deviations are from their actual expectation. A model-centering identity or bias estimate, vanishing family-dependent budget, independence and deterministic source estimates remain separate requirements.

**Local orders:** both local factorizations have integer powers and analytic units nonzero at the same complex center. Equality of punctured germs is an explicit premise for comparing different functions. No completed-source germ equality, global divisor or signed geometric realization is constructed.

**Complementary projector:** modules over a commutative ring and actual linear maps i,r. Reconstruction holds algebraically; kernel/image/idempotence conclusions require r∘i=id. Compatibility with an action requires both T∘i=i∘S and r∘T=S∘r. No splitting follows from a set union. The actual cohomology groups, localization sequence, retraction and Hecke-action suppliers remain missing.

Unresolved source-specific constructions remain exactly as preserved per obligation in JSON: prime sources/estimates, boundary geometry and vanishing, exceptional representations and automorphic transfers, KL geometric positivity and signed analytic realization, January version binding, arithmetic sequences and noncircular RH/GRH suppliers. No historical influence or owner understanding date is inferred.
