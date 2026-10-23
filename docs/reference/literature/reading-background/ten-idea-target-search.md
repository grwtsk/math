# Further Lean search: ten unresolved research ideas

Latest seven-idea assessment: [precise construction and proof obligations by taxonomy](seven-idea-construction-plan.md). All seven remain unresolved; recording a construction plan does not establish a Lean bridge.

**3 conditional-fragment**; **7 unresolved**. All ten exact asset/idea identities remain separate. **No main manuscript claim is marked resolved.**

Maintained-code search baseline: `b9c830170615ea5fc92ea988252891a1808ea074`. Explicit upstream mathlib dependency: `db584cd6d46c92f209a44c0f1c829460d327499d`, verified against `lake-manifest.json` at that maintained baseline. [Review data](ten-idea-target-search.json) · [Strict schema](ten-idea-target-search.schema.json) · [Prior 21-idea pass](remaining-idea-target-search.md)

Conditional fragments concern narrower source subclaims under retained premises; they do not establish the original conclusion. Seven primary ideas still lack a concrete target. Rejected candidates are included only to explain why a similar declaration is insufficient. Owner understanding dates remain null.

## Algebra — 5 versions

<a id="498a8b7e7583e8ec-exceptional-embedding-transfer"></a>
### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations — `498a8b7e7583`

`idea:unpublished-v3:498a8b7e7583e8ec:exceptional-embedding-transfer` — **unresolved**. Main claim unresolved.

Current blocker: **automorphic-transfer-missing**. [Exact construction/proof obligations](seven-idea-construction-plan.md#498a8b7e7583e8ec-exceptional-embedding-transfer); unresolved, NOT_RUN.

The outline proposes G2,F4,E8 representations in GL(7),GL(26),GL(248) and claims that embeddings preserve critical-line residue properties.

Both physical pages have now been reread. Upstream Cartan-matrix and root-system constructions describe algebraic root data; they do not construct the asserted G2/F4/E8 automorphic transfers or prove equality of completed L-functions. The dimensions 7/26/248 and reported tolerances do not fill that gap.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/498a8b7e7583--i (3).pdf#page=1>): “Exceptional Group Embeddings”. Page-text SHA-256 `e1a09142b500da0d9b255b6c37916fb490be74ab2426c74414dffe11adf39f21`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/498a8b7e7583--i (3).pdf#page=2>): “Residue Suppression and Functional Equation”. Page-text SHA-256 `d4918a427957a5f13637da97018dd8484476128ae3af09279b685a9826d9b150`.
- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/498a8b7e7583--i (3).pdf#page=1>): “Exceptional Groups: Embeddings and”. Page-text SHA-256 `e1a09142b500da0d9b255b6c37916fb490be74ab2426c74414dffe11adf39f21`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/498a8b7e7583--i (3).pdf#page=2>): “4     Residue Suppression and Functional Equation Sym-”. Page-text SHA-256 `d4918a427957a5f13637da97018dd8484476128ae3af09279b685a9826d9b150`.

Further complete pages read: 1, 2. Pages beyond previously recorded citation pages: none; reread of already recorded material. Complete extracted text of this exact PDF version read/reread, including the final appendix/reference pages. This is source inspection, not full mathematical correctness, bibliographic verification or a kernel audit. Text-identical pages may be read once across distinct assets; identities remain separate.

Broadened search terms: `G2 F4 E8 representation`, `Cartan matrix root pairing`, `Geck representation`, `automorphic lift local factors`.

Lean candidates inspected:

- **rejected-candidate**: [`RootPairing.Base.cartanMatrixIn`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/LinearAlgebra/RootSystem/CartanMatrix.lean#L54-L56), `Mathlib/LinearAlgebra/RootSystem/CartanMatrix.lean:54–56`. From a supplied based root pairing valued in S, form the matrix whose entries are that pairing. This is root-data construction, not a faithful exceptional-group representation, an automorphic lift or equality of L-functions. Rejected candidate for the manuscript’s preservation claim.

Missing bridges:

- Construct the actual representation homomorphisms with the required base fields and exact preservation laws.
- A faithful linear representation does not identify automorphic L-functions or preserve their zeros by itself. Supply the local parameters, global analytic comparison and boundary regularization theorem.
- Construct the group representations and the separate analytic/local-global L-function comparison.
- Construct the representation homomorphisms, genuine twists and local-factor identities; prove the separate global analytic comparison.
- Construct the homomorphism over its actual base field and separately prove local-factor and analytic global comparisons, including all dual/normalization data.
- Specify the group and base field, actual representation, local parameters, global transfer and analytic comparison. There is no further proof body in this exact two-page version.

<a id="67b33f06a6094d05-exceptional-embedding-transfer"></a>
### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations — `67b33f06a609`

`idea:unpublished-v3:67b33f06a6094d05:exceptional-embedding-transfer` — **unresolved**. Main claim unresolved.

Current blocker: **automorphic-transfer-missing**. [Exact construction/proof obligations](seven-idea-construction-plan.md#67b33f06a6094d05-exceptional-embedding-transfer); unresolved, NOT_RUN.

The outline proposes G2,F4,E8 representations in GL(7),GL(26),GL(248) and claims that embeddings preserve critical-line residue properties.

Both physical pages have now been reread. Upstream Cartan-matrix and root-system constructions describe algebraic root data; they do not construct the asserted G2/F4/E8 automorphic transfers or prove equality of completed L-functions. The dimensions 7/26/248 and reported tolerances do not fill that gap.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/67b33f06a609--i (2).pdf#page=1>): “Exceptional Group Embeddings”. Page-text SHA-256 `e1a09142b500da0d9b255b6c37916fb490be74ab2426c74414dffe11adf39f21`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/67b33f06a609--i (2).pdf#page=2>): “Residue Suppression and Functional Equation”. Page-text SHA-256 `d4918a427957a5f13637da97018dd8484476128ae3af09279b685a9826d9b150`.
- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/67b33f06a609--i (2).pdf#page=1>): “Exceptional Groups: Embeddings and”. Page-text SHA-256 `e1a09142b500da0d9b255b6c37916fb490be74ab2426c74414dffe11adf39f21`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/67b33f06a609--i (2).pdf#page=2>): “4     Residue Suppression and Functional Equation Sym-”. Page-text SHA-256 `d4918a427957a5f13637da97018dd8484476128ae3af09279b685a9826d9b150`.

Further complete pages read: 1, 2. Pages beyond previously recorded citation pages: none; reread of already recorded material. Complete extracted text of this exact PDF version read/reread, including the final appendix/reference pages. This is source inspection, not full mathematical correctness, bibliographic verification or a kernel audit. Text-identical pages may be read once across distinct assets; identities remain separate.

Broadened search terms: `G2 F4 E8 representation`, `Cartan matrix root pairing`, `Geck representation`, `automorphic lift local factors`.

Lean candidates inspected:

- **rejected-candidate**: [`RootPairing.Base.cartanMatrixIn`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/LinearAlgebra/RootSystem/CartanMatrix.lean#L54-L56), `Mathlib/LinearAlgebra/RootSystem/CartanMatrix.lean:54–56`. From a supplied based root pairing valued in S, form the matrix whose entries are that pairing. This is root-data construction, not a faithful exceptional-group representation, an automorphic lift or equality of L-functions. Rejected candidate for the manuscript’s preservation claim.

Missing bridges:

- Construct the actual representation homomorphisms with the required base fields and exact preservation laws.
- A faithful linear representation does not identify automorphic L-functions or preserve their zeros by itself. Supply the local parameters, global analytic comparison and boundary regularization theorem.
- Construct the group representations and the separate analytic/local-global L-function comparison.
- Construct the representation homomorphisms, genuine twists and local-factor identities; prove the separate global analytic comparison.
- Construct the homomorphism over its actual base field and separately prove local-factor and analytic global comparisons, including all dual/normalization data.
- Specify the group and base field, actual representation, local parameters, global transfer and analytic comparison. There is no further proof body in this exact two-page version.

<a id="159cb12b34d5a425-kl-positive-to-residue-gap"></a>
### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis — `159cb12b34d5`

`idea:unpublished-v3:159cb12b34d5a425:kl-positive-to-residue-gap` — **unresolved**. Main claim unresolved.

Current blocker: **inconsistent-recurrence**. [Exact construction/proof obligations](seven-idea-construction-plan.md#159cb12b34d5a425-kl-positive-to-residue-gap); unresolved, NOT_RUN.

KL polynomial positivity and nilpotent-stratum localization are asserted to imply analytic residue vanishing, with affine/quantum extensions and a G2 example.

All four physical pages, including the references, have been reread. The upstream HeckeCosetModule is a finite-support module on double cosets, not a KL basis or its recurrence/positivity theorem. The source’s truncated recursion, q² diagonal example and unnamed affine/quantum corrections still do not determine a compatible source theorem.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/159cb12b34d5--C (7).pdf#page=2>): “The positivity of Pu,v”. Page-text SHA-256 `f0dd8824015f3d5ec19eeb4f9c9f0a7b283f60e9aee9d54c7b16d45155a0a6f0`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/159cb12b34d5--C (7).pdf#page=3>): “recursive computations yielding”. Page-text SHA-256 `886f5bc6db5b64b1dd21ed0a5d9c802d1fb95e06c8ad022ebef9dc079c098103`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/159cb12b34d5--C (7).pdf#page=3>): “4     Affine and Quantum Extensions”. Page-text SHA-256 `886f5bc6db5b64b1dd21ed0a5d9c802d1fb95e06c8ad022ebef9dc079c098103`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/159cb12b34d5--C (7).pdf#page=2>): “• Localizing residues of L(s, π) to nilpotent cones in compactified moduli spaces.”. Page-text SHA-256 `f0dd8824015f3d5ec19eeb4f9c9f0a7b283f60e9aee9d54c7b16d45155a0a6f0`.
- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/159cb12b34d5--C (7).pdf#page=1>): “Kazhdan-Lusztig Polynomials and the Generalized”. Page-text SHA-256 `675a421462491f4f337326a9c9cf1e08719d49994bfb4e1407ec0034ecaeba18`.
- [p. 4](</Users/local/Desktop/MathematicsLibrary/NumberTheory/159cb12b34d5--C (7).pdf#page=4>): “[2] Roman Bezrukavnikov. Geometric approach to representation theory of reductive”. Page-text SHA-256 `4c68fae14625c76eb9fdc5e98dec3b41c6960c3d27c3b6400f7bc0b74c21b880`.

Further complete pages read: 1, 2, 3, 4. Pages beyond previously recorded citation pages: 1, 4. Complete extracted text of this exact PDF version read/reread, including the final appendix/reference pages. This is source inspection, not full mathematical correctness, bibliographic verification or a kernel audit. Text-identical pages may be read once across distinct assets; identities remain separate.

Broadened search terms: `Kazhdan Lusztig Coxeter recurrence`, `HeckeCosetModule`, `KL diagonal normalization`, `nilpotent realization`.

Lean candidates inspected:

- **rejected-candidate**: [`HeckeCosetModule`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/NumberTheory/HeckeRing/Defs.lean#L183-L184), `Mathlib/NumberTheory/HeckeRing/Defs.lean:183–184`. The type of finitely supported coefficient functions on Hecke double cosets, with the supplied zero structure. This definition is not a Coxeter KL basis, recurrence, positivity theorem or geometric/analytic residue realization. Rejected candidate only.

Missing bridges:

- Verify the polynomial recurrence, diagonal normalization and G2 example against the defining Hecke relations; the printed recursion and q² diagonal example are not established by the text.
- Construct the localization/realization and prove a source-specific identity linking its signed or graded pairing to analytic residues/zeros. Positivity does not imply vanishing without an additional proved implication.
- Specify and justify the affine/quantum variants instead of adding unnamed correction terms.
- Define the Hecke/KL recurrence and realization; prove an actual signed analytic comparison before any vanishing conclusion.
- Supply a correct KL specification and its geometric realization, then prove a source-specific residue/zero comparison; positivity alone does not discharge it.
- Repair and verify the recurrence and diagonal normalization, construct the actual intersection-cohomology realization, and prove positivity-to-vanishing for the specified analytic consumer.
- Construct the intended Coxeter Hecke algebra and correct KL normalization/recurrence; identify a geometric realization and prove the separate signed residue-to-zero comparison. Naming double-coset modules supplies none of these bridges.

<a id="553f237f431fc299-kl-positive-to-residue-gap"></a>
### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis — `553f237f431f`

`idea:unpublished-v3:553f237f431fc299:kl-positive-to-residue-gap` — **unresolved**. Main claim unresolved.

Current blocker: **inconsistent-recurrence**. [Exact construction/proof obligations](seven-idea-construction-plan.md#553f237f431fc299-kl-positive-to-residue-gap); unresolved, NOT_RUN.

KL polynomial positivity and nilpotent-stratum localization are asserted to imply analytic residue vanishing, with affine/quantum extensions and a G2 example.

All four physical pages, including the references, have been reread. The upstream HeckeCosetModule is a finite-support module on double cosets, not a KL basis or its recurrence/positivity theorem. The source’s truncated recursion, q² diagonal example and unnamed affine/quantum corrections still do not determine a compatible source theorem.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/553f237f431f--C (9).pdf#page=2>): “The positivity of Pu,v”. Page-text SHA-256 `f0dd8824015f3d5ec19eeb4f9c9f0a7b283f60e9aee9d54c7b16d45155a0a6f0`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/553f237f431f--C (9).pdf#page=3>): “recursive computations yielding”. Page-text SHA-256 `886f5bc6db5b64b1dd21ed0a5d9c802d1fb95e06c8ad022ebef9dc079c098103`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/553f237f431f--C (9).pdf#page=3>): “4     Affine and Quantum Extensions”. Page-text SHA-256 `886f5bc6db5b64b1dd21ed0a5d9c802d1fb95e06c8ad022ebef9dc079c098103`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/553f237f431f--C (9).pdf#page=2>): “• Localizing residues of L(s, π) to nilpotent cones in compactified moduli spaces.”. Page-text SHA-256 `f0dd8824015f3d5ec19eeb4f9c9f0a7b283f60e9aee9d54c7b16d45155a0a6f0`.
- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/553f237f431f--C (9).pdf#page=1>): “Kazhdan-Lusztig Polynomials and the Generalized”. Page-text SHA-256 `675a421462491f4f337326a9c9cf1e08719d49994bfb4e1407ec0034ecaeba18`.
- [p. 4](</Users/local/Desktop/MathematicsLibrary/NumberTheory/553f237f431f--C (9).pdf#page=4>): “[2] Roman Bezrukavnikov. Geometric approach to representation theory of reductive”. Page-text SHA-256 `4c68fae14625c76eb9fdc5e98dec3b41c6960c3d27c3b6400f7bc0b74c21b880`.

Further complete pages read: 1, 2, 3, 4. Pages beyond previously recorded citation pages: 1, 4. Complete extracted text of this exact PDF version read/reread, including the final appendix/reference pages. This is source inspection, not full mathematical correctness, bibliographic verification or a kernel audit. Text-identical pages may be read once across distinct assets; identities remain separate.

Broadened search terms: `Kazhdan Lusztig Coxeter recurrence`, `HeckeCosetModule`, `KL diagonal normalization`, `nilpotent realization`.

Lean candidates inspected:

- **rejected-candidate**: [`HeckeCosetModule`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/NumberTheory/HeckeRing/Defs.lean#L183-L184), `Mathlib/NumberTheory/HeckeRing/Defs.lean:183–184`. The type of finitely supported coefficient functions on Hecke double cosets, with the supplied zero structure. This definition is not a Coxeter KL basis, recurrence, positivity theorem or geometric/analytic residue realization. Rejected candidate only.

Missing bridges:

- Verify the polynomial recurrence, diagonal normalization and G2 example against the defining Hecke relations; the printed recursion and q² diagonal example are not established by the text.
- Construct the localization/realization and prove a source-specific identity linking its signed or graded pairing to analytic residues/zeros. Positivity does not imply vanishing without an additional proved implication.
- Specify and justify the affine/quantum variants instead of adding unnamed correction terms.
- Define the Hecke/KL recurrence and realization; prove an actual signed analytic comparison before any vanishing conclusion.
- Supply a correct KL specification and its geometric realization, then prove a source-specific residue/zero comparison; positivity alone does not discharge it.
- Repair and verify the recurrence and diagonal normalization, construct the actual intersection-cohomology realization, and prove positivity-to-vanishing for the specified analytic consumer.
- Construct the intended Coxeter Hecke algebra and correct KL normalization/recurrence; identify a geometric realization and prove the separate signed residue-to-zero comparison. Naming double-coset modules supplies none of these bridges.

<a id="bd284739968eab78-exceptional-embedding-not-automorphic-transfer"></a>
### Residue Suppression via Embeddings and Geometric Langlands Localization — `bd284739968e`

`idea:unpublished-v3:bd284739968eab78:exceptional-embedding-not-automorphic-transfer` — **conditional-fragment**. Main claim unresolved.

Exceptional-group linear embeddings are paired with nilpotent localization and finite prime residue tables to claim all-zero suppression.

The entire eleven-page version has now been read. Its explicit finite sum has a precise numerical-analysis fragment: norm_sum_le bounds the norm of the sum of same-index weighted coefficient errors by the sum of their norms. It requires actual termwise enclosures and matching weights; it does not identify supplied arrays with automorphic eigenvalues. A separate exact-decimal consistency check of the printed Python example gives sums 150001/50000 and 3, hence difference 1/50000 before division by sqrt(p). At p=2 the ideal exact-decimal model differs by 1/(50000*sqrt(2))>1/100000, exceeding 10⁻8. The tables near 1 and several labelled differences therefore require normalization/error reconciliation. This is not a certified floating-point replay or a new compiled Lean specialization.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/bd284739968e--D (2).pdf#page=3>): “Theorem: Positivity Constraints for F4 and E8”. Page-text SHA-256 `99610e9919ad114cfb222667bd41771aa3b3895f779491bb758ba364ae52ef98`.
- [p. 5](</Users/local/Desktop/MathematicsLibrary/NumberTheory/bd284739968e--D (2).pdf#page=5>): “Extensions to Symmetric and Exterior Powers”. Page-text SHA-256 `029252e0e8c3cc44824ae20e6a0db4a1fa7016fb2489646e969b19de12e742b7`.
- [p. 10](</Users/local/Desktop/MathematicsLibrary/NumberTheory/bd284739968e--D (2).pdf#page=10>): “def residue_computation(prime_list, eigenvalues):”. Page-text SHA-256 `3943ccf311e2f855e0a595f09cbb263bc494c3c4e52d6d41d33c09b948f549c1`.
- [p. 8](</Users/local/Desktop/MathematicsLibrary/NumberTheory/bd284739968e--D (2).pdf#page=8>): “Prime p     Res(p)G2   Res(p)GL(7) Difference”. Page-text SHA-256 `eecf6273c7d8f380e42dbc525d90401a0d44133ed299aa89c5abdf5186ab877b`.
- [p. 4](</Users/local/Desktop/MathematicsLibrary/NumberTheory/bd284739968e--D (2).pdf#page=4>): “Proof. 1. **Compactification of Moduli Space:** Decompose the moduli space into boundary”. Page-text SHA-256 `ed0167e5d58cc5eab63bbcd26b1a38e6f98679d01463917efa66d981d4f67943`.
- [p. 5](</Users/local/Desktop/MathematicsLibrary/NumberTheory/bd284739968e--D (2).pdf#page=5>): “Prime p      Res(p)F4  Res(p)GL(26)      Difference”. Page-text SHA-256 `029252e0e8c3cc44824ae20e6a0db4a1fa7016fb2489646e969b19de12e742b7`.
- [p. 9](</Users/local/Desktop/MathematicsLibrary/NumberTheory/bd284739968e--D (2).pdf#page=9>): “A     Numerical Validation Methodologies”. Page-text SHA-256 `77a2f260c0736e8e8c98a159ecdbba5cd91659396819fc909c59b7dd45765a5d`.
- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/bd284739968e--D (2).pdf#page=1>): “Residue Suppression via Embeddings and Geometric”. Page-text SHA-256 `52e62cc4689596e7e883812a8efcb4c49d38a5bd1db9fb536ebd7a8d1781653c`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/bd284739968e--D (2).pdf#page=2>): “2.2     Exceptional Group Embeddings”. Page-text SHA-256 `68340dd7ce9030a16224f8e9891f949936876c3765e541aad2322dab0995cd6a`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/bd284739968e--D (2).pdf#page=3>): “3.2     Residue Suppression through Compactification”. Page-text SHA-256 `99610e9919ad114cfb222667bd41771aa3b3895f779491bb758ba364ae52ef98`.
- [p. 6](</Users/local/Desktop/MathematicsLibrary/NumberTheory/bd284739968e--D (2).pdf#page=6>): “space ME8 aligns boundary strata contributions with the critical line.”. Page-text SHA-256 `bf8a9b648c84b0895c7d4f619ed5280c68330459cc7c05c3054dd188e8a94aea`.
- [p. 7](</Users/local/Desktop/MathematicsLibrary/NumberTheory/bd284739968e--D (2).pdf#page=7>): “Prime p       Res(p)E8  Res(p)GL(248)     Difference”. Page-text SHA-256 `40dec6f4163b795b89f9cf94047c95412cc55dee53b439c59498373955fbc9b2`.
- [p. 11](</Users/local/Desktop/MathematicsLibrary/NumberTheory/bd284739968e--D (2).pdf#page=11>): “Prime p        Res(p)F4 Res(p)GL(26)         Difference”. Page-text SHA-256 `553dad95470fefe2fdb0f5457d50fe016b8336852141d8f6cfd06cf02bf79094`.

Further complete pages read: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11. Pages beyond previously recorded citation pages: 1, 2, 6, 7, 11. Complete extracted text of this exact PDF version read/reread, including the final appendix/reference pages. This is source inspection, not full mathematical correctness, bibliographic verification or a kernel audit. Text-identical pages may be read once across distinct assets; identities remain separate.

Broadened search terms: `finite weighted eigenvalue sum`, `norm_sum_le`, `per-prime error budget`, `exceptional residue validation`.

Lean candidates inspected:

- **conditional-fragment**: [`norm_sum_le`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Analysis/Normed/Group/Basic.lean#L829-L831), `Mathlib/Analysis/Normed/Group/Basic.lean:829–831`. For a finite set and a function to a seminormed additive commutative group, the norm of its sum is at most the sum of term norms. For the paper’s weighted complex error, match the same indices and weights and prove each norm bound. It supplies no coefficients, numeric precision certificate, omitted-prime tail or automorphic realization.

Missing bridges:

- A faithful linear representation G→GL(n) alone does not construct a global automorphic lift or prove equality of L-functions.
- Construct compactification/localization and prove the actual positivity-to-residue-zero and residue-to-zero-location comparisons.
- Finite prime tables with 10⁻⁸/10⁻⁹ differences are approximate comparisons, not exact factor identities or all-zero coverage; symmetric/exterior/twisted claims need separate sources.
- Construct exact local parameters and the automorphic transfer; certify numerical errors only after fixing the actual mathematical source.
- Construct the representation homomorphisms, genuine twists and local-factor identities; prove the separate global analytic comparison.
- Construct the actual source, representation/twist and local factors before comparing the data; certify the enclosures and omitted tail.
- Explain why the test coordinates may be restricted to the critical line without assuming the desired conclusion.
- Instantiate the per-prime finite index set, exact weights and certified coefficient errors; keep per-term, per-prime and summed-prime budgets separate.
- Reconcile the printed arrays, code outputs and tables. For example, p.5 Table 1 lists 1.00000002 versus 1 with difference 10⁻8, although the printed decimal difference is 2*10⁻8.
- Construct the actual automorphic transfer/source identity and a genuine twist; critical-line test coordinates and finite error budgets do not prove global zero exclusion.

## Geometry and topology — 1 versions

<a id="796ba01d4a02a5ba-boundary-positivity-outline"></a>
### Boundary Regularization: A Framework for High-Rank Elimination — `796ba01d4a02`

`idea:unpublished-v3:796ba01d4a02a5ba:boundary-positivity-outline` — **unresolved**. Main claim unresolved.

Current blocker: **geometric-realization-missing**. [Exact construction/proof obligations](seven-idea-construction-plan.md#796ba01d4a02a5ba-boundary-positivity-outline); unresolved, NOT_RUN.

The two-page outline proposes boundary localization, Euler-form positivity and exceptional-group regularization, with a reported 10^−8 numerical error.

The complete two-page outline gives no boundary complex or analytic comparison. A maintained graph theorem proves that zero of a particular nonnegative sum-of-squared-coboundaries is equivalent to a zero coboundary. It assumes energy zero; positivity of an unspecified Euler pairing does not establish that hypothesis, and the graph model is not the paper’s intersection cohomology.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/796ba01d4a02--g (2).pdf#page=1>): “Residue Suppression via Localization”. Page-text SHA-256 `4d8c7b048753cc2dfb6f88275ea478c9e047b33124d3ab9cae9143d6bdd843ff`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/796ba01d4a02--g (2).pdf#page=2>): “Positivity Constraints”. Page-text SHA-256 `ff18a835d335c007bb73a0f80dacab2cb5911bd573e04fa067fad2bf14dcddb2`.
- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/796ba01d4a02--g (2).pdf#page=1>): “Boundary Regularization: A Framework for”. Page-text SHA-256 `4d8c7b048753cc2dfb6f88275ea478c9e047b33124d3ab9cae9143d6bdd843ff`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/796ba01d4a02--g (2).pdf#page=2>): “5     Positivity Constraints”. Page-text SHA-256 `ff18a835d335c007bb73a0f80dacab2cb5911bd573e04fa067fad2bf14dcddb2`.

Further complete pages read: 1, 2. Pages beyond previously recorded citation pages: none; reread of already recorded material. Complete extracted text of this exact PDF version read/reread, including the final appendix/reference pages. This is source inspection, not full mathematical correctness, bibliographic verification or a kernel audit. Text-identical pages may be read once across distinct assets; identities remain separate.

Broadened search terms: `boundary Euler pairing`, `positive energy zero coboundary`, `intersection homology`, `localization vanishing`.

Lean candidates inspected:

- **rejected-candidate**: [`GRWTSK.Geometry.Hodge.FiniteGraphCellular.OrientedIncidence.energy_eq_zero_iff_coboundary_eq_zero`](https://github.com/grwtsk/math/blob/b9c830170615ea5fc92ea988252891a1808ea074/GRWTSK/Geometry/Hodge/FiniteGraphCellular.lean#L63-L82), `GRWTSK/Geometry/Hodge/FiniteGraphCellular.lean:63–82`. For a supplied oriented graph with finite edge type and real vertex function, zero of the sum of squared coboundary values is equivalent to the coboundary being zero. It assumes zero energy, not merely nonnegative energy. No intersection-cohomology or arithmetic comparison is constructed. Source-inspected, not independently kernel-audited.

Missing bridges:

- Define the boundary complex, localization functor and actual signed residue/zero consumer, then prove the source comparison.
- Euler pairings are not universally positive. State the precise sheaves, degrees and positivity theorem, and derive vanishing separately.
- A reported tolerance is not a validated enclosure with full tails or an all-rank result.
- Construct a geometric positive form on the exact class of objects; Hermitian symmetry alone does not imply positivity or vanishing.
- Construct the exact pairing and localization/analytic realization and prove its sign and vanishing implications on the intended objects.
- Define the geometric objects, admissible cone and actual signed analytic consumer; prove a source-specific vanishing/exclusion bridge with exact hypotheses.
- Construct the boundary object, pairing and analytic realization; derive the required vanishing rather than replacing the pairing by an unrelated finite positive energy. No additional substantive section exists in this asset.

## Logic and computation — 1 versions

<a id="d7819c0364c77a97-status-assertions-not-proof-evidence"></a>
### Updated Verification of Recursive Refinement Framework — `d7819c0364c7`

`idea:unpublished-v3:d7819c0364c77a97:status-assertions-not-proof-evidence` — **unresolved**. Main claim unresolved.

Current blocker: **unsupported-status-claim**. [Exact construction/proof obligations](seven-idea-construction-plan.md#d7819c0364c77a97-status-assertions-not-proof-evidence); unresolved, NOT_RUN.

The status note declares Axioms 1/5, mixed-source consistency and zero independence resolved while listing remaining cross-term and higher-dimensional bounds.

The complete three-page status note supplies no quantitative source inequality beyond declaring named results resolved. A maintained theorem equates a nonnegative upper-sublinear budget with f=o(n); it proves no arithmetic witness, rate-zero boundedness or statistical independence. It therefore remains a rejected substitute for the source proof. The note also explicitly leaves mixed-form cross-term estimates open.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d7819c0364c7--Updated_Verification_of_Recursive_Refinement_Framework (2).pdf#page=2>): “Statistical Independence of Zeros”. Page-text SHA-256 `b949895416d938edf5079487f3f65be80e0f8ca1acb84eceda5b3d93d367c973`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d7819c0364c7--Updated_Verification_of_Recursive_Refinement_Framework (2).pdf#page=3>): “Error Bounds for Mixed Automorphic Forms”. Page-text SHA-256 `c387efc0635800128e43a12a348f65f43c6ac5e364f4aa0df95d3701d94a85d4`.
- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d7819c0364c7--Updated_Verification_of_Recursive_Refinement_Framework (2).pdf#page=1>): “Updated Verification of Recursive Refinement”. Page-text SHA-256 `7d7c35049871f94b14430d67322c1c07daaf6264263287c8eb07eee6f2449eb5`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d7819c0364c7--Updated_Verification_of_Recursive_Refinement_Framework (2).pdf#page=3>): “Critical Review of Remaining Open Problems”. Page-text SHA-256 `c387efc0635800128e43a12a348f65f43c6ac5e364f4aa0df95d3701d94a85d4`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d7819c0364c7--Updated_Verification_of_Recursive_Refinement_Framework (2).pdf#page=2>): “Fourier analysis. By demonstrating that cumulative errors across distinct”. Page-text SHA-256 `b949895416d938edf5079487f3f65be80e0f8ca1acb84eceda5b3d93d367c973`.

Further complete pages read: 1, 2, 3. Pages beyond previously recorded citation pages: none; reread of already recorded material. Complete extracted text of this exact PDF version read/reread, including the final appendix/reference pages. This is source inspection, not full mathematical correctness, bibliographic verification or a kernel audit. Text-identical pages may be read once across distinct assets; identities remain separate.

Broadened search terms: `upperSublinear isLittleO`, `bounded versus sublinear`, `cross-domain error cancellation`, `zero correlation independence`.

Lean candidates inspected:

- **rejected-candidate**: [`GRWTSK.Analysis.SublinearDyadic.upperSublinear_iff_isLittleO`](https://github.com/grwtsk/math/blob/b9c830170615ea5fc92ea988252891a1808ea074/GRWTSK/Analysis/Asymptotics/SublinearDyadic.lean#L29-L45), `GRWTSK/Analysis/Asymptotics/SublinearDyadic.lean:29–45`. For a nonnegative real sequence on ℕ, its declared epsilon upper-sublinear predicate is equivalent to f=o(n). The file requires a successful pinned replay and supplies no unresolved all-depth arithmetic bound. It proves neither boundedness, a specific arithmetic estimate nor statistical independence. Rejected substitute for the status note’s suppliers.

Missing bridges:

- Verify the cited Axiom 1 uniform bound versus its growing estimates and Axiom 5 rate versus normalized convergence.
- Zero correlation is weaker than independence; retain RH/GRH premises in the cited independence argument.
- The acknowledged mixed cross-term bounds remain missing. Status labels and future numerical validation do not discharge them.
- Resolve the underlying references and preserve their exact rate, normalization and RH/GRH premises.
- Resolve the actual referenced inequalities and retain constants, rates, normalization and all conditional premises.
- Recover exact source inequalities and conditional hypotheses from the named January documents; sublinear growth does not mean boundedness, and decorrelation does not establish independence.
- Locate and verify the named January source documents and their exact rates, constants, normalizations and conditional premises; prove the actual mixed-source bounds and independence statement. No further body remains here.

## Number theory — 1 versions

<a id="0b423568798d1ce3-prime-research-roadmap"></a>
### A Holistic Strategy for Deriving Properties of Prime Numbers — `0b423568798d`

`idea:unpublished-v3:0b423568798d1ce3:prime-research-roadmap` — **unresolved**. Main claim unresolved.

Current blocker: **source-specification-needed**. [Exact construction/proof obligations](seven-idea-construction-plan.md#0b423568798d1ce3-prime-research-roadmap); unresolved, NOT_RUN.

The document proposes a research program joining zeta derivatives, prime-generation algorithms, motives and geometric visualizations; it states objectives rather than proving a prime-distribution theorem.

A complete three-page reread confirms that this is a list of objectives and numbered resources, not a defined algorithm or a quantified prime theorem. The broadened search provides prime-counting and zeta ingredients, but selecting one would invent a claim not specified by this source. No concrete target is assigned.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0b423568798d--A_Holistic_Strategy_for_Deriving_Properties_of_Prime_Numbers (3).pdf#page=1>): “Analytic Number Theory”. Page-text SHA-256 `39a9fcea1d40a7413342a18358fee7b26bc3c11a1a7e3eda322c4818b889cfe1`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0b423568798d--A_Holistic_Strategy_for_Deriving_Properties_of_Prime_Numbers (3).pdf#page=3>): “Computational and Experimental Verification”. Page-text SHA-256 `22960f02b1cc371c3fad11641b450135c2f1b1060cbc7ebe69a36c069e42a617`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0b423568798d--A_Holistic_Strategy_for_Deriving_Properties_of_Prime_Numbers (3).pdf#page=2>): “3     Algebraic Number Theory and Primes in Fields”. Page-text SHA-256 `506eb036515e8f32eed5d026e1e8d76a66eba7e8c16a86ff40ccfebfd6517ba4`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0b423568798d--A_Holistic_Strategy_for_Deriving_Properties_of_Prime_Numbers (3).pdf#page=3>): “5     Geometric Representations and the Langlands”. Page-text SHA-256 `22960f02b1cc371c3fad11641b450135c2f1b1060cbc7ebe69a36c069e42a617`.
- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0b423568798d--A_Holistic_Strategy_for_Deriving_Properties_of_Prime_Numbers (3).pdf#page=1>): “A Holistic Strategy for Deriving Properties of”. Page-text SHA-256 `39a9fcea1d40a7413342a18358fee7b26bc3c11a1a7e3eda322c4818b889cfe1`.

Further complete pages read: 1, 2, 3. Pages beyond previously recorded citation pages: none; reread of already recorded material. Complete extracted text of this exact PDF version read/reread, including the final appendix/reference pages. This is source inspection, not full mathematical correctness, bibliographic verification or a kernel audit. Text-identical pages may be read once across distinct assets; identities remain separate.

Broadened search terms: `prime algorithm correctness`, `zeta derivative recursion`, `Chebyshev`, `geometric prime data`.

Lean candidates inspected:

- No concrete declaration established. This is a limited negative search finding, not proof of absence from Lean.

Missing bridges:

- Replace each objective by a precise source identity or estimate with domains, constants and quantifiers before selecting a Lean theorem.
- The source-number citations are not an exact construction of a prime detector, algorithm correctness theorem or motive comparison.
- Choose a particular algorithm or source identity with an exact correctness or error claim before assigning a target.
- Select an exact algorithm, source identity or quantitative theorem and resolve its numbered resources.
- Replace an objective by an exact source identity, algorithm/correctness specification or quantitative theorem; resolve the Source 23/26/27/28/29 citations.
- Resolve Source 23/26/27/28/29 to actual sources, select a precise objective and state its objects, hypotheses, output and correctness/error theorem. No unreviewed body remains in this asset.

## Probability and combinatorics — 2 versions

<a id="0f3deff790c3e598-entropy-threshold-zero-free-gap"></a>
### Residue Clustering, Modular Symmetry, and the Generalized Riemann Hypothesis: Techniques and Next Steps — `0f3deff790c3`

`idea:unpublished-v3:0f3deff790c3e598:entropy-threshold-zero-free-gap` — **conditional-fragment**. Main claim unresolved.

Shannon entropy is corrected by weighted residue projections; empirical conductor/rank scaling and H<0.1 are used to predict zero-free modular classes.

The displayed Shannon summand has an exact upstream match: Real.negMulLog is −x*log(x), and negMulLog_nonneg proves its nonnegativity for 0≤x≤1. With a finite probability family this supplies the termwise ingredient for H≥0; the finite-sum adapter is not newly compiled here. It does not validate H_corrected=H_initial−Σw<r,φ>, the empirical threshold 0.1, or the proposed zero-free implication. Both pages are exhausted; the paper explicitly lists the zero-free upgrade as a next step.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0f3deff790c3--Entropy (1).pdf#page=1>): “Entropy Refinement”. Page-text SHA-256 `b22db21a84ab09b40aff301714efb0283fe60f0b94ecdde9d418009085ae1a48`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0f3deff790c3--Entropy (1).pdf#page=2>): “Zero-Free Regions”. Page-text SHA-256 `379fc45e173e2ffa6fc66c426a4831b30fd59ceb5976c8106cfc21b07b306756`.
- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0f3deff790c3--Entropy (1).pdf#page=1>): “Residue Clustering, Modular Symmetry, and the Generalized”. Page-text SHA-256 `b22db21a84ab09b40aff301714efb0283fe60f0b94ecdde9d418009085ae1a48`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0f3deff790c3--Entropy (1).pdf#page=2>): “4.2    Connecting to Random Matrix Theory”. Page-text SHA-256 `379fc45e173e2ffa6fc66c426a4831b30fd59ceb5976c8106cfc21b07b306756`.

Further complete pages read: 1, 2. Pages beyond previously recorded citation pages: none; reread of already recorded material. Complete extracted text of this exact PDF version read/reread, including the final appendix/reference pages. This is source inspection, not full mathematical correctness, bibliographic verification or a kernel audit. Text-identical pages may be read once across distinct assets; identities remain separate.

Broadened search terms: `negMulLog definition`, `finite Shannon entropy nonnegative`, `probability normalization`, `zero free threshold`.

Lean candidates inspected:

- **conditional-fragment**: [`Real.negMulLog`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Analysis/SpecialFunctions/Log/NegMulLog.lean#L164-L164), `Mathlib/Analysis/SpecialFunctions/Log/NegMulLog.lean:164–164`. Definition of the real function x↦−x*log(x), matching the printed Shannon summand. It does not select a source-derived probability law, normalize weights or define the paper’s corrected entropy.
- **conditional-fragment**: [`Real.negMulLog_nonneg`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Analysis/SpecialFunctions/Log/NegMulLog.lean#L174-L175), `Mathlib/Analysis/SpecialFunctions/Log/NegMulLog.lean:174–175`. Given 0≤x≤1, −x*log(x)≥0. Finite Shannon nonnegativity requires instantiating each probability and summing the bounds; infinite entropy requires summability. No entropy threshold implies arithmetic zero exclusion here.

Missing bridges:

- Define the correction on probabilities and prove it preserves normalization/nonnegativity; subtracting projections from an entropy value need not yield a Shannon entropy.
- State constants and parameter ranges for the two different scaling laws, and provide reproducible data/certified errors.
- Prove threshold implies zero exclusion with exact source domain and all-height/rank coverage. Finite GL11–GL100 checks do not construct an infinite-dimensional limit.
- Prove normalization, nonnegativity, convergence and an all-height source-specific exclusion implication.
- Define the probability law and admissible correction and prove a uniform source-specific threshold implication.
- Define the probability distribution derived from the actual L-function, prove the correction preserves it, and prove the uniform implication to zero exclusion with full domain/tail coverage.
- Specify the actual finite/countable probability space derived from the arithmetic source; prove 0≤P≤1 and normalization, and handle entropy summability if infinite.
- Prove the correction is the entropy of a valid updated distribution and supply an exact uniform H<0.1⇒zero-exclusion theorem. Neither follows from termwise nonnegativity.

<a id="579328ace007be79-entropy-threshold-zero-free-gap"></a>
### Residue Clustering, Modular Symmetry, and the Generalized Riemann Hypothesis: Techniques and Next Steps — `579328ace007`

`idea:unpublished-v3:579328ace007be79:entropy-threshold-zero-free-gap` — **conditional-fragment**. Main claim unresolved.

Shannon entropy is corrected by weighted residue projections; empirical conductor/rank scaling and H<0.1 are used to predict zero-free modular classes.

The displayed Shannon summand has an exact upstream match: Real.negMulLog is −x*log(x), and negMulLog_nonneg proves its nonnegativity for 0≤x≤1. With a finite probability family this supplies the termwise ingredient for H≥0; the finite-sum adapter is not newly compiled here. It does not validate H_corrected=H_initial−Σw<r,φ>, the empirical threshold 0.1, or the proposed zero-free implication. Both pages are exhausted; the paper explicitly lists the zero-free upgrade as a next step.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/579328ace007--Entropy (2).pdf#page=1>): “Entropy Refinement”. Page-text SHA-256 `b22db21a84ab09b40aff301714efb0283fe60f0b94ecdde9d418009085ae1a48`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/579328ace007--Entropy (2).pdf#page=2>): “Zero-Free Regions”. Page-text SHA-256 `379fc45e173e2ffa6fc66c426a4831b30fd59ceb5976c8106cfc21b07b306756`.
- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/579328ace007--Entropy (2).pdf#page=1>): “Residue Clustering, Modular Symmetry, and the Generalized”. Page-text SHA-256 `b22db21a84ab09b40aff301714efb0283fe60f0b94ecdde9d418009085ae1a48`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/579328ace007--Entropy (2).pdf#page=2>): “4.2    Connecting to Random Matrix Theory”. Page-text SHA-256 `379fc45e173e2ffa6fc66c426a4831b30fd59ceb5976c8106cfc21b07b306756`.

Further complete pages read: 1, 2. Pages beyond previously recorded citation pages: none; reread of already recorded material. Complete extracted text of this exact PDF version read/reread, including the final appendix/reference pages. This is source inspection, not full mathematical correctness, bibliographic verification or a kernel audit. Text-identical pages may be read once across distinct assets; identities remain separate.

Broadened search terms: `negMulLog definition`, `finite Shannon entropy nonnegative`, `probability normalization`, `zero free threshold`.

Lean candidates inspected:

- **conditional-fragment**: [`Real.negMulLog`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Analysis/SpecialFunctions/Log/NegMulLog.lean#L164-L164), `Mathlib/Analysis/SpecialFunctions/Log/NegMulLog.lean:164–164`. Definition of the real function x↦−x*log(x), matching the printed Shannon summand. It does not select a source-derived probability law, normalize weights or define the paper’s corrected entropy.
- **conditional-fragment**: [`Real.negMulLog_nonneg`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Analysis/SpecialFunctions/Log/NegMulLog.lean#L174-L175), `Mathlib/Analysis/SpecialFunctions/Log/NegMulLog.lean:174–175`. Given 0≤x≤1, −x*log(x)≥0. Finite Shannon nonnegativity requires instantiating each probability and summing the bounds; infinite entropy requires summability. No entropy threshold implies arithmetic zero exclusion here.

Missing bridges:

- Define the correction on probabilities and prove it preserves normalization/nonnegativity; subtracting projections from an entropy value need not yield a Shannon entropy.
- State constants and parameter ranges for the two different scaling laws, and provide reproducible data/certified errors.
- Prove threshold implies zero exclusion with exact source domain and all-height/rank coverage. Finite GL11–GL100 checks do not construct an infinite-dimensional limit.
- Prove normalization, nonnegativity, convergence and an all-height source-specific exclusion implication.
- Define the probability law and admissible correction and prove a uniform source-specific threshold implication.
- Define the probability distribution derived from the actual L-function, prove the correction preserves it, and prove the uniform implication to zero exclusion with full domain/tail coverage.
- Specify the actual finite/countable probability space derived from the arithmetic source; prove 0≤P≤1 and normalization, and handle entropy summability if infinite.
- Prove the correction is the entropy of a valid updated distribution and supply an exact uniform H<0.1⇒zero-exclusion theorem. Neither follows from termwise nonnegativity.

## Method and limitations

The code search covered maintained `GRWTSK/**` excluding `GRWTSK/SourceCorpus/**`, and the pinned upstream `Mathlib/**` tree. It included declaration names, statement text and subject terms, then inspection of candidate statements, ambient hypotheses and proof source. Similar names, supplied records, unrelated nilpotent algebra, recursion costs and illustrative figures were not counted as matches. Full search outputs and new machine-access observations stay in the external library.

- No main manuscript claim is marked resolved. A conditional fragment is limited to the exact stated subclaim and domain.
- Conditional fragments are limited to an entropy summand/nonnegativity ingredient and a finite-sum error inequality. Paper-specific adapters were not newly compiled.
- All code citations are immutable source comparisons. No new Lean compilation or independent kernel audit is claimed.
- Complete extracted text of these ten exact PDFs was read or reread, including final appendix/reference pages. This does not verify all mathematical claims. Nine assets are short outlines/status notes; the eleven-page version includes a numerical appendix. Distinct versions retain their own identities.
- Original paths, bibliography, source/owner statements, access observations and human understanding dates are preserved. New machine-access observations stay private in the external library.
- Assistant interpretations remain proposals. Correspondence is not owner testimony, historical influence, priority or a proof of the larger conjecture.

## Exact code identities

- [`cartan-data`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/LinearAlgebra/RootSystem/CartanMatrix.lean#L54-L56): Git blob `e3e3fa9621ce20e0de908550690515426ec9ea38`; full-file SHA-256 `bed03816d861f016f5608b4b46240e45b91c0e1e48d72a5bae2e1831c154efc9`.
- [`entropy-definition`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Analysis/SpecialFunctions/Log/NegMulLog.lean#L164-L164): Git blob `913cb41fbbf83a931854dd8102b28af35663eb28`; full-file SHA-256 `e249365f3eff509bfd9774e8e5f380c7e0290d76847871daee3616fb15b6b643`.
- [`entropy-term-nonneg`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Analysis/SpecialFunctions/Log/NegMulLog.lean#L174-L175): Git blob `913cb41fbbf83a931854dd8102b28af35663eb28`; full-file SHA-256 `e249365f3eff509bfd9774e8e5f380c7e0290d76847871daee3616fb15b6b643`.
- [`finite-sum-norm`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Analysis/Normed/Group/Basic.lean#L829-L831): Git blob `0e3933a6fd8ffc6e7cf8860831cb2ad22eab459e`; full-file SHA-256 `85d307e042cb03073a2e9160c52adbfcef85c921d2f9b17584b13597d8a5c7bc`.
- [`graph-vanishing`](https://github.com/grwtsk/math/blob/b9c830170615ea5fc92ea988252891a1808ea074/GRWTSK/Geometry/Hodge/FiniteGraphCellular.lean#L63-L82): Git blob `8443dddddc00f3c8e5c79c110381c7fa2d58ad6e`; full-file SHA-256 `f0ebc8d90a8beac798eca6255c68461ffedb0353f3039290d4ed8a33a933f943`.
- [`hecke-coset-data`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/NumberTheory/HeckeRing/Defs.lean#L183-L184): Git blob `ffe480b78f33976a8bdcabd76f98918ae5e19f4b`; full-file SHA-256 `197b05be91531930d602e758e2de2d58325100f1856c8e4304ee220f49d983e2`.
- [`sublinear-scope`](https://github.com/grwtsk/math/blob/b9c830170615ea5fc92ea988252891a1808ea074/GRWTSK/Analysis/Asymptotics/SublinearDyadic.lean#L29-L45): Git blob `91db37fec2983da6de753be5f3e8e6cad1295d75`; full-file SHA-256 `691d520273705124e162a7531ced5f64d7fc820e392531af2d9c89b3c0f483e1`.
