# Seven unresolved ideas: constructions and proofs required

**All seven remain unresolved.** They form five mathematical task families, with 36 version-bound proof/construction obligations. These are assistant-proposed specifications, not newly formalized theorems or owner testimony. No main claim or bridge is marked proved.

Maintained baseline: `3f248406d576515c964a788add3f1423be959d67`. Pinned mathlib dependency: `db584cd6d46c92f209a44c0f1c829460d327499d`, checked against that baseline’s manifest. [Machine-readable obligations](seven-idea-construction-plan.json) · [Strict schema](seven-idea-construction-plan.schema.json) · [Prior ten-idea review](ten-idea-target-search.md)

Primary PDFs were already exhausted in the prior complete-text pass. This pass broadens the code search and identifies exact missing constructions. It also inspects eight separate title-matched versions of four named January dependencies; their binding to the status note remains unresolved.

## Algebra — 4 versions

<a id="498a8b7e7583e8ec-exceptional-embedding-transfer"></a>
### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations — `498a8b7e7583`

Idea: `idea:unpublished-v3:498a8b7e7583e8ec:exceptional-embedding-transfer`. Blocker: **automorphic-transfer-missing**. Outcome: **unresolved**. Paper-specific Lean verification: **NOT_RUN**.

A faithful group representation, a Langlands-dual representation and a global automorphic lift are different constructions. The source supplies no data identifying them.

#### Exact primary paper evidence

- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/498a8b7e7583--i (3).pdf#page=1>): “Exceptional Group Embeddings”. Page-text SHA-256 `e1a09142b500da0d9b255b6c37916fb490be74ab2426c74414dffe11adf39f21`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/498a8b7e7583--i (3).pdf#page=2>): “Residue Suppression and Functional Equation”. Page-text SHA-256 `d4918a427957a5f13637da97018dd8484476128ae3af09279b685a9826d9b150`.
- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/498a8b7e7583--i (3).pdf#page=1>): “Exceptional Groups: Embeddings and”. Page-text SHA-256 `e1a09142b500da0d9b255b6c37916fb490be74ab2426c74414dffe11adf39f21`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/498a8b7e7583--i (3).pdf#page=2>): “4     Residue Suppression and Functional Equation Sym-”. Page-text SHA-256 `d4918a427957a5f13637da97018dd8484476128ae3af09279b685a9826d9b150`.

#### Construction and proof obligations

##### E1 — construction (missing)

Fix the base field and exact G2/F4/E8 forms, their pinned/split data and a representation r with explicitly defined V. Prove the claimed dimensions 7/26/248, homomorphism laws and faithfulness. A Lie-algebra representation alone needs an additional group-level integration/descent proof.

**Depends on:** no earlier obligation. **Acceptance:** Actual linear maps and kernels are established, including characteristic/form restrictions, rather than inferring a representation from a dimension label.

Primary source: [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/498a8b7e7583--i (3).pdf#page=1>).

No concrete supplier established for this obligation.

##### E2 — construction (missing)

Specify the required representation of the L-group (or dual group in an explicitly unramified split setting), an automorphic representation π of G and a proposed GL(V) transfer Π. Prove existence/automorphy; an ordinary embedding G→GL(V) does not define Π.

**Depends on:** E1. **Acceptance:** The G versus dual/L-group distinction, places and admissibility/ramification hypotheses are explicit.

Primary source: [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/498a8b7e7583--i (3).pdf#page=1>).

No concrete supplier established for this obligation.

##### E3 — algebraic-proof (missing)

At each good place v, construct the actual local parameter t_v and an explicit equivalence/intertwiner identifying the GL(V) local operator A_v with r(t_v). Prove det(I−q_v^(−s)A_v)=det(I−q_v^(−s)r(t_v)) for all s on its declared domain.

**Depends on:** E2. **Acceptance:** A supplied two-sided inverse may justify determinant conjugacy, but the actual intertwiner and local parameter equality must be constructed. Faithfulness does not imply them.

Primary source: [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/498a8b7e7583--i (3).pdf#page=1>), [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/498a8b7e7583--i (3).pdf#page=2>).

Exact code components (not a supplied paper bridge):

- [`Matrix.det_conj_of_mul_eq_one`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/LinearAlgebra/Determinant.lean#L101-L104), `Mathlib/LinearAlgebra/Determinant.lean:101–104`. With actual two-sided inverse matrices M,M′ over the declared commutative coefficient ring, det(M*N*M′)=det N, including the indexed finite matrix hypotheses. It is a local linear-algebra component only; actual Satake/intertwining data, automorphic transfer and analytic Euler-product comparison are not supplied.

##### E4 — analytic-proof (missing)

Specify bad-place and Archimedean factors, conductors and dual/root-number data. Prove normal convergence of the Euler products on a common right half-plane and meromorphic continuation/equality on a named connected domain with the same normalization.

**Depends on:** E3. **Acceptance:** All local factors and continuation hypotheses are accounted for; equality at finitely many tested primes cannot replace the global identity.

Primary source: [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/498a8b7e7583--i (3).pdf#page=2>).

No concrete supplier established for this obligation.

##### E5 — analytic-proof (missing)

Derive the divisor/residue comparison for the same completed sources from E4, including every extra factor’s divisor. Any critical-line theorem for the target family remains a separate premise or proof.

**Depends on:** E4. **Acceptance:** An equality/zero-free multiplier with a proved divisor controls the original source; no all-zero alignment is inferred from the existence of a lift.

Primary source: [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/498a8b7e7583--i (3).pdf#page=2>).

Exact code components (not a supplied paper bridge):

- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.logDeriv_principal_part`](https://github.com/grwtsk/math/blob/3f248406d576515c964a788add3f1423be959d67/GRWTSK/Analysis/Complex/LogarithmicPrincipalPart.lean#L34-L51), `GRWTSK/Analysis/Complex/LogarithmicPrincipalPart.lean:34–51`. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. A supplied local factorization f=(s−a)^k*g, with integer k and analytic unit g, yields principal part k/(s−a) for Mathlib logDeriv f. It does not construct the arithmetic factorization, geometric realization or an off-line exclusion theorem.

#### Previously recorded missing bridges

- Construct the actual representation homomorphisms with the required base fields and exact preservation laws.
- A faithful linear representation does not identify automorphic L-functions or preserve their zeros by itself. Supply the local parameters, global analytic comparison and boundary regularization theorem.
- Construct the group representations and the separate analytic/local-global L-function comparison.
- Construct the representation homomorphisms, genuine twists and local-factor identities; prove the separate global analytic comparison.
- Construct the homomorphism over its actual base field and separately prove local-factor and analytic global comparisons, including all dual/normalization data.
- Specify the group and base field, actual representation, local parameters, global transfer and analytic comparison. There is no further proof body in this exact two-page version.

<a id="67b33f06a6094d05-exceptional-embedding-transfer"></a>
### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations — `67b33f06a609`

Idea: `idea:unpublished-v3:67b33f06a6094d05:exceptional-embedding-transfer`. Blocker: **automorphic-transfer-missing**. Outcome: **unresolved**. Paper-specific Lean verification: **NOT_RUN**.

A faithful group representation, a Langlands-dual representation and a global automorphic lift are different constructions. The source supplies no data identifying them.

#### Exact primary paper evidence

- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/67b33f06a609--i (2).pdf#page=1>): “Exceptional Group Embeddings”. Page-text SHA-256 `e1a09142b500da0d9b255b6c37916fb490be74ab2426c74414dffe11adf39f21`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/67b33f06a609--i (2).pdf#page=2>): “Residue Suppression and Functional Equation”. Page-text SHA-256 `d4918a427957a5f13637da97018dd8484476128ae3af09279b685a9826d9b150`.
- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/67b33f06a609--i (2).pdf#page=1>): “Exceptional Groups: Embeddings and”. Page-text SHA-256 `e1a09142b500da0d9b255b6c37916fb490be74ab2426c74414dffe11adf39f21`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/67b33f06a609--i (2).pdf#page=2>): “4     Residue Suppression and Functional Equation Sym-”. Page-text SHA-256 `d4918a427957a5f13637da97018dd8484476128ae3af09279b685a9826d9b150`.

#### Construction and proof obligations

##### E1 — construction (missing)

Fix the base field and exact G2/F4/E8 forms, their pinned/split data and a representation r with explicitly defined V. Prove the claimed dimensions 7/26/248, homomorphism laws and faithfulness. A Lie-algebra representation alone needs an additional group-level integration/descent proof.

**Depends on:** no earlier obligation. **Acceptance:** Actual linear maps and kernels are established, including characteristic/form restrictions, rather than inferring a representation from a dimension label.

Primary source: [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/67b33f06a609--i (2).pdf#page=1>).

No concrete supplier established for this obligation.

##### E2 — construction (missing)

Specify the required representation of the L-group (or dual group in an explicitly unramified split setting), an automorphic representation π of G and a proposed GL(V) transfer Π. Prove existence/automorphy; an ordinary embedding G→GL(V) does not define Π.

**Depends on:** E1. **Acceptance:** The G versus dual/L-group distinction, places and admissibility/ramification hypotheses are explicit.

Primary source: [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/67b33f06a609--i (2).pdf#page=1>).

No concrete supplier established for this obligation.

##### E3 — algebraic-proof (missing)

At each good place v, construct the actual local parameter t_v and an explicit equivalence/intertwiner identifying the GL(V) local operator A_v with r(t_v). Prove det(I−q_v^(−s)A_v)=det(I−q_v^(−s)r(t_v)) for all s on its declared domain.

**Depends on:** E2. **Acceptance:** A supplied two-sided inverse may justify determinant conjugacy, but the actual intertwiner and local parameter equality must be constructed. Faithfulness does not imply them.

Primary source: [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/67b33f06a609--i (2).pdf#page=1>), [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/67b33f06a609--i (2).pdf#page=2>).

Exact code components (not a supplied paper bridge):

- [`Matrix.det_conj_of_mul_eq_one`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/LinearAlgebra/Determinant.lean#L101-L104), `Mathlib/LinearAlgebra/Determinant.lean:101–104`. With actual two-sided inverse matrices M,M′ over the declared commutative coefficient ring, det(M*N*M′)=det N, including the indexed finite matrix hypotheses. It is a local linear-algebra component only; actual Satake/intertwining data, automorphic transfer and analytic Euler-product comparison are not supplied.

##### E4 — analytic-proof (missing)

Specify bad-place and Archimedean factors, conductors and dual/root-number data. Prove normal convergence of the Euler products on a common right half-plane and meromorphic continuation/equality on a named connected domain with the same normalization.

**Depends on:** E3. **Acceptance:** All local factors and continuation hypotheses are accounted for; equality at finitely many tested primes cannot replace the global identity.

Primary source: [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/67b33f06a609--i (2).pdf#page=2>).

No concrete supplier established for this obligation.

##### E5 — analytic-proof (missing)

Derive the divisor/residue comparison for the same completed sources from E4, including every extra factor’s divisor. Any critical-line theorem for the target family remains a separate premise or proof.

**Depends on:** E4. **Acceptance:** An equality/zero-free multiplier with a proved divisor controls the original source; no all-zero alignment is inferred from the existence of a lift.

Primary source: [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/67b33f06a609--i (2).pdf#page=2>).

Exact code components (not a supplied paper bridge):

- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.logDeriv_principal_part`](https://github.com/grwtsk/math/blob/3f248406d576515c964a788add3f1423be959d67/GRWTSK/Analysis/Complex/LogarithmicPrincipalPart.lean#L34-L51), `GRWTSK/Analysis/Complex/LogarithmicPrincipalPart.lean:34–51`. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. A supplied local factorization f=(s−a)^k*g, with integer k and analytic unit g, yields principal part k/(s−a) for Mathlib logDeriv f. It does not construct the arithmetic factorization, geometric realization or an off-line exclusion theorem.

#### Previously recorded missing bridges

- Construct the actual representation homomorphisms with the required base fields and exact preservation laws.
- A faithful linear representation does not identify automorphic L-functions or preserve their zeros by itself. Supply the local parameters, global analytic comparison and boundary regularization theorem.
- Construct the group representations and the separate analytic/local-global L-function comparison.
- Construct the representation homomorphisms, genuine twists and local-factor identities; prove the separate global analytic comparison.
- Construct the homomorphism over its actual base field and separately prove local-factor and analytic global comparisons, including all dual/normalization data.
- Specify the group and base field, actual representation, local parameters, global transfer and analytic comparison. There is no further proof body in this exact two-page version.

<a id="159cb12b34d5a425-kl-positive-to-residue-gap"></a>
### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis — `159cb12b34d5`

Idea: `idea:unpublished-v3:159cb12b34d5a425:kl-positive-to-residue-gap`. Blocker: **inconsistent-recurrence**. Outcome: **unresolved**. Paper-specific Lean verification: **NOT_RUN**.

The KL polynomial object must first be repaired and constructed. A double-coset Hecke module or positivity of unrelated cohomology is not the intended basis theorem.

#### Exact primary paper evidence

- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/159cb12b34d5--C (7).pdf#page=2>): “The positivity of Pu,v”. Page-text SHA-256 `f0dd8824015f3d5ec19eeb4f9c9f0a7b283f60e9aee9d54c7b16d45155a0a6f0`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/159cb12b34d5--C (7).pdf#page=3>): “recursive computations yielding”. Page-text SHA-256 `886f5bc6db5b64b1dd21ed0a5d9c802d1fb95e06c8ad022ebef9dc079c098103`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/159cb12b34d5--C (7).pdf#page=3>): “4     Affine and Quantum Extensions”. Page-text SHA-256 `886f5bc6db5b64b1dd21ed0a5d9c802d1fb95e06c8ad022ebef9dc079c098103`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/159cb12b34d5--C (7).pdf#page=2>): “• Localizing residues of L(s, π) to nilpotent cones in compactified moduli spaces.”. Page-text SHA-256 `f0dd8824015f3d5ec19eeb4f9c9f0a7b283f60e9aee9d54c7b16d45155a0a6f0`.
- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/159cb12b34d5--C (7).pdf#page=1>): “Kazhdan-Lusztig Polynomials and the Generalized”. Page-text SHA-256 `675a421462491f4f337326a9c9cf1e08719d49994bfb4e1407ec0034ecaeba18`.
- [p. 4](</Users/local/Desktop/MathematicsLibrary/NumberTheory/159cb12b34d5--C (7).pdf#page=4>): “[2] Roman Bezrukavnikov. Geometric approach to representation theory of reductive”. Page-text SHA-256 `4c68fae14625c76eb9fdc5e98dec3b41c6960c3d27c3b6400f7bc0b74c21b880`.

#### Construction and proof obligations

##### K1 — repair (source-inconsistent)

Choose a Coxeter system and a parameter convention. For example, over ℤ[v,v⁻¹] set q=v² and require T_s²=(q−1)T_s+q together with the braid relations. Define the bar involution with v↦v⁻¹ and T_w↦(T_{w⁻¹})⁻¹.

**Depends on:** no earlier obligation. **Acceptance:** A consistent algebra and involution exist; this explicit convention is a proposed repair, not the printed truncated recursion.

Primary source: [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/159cb12b34d5--C (7).pdf#page=2>).

No concrete supplier established for this obligation.

##### K2 — construction (missing)

Construct the bar-invariant basis C′_w=v^{−ℓ(w)}Σ_{y≤w}P_{y,w}(v²)T_y, with P_{w,w}=1, P_{y,w}=0 if y≰w and deg P_{y,w}≤(ℓ(w)−ℓ(y)−1)/2 for y<w. Prove existence/uniqueness and derive a correct recurrence.

**Depends on:** K1. **Acceptance:** The printed universal P_{e,v}=1 rule and affine/quantum corrections are not assumed; the actual normalized basis determines the polynomials.

Primary source: [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/159cb12b34d5--C (7).pdf#page=2>).

No concrete supplier established for this obligation.

##### K3 — algebraic-proof (source-inconsistent)

Recompute the G2 example. Under K2, its diagonal P_{w,w} is 1, so the displayed q² cannot be that polynomial in ℤ[q]; compare constant coefficients to certify q²≠1.

**Depends on:** K2. **Acceptance:** Use the precise chosen variable and coefficient ring; the elementary coefficient check is not a KL positivity theorem.

Primary source: [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/159cb12b34d5--C (7).pdf#page=3>).

Exact code components (not a supplied paper bridge):

- [`Polynomial.coeff_X_pow`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Algebra/Polynomial/Coeff.lean#L190-L191), `Mathlib/Algebra/Polynomial/Coeff.lean:190–191`. The coefficient of X^k at degree n is 1 if n=k and 0 otherwise. In Z[q], comparing constant coefficients separates q² from 1 after the standard constant-polynomial facts are instantiated. This is a proposed elementary correction check, not a KL basis, recurrence, G2 computation or positivity theorem; the paper-specific specialization is NOT_RUN.

##### K4 — geometric-proof (missing)

Construct the relevant Schubert/stratum intersection-cohomology realization, with grading, normalization and coefficient conditions, then prove coefficient nonnegativity for this exact KL family. Define affine/quantum variants independently before reusing a theorem.

**Depends on:** K2, K3. **Acceptance:** A graded geometric realization and positivity theorem are actual suppliers, not strings naming nilpotent strata.

Primary source: [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/159cb12b34d5--C (7).pdf#page=2>), [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/159cb12b34d5--C (7).pdf#page=3>).

Exact code components (not a supplied paper bridge):

- [`HomologicalComplex.homology`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Algebra/Homology/ShortComplex/HomologicalComplex.lean#L90-L90), `Mathlib/Algebra/Homology/ShortComplex/HomologicalComplex.lean:90–90`. Given a homological complex and a HasHomology instance at a degree, define its homology object through the associated short complex. This is categorical infrastructure, not construction of Bun_G, a compactification, D-modules, intersection/etale cohomology, a splitting or a vanishing theorem.

##### K5 — analytic-proof (missing)

Construct a source-specific realization from these graded classes to the analytic zero detector, prove the full signed/graded identity, and prove why its off-line nonzero class would lie in an actually vanishing group. Nonnegative coefficients alone do not force a residue to be zero.

**Depends on:** K4. **Acceptance:** The exact analytic consumer, signs, degree and nonvanishing comparison are proved before concluding any zero exclusion.

Primary source: [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/159cb12b34d5--C (7).pdf#page=2>).

Exact code components (not a supplied paper bridge):

- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.logDeriv_principal_part`](https://github.com/grwtsk/math/blob/3f248406d576515c964a788add3f1423be959d67/GRWTSK/Analysis/Complex/LogarithmicPrincipalPart.lean#L34-L51), `GRWTSK/Analysis/Complex/LogarithmicPrincipalPart.lean:34–51`. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. A supplied local factorization f=(s−a)^k*g, with integer k and analytic unit g, yields principal part k/(s−a) for Mathlib logDeriv f. It does not construct the arithmetic factorization, geometric realization or an off-line exclusion theorem.

#### Previously recorded missing bridges

- Verify the polynomial recurrence, diagonal normalization and G2 example against the defining Hecke relations; the printed recursion and q² diagonal example are not established by the text.
- Construct the localization/realization and prove a source-specific identity linking its signed or graded pairing to analytic residues/zeros. Positivity does not imply vanishing without an additional proved implication.
- Specify and justify the affine/quantum variants instead of adding unnamed correction terms.
- Define the Hecke/KL recurrence and realization; prove an actual signed analytic comparison before any vanishing conclusion.
- Supply a correct KL specification and its geometric realization, then prove a source-specific residue/zero comparison; positivity alone does not discharge it.
- Repair and verify the recurrence and diagonal normalization, construct the actual intersection-cohomology realization, and prove positivity-to-vanishing for the specified analytic consumer.
- Construct the intended Coxeter Hecke algebra and correct KL normalization/recurrence; identify a geometric realization and prove the separate signed residue-to-zero comparison. Naming double-coset modules supplies none of these bridges.

<a id="553f237f431fc299-kl-positive-to-residue-gap"></a>
### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis — `553f237f431f`

Idea: `idea:unpublished-v3:553f237f431fc299:kl-positive-to-residue-gap`. Blocker: **inconsistent-recurrence**. Outcome: **unresolved**. Paper-specific Lean verification: **NOT_RUN**.

The KL polynomial object must first be repaired and constructed. A double-coset Hecke module or positivity of unrelated cohomology is not the intended basis theorem.

#### Exact primary paper evidence

- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/553f237f431f--C (9).pdf#page=2>): “The positivity of Pu,v”. Page-text SHA-256 `f0dd8824015f3d5ec19eeb4f9c9f0a7b283f60e9aee9d54c7b16d45155a0a6f0`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/553f237f431f--C (9).pdf#page=3>): “recursive computations yielding”. Page-text SHA-256 `886f5bc6db5b64b1dd21ed0a5d9c802d1fb95e06c8ad022ebef9dc079c098103`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/553f237f431f--C (9).pdf#page=3>): “4     Affine and Quantum Extensions”. Page-text SHA-256 `886f5bc6db5b64b1dd21ed0a5d9c802d1fb95e06c8ad022ebef9dc079c098103`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/553f237f431f--C (9).pdf#page=2>): “• Localizing residues of L(s, π) to nilpotent cones in compactified moduli spaces.”. Page-text SHA-256 `f0dd8824015f3d5ec19eeb4f9c9f0a7b283f60e9aee9d54c7b16d45155a0a6f0`.
- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/553f237f431f--C (9).pdf#page=1>): “Kazhdan-Lusztig Polynomials and the Generalized”. Page-text SHA-256 `675a421462491f4f337326a9c9cf1e08719d49994bfb4e1407ec0034ecaeba18`.
- [p. 4](</Users/local/Desktop/MathematicsLibrary/NumberTheory/553f237f431f--C (9).pdf#page=4>): “[2] Roman Bezrukavnikov. Geometric approach to representation theory of reductive”. Page-text SHA-256 `4c68fae14625c76eb9fdc5e98dec3b41c6960c3d27c3b6400f7bc0b74c21b880`.

#### Construction and proof obligations

##### K1 — repair (source-inconsistent)

Choose a Coxeter system and a parameter convention. For example, over ℤ[v,v⁻¹] set q=v² and require T_s²=(q−1)T_s+q together with the braid relations. Define the bar involution with v↦v⁻¹ and T_w↦(T_{w⁻¹})⁻¹.

**Depends on:** no earlier obligation. **Acceptance:** A consistent algebra and involution exist; this explicit convention is a proposed repair, not the printed truncated recursion.

Primary source: [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/553f237f431f--C (9).pdf#page=2>).

No concrete supplier established for this obligation.

##### K2 — construction (missing)

Construct the bar-invariant basis C′_w=v^{−ℓ(w)}Σ_{y≤w}P_{y,w}(v²)T_y, with P_{w,w}=1, P_{y,w}=0 if y≰w and deg P_{y,w}≤(ℓ(w)−ℓ(y)−1)/2 for y<w. Prove existence/uniqueness and derive a correct recurrence.

**Depends on:** K1. **Acceptance:** The printed universal P_{e,v}=1 rule and affine/quantum corrections are not assumed; the actual normalized basis determines the polynomials.

Primary source: [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/553f237f431f--C (9).pdf#page=2>).

No concrete supplier established for this obligation.

##### K3 — algebraic-proof (source-inconsistent)

Recompute the G2 example. Under K2, its diagonal P_{w,w} is 1, so the displayed q² cannot be that polynomial in ℤ[q]; compare constant coefficients to certify q²≠1.

**Depends on:** K2. **Acceptance:** Use the precise chosen variable and coefficient ring; the elementary coefficient check is not a KL positivity theorem.

Primary source: [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/553f237f431f--C (9).pdf#page=3>).

Exact code components (not a supplied paper bridge):

- [`Polynomial.coeff_X_pow`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Algebra/Polynomial/Coeff.lean#L190-L191), `Mathlib/Algebra/Polynomial/Coeff.lean:190–191`. The coefficient of X^k at degree n is 1 if n=k and 0 otherwise. In Z[q], comparing constant coefficients separates q² from 1 after the standard constant-polynomial facts are instantiated. This is a proposed elementary correction check, not a KL basis, recurrence, G2 computation or positivity theorem; the paper-specific specialization is NOT_RUN.

##### K4 — geometric-proof (missing)

Construct the relevant Schubert/stratum intersection-cohomology realization, with grading, normalization and coefficient conditions, then prove coefficient nonnegativity for this exact KL family. Define affine/quantum variants independently before reusing a theorem.

**Depends on:** K2, K3. **Acceptance:** A graded geometric realization and positivity theorem are actual suppliers, not strings naming nilpotent strata.

Primary source: [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/553f237f431f--C (9).pdf#page=2>), [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/553f237f431f--C (9).pdf#page=3>).

Exact code components (not a supplied paper bridge):

- [`HomologicalComplex.homology`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Algebra/Homology/ShortComplex/HomologicalComplex.lean#L90-L90), `Mathlib/Algebra/Homology/ShortComplex/HomologicalComplex.lean:90–90`. Given a homological complex and a HasHomology instance at a degree, define its homology object through the associated short complex. This is categorical infrastructure, not construction of Bun_G, a compactification, D-modules, intersection/etale cohomology, a splitting or a vanishing theorem.

##### K5 — analytic-proof (missing)

Construct a source-specific realization from these graded classes to the analytic zero detector, prove the full signed/graded identity, and prove why its off-line nonzero class would lie in an actually vanishing group. Nonnegative coefficients alone do not force a residue to be zero.

**Depends on:** K4. **Acceptance:** The exact analytic consumer, signs, degree and nonvanishing comparison are proved before concluding any zero exclusion.

Primary source: [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/553f237f431f--C (9).pdf#page=2>).

Exact code components (not a supplied paper bridge):

- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.logDeriv_principal_part`](https://github.com/grwtsk/math/blob/3f248406d576515c964a788add3f1423be959d67/GRWTSK/Analysis/Complex/LogarithmicPrincipalPart.lean#L34-L51), `GRWTSK/Analysis/Complex/LogarithmicPrincipalPart.lean:34–51`. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. A supplied local factorization f=(s−a)^k*g, with integer k and analytic unit g, yields principal part k/(s−a) for Mathlib logDeriv f. It does not construct the arithmetic factorization, geometric realization or an off-line exclusion theorem.

#### Previously recorded missing bridges

- Verify the polynomial recurrence, diagonal normalization and G2 example against the defining Hecke relations; the printed recursion and q² diagonal example are not established by the text.
- Construct the localization/realization and prove a source-specific identity linking its signed or graded pairing to analytic residues/zeros. Positivity does not imply vanishing without an additional proved implication.
- Specify and justify the affine/quantum variants instead of adding unnamed correction terms.
- Define the Hecke/KL recurrence and realization; prove an actual signed analytic comparison before any vanishing conclusion.
- Supply a correct KL specification and its geometric realization, then prove a source-specific residue/zero comparison; positivity alone does not discharge it.
- Repair and verify the recurrence and diagonal normalization, construct the actual intersection-cohomology realization, and prove positivity-to-vanishing for the specified analytic consumer.
- Construct the intended Coxeter Hecke algebra and correct KL normalization/recurrence; identify a geometric realization and prove the separate signed residue-to-zero comparison. Naming double-coset modules supplies none of these bridges.

## Geometry and topology — 1 versions

<a id="796ba01d4a02a5ba-boundary-positivity-outline"></a>
### Boundary Regularization: A Framework for High-Rank Elimination — `796ba01d4a02`

Idea: `idea:unpublished-v3:796ba01d4a02a5ba:boundary-positivity-outline`. Blocker: **geometric-realization-missing**. Outcome: **unresolved**. Paper-specific Lean verification: **NOT_RUN**.

The missing bridge is a source-specific zero-to-nonzero-boundary-class construction plus an applicable vanishing theorem, not a general positivity lemma.

#### Exact primary paper evidence

- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/796ba01d4a02--g (2).pdf#page=1>): “Residue Suppression via Localization”. Page-text SHA-256 `4d8c7b048753cc2dfb6f88275ea478c9e047b33124d3ab9cae9143d6bdd843ff`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/796ba01d4a02--g (2).pdf#page=2>): “Positivity Constraints”. Page-text SHA-256 `ff18a835d335c007bb73a0f80dacab2cb5911bd573e04fa067fad2bf14dcddb2`.
- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/796ba01d4a02--g (2).pdf#page=1>): “Boundary Regularization: A Framework for”. Page-text SHA-256 `4d8c7b048753cc2dfb6f88275ea478c9e047b33124d3ab9cae9143d6bdd843ff`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/796ba01d4a02--g (2).pdf#page=2>): “5     Positivity Constraints”. Page-text SHA-256 `ff18a835d335c007bb73a0f80dacab2cb5911bd573e04fa067fad2bf14dcddb2`.

#### Construction and proof obligations

##### B1 — construction (missing)

Fix the group/base, compactification j:U→X with boundary i:Z→X, coefficient complex K and the exact cohomology theory. Construct C_Z(K) and H^k(Z,K); do not identify arbitrary graph cohomology with these groups.

**Depends on:** no earlier obligation. **Acceptance:** Geometric objects and coefficient/support conventions are actual constructions; an abstract complex with assumed homology is only infrastructure.

Primary source: [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/796ba01d4a02--g (2).pdf#page=1>).

Exact code components (not a supplied paper bridge):

- [`HomologicalComplex.homology`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Algebra/Homology/ShortComplex/HomologicalComplex.lean#L90-L90), `Mathlib/Algebra/Homology/ShortComplex/HomologicalComplex.lean:90–90`. Given a homological complex and a HasHomology instance at a degree, define its homology object through the associated short complex. This is categorical infrastructure, not construction of Bun_G, a compactification, D-modules, intersection/etale cohomology, a splitting or a vanishing theorem.

##### B2 — algebraic-proof (missing)

Construct the localization/excision triangle or long exact sequence. If a direct sum is needed, construct a splitting/projector and prove compatibility with Hecke actions; a set union does not produce a split cohomology decomposition.

**Depends on:** B1. **Acceptance:** The exact maps, kernels/images and any splitting are proved, with no erased boundary summand.

Primary source: [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/796ba01d4a02--g (2).pdf#page=1>).

Exact code components (not a supplied paper bridge):

- [`HomologicalComplex.homology`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Algebra/Homology/ShortComplex/HomologicalComplex.lean#L90-L90), `Mathlib/Algebra/Homology/ShortComplex/HomologicalComplex.lean:90–90`. Given a homological complex and a HasHomology instance at a degree, define its homology object through the associated short complex. This is categorical infrastructure, not construction of Bun_G, a compactification, D-modules, intersection/etale cohomology, a splitting or a vanishing theorem.

##### B3 — analytic-proof (missing)

Fix the completed analytic source Λ and a zero-detecting consumer such as logDeriv Λ, with its genuine local integer-order factorization. Distinguish this from residues of Λ at poles.

**Depends on:** B1. **Acceptance:** The actual Λ, local orders, gamma/conductor and dual conventions are identified; the logarithmic principal-part supplier is instantiated.

Primary source: [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/796ba01d4a02--g (2).pdf#page=1>).

Exact code components (not a supplied paper bridge):

- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.logDeriv_principal_part`](https://github.com/grwtsk/math/blob/3f248406d576515c964a788add3f1423be959d67/GRWTSK/Analysis/Complex/LogarithmicPrincipalPart.lean#L34-L51), `GRWTSK/Analysis/Complex/LogarithmicPrincipalPart.lean:34–51`. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. A supplied local factorization f=(s−a)^k*g, with integer k and analytic unit g, yields principal part k/(s−a) for Mathlib logDeriv f. It does not construct the arithmetic factorization, geometric realization or an off-line exclusion theorem.

##### B4 — construction (missing)

For every nontrivial zero ρ of the exact source with Re(ρ)≠1/2, construct kρ, Kρ and vρ∈H^{kρ}(Z,Kρ), prove vρ≠0 and that kρ lies in the specific forbidden degree range.

**Depends on:** B2, B3. **Acceptance:** A nonzero class with exact degree/source identity is produced for each off-line zero; naming spectral correspondence is insufficient.

Primary source: [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/796ba01d4a02--g (2).pdf#page=1>), [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/796ba01d4a02--g (2).pdf#page=2>).

No concrete supplier established for this obligation.

##### B5 — geometric-proof (missing)

Prove H^k(Z,Kρ)=0 in that same range for the original Kρ, under verified properness/dimension/positivity hypotheses. Vanishing only after a positive twist requires a proved untwisting comparison.

**Depends on:** B1, B4. **Acceptance:** The actual class space from B4 vanishes; positivity alone or a changed sheaf is not the required theorem.

Primary source: [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/796ba01d4a02--g (2).pdf#page=2>).

No concrete supplier established for this obligation.

##### B6 — conditional-theorem (missing)

Combine vρ≠0 with B5 for every allowed off-line zero. This final contradiction is conditional until B1–B5 are constructed.

**Depends on:** B4, B5. **Acceptance:** No off-line source zero is excluded using an assumed version of the desired correspondence.

Primary source: [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/796ba01d4a02--g (2).pdf#page=2>).

No concrete supplier established for this obligation.

#### Previously recorded missing bridges

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

Idea: `idea:unpublished-v3:d7819c0364c77a97:status-assertions-not-proof-evidence`. Blocker: **unsupported-status-claim**. Outcome: **unresolved**. Paper-specific Lean verification: **NOT_RUN**.

The named drafts can be title-matched in the catalog, but their byte-distinct versions are not disambiguated by the status note. Inspection exposes rate/normalization mismatches and an explicit RH/GRH premise in the independence argument.

#### Exact primary paper evidence

- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d7819c0364c7--Updated_Verification_of_Recursive_Refinement_Framework (2).pdf#page=2>): “Statistical Independence of Zeros”. Page-text SHA-256 `b949895416d938edf5079487f3f65be80e0f8ca1acb84eceda5b3d93d367c973`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d7819c0364c7--Updated_Verification_of_Recursive_Refinement_Framework (2).pdf#page=3>): “Error Bounds for Mixed Automorphic Forms”. Page-text SHA-256 `c387efc0635800128e43a12a348f65f43c6ac5e364f4aa0df95d3701d94a85d4`.
- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d7819c0364c7--Updated_Verification_of_Recursive_Refinement_Framework (2).pdf#page=1>): “Updated Verification of Recursive Refinement”. Page-text SHA-256 `7d7c35049871f94b14430d67322c1c07daaf6264263287c8eb07eee6f2449eb5`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d7819c0364c7--Updated_Verification_of_Recursive_Refinement_Framework (2).pdf#page=3>): “Critical Review of Remaining Open Problems”. Page-text SHA-256 `c387efc0635800128e43a12a348f65f43c6ac5e364f4aa0df95d3701d94a85d4`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d7819c0364c7--Updated_Verification_of_Recursive_Refinement_Framework (2).pdf#page=2>): “Fourier analysis. By demonstrating that cumulative errors across distinct”. Page-text SHA-256 `b949895416d938edf5079487f3f65be80e0f8ca1acb84eceda5b3d93d367c973`.

#### Construction and proof obligations

##### S1 — source-identification (missing)

Bind each named January reference to an exact catalog SHA/version and exact theorem. Eight candidate versions of four title families were inspected; title matching alone does not prove that the status note invokes either particular version.

**Depends on:** no earlier obligation. **Acceptance:** Reference identity and logical dependence are recorded separately; printed bibliographies are not silently promoted to verified publications.

Primary source: [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d7819c0364c7--Updated_Verification_of_Recursive_Refinement_Framework (2).pdf#page=1>), [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d7819c0364c7--Updated_Verification_of_Recursive_Refinement_Framework (2).pdf#page=2>).
Related title-matched version: **Formal Derivation of Axiom 5: Cross-Domain Error Cancellation**, `2edefaf15e1f` — [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/2edefaf15e1f--Derivation_of_Axiom_5__Cross_Domain_Error_Cancellation (1).pdf#page=1>). Version/logical binding unproved.
Related title-matched version: **Formal Derivation of Axiom 5: Cross-Domain Error Cancellation**, `90212cbba117` — [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/90212cbba117--Derivation_of_Axiom_5__Cross_Domain_Error_Cancellation (2).pdf#page=1>). Version/logical binding unproved.
Related title-matched version: **Generalization of the Recursive Refinement Framework for Automorphic L-Functions and Beyond**, `e4af0063b673` — [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/e4af0063b673--Generalization_of_the_Recursive_Refinement_Framework_for_Automorphic_L_Functions_and_Beyond (1).pdf#page=1>). Version/logical binding unproved.
Related title-matched version: **Generalization of the Recursive Refinement Framework for Automorphic L-Functions and Beyond**, `46c71204aa52` — [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/46c71204aa52--Generalization_of_the_Recursive_Refinement_Framework_for_Automorphic_L_Functions_and_Beyond (2).pdf#page=1>). Version/logical binding unproved.
Related title-matched version: **Refinement of Axiom 1: Bounded Error Growth Without Conjectures**, `d5030fdf2496` — [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d5030fdf2496--Refinement_of_Axiom_1__Bounded_Error_Growth_Using_Random_Matrix_Theory (1).pdf#page=1>). Version/logical binding unproved.
Related title-matched version: **Refinement of Axiom 1: Bounded Error Growth Without Conjectures**, `019052dca83c` — [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/019052dca83c--Refinement_of_Axiom_1__Bounded_Error_Growth_Using_Random_Matrix_Theory (2).pdf#page=1>). Version/logical binding unproved.
Related title-matched version: **Resolution of Key Open Problems in the Verification of Recursive Refinement for the Riemann Hypothesis and Generalizations**, `ed896093fe82` — [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/ed896093fe82--Resolution_of_Key_Open_Problems_in_the_Verification_of_Recursive_Refinement_for_the_Riemann_Hypothesis_and_Generalizations (1).pdf#page=1>). Version/logical binding unproved.
Related title-matched version: **Resolution of Key Open Problems in the Verification of Recursive Refinement for the Riemann Hypothesis and Generalizations**, `f54c76880892` — [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/f54c76880892--Resolution_of_Key_Open_Problems_in_the_Verification_of_Recursive_Refinement_for_the_Riemann_Hypothesis_and_Generalizations (2).pdf#page=1>). Version/logical binding unproved.

No concrete supplier established for this obligation.

##### S2 — specification (missing)

Define each arithmetic sequence, its deterministic centering and e_n before choosing a target rate. Decide whether the needed claim is ∃C∀n |e_n|≤C, a variable envelope |e_n|≤C B(n), or a normalized o(n) statement.

**Depends on:** S1. **Acceptance:** Axiom 1 p.2 prints O(√p_n log p_n), not a constant bound; no boundedness follows from that growing upper envelope. The asserted prime-gap estimate and arbitrary-height enumeration also need independent proofs.

Primary source: [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d7819c0364c7--Updated_Verification_of_Recursive_Refinement_Framework (2).pdf#page=1>).
Related title-matched version: **Refinement of Axiom 1: Bounded Error Growth Without Conjectures**, `d5030fdf2496` — [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d5030fdf2496--Refinement_of_Axiom_1__Bounded_Error_Growth_Using_Random_Matrix_Theory (1).pdf#page=1>), [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d5030fdf2496--Refinement_of_Axiom_1__Bounded_Error_Growth_Using_Random_Matrix_Theory (1).pdf#page=2>), [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d5030fdf2496--Refinement_of_Axiom_1__Bounded_Error_Growth_Using_Random_Matrix_Theory (1).pdf#page=3>). Version/logical binding unproved.
Related title-matched version: **Refinement of Axiom 1: Bounded Error Growth Without Conjectures**, `019052dca83c` — [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/019052dca83c--Refinement_of_Axiom_1__Bounded_Error_Growth_Using_Random_Matrix_Theory (2).pdf#page=1>), [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/019052dca83c--Refinement_of_Axiom_1__Bounded_Error_Growth_Using_Random_Matrix_Theory (2).pdf#page=2>), [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/019052dca83c--Refinement_of_Axiom_1__Bounded_Error_Growth_Using_Random_Matrix_Theory (2).pdf#page=3>). Version/logical binding unproved.

Exact code components (not a supplied paper bridge):

- [`GRWTSK.Analysis.SublinearDyadic.upperSublinear_iff_isLittleO`](https://github.com/grwtsk/math/blob/3f248406d576515c964a788add3f1423be959d67/GRWTSK/Analysis/Asymptotics/SublinearDyadic.lean#L29-L45), `GRWTSK/Analysis/Asymptotics/SublinearDyadic.lean:29–45`. For a nonnegative real sequence, the declared epsilon upper-sublinear budget is equivalent to f=o(n). The file requires a successful pinned replay; it supplies no all-depth arithmetic witness, O(log n), uniform boundedness, or independence theorem.

##### S3 — analytic-proof (missing)

For the same centered channels define E_N=Σ_{n<N}Σ_d e_{d,n} and prove the exact rate required downstream. Hoeffding-style O(√N), N⁻¹E_N→0 and O(log N) are distinct from sup_N|E_N|<∞.

**Depends on:** S2. **Acceptance:** Retain probability/centering/range hypotheses and uniformity/tails. Repair Axiom 5 equation (7), which replaces an additive signal by a product-frequency expansion without a supplied identity.

Primary source: [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d7819c0364c7--Updated_Verification_of_Recursive_Refinement_Framework (2).pdf#page=1>), [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d7819c0364c7--Updated_Verification_of_Recursive_Refinement_Framework (2).pdf#page=2>).
Related title-matched version: **Formal Derivation of Axiom 5: Cross-Domain Error Cancellation**, `2edefaf15e1f` — [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/2edefaf15e1f--Derivation_of_Axiom_5__Cross_Domain_Error_Cancellation (1).pdf#page=1>), [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/2edefaf15e1f--Derivation_of_Axiom_5__Cross_Domain_Error_Cancellation (1).pdf#page=2>). Version/logical binding unproved.
Related title-matched version: **Formal Derivation of Axiom 5: Cross-Domain Error Cancellation**, `90212cbba117` — [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/90212cbba117--Derivation_of_Axiom_5__Cross_Domain_Error_Cancellation (2).pdf#page=1>), [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/90212cbba117--Derivation_of_Axiom_5__Cross_Domain_Error_Cancellation (2).pdf#page=2>). Version/logical binding unproved.
Related title-matched version: **Resolution of Key Open Problems in the Verification of Recursive Refinement for the Riemann Hypothesis and Generalizations**, `ed896093fe82` — [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/ed896093fe82--Resolution_of_Key_Open_Problems_in_the_Verification_of_Recursive_Refinement_for_the_Riemann_Hypothesis_and_Generalizations (1).pdf#page=2>). Version/logical binding unproved.
Related title-matched version: **Resolution of Key Open Problems in the Verification of Recursive Refinement for the Riemann Hypothesis and Generalizations**, `f54c76880892` — [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/f54c76880892--Resolution_of_Key_Open_Problems_in_the_Verification_of_Recursive_Refinement_for_the_Riemann_Hypothesis_and_Generalizations (2).pdf#page=2>). Version/logical binding unproved.

Exact code components (not a supplied paper bridge):

- [`GRWTSK.Analysis.SublinearDyadic.upperSublinear_iff_isLittleO`](https://github.com/grwtsk/math/blob/3f248406d576515c964a788add3f1423be959d67/GRWTSK/Analysis/Asymptotics/SublinearDyadic.lean#L29-L45), `GRWTSK/Analysis/Asymptotics/SublinearDyadic.lean:29–45`. For a nonnegative real sequence, the declared epsilon upper-sublinear budget is equivalent to f=o(n). The file requires a successful pinned replay; it supplies no all-depth arithmetic witness, O(log n), uniform boundedness, or independence theorem.

##### S4 — construction (missing)

Construct source_n, model_n and the common channel gain A_n. Set u_n=source_n−model_n and net forcing η_n=(source_{n+1}−A_n source_n)−(model_{n+1}−A_n model_n). Instantiate u_{n+1}=A_nu_n+η_n; then prove actual gain/conditioning, net-forcing decay, channel completeness and fixed-source readout identities.

**Depends on:** S2, S3. **Acceptance:** The algebraic recurrence is available, but source states, all-depth estimates and a source-preserving fixed-target consumer are new obligations; changing channel spaces require additional transition maps.

Primary source: [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d7819c0364c7--Updated_Verification_of_Recursive_Refinement_Framework (2).pdf#page=2>).
Related title-matched version: **Generalization of the Recursive Refinement Framework for Automorphic L-Functions and Beyond**, `e4af0063b673` — [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/e4af0063b673--Generalization_of_the_Recursive_Refinement_Framework_for_Automorphic_L_Functions_and_Beyond (1).pdf#page=2>). Version/logical binding unproved.
Related title-matched version: **Generalization of the Recursive Refinement Framework for Automorphic L-Functions and Beyond**, `46c71204aa52` — [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/46c71204aa52--Generalization_of_the_Recursive_Refinement_Framework_for_Automorphic_L_Functions_and_Beyond (2).pdf#page=2>). Version/logical binding unproved.

Exact code components (not a supplied paper bridge):

- [`GRWTSK.Analysis.ErrorBounds.SourceResidualEvolution.sourceResidual_evolution`](https://github.com/grwtsk/math/blob/3f248406d576515c964a788add3f1423be959d67/GRWTSK/Analysis/ErrorBounds/SourceResidualEvolution.lean#L57-L64), `GRWTSK/Analysis/ErrorBounds/SourceResidualEvolution.lean:57–64`. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. For supplied source/model paths on one common finite channel type and a common gain, their residual evolves by that gain plus the exact difference of their defects. No source paths, norm estimates, vanishing forcing, changing-channel comparison or arithmetic zero consumer are constructed.

##### S5 — analytic-proof (missing)

Define a probability space and exact measurable, square-integrable zero observables. State finite-family independence or a specified limiting-law independence theorem. Vanishing/decaying pair correlation alone is not that statement.

**Depends on:** S1. **Acceptance:** Independence⇒zero covariance is available. A converse requires additional structure; joint Gaussian law plus exactly zero cross-covariance is one explicit sufficient profile, not implied by a GUE label or degree-limit correlation.

Primary source: [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d7819c0364c7--Updated_Verification_of_Recursive_Refinement_Framework (2).pdf#page=2>).
Related title-matched version: **Resolution of Key Open Problems in the Verification of Recursive Refinement for the Riemann Hypothesis and Generalizations**, `ed896093fe82` — [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/ed896093fe82--Resolution_of_Key_Open_Problems_in_the_Verification_of_Recursive_Refinement_for_the_Riemann_Hypothesis_and_Generalizations (1).pdf#page=3>). Version/logical binding unproved.
Related title-matched version: **Resolution of Key Open Problems in the Verification of Recursive Refinement for the Riemann Hypothesis and Generalizations**, `f54c76880892` — [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/f54c76880892--Resolution_of_Key_Open_Problems_in_the_Verification_of_Recursive_Refinement_for_the_Riemann_Hypothesis_and_Generalizations (2).pdf#page=3>). Version/logical binding unproved.

Exact code components (not a supplied paper bridge):

- [`ProbabilityTheory.IndepFun.covariance_eq_zero`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Probability/Moments/Covariance.lean#L324-L332), `Mathlib/Probability/Moments/Covariance.lean:324–332`. Independence of two real random variables, together with their MemLp exponent-2 hypotheses, implies zero covariance under the specified measure. The implication runs from independence to decorrelation; its unrestricted converse is not supplied.
- [`ProbabilityTheory.HasGaussianLaw.iIndepFun_of_covariance_eq_zero`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Probability/Distributions/Gaussian/HasGaussianLaw/Independence.lean#L261-L266), `Mathlib/Probability/Distributions/Gaussian/HasGaussianLaw/Independence.lean:261–266`. For a finite indexed real family with a supplied JOINT Gaussian law and exactly zero cross-covariances, obtain iIndepFun. These additional hypotheses are not established by a GUE label, pair-correlation decay or a degree limit. This is an optional conditional route, not a source-specific zero-independence supplier.

##### S6 — conditional-theorem (missing)

Retain every RH/GRH hypothesis printed in the Resolution draft §4.3. If the desired downstream theorem is unconditional RH/GRH, replace that supplier by an independently proved result rather than using it circularly.

**Depends on:** S4, S5. **Acceptance:** The final dependency graph contains no disguised RH/GRH premise, conjecture-free status label or assumed arithmetic comparison.

Primary source: [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d7819c0364c7--Updated_Verification_of_Recursive_Refinement_Framework (2).pdf#page=2>), [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d7819c0364c7--Updated_Verification_of_Recursive_Refinement_Framework (2).pdf#page=3>).
Related title-matched version: **Resolution of Key Open Problems in the Verification of Recursive Refinement for the Riemann Hypothesis and Generalizations**, `ed896093fe82` — [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/ed896093fe82--Resolution_of_Key_Open_Problems_in_the_Verification_of_Recursive_Refinement_for_the_Riemann_Hypothesis_and_Generalizations (1).pdf#page=3>). Version/logical binding unproved.
Related title-matched version: **Resolution of Key Open Problems in the Verification of Recursive Refinement for the Riemann Hypothesis and Generalizations**, `f54c76880892` — [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/f54c76880892--Resolution_of_Key_Open_Problems_in_the_Verification_of_Recursive_Refinement_for_the_Riemann_Hypothesis_and_Generalizations (2).pdf#page=3>). Version/logical binding unproved.

No concrete supplier established for this obligation.

#### Previously recorded missing bridges

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

Idea: `idea:unpublished-v3:0b423568798d1ce3:prime-research-roadmap`. Blocker: **source-specification-needed**. Outcome: **unresolved**. Paper-specific Lean verification: **NOT_RUN**.

The roadmap has no single theorem to formalize. A bounded prime-list contract is one explicitly assistant-proposed first specialization of its prime-generation objective, not a theorem silently attributed to the manuscript.

#### Exact primary paper evidence

- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0b423568798d--A_Holistic_Strategy_for_Deriving_Properties_of_Prime_Numbers (3).pdf#page=1>): “Analytic Number Theory”. Page-text SHA-256 `39a9fcea1d40a7413342a18358fee7b26bc3c11a1a7e3eda322c4818b889cfe1`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0b423568798d--A_Holistic_Strategy_for_Deriving_Properties_of_Prime_Numbers (3).pdf#page=3>): “Computational and Experimental Verification”. Page-text SHA-256 `22960f02b1cc371c3fad11641b450135c2f1b1060cbc7ebe69a36c069e42a617`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0b423568798d--A_Holistic_Strategy_for_Deriving_Properties_of_Prime_Numbers (3).pdf#page=2>): “3     Algebraic Number Theory and Primes in Fields”. Page-text SHA-256 `506eb036515e8f32eed5d026e1e8d76a66eba7e8c16a86ff40ccfebfd6517ba4`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0b423568798d--A_Holistic_Strategy_for_Deriving_Properties_of_Prime_Numbers (3).pdf#page=3>): “5     Geometric Representations and the Langlands”. Page-text SHA-256 `22960f02b1cc371c3fad11641b450135c2f1b1060cbc7ebe69a36c069e42a617`.
- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0b423568798d--A_Holistic_Strategy_for_Deriving_Properties_of_Prime_Numbers (3).pdf#page=1>): “A Holistic Strategy for Deriving Properties of”. Page-text SHA-256 `39a9fcea1d40a7413342a18358fee7b26bc3c11a1a7e3eda322c4818b889cfe1`.

#### Construction and proof obligations

##### P1 — source-identification (missing)

Resolve each numbered Source 23/26/27/28/29 to a title, exact version and theorem/method, or explicitly leave the citation unresolved.

**Depends on:** no earlier obligation. **Acceptance:** Every imported assertion has a version-bound source; resource numbers alone do not count.

Primary source: [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0b423568798d--A_Holistic_Strategy_for_Deriving_Properties_of_Prime_Numbers (3).pdf#page=1>), [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0b423568798d--A_Holistic_Strategy_for_Deriving_Properties_of_Prime_Numbers (3).pdf#page=2>), [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0b423568798d--A_Holistic_Strategy_for_Deriving_Properties_of_Prime_Numbers (3).pdf#page=3>).

No concrete supplier established for this obligation.

##### P2 — specification (missing)

One optional concrete task: for each N:ℕ define output(N):Finset ℕ and require ∀p, p∈output(N) ↔ p<N ∧ Nat.Prime p. This choice covers only bounded enumeration.

**Depends on:** P1. **Acceptance:** Choose this or another exact contract; do not rename a generic library definition as the roadmap’s full program.

Primary source: [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0b423568798d--A_Holistic_Strategy_for_Deriving_Properties_of_Prime_Numbers (3).pdf#page=2>).

Exact code components (not a supplied paper bridge):

- [`Nat.mem_primesBelow`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/NumberTheory/PrimeCounting.lean#L159-L160), `Mathlib/NumberTheory/PrimeCounting.lean:159–160`. For natural n,k, n∈Nat.primesBelow k iff n<k and n.Prime. This supplies soundness/completeness of a bounded prime-list specification once that task is chosen; it is not the manuscript’s unspecified analytic/geometric research program or a complexity bound.

##### P3 — construction (missing)

Instantiate output(N)=Nat.primesBelow N and use the membership theorem for soundness/completeness; specify a separate implementation and cost model if computational efficiency is intended.

**Depends on:** P2. **Acceptance:** The chosen output and bound convention are explicit; termination/complexity claims have their own actual proofs.

Primary source: [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0b423568798d--A_Holistic_Strategy_for_Deriving_Properties_of_Prime_Numbers (3).pdf#page=2>).

Exact code components (not a supplied paper bridge):

- [`Nat.mem_primesBelow`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/NumberTheory/PrimeCounting.lean#L159-L160), `Mathlib/NumberTheory/PrimeCounting.lean:159–160`. For natural n,k, n∈Nat.primesBelow k iff n<k and n.Prime. This supplies soundness/completeness of a bounded prime-list specification once that task is chosen; it is not the manuscript’s unspecified analytic/geometric research program or a complexity bound.

##### P4 — analytic-proof (missing)

For any proposed prime-distribution estimate, specify the actual counting/weighted source S(x), comparison M(x), domain x≥x0 and constants C≥0, then prove ∀x≥x0, |S(x)−M(x)|≤C B(x) for a named B. No bound B is supplied by this roadmap.

**Depends on:** P1. **Acceptance:** Exact quantifiers, normalization and all hypotheses are fixed before selecting an estimate; bounded prime enumeration is not this analytic supplier.

Primary source: [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0b423568798d--A_Holistic_Strategy_for_Deriving_Properties_of_Prime_Numbers (3).pdf#page=1>).

No concrete supplier established for this obligation.

#### Previously recorded missing bridges

- Replace each objective by a precise source identity or estimate with domains, constants and quantifiers before selecting a Lean theorem.
- The source-number citations are not an exact construction of a prime detector, algorithm correctness theorem or motive comparison.
- Choose a particular algorithm or source identity with an exact correctness or error claim before assigning a target.
- Select an exact algorithm, source identity or quantitative theorem and resolve its numbered resources.
- Replace an objective by an exact source identity, algorithm/correctness specification or quantitative theorem; resolve the Source 23/26/27/28/29 citations.
- Resolve Source 23/26/27/28/29 to actual sources, select a precise objective and state its objects, hypotheses, output and correctness/error theorem. No unreviewed body remains in this asset.

## Related-source evidence and version limits

These eight byte-distinct assets remain separate. Their titles match or closely match names in the status note; that note does not identify an asset hash or version. Printed citations and January labels are not verification of publication, chronology or owner reading.

### Formal Derivation of Axiom 5: Cross-Domain Error Cancellation — `2edefaf15e1f`

Title-matched candidate for a named dependency; exact version and logical binding remain unproved.

- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/2edefaf15e1f--Derivation_of_Axiom_5__Cross_Domain_Error_Cancellation (1).pdf#page=1>): “Formal Derivation of Axiom 5: Cross-Domain Error Cancellation”. Page-text SHA-256 `76acb4241477be9371d53cd62cbe1b70f18a831a31bef072846e031418f94db5`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/2edefaf15e1f--Derivation_of_Axiom_5__Cross_Domain_Error_Cancellation (1).pdf#page=2>): “4    Ergodic-Theoretic Justification of Partial Cancellation”. Page-text SHA-256 `8320e6c431a05868ae11c87f3b577cab3ba283cd1a230f326ebf5854efbf75b1`.

### Formal Derivation of Axiom 5: Cross-Domain Error Cancellation — `90212cbba117`

Title-matched candidate for a named dependency; exact version and logical binding remain unproved.

- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/90212cbba117--Derivation_of_Axiom_5__Cross_Domain_Error_Cancellation (2).pdf#page=1>): “Formal Derivation of Axiom 5: Cross-Domain Error Cancellation”. Page-text SHA-256 `76acb4241477be9371d53cd62cbe1b70f18a831a31bef072846e031418f94db5`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/90212cbba117--Derivation_of_Axiom_5__Cross_Domain_Error_Cancellation (2).pdf#page=2>): “4    Ergodic-Theoretic Justification of Partial Cancellation”. Page-text SHA-256 `8320e6c431a05868ae11c87f3b577cab3ba283cd1a230f326ebf5854efbf75b1`.

### Generalization of the Recursive Refinement Framework for Automorphic L-Functions and Beyond — `e4af0063b673`

Title-matched candidate for a named dependency; exact version and logical binding remain unproved.

- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/e4af0063b673--Generalization_of_the_Recursive_Refinement_Framework_for_Automorphic_L_Functions_and_Beyond (1).pdf#page=1>): “Generalization of the Recursive Refinement”. Page-text SHA-256 `09f4c3866d58076a9aa85067128b2b1fa720d7efb45266e8c15f4b986b94fc28`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/e4af0063b673--Generalization_of_the_Recursive_Refinement_Framework_for_Automorphic_L_Functions_and_Beyond (1).pdf#page=2>): “The local error term ∆NGL(n) (Tn ) and phase correction function φn are”. Page-text SHA-256 `632414f14b72f04e80282292b1a137ce450ebada24365e8ddbac0ba087ac60d6`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/e4af0063b673--Generalization_of_the_Recursive_Refinement_Framework_for_Automorphic_L_Functions_and_Beyond (1).pdf#page=3>): “[1] Iwaniec, H. and Kowalski, E. Analytic Number Theory. American Mathe-”. Page-text SHA-256 `02a62548554a7b8da8a324450a23c0564f03308cae76dd05f8f66a4687b7571d`.

### Generalization of the Recursive Refinement Framework for Automorphic L-Functions and Beyond — `46c71204aa52`

Title-matched candidate for a named dependency; exact version and logical binding remain unproved.

- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/46c71204aa52--Generalization_of_the_Recursive_Refinement_Framework_for_Automorphic_L_Functions_and_Beyond (2).pdf#page=1>): “Generalization of the Recursive Refinement”. Page-text SHA-256 `09f4c3866d58076a9aa85067128b2b1fa720d7efb45266e8c15f4b986b94fc28`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/46c71204aa52--Generalization_of_the_Recursive_Refinement_Framework_for_Automorphic_L_Functions_and_Beyond (2).pdf#page=2>): “The local error term ∆NGL(n) (Tn ) and phase correction function φn are”. Page-text SHA-256 `632414f14b72f04e80282292b1a137ce450ebada24365e8ddbac0ba087ac60d6`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/46c71204aa52--Generalization_of_the_Recursive_Refinement_Framework_for_Automorphic_L_Functions_and_Beyond (2).pdf#page=3>): “[1] Iwaniec, H. and Kowalski, E. Analytic Number Theory. American Mathe-”. Page-text SHA-256 `02a62548554a7b8da8a324450a23c0564f03308cae76dd05f8f66a4687b7571d`.

### Refinement of Axiom 1: Bounded Error Growth Without Conjectures — `d5030fdf2496`

Title-matched candidate for a named dependency; exact version and logical binding remain unproved.

- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d5030fdf2496--Refinement_of_Axiom_1__Bounded_Error_Growth_Using_Random_Matrix_Theory (1).pdf#page=1>): “Refinement of Axiom 1: Bounded Error”. Page-text SHA-256 `9905904c7b10b72df8c8e00e3683f9c5303112e96236aa0eb8e47b0a2d4228a9`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d5030fdf2496--Refinement_of_Axiom_1__Bounded_Error_Growth_Using_Random_Matrix_Theory (1).pdf#page=2>): “Let {pn } denote the sequence of prime numbers, and define the prime gap”. Page-text SHA-256 `37bd9a7be90b2bf900db478cf56150606850391795122b15999cfc1da5be07d5`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d5030fdf2496--Refinement_of_Axiom_1__Bounded_Error_Growth_Using_Random_Matrix_Theory (1).pdf#page=3>): “4    Height Gaps on Elliptic Curves”. Page-text SHA-256 `25bb21fa352821cc459ac96f9b43fca665fc523677311fa6d6d8df7ebafb5f03`.
- [p. 4](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d5030fdf2496--Refinement_of_Axiom_1__Bounded_Error_Growth_Using_Random_Matrix_Theory (1).pdf#page=4>): “[2] H. Iwaniec and E. Kowalski. Analytic Number Theory. American Math-”. Page-text SHA-256 `366d7512c5525df45f9f4922c95d08db01386b90009e8f40d3d6db408d957e4e`.

### Refinement of Axiom 1: Bounded Error Growth Without Conjectures — `019052dca83c`

Title-matched candidate for a named dependency; exact version and logical binding remain unproved.

- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/019052dca83c--Refinement_of_Axiom_1__Bounded_Error_Growth_Using_Random_Matrix_Theory (2).pdf#page=1>): “Refinement of Axiom 1: Bounded Error”. Page-text SHA-256 `9905904c7b10b72df8c8e00e3683f9c5303112e96236aa0eb8e47b0a2d4228a9`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/019052dca83c--Refinement_of_Axiom_1__Bounded_Error_Growth_Using_Random_Matrix_Theory (2).pdf#page=2>): “Let {pn } denote the sequence of prime numbers, and define the prime gap”. Page-text SHA-256 `37bd9a7be90b2bf900db478cf56150606850391795122b15999cfc1da5be07d5`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/019052dca83c--Refinement_of_Axiom_1__Bounded_Error_Growth_Using_Random_Matrix_Theory (2).pdf#page=3>): “4    Height Gaps on Elliptic Curves”. Page-text SHA-256 `25bb21fa352821cc459ac96f9b43fca665fc523677311fa6d6d8df7ebafb5f03`.
- [p. 4](</Users/local/Desktop/MathematicsLibrary/NumberTheory/019052dca83c--Refinement_of_Axiom_1__Bounded_Error_Growth_Using_Random_Matrix_Theory (2).pdf#page=4>): “[2] H. Iwaniec and E. Kowalski. Analytic Number Theory. American Math-”. Page-text SHA-256 `366d7512c5525df45f9f4922c95d08db01386b90009e8f40d3d6db408d957e4e`.

### Resolution of Key Open Problems in the Verification of Recursive Refinement for the Riemann Hypothesis and Generalizations — `ed896093fe82`

Title-matched candidate for a named dependency; exact version and logical binding remain unproved.

- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/ed896093fe82--Resolution_of_Key_Open_Problems_in_the_Verification_of_Recursive_Refinement_for_the_Riemann_Hypothesis_and_Generalizations (1).pdf#page=1>): “Resolution of Key Open Problems in the Verification”. Page-text SHA-256 `284b5518db3114cf562fbe2dd65f13f4e4d6105ed4be55d4ff7950a4fb72eb1e`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/ed896093fe82--Resolution_of_Key_Open_Problems_in_the_Verification_of_Recursive_Refinement_for_the_Riemann_Hypothesis_and_Generalizations (1).pdf#page=2>): “fields, corrections are expressed as polynomial expansions in terms of the logarithmic”. Page-text SHA-256 `1364b999f4f95cbd6cb13d9c5f575bf98e893c6a251648a78359643205a69ed7`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/ed896093fe82--Resolution_of_Key_Open_Problems_in_the_Verification_of_Recursive_Refinement_for_the_Riemann_Hypothesis_and_Generalizations (1).pdf#page=3>): “The statistical independence of zeros across distinct L-functions was crucial for validating”. Page-text SHA-256 `813107f2fb7a64fa9f4508db2ce6b3649a587d7ee2b4c2083ccc7a14db02fafd`.
- [p. 4](</Users/local/Desktop/MathematicsLibrary/NumberTheory/ed896093fe82--Resolution_of_Key_Open_Problems_in_the_Verification_of_Recursive_Refinement_for_the_Riemann_Hypothesis_and_Generalizations (1).pdf#page=4>): “[6] Andrew M. Odlyzko. Pair correlation of zeros under the riemann hypothesis. Mathe-”. Page-text SHA-256 `d2343257ab5e33dc2e537ca3ff5b93778d76eaaa0611cac618bece5667bcfddd`.

### Resolution of Key Open Problems in the Verification of Recursive Refinement for the Riemann Hypothesis and Generalizations — `f54c76880892`

Title-matched candidate for a named dependency; exact version and logical binding remain unproved.

- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/f54c76880892--Resolution_of_Key_Open_Problems_in_the_Verification_of_Recursive_Refinement_for_the_Riemann_Hypothesis_and_Generalizations (2).pdf#page=1>): “Resolution of Key Open Problems in the Verification”. Page-text SHA-256 `284b5518db3114cf562fbe2dd65f13f4e4d6105ed4be55d4ff7950a4fb72eb1e`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/f54c76880892--Resolution_of_Key_Open_Problems_in_the_Verification_of_Recursive_Refinement_for_the_Riemann_Hypothesis_and_Generalizations (2).pdf#page=2>): “fields, corrections are expressed as polynomial expansions in terms of the logarithmic”. Page-text SHA-256 `1364b999f4f95cbd6cb13d9c5f575bf98e893c6a251648a78359643205a69ed7`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/f54c76880892--Resolution_of_Key_Open_Problems_in_the_Verification_of_Recursive_Refinement_for_the_Riemann_Hypothesis_and_Generalizations (2).pdf#page=3>): “The statistical independence of zeros across distinct L-functions was crucial for validating”. Page-text SHA-256 `813107f2fb7a64fa9f4508db2ce6b3649a587d7ee2b4c2083ccc7a14db02fafd`.
- [p. 4](</Users/local/Desktop/MathematicsLibrary/NumberTheory/f54c76880892--Resolution_of_Key_Open_Problems_in_the_Verification_of_Recursive_Refinement_for_the_Riemann_Hypothesis_and_Generalizations (2).pdf#page=4>): “[6] Andrew M. Odlyzko. Pair correlation of zeros under the riemann hypothesis. Mathe-”. Page-text SHA-256 `d2343257ab5e33dc2e537ca3ff5b93778d76eaaa0611cac618bece5667bcfddd`.

## Search, verification and provenance limits

Searches covered frozen maintained `GRWTSK/**` excluding `SourceCorpus`, plus pinned `Mathlib/**`: prime enumeration; categorical homology/vanishing; Lie/root and local determinant data; Coxeter/KL normalization; actual source/model residuals; sublinear profiles; covariance and finite joint Gaussian independence. Definitions and conditional interfaces are kept separate from source-specific suppliers. Full search outputs/access observations stay outside Git.

- All obligations are proposed mathematical specifications, not new Lean declarations. Paper-specific proof/adapter execution is NOT_RUN.
- Code presence and exact Git identity are source inspection, not a new kernel audit. Construction components do not instantiate a geometric or arithmetic supplier.
- No main claim is resolved. Optional specializations and additional Gaussian assumptions are explicitly assistant-proposed and are not attributed to the paper.
- Eight title-matched related versions were inspected; exact version binding, bibliography validity and logical dependence remain unproved.
- Historical bibliography, dates, source/owner testimony, idea arrays and prior review data are preserved. Machine access observations remain in the external library; owner understanding dates remain null.

## Exact code identities

- [`abstract-homology`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Algebra/Homology/ShortComplex/HomologicalComplex.lean#L90-L90): Git blob `428bfbec684acc953059aabe99e967706e675a18`; file SHA-256 `189b09f1fe262f17bfedb182dc860abdffaa5145a9dd768c290216185943f682`.
- [`gaussian-converse`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Probability/Distributions/Gaussian/HasGaussianLaw/Independence.lean#L261-L266): Git blob `e24c909893788fc64531ca9b7498b78606fcc238`; file SHA-256 `06f064a27a0fc4a08277d545b643e2f40e5adffec4c37917bd8bd3752070f1ff`.
- [`independence-covariance`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Probability/Moments/Covariance.lean#L324-L332): Git blob `fca6592f15e0f35756f51ead04442fa484103919`; file SHA-256 `627b0715f8603daff3a29a47cbd21ce3c192020295c96f088784f4b197bf0312`.
- [`kl-coefficient-check`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Algebra/Polynomial/Coeff.lean#L190-L191): Git blob `084d9feb1abc0a552d6e04240c47d50ea78dd9c3`; file SHA-256 `9afce0783702a4d23d7eab6cb0248845c0954b9d4c0bb0639e23d25238d604e5`.
- [`local-determinant`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/LinearAlgebra/Determinant.lean#L101-L104): Git blob `8c3b6d97e0749b1afda61a859df04a046509a6e3`; file SHA-256 `daf96bd2883183ffcbb197293271f0a69ff21b8b0acb91da823efa79aeeb6d53`.
- [`prime-enumeration`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/NumberTheory/PrimeCounting.lean#L159-L160): Git blob `a9d6b59349f06c735cd99e7c5693f017c72282d1`; file SHA-256 `1e16d828297cfe981488e8cd4c4db7598adb96ed35a313f41f45baaf724c27f7`.
- [`residual-evolution`](https://github.com/grwtsk/math/blob/3f248406d576515c964a788add3f1423be959d67/GRWTSK/Analysis/ErrorBounds/SourceResidualEvolution.lean#L57-L64): Git blob `f5f0b5915241a01a9ebf54dd91a62fd68bd9f93f`; file SHA-256 `4fabe56c8837be626010f3ed3abf021eeb646002588804c4ef151339d353ec74`.
- [`sublinear-profile`](https://github.com/grwtsk/math/blob/3f248406d576515c964a788add3f1423be959d67/GRWTSK/Analysis/Asymptotics/SublinearDyadic.lean#L29-L45): Git blob `91db37fec2983da6de753be5f3e8e6cad1295d75`; file SHA-256 `691d520273705124e162a7531ced5f64d7fc820e392531af2d9c89b3c0f483e1`.
- [`zero-detector`](https://github.com/grwtsk/math/blob/3f248406d576515c964a788add3f1423be959d67/GRWTSK/Analysis/Complex/LogarithmicPrincipalPart.lean#L34-L51): Git blob `a9f568cb2242e69ff5e4b8d34e6505d24992184f`; file SHA-256 `3515f8f44b0486f45cc6e244870f4b37cda3e6e124251c47d71efb1350a8ea81`.
