# Next bridges for the 36 version-bound obligations

New source commit: `8905b87faad4901de56d0dc770ae7877aa933182`. Lean `leanprover/lean4:v4.33.0`; mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`.

Nine new theorems in four subject-based modules. The four previously completed optional/corrective obligations stay completed. Six conditional fragments and one corrective fragment remain partial; 25 obligations still have no implemented bridge. All seven manuscript-level claims remain unresolved.

Both pairs of distinct PDF versions remain separate. [Structured record](obligation-implementation-progress-v2.json) preserves all 36 original specifications, dependencies, acceptance checks, bibliographic fields, exact page anchors and page-text hashes; earlier implementation states are retained. [First implementation pass](obligation-implementation-progress.md) remains historical.

Verification: the exact four-module `lake build … --wfail` and external `Audit.lean` commands in the structured record both exited 0. `#print axioms` for all nine reports only `propext`, `Classical.choice`, `Quot.sound`, with no `sorryAx`. Runtime logs remain external under `MathematicsLibrary/.catalog/obligation-bridges-v2`. These are local Lean-verified bridges, with explicit conditional premises; imported mathlib results retain upstream attribution. Prior source candidates elsewhere are not newly claimed verified.

## Algebra

### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations

Owner-identified unpublished research: **grwtsk contributors**. Printed byline: `[]`. PDF SHA-256 `498a8b7e7583e8ecc94d4edd362eb71bb3170fb3e9d79a1c5f40342af81c899f`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates are preserved in JSON.

[Exact source PDF](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/i%20%283%29.pdf); source blob `9263622af06f0bdfd8d1f9dfe6a9add5eb19bad6`.

**E4, PDF pages 2 — kernel-verified-conditional-fragment.** On a supplied finite set of places with finite square matrices over a field, two-sided inverse intertwiners imply equality of products of inverse local determinants. Inversion is totalized, so the algebraic identity does not assert holomorphy at zero denominators. Actual good/bad/Archimedean factors, nonvanishing domains, conductors, convergence of infinite products, and continuation equality remain missing.

- [`GRWTSK.LinearAlgebra.Matrix.finite_inverse_local_product_eq`](https://github.com/grwtsk/math/blob/8905b87faad4901de56d0dc770ae7877aa933182/GRWTSK/LinearAlgebra/Matrix/FiniteLocalProduct.lean#L10); blob `30972bdbca1a7b1f0b20205a5b9db56867cc8770`.

**Other obligations retained:** E1 — unresolved; E2 — unresolved; E3 — kernel-verified-conditional-fragment; E5 — unresolved.

- **E1 missing construction:** Fix the base field and exact G2/F4/E8 forms, their pinned/split data and a representation r with explicitly defined V. Prove the claimed dimensions 7/26/248, homomorphism laws and faithfulness. A Lie-algebra representation alone needs an additional group-level integration/descent proof.
- **E2 missing construction:** Specify the required representation of the L-group (or dual group in an explicitly unramified split setting), an automorphic representation π of G and a proposed GL(V) transfer Π. Prove existence/automorphy; an ordinary embedding G→GL(V) does not define Π.
- **E5 missing construction:** Derive the divisor/residue comparison for the same completed sources from E4, including every extra factor’s divisor. Any critical-line theorem for the target family remains a separate premise or proof.

### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations

Owner-identified unpublished research: **grwtsk contributors**. Printed byline: `[]`. PDF SHA-256 `67b33f06a6094d0590d89ac6504cc0ad7f49d7a803f9e5b5fc9e7bc8bc269c8a`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates are preserved in JSON.

[Exact source PDF](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/i%20%282%29.pdf); source blob `71542562d4e167aaa8145eb43de20253dc111ae2`.

**E4, PDF pages 2 — kernel-verified-conditional-fragment.** On a supplied finite set of places with finite square matrices over a field, two-sided inverse intertwiners imply equality of products of inverse local determinants. Inversion is totalized, so the algebraic identity does not assert holomorphy at zero denominators. Actual good/bad/Archimedean factors, nonvanishing domains, conductors, convergence of infinite products, and continuation equality remain missing.

- [`GRWTSK.LinearAlgebra.Matrix.finite_inverse_local_product_eq`](https://github.com/grwtsk/math/blob/8905b87faad4901de56d0dc770ae7877aa933182/GRWTSK/LinearAlgebra/Matrix/FiniteLocalProduct.lean#L10); blob `30972bdbca1a7b1f0b20205a5b9db56867cc8770`.

**Other obligations retained:** E1 — unresolved; E2 — unresolved; E3 — kernel-verified-conditional-fragment; E5 — unresolved.

- **E1 missing construction:** Fix the base field and exact G2/F4/E8 forms, their pinned/split data and a representation r with explicitly defined V. Prove the claimed dimensions 7/26/248, homomorphism laws and faithfulness. A Lie-algebra representation alone needs an additional group-level integration/descent proof.
- **E2 missing construction:** Specify the required representation of the L-group (or dual group in an explicitly unramified split setting), an automorphic representation π of G and a proposed GL(V) transfer Π. Prove existence/automorphy; an ordinary embedding G→GL(V) does not define Π.
- **E5 missing construction:** Derive the divisor/residue comparison for the same completed sources from E4, including every extra factor’s divisor. Any critical-line theorem for the target family remains a separate premise or proof.

### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis

Owner-identified unpublished research: **grwtsk contributors**. Printed byline: `['grwtsk contributors']`. PDF SHA-256 `159cb12b34d5a425a822b19a204ca2dccff897363f8978d15bd17fa166ad9a2d`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates are preserved in JSON.

[Exact source PDF](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/C%20%287%29.pdf); source blob `321ef7c1fa5685faac750558754f8d0e2906fe14`.

**Other obligations retained:** K1 — unresolved; K2 — unresolved; K3 — kernel-verified-correction-check; K4 — unresolved; K5 — unresolved.

- **K1 missing construction:** Choose a Coxeter system and a parameter convention. For example, over ℤ[v,v⁻¹] set q=v² and require T_s²=(q−1)T_s+q together with the braid relations. Define the bar involution with v↦v⁻¹ and T_w↦(T_{w⁻¹})⁻¹.
- **K2 missing construction:** Construct the bar-invariant basis C′_w=v^{−ℓ(w)}Σ_{y≤w}P_{y,w}(v²)T_y, with P_{w,w}=1, P_{y,w}=0 if y≰w and deg P_{y,w}≤(ℓ(w)−ℓ(y)−1)/2 for y<w. Prove existence/uniqueness and derive a correct recurrence.
- **K4 missing construction:** Construct the relevant Schubert/stratum intersection-cohomology realization, with grading, normalization and coefficient conditions, then prove coefficient nonnegativity for this exact KL family. Define affine/quantum variants independently before reusing a theorem.
- **K5 missing construction:** Construct a source-specific realization from these graded classes to the analytic zero detector, prove the full signed/graded identity, and prove why its off-line nonzero class would lie in an actually vanishing group. Nonnegative coefficients alone do not force a residue to be zero.

### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis

Owner-identified unpublished research: **grwtsk contributors**. Printed byline: `['grwtsk contributors']`. PDF SHA-256 `553f237f431fc2991860dfb72890a3ebb6d02de0adc14daa7e6af901c5f74a1f`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates are preserved in JSON.

[Exact source PDF](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/C%20%289%29.pdf); source blob `68757e7d6f23427e3487d3166928241025ce0ea6`.

**Other obligations retained:** K1 — unresolved; K2 — unresolved; K3 — kernel-verified-correction-check; K4 — unresolved; K5 — unresolved.

- **K1 missing construction:** Choose a Coxeter system and a parameter convention. For example, over ℤ[v,v⁻¹] set q=v² and require T_s²=(q−1)T_s+q together with the braid relations. Define the bar involution with v↦v⁻¹ and T_w↦(T_{w⁻¹})⁻¹.
- **K2 missing construction:** Construct the bar-invariant basis C′_w=v^{−ℓ(w)}Σ_{y≤w}P_{y,w}(v²)T_y, with P_{w,w}=1, P_{y,w}=0 if y≰w and deg P_{y,w}≤(ℓ(w)−ℓ(y)−1)/2 for y<w. Prove existence/uniqueness and derive a correct recurrence.
- **K4 missing construction:** Construct the relevant Schubert/stratum intersection-cohomology realization, with grading, normalization and coefficient conditions, then prove coefficient nonnegativity for this exact KL family. Define affine/quantum variants independently before reusing a theorem.
- **K5 missing construction:** Construct a source-specific realization from these graded classes to the analytic zero detector, prove the full signed/graded identity, and prove why its off-line nonzero class would lie in an actually vanishing group. Nonnegative coefficients alone do not force a residue to be zero.

## GeometryTopology

### Boundary Regularization: A Framework for High-Rank Elimination

Owner-identified unpublished research: **grwtsk contributors**. Printed byline: `[]`. PDF SHA-256 `796ba01d4a02a5ba331fbe88ee80dbd4bd3e669712c11d6de4530a0e063c9362`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates are preserved in JSON.

[Exact source PDF](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/g%20%282%29.pdf); source blob `a6b1384d8b682feabc705eee0e058eb50c61df39`.

**B3, PDF pages 1 — kernel-verified-conditional-fragment.** For a supplied punctured integer-order factorization f(s)=(s−a)^k g(s), with g analytic at a and g(a)≠0, the scaled coefficient of −logDeriv f is uniquely −k. A continuous extension of logDeriv forces k=0; k≠0 excludes any such extension. Actual completed Λ, its factorization, exceptional/trivial-zero classification and geometric zero-to-class detector remain missing. No residue of Λ itself is identified.

- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.scaled_coefficient_unique`](https://github.com/grwtsk/math/blob/8905b87faad4901de56d0dc770ae7877aa933182/GRWTSK/Analysis/Complex/LogarithmicOrderDetection.lean#L12); blob `2a3d63d126b4c121db5dcf86485f9105674b0203`.
- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.order_eq_zero_of_continuous_extension`](https://github.com/grwtsk/math/blob/8905b87faad4901de56d0dc770ae7877aa933182/GRWTSK/Analysis/Complex/LogarithmicOrderDetection.lean#L22); blob `2a3d63d126b4c121db5dcf86485f9105674b0203`.
- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.no_continuous_extension_of_nonzero_order`](https://github.com/grwtsk/math/blob/8905b87faad4901de56d0dc770ae7877aa933182/GRWTSK/Analysis/Complex/LogarithmicOrderDetection.lean#L40); blob `2a3d63d126b4c121db5dcf86485f9105674b0203`.

**Other obligations retained:** B1 — unresolved; B2 — unresolved; B4 — unresolved; B5 — unresolved; B6 — unresolved.

- **B1 missing construction:** Fix the group/base, compactification j:U→X with boundary i:Z→X, coefficient complex K and the exact cohomology theory. Construct C_Z(K) and H^k(Z,K); do not identify arbitrary graph cohomology with these groups.
- **B2 missing construction:** Construct the localization/excision triangle or long exact sequence. If a direct sum is needed, construct a splitting/projector and prove compatibility with Hecke actions; a set union does not produce a split cohomology decomposition.
- **B4 missing construction:** For every nontrivial zero ρ of the exact source with Re(ρ)≠1/2, construct kρ, Kρ and vρ∈H^{kρ}(Z,Kρ), prove vρ≠0 and that kρ lies in the specific forbidden degree range.
- **B5 missing construction:** Prove H^k(Z,Kρ)=0 in that same range for the original Kρ, under verified properness/dimension/positivity hypotheses. Vanishing only after a positive twist requires a proved untwisting comparison.
- **B6 missing construction:** Combine vρ≠0 with B5 for every allowed off-line zero. This final contradiction is conditional until B1–B5 are constructed.

## LogicAndComputation

### Updated Verification of Recursive Refinement Framework

Owner-identified unpublished research: **grwtsk contributors**. Printed byline: `['grwtsk contributors']`. PDF SHA-256 `d7819c0364c77a97d9817f1089ef84d2cf5a24eec9ac9ad47fdb4b67fb29455b`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates are preserved in JSON.

[Exact source PDF](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/Updated_Verification_of_Recursive_Refinement_Framework%20%282%29.pdf); source blob `e7e459f64d4d145ea39d56f08721c2ba5b39372b`.

**S3, PDF pages 1, 2 — kernel-verified-correction-fragment.** Assistant-proposed counterexample: √n lies eventually below εn for each ε>0 but has no uniform real upper bound. This blocks promotion of a sublinear cumulative error to a uniform bound. No actual paper error sequence, claimed Fourier sum-to-product identity, O(√N) probability bound or O(log N) arithmetic estimate is supplied.

- [`GRWTSK.Analysis.ErrorBounds.sqrt_eventually_le_linear`](https://github.com/grwtsk/math/blob/8905b87faad4901de56d0dc770ae7877aa933182/GRWTSK/Analysis/ErrorBounds/SublinearUnbounded.lean#L10); blob `546753f8854ed37946c88d533f622f3e39f97d24`.
- [`GRWTSK.Analysis.ErrorBounds.sqrt_not_uniformly_bounded`](https://github.com/grwtsk/math/blob/8905b87faad4901de56d0dc770ae7877aa933182/GRWTSK/Analysis/ErrorBounds/SublinearUnbounded.lean#L25); blob `546753f8854ed37946c88d533f622f3e39f97d24`.

**S4, PDF pages 2 — kernel-verified-conditional-fragment.** Extends the previous finite-channel convergence result: nonnegative weights and positive weight at i let total mass control coordinate i and its convergence; supplied exact source/model readouts and absolute consumer coefficient bounds transport mass convergence to actual-minus-approximate convergence. Existing strict column bound and vanishing-forcing premises are unchanged. Actual source paths, positive conditioning, arithmetic forcing estimates, complete channel coverage and changing-channel comparisons remain missing.

- [`GRWTSK.Analysis.ErrorBounds.coordinate_le_channelMass`](https://github.com/grwtsk/math/blob/8905b87faad4901de56d0dc770ae7877aa933182/GRWTSK/Analysis/ErrorBounds/WeightedResidualReadout.lean#L9); blob `4d6454d99dd7fd9cffff555bcd00294dfb2795c0`.
- [`GRWTSK.Analysis.ErrorBounds.coordinate_vanishes_of_mass`](https://github.com/grwtsk/math/blob/8905b87faad4901de56d0dc770ae7877aa933182/GRWTSK/Analysis/ErrorBounds/WeightedResidualReadout.lean#L17); blob `4d6454d99dd7fd9cffff555bcd00294dfb2795c0`.
- [`GRWTSK.Analysis.ErrorBounds.readout_vanishes_of_mass`](https://github.com/grwtsk/math/blob/8905b87faad4901de56d0dc770ae7877aa933182/GRWTSK/Analysis/ErrorBounds/WeightedResidualReadout.lean#L32); blob `4d6454d99dd7fd9cffff555bcd00294dfb2795c0`.

**Other obligations retained:** S1 — unresolved; S2 — unresolved; S5 — unresolved; S6 — unresolved.

- **S1 missing construction:** Bind each named January reference to an exact catalog SHA/version and exact theorem. Eight candidate versions of four title families were inspected; title matching alone does not prove that the status note invokes either particular version.
- **S2 missing construction:** Define each arithmetic sequence, its deterministic centering and e_n before choosing a target rate. Decide whether the needed claim is ∃C∀n |e_n|≤C, a variable envelope |e_n|≤C B(n), or a normalized o(n) statement.
- **S5 missing construction:** Define a probability space and exact measurable, square-integrable zero observables. State finite-family independence or a specified limiting-law independence theorem. Vanishing/decaying pair correlation alone is not that statement.
- **S6 missing construction:** Retain every RH/GRH hypothesis printed in the Resolution draft §4.3. If the desired downstream theorem is unconditional RH/GRH, replace that supplier by an independently proved result rather than using it circularly.

## NumberTheory

### A Holistic Strategy for Deriving Properties of Prime Numbers

Owner-identified unpublished research: **grwtsk contributors**. Printed byline: `['grwtsk contributors']`. PDF SHA-256 `0b423568798d1ce34de5668b0b9f4af71ec11da133956d7c17ef45dff9559d1f`. Publication date, DOI and arXiv ID remain unestablished; typed manuscript dates are preserved in JSON.

[Exact source PDF](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/A_Holistic_Strategy_for_Deriving_Properties_of_Prime_Numbers%20%283%29.pdf); source blob `28e3ee7aaf8f5b4fd1d85a32316654fea12e446c`.

**Other obligations retained:** P1 — unresolved; P2 — kernel-verified-optional-specialization; P3 — kernel-verified-optional-specialization; P4 — unresolved.

- **P1 missing construction:** Resolve each numbered Source 23/26/27/28/29 to a title, exact version and theorem/method, or explicitly leave the citation unresolved.
- **P4 missing construction:** For any proposed prime-distribution estimate, specify the actual counting/weighted source S(x), comparison M(x), domain x≥x0 and constants C≥0, then prove ∀x≥x0, |S(x)−M(x)|≤C B(x) for a named B. No bound B is supplied by this roadmap.

## Exact new hypotheses and trust boundaries

**Local order detector (B3):** complex functions f,g, center a and integer k; g analytic at a, g(a)≠0 and equality with (s−a)^k g(s) on a punctured neighborhood. Coefficient uniqueness additionally takes the stated scaled limit; extension obstruction assumes continuity of the proposed extension and equality with logDeriv on that same neighborhood. This does not prove the completed-function factorization or geometric realization.

**Finite local product (E4, both versions):** coefficient field K, finite decidable square index type n, finite supplied place set, scalar parameter at each place, UV=VU=1 and AU=UB at every selected place. Totalized inverses are algebraic expressions; use as analytic reciprocal Euler factors needs independent nonvanishing and all global continuation/convergence premises.

**Weighted residual consumers (S4):** one fixed finite channel type; nonnegative weights; a strictly positive weight for the selected coordinate; independently supplied vanishing mass. Readout convergence additionally requires two exact readout identities using the same coefficients and |coefficient|≤weight. The earlier source-residual theorem still needs 0≤r<1, all weighted column bounds and vanishing net forcing. No coercivity follows from nonnegative weights alone.

**Rate obstruction (S3):** for every real ε>0, a natural cutoff exists after which √n≤εn; no real C bounds √n for every n. This is an assistant-proposed logical counterexample, not finite evidence or a claimed source-specific arithmetic estimate. The cumulative-error obligation remains partial.

No historical influence, understanding date, effective source access, joint Gaussian law, cohomological splitting, geometric positivity-to-vanishing bridge, automorphic transfer or RH theorem is inferred.
