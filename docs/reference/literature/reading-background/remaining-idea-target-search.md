# Further Lean search: 21 unresolved research ideas

Current follow-up for the ten unresolved ideas: [broader maintained/upstream Lean search by taxonomy](ten-idea-target-search.md). Earlier statuses remain historical; the newer review distinguishes narrow conditional fragments and remaining gaps.

**5 conditional-fragment**; **4 obstruction-only**; **2 repair-candidate**; **10 unresolved**. All 21 exact asset/idea identities remain separate. **No main manuscript claim is marked resolved.**

Maintained-code search baseline: `ba191bd06dcd3b2be364f9b7267b4ea57df21bbc`. Explicit upstream mathlib dependency: `db584cd6d46c92f209a44c0f1c829460d327499d`, verified against `lake-manifest.json` at that maintained baseline. [Review data](remaining-idea-target-search.json) · [Strict schema](remaining-idea-target-search.schema.json) · [Prior 40-idea pass](unresolved-idea-broader-search.md)

Conditional fragments concern narrower source subclaims under retained premises. Obstruction-only references check an invalid inference, and repair candidates propose a different bridge; neither establishes the original conclusion. Rejected candidates are included only to explain why a similar declaration is insufficient. Owner understanding dates remain null.

## Algebra — 9 versions

<a id="1574517a994e89cc-motivic-period-orbits"></a>
### Conjectures and Proofs for Galois-Theoretic Extensions of Automorphic L-Functions — `1574517a994e`

`idea:unpublished-v3:1574517a994e89cc:motivic-period-orbits` — **conditional-fragment**. Main claim unresolved.

The manuscript proposes a motivic-Galois action on noncritical values, independence of conjugates and a field containing infinitely many algebraically independent periods.

The printed independence assumption has an exact conditional consequence in upstream Lean: an algebraically independent family is linearly independent over the same coefficient ring. This is a fragment about the assumed period family, not a construction of motivic conjugates or their independence. The two-page draft supplies no injective map from the conjugate-value family to independent period coordinates, and a single transcendental value does not generate infinite transcendence degree.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/1574517a994e--Proof_Draft_for_Zeros_on_the_Critical_Line__Riemann_Zeta_Function_and_Dirichlet_L_functions (4).pdf#page=1>): “Conjecture 1:”. Page-text SHA-256 `0c52294d74ab6084de944ef31a6358ebfa5a3c995a711530b3669360c8f68049`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/1574517a994e--Proof_Draft_for_Zeros_on_the_Critical_Line__Riemann_Zeta_Function_and_Dirichlet_L_functions (4).pdf#page=2>): “Proof of Conjecture 3:”. Page-text SHA-256 `54860375a64a792f74356ff7e66e13e03beb88ab7e58530071d737b1986baf5f`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/1574517a994e--Proof_Draft_for_Zeros_on_the_Critical_Line__Riemann_Zeta_Function_and_Dirichlet_L_functions (4).pdf#page=2>): “Conjecture 3: Galois Closure for Transcendental Values”. Page-text SHA-256 `54860375a64a792f74356ff7e66e13e03beb88ab7e58530071d737b1986baf5f`.
- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/1574517a994e--Proof_Draft_for_Zeros_on_the_Critical_Line__Riemann_Zeta_Function_and_Dirichlet_L_functions (4).pdf#page=1>): “Conjectures and Proofs for Galois-Theoretic”. Page-text SHA-256 `0c52294d74ab6084de944ef31a6358ebfa5a3c995a711530b3669360c8f68049`.

Further complete pages read: 1, 2. Pages beyond previously recorded citation pages: none; reread of already recorded material. Short asset; no further unreviewed substantive section located. Complete listed pages reread. Exact twin-page text may be read once across distinct assets; identities remain separate.

Broadened search terms: `AlgebraicIndependent linearIndependent`, `motivic period orbit`, `transcendence degree`, `Baker`.

Lean candidates inspected:

- **conditional-fragment**: [`AlgebraicIndependent.linearIndependent`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/RingTheory/AlgebraicIndependent/Basic.lean#L71-L83), `Mathlib/RingTheory/AlgebraicIndependent/Basic.lean:71–83`. For commutative rings R,A with an R-algebra structure, an assumed algebraically independent family x:ι→A is linearly independent over R. This excludes finite R-linear relations in that same family. It constructs no motivic/logarithmic family, no independence premise, no map from conjugate L-values, no coefficient-field change and no infinite-series transcendence result.

Missing bridges:

- Distinguish noncritical in the motivic critical-value sense from Re(s)≠1/2; define the exact values and realizations.
- Specify the acting group and period torsor and prove orbit-generation claims. Baker’s theorem does not establish arbitrary motivic period independence.
- A group orbit or transcendental generator does not by itself produce infinitely many algebraically independent periods; state and prove the required transcendence-degree assertion.
- Specify the period torsor and coefficient field and prove the required independence instead of assuming it.
- Construct the actual motivic action and period relations; neither the auxiliary approximation lemma nor transcendence of one value establishes infinitely many independent periods.
- Construct the actual period family and prove the stated algebraic-independence premise, retaining the coefficient field.
- Specify the orbit and a suitable injective coefficient/comparison map for the conjugate values; duplicate values or dependent combinations are not excluded by independence of a different family.

<a id="1961da5dba9ca115-motivic-period-orbits"></a>
### Conjectures and Proofs for Galois-Theoretic Extensions of Automorphic L-Functions — `1961da5dba9c`

`idea:unpublished-v3:1961da5dba9ca115:motivic-period-orbits` — **conditional-fragment**. Main claim unresolved.

The manuscript proposes a motivic-Galois action on noncritical values, independence of conjugates and a field containing infinitely many algebraically independent periods.

The printed independence assumption has an exact conditional consequence in upstream Lean: an algebraically independent family is linearly independent over the same coefficient ring. This is a fragment about the assumed period family, not a construction of motivic conjugates or their independence. The two-page draft supplies no injective map from the conjugate-value family to independent period coordinates, and a single transcendental value does not generate infinite transcendence degree.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/1961da5dba9c--Proof_Draft_for_Zeros_on_the_Critical_Line__Riemann_Zeta_Function_and_Dirichlet_L_functions (3).pdf#page=1>): “Conjecture 1:”. Page-text SHA-256 `0c52294d74ab6084de944ef31a6358ebfa5a3c995a711530b3669360c8f68049`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/1961da5dba9c--Proof_Draft_for_Zeros_on_the_Critical_Line__Riemann_Zeta_Function_and_Dirichlet_L_functions (3).pdf#page=2>): “Proof of Conjecture 3:”. Page-text SHA-256 `54860375a64a792f74356ff7e66e13e03beb88ab7e58530071d737b1986baf5f`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/1961da5dba9c--Proof_Draft_for_Zeros_on_the_Critical_Line__Riemann_Zeta_Function_and_Dirichlet_L_functions (3).pdf#page=2>): “Conjecture 3: Galois Closure for Transcendental Values”. Page-text SHA-256 `54860375a64a792f74356ff7e66e13e03beb88ab7e58530071d737b1986baf5f`.
- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/1961da5dba9c--Proof_Draft_for_Zeros_on_the_Critical_Line__Riemann_Zeta_Function_and_Dirichlet_L_functions (3).pdf#page=1>): “Conjectures and Proofs for Galois-Theoretic”. Page-text SHA-256 `0c52294d74ab6084de944ef31a6358ebfa5a3c995a711530b3669360c8f68049`.

Further complete pages read: 1, 2. Pages beyond previously recorded citation pages: none; reread of already recorded material. Short asset; no further unreviewed substantive section located. Complete listed pages reread. Exact twin-page text may be read once across distinct assets; identities remain separate.

Broadened search terms: `AlgebraicIndependent linearIndependent`, `motivic period orbit`, `transcendence degree`, `Baker`.

Lean candidates inspected:

- **conditional-fragment**: [`AlgebraicIndependent.linearIndependent`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/RingTheory/AlgebraicIndependent/Basic.lean#L71-L83), `Mathlib/RingTheory/AlgebraicIndependent/Basic.lean:71–83`. For commutative rings R,A with an R-algebra structure, an assumed algebraically independent family x:ι→A is linearly independent over R. This excludes finite R-linear relations in that same family. It constructs no motivic/logarithmic family, no independence premise, no map from conjugate L-values, no coefficient-field change and no infinite-series transcendence result.

Missing bridges:

- Distinguish noncritical in the motivic critical-value sense from Re(s)≠1/2; define the exact values and realizations.
- Specify the acting group and period torsor and prove orbit-generation claims. Baker’s theorem does not establish arbitrary motivic period independence.
- A group orbit or transcendental generator does not by itself produce infinitely many algebraically independent periods; state and prove the required transcendence-degree assertion.
- Specify the period torsor and coefficient field and prove the required independence instead of assuming it.
- Construct the actual motivic action and period relations; neither the auxiliary approximation lemma nor transcendence of one value establishes infinitely many independent periods.
- Construct the actual period family and prove the stated algebraic-independence premise, retaining the coefficient field.
- Specify the orbit and a suitable injective coefficient/comparison map for the conjugate values; duplicate values or dependent combinations are not excluded by independence of a different family.

<a id="498a8b7e7583e8ec-exceptional-embedding-transfer"></a>
### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations — `498a8b7e7583`

`idea:unpublished-v3:498a8b7e7583e8ec:exceptional-embedding-transfer` — **unresolved**. Main claim unresolved.

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and pinned Lean evidence](ten-idea-target-search.md#498a8b7e7583e8ec-exceptional-embedding-transfer).

The outline proposes G2,F4,E8 representations in GL(7),GL(26),GL(248) and claims that embeddings preserve critical-line residue properties.

The complete short outline states dimensions and preservation claims without defining a representation or local parameters. The broadened Lie/root-system and representation searches did not establish the automorphic lift, compactification or exact zero/residue preservation law. A finite-dimensional group representation is not a global automorphic transfer.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/498a8b7e7583--i (3).pdf#page=1>): “Exceptional Group Embeddings”. Page-text SHA-256 `e1a09142b500da0d9b255b6c37916fb490be74ab2426c74414dffe11adf39f21`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/498a8b7e7583--i (3).pdf#page=2>): “Residue Suppression and Functional Equation”. Page-text SHA-256 `d4918a427957a5f13637da97018dd8484476128ae3af09279b685a9826d9b150`.
- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/498a8b7e7583--i (3).pdf#page=1>): “Exceptional Groups: Embeddings and”. Page-text SHA-256 `e1a09142b500da0d9b255b6c37916fb490be74ab2426c74414dffe11adf39f21`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/498a8b7e7583--i (3).pdf#page=2>): “4     Residue Suppression and Functional Equation Sym-”. Page-text SHA-256 `d4918a427957a5f13637da97018dd8484476128ae3af09279b685a9826d9b150`.

Further complete pages read: 1, 2. Pages beyond previously recorded citation pages: none; reread of already recorded material. Short asset; no further unreviewed substantive section located. Complete listed pages reread. Exact twin-page text may be read once across distinct assets; identities remain separate.

Broadened search terms: `exceptional faithful representation`, `G2 F4 E8 GL embedding`, `Satake local factors`, `automorphic transfer`.

Lean candidates inspected:

- No concrete declaration established. This is a limited negative search finding, not proof of absence from Lean.

Missing bridges:

- Construct the actual representation homomorphisms with the required base fields and exact preservation laws.
- A faithful linear representation does not identify automorphic L-functions or preserve their zeros by itself. Supply the local parameters, global analytic comparison and boundary regularization theorem.
- Construct the group representations and the separate analytic/local-global L-function comparison.
- Construct the representation homomorphisms, genuine twists and local-factor identities; prove the separate global analytic comparison.
- Construct the homomorphism over its actual base field and separately prove local-factor and analytic global comparisons, including all dual/normalization data.

<a id="67b33f06a6094d05-exceptional-embedding-transfer"></a>
### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations — `67b33f06a609`

`idea:unpublished-v3:67b33f06a6094d05:exceptional-embedding-transfer` — **unresolved**. Main claim unresolved.

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and pinned Lean evidence](ten-idea-target-search.md#67b33f06a6094d05-exceptional-embedding-transfer).

The outline proposes G2,F4,E8 representations in GL(7),GL(26),GL(248) and claims that embeddings preserve critical-line residue properties.

The complete short outline states dimensions and preservation claims without defining a representation or local parameters. The broadened Lie/root-system and representation searches did not establish the automorphic lift, compactification or exact zero/residue preservation law. A finite-dimensional group representation is not a global automorphic transfer.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/67b33f06a609--i (2).pdf#page=1>): “Exceptional Group Embeddings”. Page-text SHA-256 `e1a09142b500da0d9b255b6c37916fb490be74ab2426c74414dffe11adf39f21`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/67b33f06a609--i (2).pdf#page=2>): “Residue Suppression and Functional Equation”. Page-text SHA-256 `d4918a427957a5f13637da97018dd8484476128ae3af09279b685a9826d9b150`.
- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/67b33f06a609--i (2).pdf#page=1>): “Exceptional Groups: Embeddings and”. Page-text SHA-256 `e1a09142b500da0d9b255b6c37916fb490be74ab2426c74414dffe11adf39f21`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/67b33f06a609--i (2).pdf#page=2>): “4     Residue Suppression and Functional Equation Sym-”. Page-text SHA-256 `d4918a427957a5f13637da97018dd8484476128ae3af09279b685a9826d9b150`.

Further complete pages read: 1, 2. Pages beyond previously recorded citation pages: none; reread of already recorded material. Short asset; no further unreviewed substantive section located. Complete listed pages reread. Exact twin-page text may be read once across distinct assets; identities remain separate.

Broadened search terms: `exceptional faithful representation`, `G2 F4 E8 GL embedding`, `Satake local factors`, `automorphic transfer`.

Lean candidates inspected:

- No concrete declaration established. This is a limited negative search finding, not proof of absence from Lean.

Missing bridges:

- Construct the actual representation homomorphisms with the required base fields and exact preservation laws.
- A faithful linear representation does not identify automorphic L-functions or preserve their zeros by itself. Supply the local parameters, global analytic comparison and boundary regularization theorem.
- Construct the group representations and the separate analytic/local-global L-function comparison.
- Construct the representation homomorphisms, genuine twists and local-factor identities; prove the separate global analytic comparison.
- Construct the homomorphism over its actual base field and separately prove local-factor and analytic global comparisons, including all dual/normalization data.

<a id="159cb12b34d5a425-kl-positive-to-residue-gap"></a>
### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis — `159cb12b34d5`

`idea:unpublished-v3:159cb12b34d5a425:kl-positive-to-residue-gap` — **unresolved**. Main claim unresolved.

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and pinned Lean evidence](ten-idea-target-search.md#159cb12b34d5a425-kl-positive-to-residue-gap).

KL polynomial positivity and nilpotent-stratum localization are asserted to imply analytic residue vanishing, with affine/quantum extensions and a G2 example.

The reread of the recurrence, affine/quantum claims and G2 example still gives no compatible defining Hecke relations. Broader searching into Coxeter and Hecke modules did not locate a matching KL polynomial theorem plus the claimed analytic realization. Double-coset Hecke rings are not automatically the Coxeter Hecke algebra used for KL polynomials.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/159cb12b34d5--C (7).pdf#page=2>): “The positivity of Pu,v”. Page-text SHA-256 `f0dd8824015f3d5ec19eeb4f9c9f0a7b283f60e9aee9d54c7b16d45155a0a6f0`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/159cb12b34d5--C (7).pdf#page=3>): “recursive computations yielding”. Page-text SHA-256 `886f5bc6db5b64b1dd21ed0a5d9c802d1fb95e06c8ad022ebef9dc079c098103`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/159cb12b34d5--C (7).pdf#page=3>): “4     Affine and Quantum Extensions”. Page-text SHA-256 `886f5bc6db5b64b1dd21ed0a5d9c802d1fb95e06c8ad022ebef9dc079c098103`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/159cb12b34d5--C (7).pdf#page=2>): “• Localizing residues of L(s, π) to nilpotent cones in compactified moduli spaces.”. Page-text SHA-256 `f0dd8824015f3d5ec19eeb4f9c9f0a7b283f60e9aee9d54c7b16d45155a0a6f0`.

Further complete pages read: 2, 3. Pages beyond previously recorded citation pages: none; reread of already recorded material. Short asset; no further unreviewed substantive section located. Complete listed pages reread. Exact twin-page text may be read once across distinct assets; identities remain separate.

Broadened search terms: `Kazhdan Lusztig recurrence`, `Coxeter Hecke algebra`, `HeckeCosetModule`, `intersection positivity`.

Lean candidates inspected:

- No concrete declaration established. This is a limited negative search finding, not proof of absence from Lean.

Missing bridges:

- Verify the polynomial recurrence, diagonal normalization and G2 example against the defining Hecke relations; the printed recursion and q² diagonal example are not established by the text.
- Construct the localization/realization and prove a source-specific identity linking its signed or graded pairing to analytic residues/zeros. Positivity does not imply vanishing without an additional proved implication.
- Specify and justify the affine/quantum variants instead of adding unnamed correction terms.
- Define the Hecke/KL recurrence and realization; prove an actual signed analytic comparison before any vanishing conclusion.
- Supply a correct KL specification and its geometric realization, then prove a source-specific residue/zero comparison; positivity alone does not discharge it.
- Repair and verify the recurrence and diagonal normalization, construct the actual intersection-cohomology realization, and prove positivity-to-vanishing for the specified analytic consumer.

<a id="553f237f431fc299-kl-positive-to-residue-gap"></a>
### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis — `553f237f431f`

`idea:unpublished-v3:553f237f431fc299:kl-positive-to-residue-gap` — **unresolved**. Main claim unresolved.

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and pinned Lean evidence](ten-idea-target-search.md#553f237f431fc299-kl-positive-to-residue-gap).

KL polynomial positivity and nilpotent-stratum localization are asserted to imply analytic residue vanishing, with affine/quantum extensions and a G2 example.

The reread of the recurrence, affine/quantum claims and G2 example still gives no compatible defining Hecke relations. Broader searching into Coxeter and Hecke modules did not locate a matching KL polynomial theorem plus the claimed analytic realization. Double-coset Hecke rings are not automatically the Coxeter Hecke algebra used for KL polynomials.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/553f237f431f--C (9).pdf#page=2>): “The positivity of Pu,v”. Page-text SHA-256 `f0dd8824015f3d5ec19eeb4f9c9f0a7b283f60e9aee9d54c7b16d45155a0a6f0`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/553f237f431f--C (9).pdf#page=3>): “recursive computations yielding”. Page-text SHA-256 `886f5bc6db5b64b1dd21ed0a5d9c802d1fb95e06c8ad022ebef9dc079c098103`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/553f237f431f--C (9).pdf#page=3>): “4     Affine and Quantum Extensions”. Page-text SHA-256 `886f5bc6db5b64b1dd21ed0a5d9c802d1fb95e06c8ad022ebef9dc079c098103`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/553f237f431f--C (9).pdf#page=2>): “• Localizing residues of L(s, π) to nilpotent cones in compactified moduli spaces.”. Page-text SHA-256 `f0dd8824015f3d5ec19eeb4f9c9f0a7b283f60e9aee9d54c7b16d45155a0a6f0`.

Further complete pages read: 2, 3. Pages beyond previously recorded citation pages: none; reread of already recorded material. Short asset; no further unreviewed substantive section located. Complete listed pages reread. Exact twin-page text may be read once across distinct assets; identities remain separate.

Broadened search terms: `Kazhdan Lusztig recurrence`, `Coxeter Hecke algebra`, `HeckeCosetModule`, `intersection positivity`.

Lean candidates inspected:

- No concrete declaration established. This is a limited negative search finding, not proof of absence from Lean.

Missing bridges:

- Verify the polynomial recurrence, diagonal normalization and G2 example against the defining Hecke relations; the printed recursion and q² diagonal example are not established by the text.
- Construct the localization/realization and prove a source-specific identity linking its signed or graded pairing to analytic residues/zeros. Positivity does not imply vanishing without an additional proved implication.
- Specify and justify the affine/quantum variants instead of adding unnamed correction terms.
- Define the Hecke/KL recurrence and realization; prove an actual signed analytic comparison before any vanishing conclusion.
- Supply a correct KL specification and its geometric realization, then prove a source-specific residue/zero comparison; positivity alone does not discharge it.
- Repair and verify the recurrence and diagonal normalization, construct the actual intersection-cohomology realization, and prove positivity-to-vanishing for the specified analytic consumer.

<a id="bd284739968eab78-exceptional-embedding-not-automorphic-transfer"></a>
### Residue Suppression via Embeddings and Geometric Langlands Localization — `bd284739968e`

`idea:unpublished-v3:bd284739968eab78:exceptional-embedding-not-automorphic-transfer` — **unresolved**. Main claim unresolved.

Current broader-search assessment: **conditional-fragment**, main claim unresolved. [Further paper and pinned Lean evidence](ten-idea-target-search.md#bd284739968eab78-exceptional-embedding-not-automorphic-transfer).

Exceptional-group linear embeddings are paired with nilpotent localization and finite prime residue tables to claim all-zero suppression.

The further appendix defines its reported residues using chosen critical-line coordinates and finitely many supplied eigenvalues. This builds alignment into the numerical model without identifying it with the original automorphic source. Finite comparison tolerances and representation dimensions do not supply an exact exceptional-group lift or a global zero theorem.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/bd284739968e--D (2).pdf#page=3>): “Theorem: Positivity Constraints for F4 and E8”. Page-text SHA-256 `99610e9919ad114cfb222667bd41771aa3b3895f779491bb758ba364ae52ef98`.
- [p. 5](</Users/local/Desktop/MathematicsLibrary/NumberTheory/bd284739968e--D (2).pdf#page=5>): “Extensions to Symmetric and Exterior Powers”. Page-text SHA-256 `029252e0e8c3cc44824ae20e6a0db4a1fa7016fb2489646e969b19de12e742b7`.
- [p. 10](</Users/local/Desktop/MathematicsLibrary/NumberTheory/bd284739968e--D (2).pdf#page=10>): “def residue_computation(prime_list, eigenvalues):”. Page-text SHA-256 `3943ccf311e2f855e0a595f09cbb263bc494c3c4e52d6d41d33c09b948f549c1`.
- [p. 8](</Users/local/Desktop/MathematicsLibrary/NumberTheory/bd284739968e--D (2).pdf#page=8>): “Prime p     Res(p)G2   Res(p)GL(7) Difference”. Page-text SHA-256 `eecf6273c7d8f380e42dbc525d90401a0d44133ed299aa89c5abdf5186ab877b`.
- [p. 4](</Users/local/Desktop/MathematicsLibrary/NumberTheory/bd284739968e--D (2).pdf#page=4>): “Proof. 1. **Compactification of Moduli Space:** Decompose the moduli space into boundary”. Page-text SHA-256 `ed0167e5d58cc5eab63bbcd26b1a38e6f98679d01463917efa66d981d4f67943`.
- [p. 5](</Users/local/Desktop/MathematicsLibrary/NumberTheory/bd284739968e--D (2).pdf#page=5>): “Prime p      Res(p)F4  Res(p)GL(26)      Difference”. Page-text SHA-256 `029252e0e8c3cc44824ae20e6a0db4a1fa7016fb2489646e969b19de12e742b7`.
- [p. 9](</Users/local/Desktop/MathematicsLibrary/NumberTheory/bd284739968e--D (2).pdf#page=9>): “A     Numerical Validation Methodologies”. Page-text SHA-256 `77a2f260c0736e8e8c98a159ecdbba5cd91659396819fc909c59b7dd45765a5d`.

Further complete pages read: 4, 5, 9. Pages beyond previously recorded citation pages: 4, 9. Further selected complete physical pages read, including later limitations/open-question sections; not a full-manuscript audit. Exact twin-page text may be read once across distinct assets; identities remain separate.

Broadened search terms: `exceptional residue finite prime sum`, `symmetric exterior power transfer`, `twisted Dirichlet character`, `validated eigenvalue enclosure`.

Lean candidates inspected:

- No concrete declaration established. This is a limited negative search finding, not proof of absence from Lean.

Missing bridges:

- A faithful linear representation G→GL(n) alone does not construct a global automorphic lift or prove equality of L-functions.
- Construct compactification/localization and prove the actual positivity-to-residue-zero and residue-to-zero-location comparisons.
- Finite prime tables with 10⁻⁸/10⁻⁹ differences are approximate comparisons, not exact factor identities or all-zero coverage; symmetric/exterior/twisted claims need separate sources.
- Construct exact local parameters and the automorphic transfer; certify numerical errors only after fixing the actual mathematical source.
- Construct the representation homomorphisms, genuine twists and local-factor identities; prove the separate global analytic comparison.
- Construct the actual source, representation/twist and local factors before comparing the data; certify the enclosures and omitted tail.
- Explain why the test coordinates may be restricted to the critical line without assuming the desired conclusion.

<a id="a748ea4b4592e7ab-purity-frobenius-versus-global-zeros"></a>
### The Ring—A Comprehensive Framework for Spectral Purity, Motivic Cohomology, and Fourier-Mukai Symmetries — `a748ea4b4592`

`idea:unpublished-v3:a748ea4b4592e7ab:purity-frobenius-versus-global-zeros` — **obstruction-only**. Main claim unresolved.

The Ring identifies local Frobenius weight magnitudes with automorphic global zeros and uses Fourier–Mukai irreducibility/support preservation and intersection-cohomology spectrum to enforce purity.

The later open-question chapters explicitly leave exceptional/higher-dimensional purity, local factors and motivic zero distributions unresolved. Upstream power convergence and nonzero-power lemmas give a precise finite-to-limit scope check: with x=1/2 every finite product x^n is nonzero, yet it tends to zero. This blocks a bare passage from finite nonvanishing to nonvanishing of a limit. It is not a counterexample to a correctly normalized convergent L-function product or a formal theorem about the undefined Spec(L).

Paper evidence (physical page numbers; prior citations preserved):

- [p. 82](</Users/local/Desktop/MathematicsLibrary/NumberTheory/a748ea4b4592--The_Ring_Spectral_Purity__Motivic_Cohomology__and_Fourier_Mukai_Symmetries (3).pdf#page=82>): “Lemma 8.2”. Page-text SHA-256 `d512130e9dc70e0587b35512a132b17e2f6eceb1a72fb4cd33fd1ccb7941fb48`.
- [p. 87](</Users/local/Desktop/MathematicsLibrary/NumberTheory/a748ea4b4592--The_Ring_Spectral_Purity__Motivic_Cohomology__and_Fourier_Mukai_Symmetries (3).pdf#page=87>): “Lemma 9.3”. Page-text SHA-256 `8a986f83e54cab6305b70b8c7cabc97d92a2b6018b5c24cf7a65292c468c49b5`.
- [p. 91](</Users/local/Desktop/MathematicsLibrary/NumberTheory/a748ea4b4592--The_Ring_Spectral_Purity__Motivic_Cohomology__and_Fourier_Mukai_Symmetries (3).pdf#page=91>): “Lemma 10.4”. Page-text SHA-256 `bad1bc584eba3673bbd0d6e1ee07de3e95bb7b659126a32a2027abf981995e0e`.
- [p. 108](</Users/local/Desktop/MathematicsLibrary/NumberTheory/a748ea4b4592--The_Ring_Spectral_Purity__Motivic_Cohomology__and_Fourier_Mukai_Symmetries (3).pdf#page=108>): “15     Frobenius Eigenvalues: Arithmetic and Spectral Connections”. Page-text SHA-256 `f7a0544aa29e2632785b727f39ccb1c488a19bb30fc9e20af927f1ab721e669c`.
- [p. 138](</Users/local/Desktop/MathematicsLibrary/NumberTheory/a748ea4b4592--The_Ring_Spectral_Purity__Motivic_Cohomology__and_Fourier_Mukai_Symmetries (3).pdf#page=138>): “23     Fourier-Mukai Transform: Definition and Fundamental Prop-”. Page-text SHA-256 `12c4d2c302efb686564d478a4519280a7a66847ae86566e760997cc36d27f144`.
- [p. 175](</Users/local/Desktop/MathematicsLibrary/NumberTheory/a748ea4b4592--The_Ring_Spectral_Purity__Motivic_Cohomology__and_Fourier_Mukai_Symmetries (3).pdf#page=175>): “33     Global-Local Motivic Extensions: Bridging Local and Global”. Page-text SHA-256 `7e16429453e344c38aec3f1ef1d9b5f1ec10cd2bc795627ed99c802cd0c7a2f5`.
- [p. 176](</Users/local/Desktop/MathematicsLibrary/NumberTheory/a748ea4b4592--The_Ring_Spectral_Purity__Motivic_Cohomology__and_Fourier_Mukai_Symmetries (3).pdf#page=176>): “33.2.2    Global Spectral Purity”. Page-text SHA-256 `9ea34b7a98c1f4a44d0fb75411f0902463d1e5c3a6605c3f2f9d0b3eca3f13fc`.
- [p. 330](</Users/local/Desktop/MathematicsLibrary/NumberTheory/a748ea4b4592--The_Ring_Spectral_Purity__Motivic_Cohomology__and_Fourier_Mukai_Symmetries (3).pdf#page=330>): “70     Open Questions: Challenges and Directions for Future Re-”. Page-text SHA-256 `0edb2fb7c577a6d72a76d8bc899de2d3bae376d80e2fa55deaf2d3e05a6aba7d`.
- [p. 331](</Users/local/Desktop/MathematicsLibrary/NumberTheory/a748ea4b4592--The_Ring_Spectral_Purity__Motivic_Cohomology__and_Fourier_Mukai_Symmetries (3).pdf#page=331>): “70.3     Connections Between Domains”. Page-text SHA-256 `21dc0b59ab9dc09c3682323f710f44f5aba6692528c3f9fe0683758af60a9885`.
- [p. 334](</Users/local/Desktop/MathematicsLibrary/NumberTheory/a748ea4b4592--The_Ring_Spectral_Purity__Motivic_Cohomology__and_Fourier_Mukai_Symmetries (3).pdf#page=334>): “71     Challenges in Motivic L-Functions: Open Problems and Fu-”. Page-text SHA-256 `79b161c7236b03e8abfcf2dbc9065e896ef224ded9de995c0808d149832a8956`.
- [p. 335](</Users/local/Desktop/MathematicsLibrary/NumberTheory/a748ea4b4592--The_Ring_Spectral_Purity__Motivic_Cohomology__and_Fourier_Mukai_Symmetries (3).pdf#page=335>): “Challenge 71.5. Twisted settings and derived categories introduce additional complexity,”. Page-text SHA-256 `a09e6d3c5ac4c5873775af95c08177d6f3053770e4126e9adf7422e3abed81fa`.

Further complete pages read: 330, 331, 334, 335. Pages beyond previously recorded citation pages: 330, 331, 334, 335. Further selected complete physical pages read, including later limitations/open-question sections; not a full-manuscript audit. Exact twin-page text may be read once across distinct assets; identities remain separate.

Broadened search terms: `Euler product local global spectrum`, `nonzero finite products zero limit`, `tendsto_pow_atTop_nhds_zero`, `Fourier Mukai purity`.

Lean candidates inspected:

- **obstruction-only**: [`tendsto_pow_atTop_nhds_zero_of_norm_lt_one`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Analysis/SpecificLimits/Normed.lean#L221-L225), `Mathlib/Analysis/SpecificLimits/Normed.lean:221–225`. In a seminormed ring, ||x||<1 implies x^n→0 as n→∞. Together with nonzero-powers, x=1/2 gives nonzero finite products converging to zero. This obstructs an unsupported finite-to-limit nonvanishing inference; it is not an L-function Euler-product or analytic-continuation theorem.
- **obstruction-only**: [`pow_ne_zero`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Algebra/GroupWithZero/Basic.lean#L258-L260), `Mathlib/Algebra/GroupWithZero/Basic.lean:258–260`. For a nonzero element in the file’s monoid-with-zero/no-zero-divisors setting, every natural power is nonzero. Applied to x=1/2 in ℝ it describes each finite product, not its limit. The specialized combined counterexample has not been newly compiled.

Missing bridges:

- Separate local Frobenius eigenvalue weights |α|=q^(w/2) from complex global L-function zero coordinates; construct an exact comparison with all normalizations.
- A general Fourier–Mukai kernel need not preserve irreducibility or support; supports even live on different spaces. Specify equivalence/kernel hypotheses and prove the intended relation.
- Define Spec(IC(M_G)) and prove its all-zero trace realization. Derived-category formation localizes quasi-isomorphisms, not merely homotopy equivalences; retain this categorical distinction.
- Construct the variable/normalization change and exact determinant/global analytic realization, with all convergence and weight hypotheses.
- Define the local/global spectral objects and prove their relation under analytic continuation; local factor roots and global complex zero coordinates are different objects.
- Specify the Fourier–Mukai kernel and equivalence hypotheses; arbitrary kernels on dual abelian varieties need not induce equivalences.
- Provide uniform analytic convergence and nonvanishing/unit bounds in the actual domain and a separate continuation theorem; a product identity is not a spectrum-union law.
- Preserve the later acknowledged motivic/exceptional open cases and construct the exact local-weight/global-zero comparison and Fourier–Mukai kernel.

<a id="e686e3fe101ea8bf-purity-frobenius-versus-global-zeros"></a>
### The Ring—A Comprehensive Framework for Spectral Purity, Motivic Cohomology, and Fourier-Mukai Symmetries — `e686e3fe101e`

`idea:unpublished-v3:e686e3fe101ea8bf:purity-frobenius-versus-global-zeros` — **obstruction-only**. Main claim unresolved.

The Ring identifies local Frobenius weight magnitudes with automorphic global zeros and uses Fourier–Mukai irreducibility/support preservation and intersection-cohomology spectrum to enforce purity.

The later open-question chapters explicitly leave exceptional/higher-dimensional purity, local factors and motivic zero distributions unresolved. Upstream power convergence and nonzero-power lemmas give a precise finite-to-limit scope check: with x=1/2 every finite product x^n is nonzero, yet it tends to zero. This blocks a bare passage from finite nonvanishing to nonvanishing of a limit. It is not a counterexample to a correctly normalized convergent L-function product or a formal theorem about the undefined Spec(L).

Paper evidence (physical page numbers; prior citations preserved):

- [p. 82](</Users/local/Desktop/MathematicsLibrary/NumberTheory/e686e3fe101e--The_Ring_Spectral_Purity__Motivic_Cohomology__and_Fourier_Mukai_Symmetries (2).pdf#page=82>): “Lemma 8.2”. Page-text SHA-256 `d512130e9dc70e0587b35512a132b17e2f6eceb1a72fb4cd33fd1ccb7941fb48`.
- [p. 87](</Users/local/Desktop/MathematicsLibrary/NumberTheory/e686e3fe101e--The_Ring_Spectral_Purity__Motivic_Cohomology__and_Fourier_Mukai_Symmetries (2).pdf#page=87>): “Lemma 9.3”. Page-text SHA-256 `8a986f83e54cab6305b70b8c7cabc97d92a2b6018b5c24cf7a65292c468c49b5`.
- [p. 91](</Users/local/Desktop/MathematicsLibrary/NumberTheory/e686e3fe101e--The_Ring_Spectral_Purity__Motivic_Cohomology__and_Fourier_Mukai_Symmetries (2).pdf#page=91>): “Lemma 10.4”. Page-text SHA-256 `bad1bc584eba3673bbd0d6e1ee07de3e95bb7b659126a32a2027abf981995e0e`.
- [p. 108](</Users/local/Desktop/MathematicsLibrary/NumberTheory/e686e3fe101e--The_Ring_Spectral_Purity__Motivic_Cohomology__and_Fourier_Mukai_Symmetries (2).pdf#page=108>): “15     Frobenius Eigenvalues: Arithmetic and Spectral Connections”. Page-text SHA-256 `f7a0544aa29e2632785b727f39ccb1c488a19bb30fc9e20af927f1ab721e669c`.
- [p. 138](</Users/local/Desktop/MathematicsLibrary/NumberTheory/e686e3fe101e--The_Ring_Spectral_Purity__Motivic_Cohomology__and_Fourier_Mukai_Symmetries (2).pdf#page=138>): “23     Fourier-Mukai Transform: Definition and Fundamental Prop-”. Page-text SHA-256 `12c4d2c302efb686564d478a4519280a7a66847ae86566e760997cc36d27f144`.
- [p. 175](</Users/local/Desktop/MathematicsLibrary/NumberTheory/e686e3fe101e--The_Ring_Spectral_Purity__Motivic_Cohomology__and_Fourier_Mukai_Symmetries (2).pdf#page=175>): “33     Global-Local Motivic Extensions: Bridging Local and Global”. Page-text SHA-256 `7e16429453e344c38aec3f1ef1d9b5f1ec10cd2bc795627ed99c802cd0c7a2f5`.
- [p. 176](</Users/local/Desktop/MathematicsLibrary/NumberTheory/e686e3fe101e--The_Ring_Spectral_Purity__Motivic_Cohomology__and_Fourier_Mukai_Symmetries (2).pdf#page=176>): “33.2.2    Global Spectral Purity”. Page-text SHA-256 `9ea34b7a98c1f4a44d0fb75411f0902463d1e5c3a6605c3f2f9d0b3eca3f13fc`.
- [p. 330](</Users/local/Desktop/MathematicsLibrary/NumberTheory/e686e3fe101e--The_Ring_Spectral_Purity__Motivic_Cohomology__and_Fourier_Mukai_Symmetries (2).pdf#page=330>): “70     Open Questions: Challenges and Directions for Future Re-”. Page-text SHA-256 `0edb2fb7c577a6d72a76d8bc899de2d3bae376d80e2fa55deaf2d3e05a6aba7d`.
- [p. 331](</Users/local/Desktop/MathematicsLibrary/NumberTheory/e686e3fe101e--The_Ring_Spectral_Purity__Motivic_Cohomology__and_Fourier_Mukai_Symmetries (2).pdf#page=331>): “70.3     Connections Between Domains”. Page-text SHA-256 `21dc0b59ab9dc09c3682323f710f44f5aba6692528c3f9fe0683758af60a9885`.
- [p. 334](</Users/local/Desktop/MathematicsLibrary/NumberTheory/e686e3fe101e--The_Ring_Spectral_Purity__Motivic_Cohomology__and_Fourier_Mukai_Symmetries (2).pdf#page=334>): “71     Challenges in Motivic L-Functions: Open Problems and Fu-”. Page-text SHA-256 `79b161c7236b03e8abfcf2dbc9065e896ef224ded9de995c0808d149832a8956`.
- [p. 335](</Users/local/Desktop/MathematicsLibrary/NumberTheory/e686e3fe101e--The_Ring_Spectral_Purity__Motivic_Cohomology__and_Fourier_Mukai_Symmetries (2).pdf#page=335>): “Challenge 71.5. Twisted settings and derived categories introduce additional complexity,”. Page-text SHA-256 `a09e6d3c5ac4c5873775af95c08177d6f3053770e4126e9adf7422e3abed81fa`.

Further complete pages read: 330, 331, 334, 335. Pages beyond previously recorded citation pages: 330, 331, 334, 335. Further selected complete physical pages read, including later limitations/open-question sections; not a full-manuscript audit. Exact twin-page text may be read once across distinct assets; identities remain separate.

Broadened search terms: `Euler product local global spectrum`, `nonzero finite products zero limit`, `tendsto_pow_atTop_nhds_zero`, `Fourier Mukai purity`.

Lean candidates inspected:

- **obstruction-only**: [`tendsto_pow_atTop_nhds_zero_of_norm_lt_one`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Analysis/SpecificLimits/Normed.lean#L221-L225), `Mathlib/Analysis/SpecificLimits/Normed.lean:221–225`. In a seminormed ring, ||x||<1 implies x^n→0 as n→∞. Together with nonzero-powers, x=1/2 gives nonzero finite products converging to zero. This obstructs an unsupported finite-to-limit nonvanishing inference; it is not an L-function Euler-product or analytic-continuation theorem.
- **obstruction-only**: [`pow_ne_zero`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Algebra/GroupWithZero/Basic.lean#L258-L260), `Mathlib/Algebra/GroupWithZero/Basic.lean:258–260`. For a nonzero element in the file’s monoid-with-zero/no-zero-divisors setting, every natural power is nonzero. Applied to x=1/2 in ℝ it describes each finite product, not its limit. The specialized combined counterexample has not been newly compiled.

Missing bridges:

- Separate local Frobenius eigenvalue weights |α|=q^(w/2) from complex global L-function zero coordinates; construct an exact comparison with all normalizations.
- A general Fourier–Mukai kernel need not preserve irreducibility or support; supports even live on different spaces. Specify equivalence/kernel hypotheses and prove the intended relation.
- Define Spec(IC(M_G)) and prove its all-zero trace realization. Derived-category formation localizes quasi-isomorphisms, not merely homotopy equivalences; retain this categorical distinction.
- Construct the variable/normalization change and exact determinant/global analytic realization, with all convergence and weight hypotheses.
- Define the local/global spectral objects and prove their relation under analytic continuation; local factor roots and global complex zero coordinates are different objects.
- Specify the Fourier–Mukai kernel and equivalence hypotheses; arbitrary kernels on dual abelian varieties need not induce equivalences.
- Provide uniform analytic convergence and nonvanishing/unit bounds in the actual domain and a separate continuation theorem; a product identity is not a spectrum-union law.
- Preserve the later acknowledged motivic/exceptional open cases and construct the exact local-weight/global-zero comparison and Fourier–Mukai kernel.

## Geometry and topology — 2 versions

<a id="ec2b9a77a14f5ea8-distance-reduction"></a>
### Absolute Proof of the Nonexistence of a Rational Distance Point for a Square — `ec2b9a77a14f`

`idea:unpublished-v3:ec2b9a77a14f5ea8:distance-reduction` — **conditional-fragment**. Main claim unresolved.

Rational distances to the four square vertices give rational squared-distance differences and hence rational coordinates; the draft then claims a reduction to a quartic with no rational points.

The complete two-page reread isolates a valid initial subclaim from the failed exclusion: squared-distance differences determine the coordinates. Upstream norm_sub_sq_real is the exact real inner-product expansion underlying d2−d1=1−2x and d4−d1=1−2y after choosing the two unit basis vectors. It supports rational coordinates once rational squared distances are supplied, but does not restrict denominators to 2 or prove rationality of distances from rationality of their squares.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 1](</Users/local/Desktop/MathematicsLibrary/GeometryTopology/ec2b9a77a14f--Rational_Distance (2).pdf#page=1>): “Reduction to a Diophantine System”. Page-text SHA-256 `97d68d6a1a2f1cc2b9eae109618bcdf8035e1edbfce1a5cab6f594e26c5483c3`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/GeometryTopology/ec2b9a77a14f--Rational_Distance (2).pdf#page=2>): “Higher-Genus Curve Argument”. Page-text SHA-256 `85cb0c447a322aa85bbe6e2e33168cdfac4d6328b6f4d025974165799171ccac`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/GeometryTopology/ec2b9a77a14f--Rational_Distance (2).pdf#page=2>): “3     Nonexistence of Rational Solutions via Elliptic Curves”. Page-text SHA-256 `85cb0c447a322aa85bbe6e2e33168cdfac4d6328b6f4d025974165799171ccac`.
- [p. 1](</Users/local/Desktop/MathematicsLibrary/GeometryTopology/ec2b9a77a14f--Rational_Distance (2).pdf#page=1>): “Absolute Proof of the Nonexistence of a Rational Distance Point”. Page-text SHA-256 `97d68d6a1a2f1cc2b9eae109618bcdf8035e1edbfce1a5cab6f594e26c5483c3`.

Further complete pages read: 1, 2. Pages beyond previously recorded citation pages: none; reread of already recorded material. Short asset; no further unreviewed substantive section located. Complete listed pages reread. Exact twin-page text may be read once across distinct assets; identities remain separate.

Broadened search terms: `norm_sub_sq_real`, `rational distance`, `Euclidean coordinates`, `rational quartic exclusion`.

Lean candidates inspected:

- **conditional-fragment**: [`norm_sub_sq_real`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Analysis/InnerProductSpace/Basic.lean#L435-L438), `Mathlib/Analysis/InnerProductSpace/Basic.lean:435–438`. In a real inner-product space, ||x−y||²=||x||²−2<x,y>+||y||². Specializing y to each Euclidean unit basis vector gives the squared-distance coordinate difference. Rational-field closure and coordinate adapters are separate; arbitrary rational coordinates are not half-integers, and rational squared distances do not imply rational distances.

Missing bridges:

- Rational x and y do not imply x=m/2,y=n/2 for integers m,n; retain arbitrary denominators. Rational squared distances are weaker than rational distances.
- Specify a genuine birational reduction with all degeneracies. Faltings finiteness does not imply emptiness, and no exhaustive rational-point certificate is supplied.
- Retain arbitrary rational denominators and supply explicit maps and a complete rational-point certificate.
- Specify the actual curve and all denominators and exceptional points, then prove exhaustive exclusion rather than finiteness.
- Instantiate the Euclidean plane/basis, translate distances into norms and prove rational-field closure for x=(1+d1−d2)/2 and y=(1+d1−d4)/2. No new specialized Lean theorem was compiled.
- The elliptic/quartic parameters, birational maps and exhaustive rational-point exclusion are still absent; Faltings finiteness does not supply emptiness.

<a id="796ba01d4a02a5ba-boundary-positivity-outline"></a>
### Boundary Regularization: A Framework for High-Rank Elimination — `796ba01d4a02`

`idea:unpublished-v3:796ba01d4a02a5ba:boundary-positivity-outline` — **unresolved**. Main claim unresolved.

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and pinned Lean evidence](ten-idea-target-search.md#796ba01d4a02a5ba-boundary-positivity-outline).

The two-page outline proposes boundary localization, Euler-form positivity and exceptional-group regularization, with a reported 10^−8 numerical error.

Both pages are exhausted as substantive outlines. Searching finite Hodge energy, positivity, boundary and localization code did not supply the proposed geometric realization. A positive finite graph energy or Hermitian guard does not instantiate an Euler pairing on these boundary strata or show that a zero gives a forbidden class.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/796ba01d4a02--g (2).pdf#page=1>): “Residue Suppression via Localization”. Page-text SHA-256 `4d8c7b048753cc2dfb6f88275ea478c9e047b33124d3ab9cae9143d6bdd843ff`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/796ba01d4a02--g (2).pdf#page=2>): “Positivity Constraints”. Page-text SHA-256 `ff18a835d335c007bb73a0f80dacab2cb5911bd573e04fa067fad2bf14dcddb2`.
- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/796ba01d4a02--g (2).pdf#page=1>): “Boundary Regularization: A Framework for”. Page-text SHA-256 `4d8c7b048753cc2dfb6f88275ea478c9e047b33124d3ab9cae9143d6bdd843ff`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/796ba01d4a02--g (2).pdf#page=2>): “5     Positivity Constraints”. Page-text SHA-256 `ff18a835d335c007bb73a0f80dacab2cb5911bd573e04fa067fad2bf14dcddb2`.

Further complete pages read: 1, 2. Pages beyond previously recorded citation pages: none; reread of already recorded material. Short asset; no further unreviewed substantive section located. Complete listed pages reread. Exact twin-page text may be read once across distinct assets; identities remain separate.

Broadened search terms: `Euler pairing positivity`, `intersection cohomology vanishing`, `boundary regularization`, `finite Hodge energy`.

Lean candidates inspected:

- No concrete declaration established. This is a limited negative search finding, not proof of absence from Lean.

Missing bridges:

- Define the boundary complex, localization functor and actual signed residue/zero consumer, then prove the source comparison.
- Euler pairings are not universally positive. State the precise sheaves, degrees and positivity theorem, and derive vanishing separately.
- A reported tolerance is not a validated enclosure with full tails or an all-rank result.
- Construct a geometric positive form on the exact class of objects; Hermitian symmetry alone does not imply positivity or vanishing.
- Construct the exact pairing and localization/analytic realization and prove its sign and vanishing implications on the intended objects.
- Define the geometric objects, admissible cone and actual signed analytic consumer; prove a source-specific vanishing/exclusion bridge with exact hypotheses.

## Logic and computation — 3 versions

<a id="3f28be14404a64ea-recomposition-upper-bound-not-separation"></a>
### Unified Proof of the Generalized Riemann Hypothesis and Computational Complexity — `3f28be14404a`

`idea:unpublished-v3:3f28be14404a64ea:recomposition-upper-bound-not-separation` — **obstruction-only**. Main claim unresolved.

The unified proof asserts sieve-fixed-point zero alignment and an exponential recomposition barrier T=O(2^n) as a proof of P≠NP.

The body still supplies only T_recompose=O(2^n). Upstream isBigO_zero shows that an identically zero function satisfies an O(g) upper bound for any comparison g. Thus the printed upper-bound predicate cannot itself encode an exponential lower bound. This is an exact asymptotic scope obstruction, not a complexity-class separation theorem or a model of an NP algorithm.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 4](</Users/local/Desktop/MathematicsLibrary/NumberTheory/3f28be14404a--Unified_Proof_of_the_Generalized_Riemann_Hypothesis_and_Computational_Complexity__1_ (1).pdf#page=4>): “Exponential Recomposition Barrier”. Page-text SHA-256 `075ae668d72594331084056f406723b94b61d7c29c113560829a3fce112fa188`.
- [p. 4](</Users/local/Desktop/MathematicsLibrary/NumberTheory/3f28be14404a--Unified_Proof_of_the_Generalized_Riemann_Hypothesis_and_Computational_Complexity__1_ (1).pdf#page=4>): “4   Computational Complexity”. Page-text SHA-256 `075ae668d72594331084056f406723b94b61d7c29c113560829a3fce112fa188`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/3f28be14404a--Unified_Proof_of_the_Generalized_Riemann_Hypothesis_and_Computational_Complexity__1_ (1).pdf#page=3>): “Figure 1:”. Page-text SHA-256 `1044bb5c5e704fb5a1894ebf6307bb5309c24e51218238c95c57f84f19b3c7fe`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/3f28be14404a--Unified_Proof_of_the_Generalized_Riemann_Hypothesis_and_Computational_Complexity__1_ (1).pdf#page=2>): “This paper is organized as follows:”. Page-text SHA-256 `4714728c13322917734622b50465b60bb781eaddfed7d766b6a0f1c9402fcfcb`.

Further complete pages read: 2, 4. Pages beyond previously recorded citation pages: 2. Short asset; no further unreviewed substantive section located. Complete listed pages reread. Exact twin-page text may be read once across distinct assets; identities remain separate.

Broadened search terms: `NP complete lower bound`, `isBigO_zero`, `exponential recomposition`, `Turing machine complexity`.

Lean candidates inspected:

- **obstruction-only**: [`Asymptotics.isBigO_zero`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Analysis/Asymptotics/Defs.lean#L1147-L1148), `Mathlib/Analysis/Asymptotics/Defs.lean:1147–1148`. The identically zero function is O(g) along any filter. In particular an O(2^n) upper-bound predicate alone cannot imply an exponential lower bound. This is an asymptotic scope check, not a complexity-class theorem or a computation-model construction.

Missing bridges:

- O(2^n) is an upper bound, not an exponential lower bound. A slow decomposition/recomposition algorithm cannot rule out all polynomial-time algorithms.
- Prove the sieve iteration converges and preserves the original function/zeros; symmetric fixed data need not force each zero onto the symmetry axis.
- Keep contragredient/conjugate characters, gamma factors and symmetric-power existence hypotheses.
- Specify the computation model and prove the universal lower bound; keep upper bounds and algorithm-specific costs distinct.
- Specify the computation model and universal lower-bound quantifiers; illustrative graphs and an exponential upper bound cannot establish P≠NP.
- State a computation model and a lower-bound predicate with universal algorithm quantifiers; retain the distinction between an upper bound for one procedure and exclusion of all polynomial algorithms.

<a id="b799fd9cb24af2a3-recomposition-upper-bound-not-separation"></a>
### Unified Proof of the Generalized Riemann Hypothesis and Computational Complexity — `b799fd9cb24a`

`idea:unpublished-v3:b799fd9cb24af2a3:recomposition-upper-bound-not-separation` — **obstruction-only**. Main claim unresolved.

The unified proof asserts sieve-fixed-point zero alignment and an exponential recomposition barrier T=O(2^n) as a proof of P≠NP.

The body still supplies only T_recompose=O(2^n). Upstream isBigO_zero shows that an identically zero function satisfies an O(g) upper bound for any comparison g. Thus the printed upper-bound predicate cannot itself encode an exponential lower bound. This is an exact asymptotic scope obstruction, not a complexity-class separation theorem or a model of an NP algorithm.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 4](</Users/local/Desktop/MathematicsLibrary/NumberTheory/b799fd9cb24a--Unified_Proof_of_the_Generalized_Riemann_Hypothesis_and_Computational_Complexity (1).pdf#page=4>): “Exponential Recomposition Barrier”. Page-text SHA-256 `0d9f901bc0bc9c755e5c0747e0fa805feabfb8a83d5526ed3c65a72208c8bbc9`.
- [p. 4](</Users/local/Desktop/MathematicsLibrary/NumberTheory/b799fd9cb24a--Unified_Proof_of_the_Generalized_Riemann_Hypothesis_and_Computational_Complexity (1).pdf#page=4>): “2     Computational Complexity”. Page-text SHA-256 `0d9f901bc0bc9c755e5c0747e0fa805feabfb8a83d5526ed3c65a72208c8bbc9`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/b799fd9cb24a--Unified_Proof_of_the_Generalized_Riemann_Hypothesis_and_Computational_Complexity (1).pdf#page=3>): “Figure 1:”. Page-text SHA-256 `1044bb5c5e704fb5a1894ebf6307bb5309c24e51218238c95c57f84f19b3c7fe`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/b799fd9cb24a--Unified_Proof_of_the_Generalized_Riemann_Hypothesis_and_Computational_Complexity (1).pdf#page=2>): “L-functions lie on the critical line Re(s) = 12 . This conjecture governs the fine distribution of primes”. Page-text SHA-256 `9eb4936820fa700069937f5e3da65ebf51f6e387b95948c3ca35160f8a81fbf4`.

Further complete pages read: 2, 4. Pages beyond previously recorded citation pages: 2. Short asset; no further unreviewed substantive section located. Complete listed pages reread. Exact twin-page text may be read once across distinct assets; identities remain separate.

Broadened search terms: `NP complete lower bound`, `isBigO_zero`, `exponential recomposition`, `Turing machine complexity`.

Lean candidates inspected:

- **obstruction-only**: [`Asymptotics.isBigO_zero`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Analysis/Asymptotics/Defs.lean#L1147-L1148), `Mathlib/Analysis/Asymptotics/Defs.lean:1147–1148`. The identically zero function is O(g) along any filter. In particular an O(2^n) upper-bound predicate alone cannot imply an exponential lower bound. This is an asymptotic scope check, not a complexity-class theorem or a computation-model construction.

Missing bridges:

- O(2^n) is an upper bound, not an exponential lower bound. A slow decomposition/recomposition algorithm cannot rule out all polynomial-time algorithms.
- Prove the sieve iteration converges and preserves the original function/zeros; symmetric fixed data need not force each zero onto the symmetry axis.
- Keep contragredient/conjugate characters, gamma factors and symmetric-power existence hypotheses.
- Specify the computation model and prove the universal lower bound; keep upper bounds and algorithm-specific costs distinct.
- Specify the computation model and universal lower-bound quantifiers; illustrative graphs and an exponential upper bound cannot establish P≠NP.
- State a computation model and a lower-bound predicate with universal algorithm quantifiers; retain the distinction between an upper bound for one procedure and exclusion of all polynomial algorithms.

<a id="d7819c0364c77a97-status-assertions-not-proof-evidence"></a>
### Updated Verification of Recursive Refinement Framework — `d7819c0364c7`

`idea:unpublished-v3:d7819c0364c77a97:status-assertions-not-proof-evidence` — **unresolved**. Main claim unresolved.

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and pinned Lean evidence](ten-idea-target-search.md#d7819c0364c77a97-status-assertions-not-proof-evidence).

The status note declares Axioms 1/5, mixed-source consistency and zero independence resolved while listing remaining cross-term and higher-dimensional bounds.

The status note continues to call sublinear growth and decaying correlation resolutions while explicitly listing missing mixed-form cross-term estimates. Searches of covariance, asymptotic budgets and source-residual evolution supply generic conditional bounds, not the required arithmetic supplier or independence theorem.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d7819c0364c7--Updated_Verification_of_Recursive_Refinement_Framework (2).pdf#page=2>): “Statistical Independence of Zeros”. Page-text SHA-256 `b949895416d938edf5079487f3f65be80e0f8ca1acb84eceda5b3d93d367c973`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d7819c0364c7--Updated_Verification_of_Recursive_Refinement_Framework (2).pdf#page=3>): “Error Bounds for Mixed Automorphic Forms”. Page-text SHA-256 `c387efc0635800128e43a12a348f65f43c6ac5e364f4aa0df95d3701d94a85d4`.
- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d7819c0364c7--Updated_Verification_of_Recursive_Refinement_Framework (2).pdf#page=1>): “Updated Verification of Recursive Refinement”. Page-text SHA-256 `7d7c35049871f94b14430d67322c1c07daaf6264263287c8eb07eee6f2449eb5`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d7819c0364c7--Updated_Verification_of_Recursive_Refinement_Framework (2).pdf#page=3>): “Critical Review of Remaining Open Problems”. Page-text SHA-256 `c387efc0635800128e43a12a348f65f43c6ac5e364f4aa0df95d3701d94a85d4`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d7819c0364c7--Updated_Verification_of_Recursive_Refinement_Framework (2).pdf#page=2>): “Fourier analysis. By demonstrating that cumulative errors across distinct”. Page-text SHA-256 `b949895416d938edf5079487f3f65be80e0f8ca1acb84eceda5b3d93d367c973`.

Further complete pages read: 2, 3. Pages beyond previously recorded citation pages: none; reread of already recorded material. Short asset; no further unreviewed substantive section located. Complete listed pages reread. Exact twin-page text may be read once across distinct assets; identities remain separate.

Broadened search terms: `cross-domain covariance`, `mixed automorphic errors`, `sublinear error uniform bound`, `statistical independence`.

Lean candidates inspected:

- No concrete declaration established. This is a limited negative search finding, not proof of absence from Lean.

Missing bridges:

- Verify the cited Axiom 1 uniform bound versus its growing estimates and Axiom 5 rate versus normalized convergence.
- Zero correlation is weaker than independence; retain RH/GRH premises in the cited independence argument.
- The acknowledged mixed cross-term bounds remain missing. Status labels and future numerical validation do not discharge them.
- Resolve the underlying references and preserve their exact rate, normalization and RH/GRH premises.
- Resolve the actual referenced inequalities and retain constants, rates, normalization and all conditional premises.
- Recover exact source inequalities and conditional hypotheses from the named January documents; sublinear growth does not mean boundedness, and decorrelation does not establish independence.

## Number theory — 4 versions

<a id="0b423568798d1ce3-prime-research-roadmap"></a>
### A Holistic Strategy for Deriving Properties of Prime Numbers — `0b423568798d`

`idea:unpublished-v3:0b423568798d1ce3:prime-research-roadmap` — **unresolved**. Main claim unresolved.

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and pinned Lean evidence](ten-idea-target-search.md#0b423568798d1ce3-prime-research-roadmap).

The document proposes a research program joining zeta derivatives, prime-generation algorithms, motives and geometric visualizations; it states objectives rather than proving a prime-distribution theorem.

All three pages remain a roadmap rather than a source theorem or an executable algorithm specification. Broader searches through prime enumeration, Chebyshev identities, zeta derivatives and computability provide ingredients for future work, but no declaration formalizes the document’s unspecified program as a single mathematical claim.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0b423568798d--A_Holistic_Strategy_for_Deriving_Properties_of_Prime_Numbers (3).pdf#page=1>): “Analytic Number Theory”. Page-text SHA-256 `39a9fcea1d40a7413342a18358fee7b26bc3c11a1a7e3eda322c4818b889cfe1`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0b423568798d--A_Holistic_Strategy_for_Deriving_Properties_of_Prime_Numbers (3).pdf#page=3>): “Computational and Experimental Verification”. Page-text SHA-256 `22960f02b1cc371c3fad11641b450135c2f1b1060cbc7ebe69a36c069e42a617`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0b423568798d--A_Holistic_Strategy_for_Deriving_Properties_of_Prime_Numbers (3).pdf#page=2>): “3     Algebraic Number Theory and Primes in Fields”. Page-text SHA-256 `506eb036515e8f32eed5d026e1e8d76a66eba7e8c16a86ff40ccfebfd6517ba4`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0b423568798d--A_Holistic_Strategy_for_Deriving_Properties_of_Prime_Numbers (3).pdf#page=3>): “5     Geometric Representations and the Langlands”. Page-text SHA-256 `22960f02b1cc371c3fad11641b450135c2f1b1060cbc7ebe69a36c069e42a617`.
- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0b423568798d--A_Holistic_Strategy_for_Deriving_Properties_of_Prime_Numbers (3).pdf#page=1>): “A Holistic Strategy for Deriving Properties of”. Page-text SHA-256 `39a9fcea1d40a7413342a18358fee7b26bc3c11a1a7e3eda322c4818b889cfe1`.

Further complete pages read: 1, 2, 3. Pages beyond previously recorded citation pages: none; reread of already recorded material. Short asset; no further unreviewed substantive section located. Complete listed pages reread. Exact twin-page text may be read once across distinct assets; identities remain separate.

Broadened search terms: `prime generation correctness`, `higher zeta derivatives`, `Chebyshev prime counting`, `geometric Langlands`.

Lean candidates inspected:

- No concrete declaration established. This is a limited negative search finding, not proof of absence from Lean.

Missing bridges:

- Replace each objective by a precise source identity or estimate with domains, constants and quantifiers before selecting a Lean theorem.
- The source-number citations are not an exact construction of a prime detector, algorithm correctness theorem or motive comparison.
- Choose a particular algorithm or source identity with an exact correctness or error claim before assigning a target.
- Select an exact algorithm, source identity or quantitative theorem and resolve its numbered resources.
- Replace an objective by an exact source identity, algorithm/correctness specification or quantitative theorem; resolve the Source 23/26/27/28/29 citations.

<a id="d00d427aef3a27d8-rmt-langlands-survey-boundary"></a>
### A Comprehensive Exploration of the Generalized Riemann Hypothesis — `d00d427aef3a`

`idea:unpublished-v3:d00d427aef3a27d8:rmt-langlands-survey-boundary` — **repair-candidate**. Main claim unresolved.

The survey connects local/global Langlands representations, trace formulas and random-matrix zero-spacing analogies with speculative approaches to GRH.

A maintained source theorem gives a concrete possible replacement for the missing statistical-to-deterministic bridge: certified even/odd channel errors on the same pair, plus a strict model-energy margin, exclude simultaneous endpoint zeros. The survey explicitly treats GRH as open in its later conclusion and supplies no such enclosures. The theorem is unelaborated source at the pin and does not derive its hypotheses from GUE statistics.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 6](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d00d427aef3a--A_Comprehensive_Exploration_of_the_Generalized_Riemann_Hypothesis (1).pdf#page=6>): “Langlands Correspondences”. Page-text SHA-256 `bdaa5afd57bb92160e4fb31216fc67ed433964e589caeb9ae2df85aed2ed4fe4`.
- [p. 8](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d00d427aef3a--A_Comprehensive_Exploration_of_the_Generalized_Riemann_Hypothesis (1).pdf#page=8>): “Universality and the GUE Conjecture”. Page-text SHA-256 `4c6436f25c2386c8f0d93770808b15d25f422cdb640e630e84c137dc97594d9b`.
- [p. 11](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d00d427aef3a--A_Comprehensive_Exploration_of_the_Generalized_Riemann_Hypothesis (1).pdf#page=11>): “5.6    Future Directions in Computational Verification”. Page-text SHA-256 `6408cfa885b825568438b5009f73ab1f4d998c33a34f9895585a1ae81ec0c43f`.
- [p. 12](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d00d427aef3a--A_Comprehensive_Exploration_of_the_Generalized_Riemann_Hypothesis (1).pdf#page=12>): “varieties provides a geometric realization of automorphic representations, allowing the”. Page-text SHA-256 `a91203a092eb19a128edb952fcf13d7d087c38c56f04626a1dba2a28819a53e1`.
- [p. 13](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d00d427aef3a--A_Comprehensive_Exploration_of_the_Generalized_Riemann_Hypothesis (1).pdf#page=13>): “Sheaf theory, cohomology, and higher-dimensional geometry offer profound insights into”. Page-text SHA-256 `bd17d0a0d9b583695ed7511448a1e78b81eb155f7a73dd6d4dea3bc0e9d171b8`.
- [p. 14](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d00d427aef3a--A_Comprehensive_Exploration_of_the_Generalized_Riemann_Hypothesis (1).pdf#page=14>): “Recent work by Tao and Rodgers has shown that Λ ≥ 0, providing additional support”. Page-text SHA-256 `2c2696ae42c2f3b78c1bc1398db8f9188444e933d028adee9af7026e5e52cbcb`.
- [p. 17](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d00d427aef3a--A_Comprehensive_Exploration_of_the_Generalized_Riemann_Hypothesis (1).pdf#page=17>): “8.6    Concluding Remarks”. Page-text SHA-256 `7cbe2a2894b39bfd4321a406d93caf552e97978570b3f9eadd265cba29c6e657`.
- [p. 18](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d00d427aef3a--A_Comprehensive_Exploration_of_the_Generalized_Riemann_Hypothesis (1).pdf#page=18>): “• Speculative Frameworks: New speculative approaches, such as probabilistic”. Page-text SHA-256 `02ca38f3c694724fecf7dafd63894cb92f6f35b224445fb02fcda10ef1b83c92`.

Further complete pages read: 14, 17, 18. Pages beyond previously recorded citation pages: 14, 17, 18. Further selected complete physical pages read, including later limitations/open-question sections; not a full-manuscript audit. Exact twin-page text may be read once across distinct assets; identities remain separate.

Broadened search terms: `symmetric pair enclosure`, `Enclosure excludes_pair`, `deterministic zero exclusion`, `RMT statistical upgrade`.

Lean candidates inspected:

- **repair-candidate**: [`GRWTSK.Analysis.Complex.SymmetricPair.Enclosure.excludes_pair`](https://github.com/grwtsk/math/blob/ba191bd06dcd3b2be364f9b7267b4ea57df21bbc/GRWTSK/Analysis/Complex/SymmetricPair.lean#L114-L129), `GRWTSK/Analysis/Complex/SymmetricPair.lean:114–129`. SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED at this pin. On the same exact source/model pair c±d, a supplied even-value/normalized-odd-secant enclosure and strict budget<model-energy margin exclude simultaneous endpoint zeros. It constructs no arithmetic enclosure, margin, all-pair coverage, statistical upgrade or source nonvanishing. Zero displacement is allowed and is not a derivative jet.

Missing bridges:

- State the exact proven versus conjectural local/global correspondence for each group; do not assume a general global bijection.
- Correct/define unfolded spacing and distinguish pair correlation from nearest-neighbor laws and finite samples. A symmetry-type analogy does not transfer GRH between families.
- Retain the speculative and empirical scope of the machine-learning/quantum/statistical proposals and do not treat the survey bibliography as source verification.
- Prove the source-specific local/global comparison and an independent deterministic exclusion theorem with all conductor, dual and tail data.
- State an exact statistical proposition and prove a separate all-height deterministic/source comparison. The survey’s Newman-sign and perturbation claims also need their precise family and normalization.
- Choose the actual completed arithmetic source, valid reflected pair and exact domain; prove the required symmetry/dual comparison.
- Construct independently certified value and secant errors, prove the strict margin on every required pair and control all tails. Pointwise eventual acceptance cannot be silently made uniform.

<a id="2b7478353ae500b1-conditional-transcendence-and-chaotic-sums"></a>
### Universal Transcendence of Non-Critical Values in Automorphic and Motivic L-Functions — `2b7478353ae5`

`idea:unpublished-v3:2b7478353ae500b1:conditional-transcendence-and-chaotic-sums` — **conditional-fragment**. Main claim unresolved.

The universal transcendence theorem assumes logarithm independence, RMT predictions and motivic period independence, using dense phases to prevent algebraic cancellation.

The newly read gap appendix explicitly leaves motivic independence, spectral chaos and sampling sufficiency open. AlgebraicIndependent.linearIndependent supports the restricted conditional noncancellation of finite linear combinations over the same coefficient field, once algebraic independence is assumed. It proves neither that prime logarithms satisfy that premise nor that an infinite sum or an algebraic-coefficient expression over a different field is transcendental.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 15](</Users/local/Desktop/MathematicsLibrary/NumberTheory/2b7478353ae5--Universal_Transcendence_of_Non_Critical_Values_in_Automorphic_and_Motivic__L__Functions (4).pdf#page=15>): “Theorem 5.3”. Page-text SHA-256 `c6168009049cc379dc22dafdb833aca881faf8da4e6f37d924d4910aa9f53515`.
- [p. 24](</Users/local/Desktop/MathematicsLibrary/NumberTheory/2b7478353ae5--Universal_Transcendence_of_Non_Critical_Values_in_Automorphic_and_Motivic__L__Functions (4).pdf#page=24>): “Theorem 8.5”. Page-text SHA-256 `ed98e538993ace6b5031d5d6b9b92540bf31565c7c803802149b94029e8cf066`.
- [p. 12](</Users/local/Desktop/MathematicsLibrary/NumberTheory/2b7478353ae5--Universal_Transcendence_of_Non_Critical_Values_in_Automorphic_and_Motivic__L__Functions (4).pdf#page=12>): “4.2    Logarithmic Independence”. Page-text SHA-256 `d1b6aa4021c60daee81c785d23fbc9ed0fc1191e507c582c210cb6589c003613`.
- [p. 13](</Users/local/Desktop/MathematicsLibrary/NumberTheory/2b7478353ae5--Universal_Transcendence_of_Non_Critical_Values_in_Automorphic_and_Motivic__L__Functions (4).pdf#page=13>): “Proof. Combining Lemma 3.2 and Lemma 3.3, we see that:”. Page-text SHA-256 `555a8fdf607ec152dc5a34f6336de6a68f1ec856a534a36c5d8d1faf9b56687a`.
- [p. 18](</Users/local/Desktop/MathematicsLibrary/NumberTheory/2b7478353ae5--Universal_Transcendence_of_Non_Critical_Values_in_Automorphic_and_Motivic__L__Functions (4).pdf#page=18>): “6.3    Propagation of Transcendence”. Page-text SHA-256 `6af0ad3ef32d9539b52520e8fc1cb9dc6cfe89c269d6a1d2e8213ba58132723c`.
- [p. 25](</Users/local/Desktop/MathematicsLibrary/NumberTheory/2b7478353ae5--Universal_Transcendence_of_Non_Critical_Values_in_Automorphic_and_Motivic__L__Functions (4).pdf#page=25>): “• Spectral term transcendence (Lemma 3.4),”. Page-text SHA-256 `2f493af1ef539991c3bb422cc7062ce6fde05b1236f9161036588d71214d3892`.
- [p. 26](</Users/local/Desktop/MathematicsLibrary/NumberTheory/2b7478353ae5--Universal_Transcendence_of_Non_Critical_Values_in_Automorphic_and_Motivic__L__Functions (4).pdf#page=26>): “While Zhang’s theorem provides bounds on prime gaps, the general distribution”. Page-text SHA-256 `fc4814d6b2ee659bda9875d2692175f16a254c53cd23676c3f4e51a6708e9583`.
- [p. 28](</Users/local/Desktop/MathematicsLibrary/NumberTheory/2b7478353ae5--Universal_Transcendence_of_Non_Critical_Values_in_Automorphic_and_Motivic__L__Functions (4).pdf#page=28>): “A.5    Sampling Sufficiency in Numerical Tests”. Page-text SHA-256 `f25a2008e885a333e9094801f277cec8d108ee3aebf3f5c1ccfe756c1d92ccb0`.
- [p. 27](</Users/local/Desktop/MathematicsLibrary/NumberTheory/2b7478353ae5--Universal_Transcendence_of_Non_Critical_Values_in_Automorphic_and_Motivic__L__Functions (4).pdf#page=27>): “A.3     Motivic Period Independence”. Page-text SHA-256 `e491b69e31b68c20e21f0befeaae606dd1bf2a43c053119187aede282aeabe8f`.

Further complete pages read: 25, 26, 27, 28. Pages beyond previously recorded citation pages: 25, 26, 27, 28. Further selected complete physical pages read, including later limitations/open-question sections; not a full-manuscript audit. Exact twin-page text may be read once across distinct assets; identities remain separate.

Broadened search terms: `prime logarithm independence`, `finite linear combination noncancellation`, `motivic period assumption`, `Baker infinite series`.

Lean candidates inspected:

- **conditional-fragment**: [`AlgebraicIndependent.linearIndependent`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/RingTheory/AlgebraicIndependent/Basic.lean#L71-L83), `Mathlib/RingTheory/AlgebraicIndependent/Basic.lean:71–83`. For commutative rings R,A with an R-algebra structure, an assumed algebraically independent family x:ι→A is linearly independent over R. This excludes finite R-linear relations in that same family. It constructs no motivic/logarithmic family, no independence premise, no map from conjugate L-values, no coefficient-field change and no infinite-series transcendence result.

Missing bridges:

- Density/quasi-randomness does not imply a sum is transcendental or cannot cancel. Define the infinite sum and prove an actual transcendence theorem with algebraic coefficient hypotheses.
- Logarithm independence must specify linear/algebraic and coefficient fields; modularly dense phases are a different assertion.
- Functional equations relate specified paired values with gamma/conductor factors, not all critical and noncritical values. Preserve the conditional motivic period and analytic-continuation scope.
- Separate finite nonzero algebraic-coefficient logarithmic forms from convergent infinite sums; prove coefficient hypotheses, nonvanishing and the required transcendence result.
- Supply the appropriate finite logarithmic-form theorem with nonzero algebraic coefficients and a separate infinite-sum argument.
- State the exact paired values and algebraicity/nonvanishing of multipliers; no universal propagation of transcendence follows from continuity or holomorphy.
- Give the exact indexed logarithm/period family and coefficient field; prove algebraic independence rather than importing it from density or prime-gap irregularity.
- Prove a finite-to-infinite convergence and transcendence theorem with the actual weights; preserve the source’s explicitly open motivic, spectral and sampling assumptions.

<a id="ac7a2ecdc5f9c787-conditional-transcendence-and-chaotic-sums"></a>
### Universal Transcendence of Non-Critical Values in Automorphic and Motivic L-Functions — `ac7a2ecdc5f9`

`idea:unpublished-v3:ac7a2ecdc5f9c787:conditional-transcendence-and-chaotic-sums` — **conditional-fragment**. Main claim unresolved.

The universal transcendence theorem assumes logarithm independence, RMT predictions and motivic period independence, using dense phases to prevent algebraic cancellation.

The newly read gap appendix explicitly leaves motivic independence, spectral chaos and sampling sufficiency open. AlgebraicIndependent.linearIndependent supports the restricted conditional noncancellation of finite linear combinations over the same coefficient field, once algebraic independence is assumed. It proves neither that prime logarithms satisfy that premise nor that an infinite sum or an algebraic-coefficient expression over a different field is transcendental.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 15](</Users/local/Desktop/MathematicsLibrary/NumberTheory/ac7a2ecdc5f9--Universal_Transcendence_of_Non_Critical_Values_in_Automorphic_and_Motivic__L__Functions (5).pdf#page=15>): “Theorem 5.3”. Page-text SHA-256 `c6168009049cc379dc22dafdb833aca881faf8da4e6f37d924d4910aa9f53515`.
- [p. 24](</Users/local/Desktop/MathematicsLibrary/NumberTheory/ac7a2ecdc5f9--Universal_Transcendence_of_Non_Critical_Values_in_Automorphic_and_Motivic__L__Functions (5).pdf#page=24>): “Theorem 8.5”. Page-text SHA-256 `ed98e538993ace6b5031d5d6b9b92540bf31565c7c803802149b94029e8cf066`.
- [p. 12](</Users/local/Desktop/MathematicsLibrary/NumberTheory/ac7a2ecdc5f9--Universal_Transcendence_of_Non_Critical_Values_in_Automorphic_and_Motivic__L__Functions (5).pdf#page=12>): “4.2    Logarithmic Independence”. Page-text SHA-256 `d1b6aa4021c60daee81c785d23fbc9ed0fc1191e507c582c210cb6589c003613`.
- [p. 13](</Users/local/Desktop/MathematicsLibrary/NumberTheory/ac7a2ecdc5f9--Universal_Transcendence_of_Non_Critical_Values_in_Automorphic_and_Motivic__L__Functions (5).pdf#page=13>): “Proof. Combining Lemma 3.2 and Lemma 3.3, we see that:”. Page-text SHA-256 `555a8fdf607ec152dc5a34f6336de6a68f1ec856a534a36c5d8d1faf9b56687a`.
- [p. 18](</Users/local/Desktop/MathematicsLibrary/NumberTheory/ac7a2ecdc5f9--Universal_Transcendence_of_Non_Critical_Values_in_Automorphic_and_Motivic__L__Functions (5).pdf#page=18>): “6.3    Propagation of Transcendence”. Page-text SHA-256 `6af0ad3ef32d9539b52520e8fc1cb9dc6cfe89c269d6a1d2e8213ba58132723c`.
- [p. 25](</Users/local/Desktop/MathematicsLibrary/NumberTheory/ac7a2ecdc5f9--Universal_Transcendence_of_Non_Critical_Values_in_Automorphic_and_Motivic__L__Functions (5).pdf#page=25>): “• Spectral term transcendence (Lemma 3.4),”. Page-text SHA-256 `2f493af1ef539991c3bb422cc7062ce6fde05b1236f9161036588d71214d3892`.
- [p. 26](</Users/local/Desktop/MathematicsLibrary/NumberTheory/ac7a2ecdc5f9--Universal_Transcendence_of_Non_Critical_Values_in_Automorphic_and_Motivic__L__Functions (5).pdf#page=26>): “While Zhang’s theorem provides bounds on prime gaps, the general distribution”. Page-text SHA-256 `fc4814d6b2ee659bda9875d2692175f16a254c53cd23676c3f4e51a6708e9583`.
- [p. 28](</Users/local/Desktop/MathematicsLibrary/NumberTheory/ac7a2ecdc5f9--Universal_Transcendence_of_Non_Critical_Values_in_Automorphic_and_Motivic__L__Functions (5).pdf#page=28>): “A.5    Sampling Sufficiency in Numerical Tests”. Page-text SHA-256 `f25a2008e885a333e9094801f277cec8d108ee3aebf3f5c1ccfe756c1d92ccb0`.
- [p. 27](</Users/local/Desktop/MathematicsLibrary/NumberTheory/ac7a2ecdc5f9--Universal_Transcendence_of_Non_Critical_Values_in_Automorphic_and_Motivic__L__Functions (5).pdf#page=27>): “A.3     Motivic Period Independence”. Page-text SHA-256 `e491b69e31b68c20e21f0befeaae606dd1bf2a43c053119187aede282aeabe8f`.

Further complete pages read: 25, 26, 27, 28. Pages beyond previously recorded citation pages: 25, 26, 27, 28. Further selected complete physical pages read, including later limitations/open-question sections; not a full-manuscript audit. Exact twin-page text may be read once across distinct assets; identities remain separate.

Broadened search terms: `prime logarithm independence`, `finite linear combination noncancellation`, `motivic period assumption`, `Baker infinite series`.

Lean candidates inspected:

- **conditional-fragment**: [`AlgebraicIndependent.linearIndependent`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/RingTheory/AlgebraicIndependent/Basic.lean#L71-L83), `Mathlib/RingTheory/AlgebraicIndependent/Basic.lean:71–83`. For commutative rings R,A with an R-algebra structure, an assumed algebraically independent family x:ι→A is linearly independent over R. This excludes finite R-linear relations in that same family. It constructs no motivic/logarithmic family, no independence premise, no map from conjugate L-values, no coefficient-field change and no infinite-series transcendence result.

Missing bridges:

- Density/quasi-randomness does not imply a sum is transcendental or cannot cancel. Define the infinite sum and prove an actual transcendence theorem with algebraic coefficient hypotheses.
- Logarithm independence must specify linear/algebraic and coefficient fields; modularly dense phases are a different assertion.
- Functional equations relate specified paired values with gamma/conductor factors, not all critical and noncritical values. Preserve the conditional motivic period and analytic-continuation scope.
- Separate finite nonzero algebraic-coefficient logarithmic forms from convergent infinite sums; prove coefficient hypotheses, nonvanishing and the required transcendence result.
- Supply the appropriate finite logarithmic-form theorem with nonzero algebraic coefficients and a separate infinite-sum argument.
- State the exact paired values and algebraicity/nonvanishing of multipliers; no universal propagation of transcendence follows from continuity or holomorphy.
- Give the exact indexed logarithm/period family and coefficient field; prove algebraic independence rather than importing it from density or prime-gap irregularity.
- Prove a finite-to-infinite convergence and transcendence theorem with the actual weights; preserve the source’s explicitly open motivic, spectral and sampling assumptions.

## Probability and combinatorics — 3 versions

<a id="0f3deff790c3e598-entropy-threshold-zero-free-gap"></a>
### Residue Clustering, Modular Symmetry, and the Generalized Riemann Hypothesis: Techniques and Next Steps — `0f3deff790c3`

`idea:unpublished-v3:0f3deff790c3e598:entropy-threshold-zero-free-gap` — **unresolved**. Main claim unresolved.

Current broader-search assessment: **conditional-fragment**, main claim unresolved. [Further paper and pinned Lean evidence](ten-idea-target-search.md#0f3deff790c3e598-entropy-threshold-zero-free-gap).

Shannon entropy is corrected by weighted residue projections; empirical conductor/rank scaling and H<0.1 are used to predict zero-free modular classes.

The whole body leaves entropy-threshold⇒zero-exclusion as a future step. Upstream binEntropy_zero gives entropy zero for a degenerate Bernoulli law, illustrating that a small entropy number alone identifies no arithmetic zero-free domain. It is not a counterexample to a fully specified source-linked criterion, because the paper never supplies that link; it is a rejected substitute for it.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0f3deff790c3--Entropy (1).pdf#page=1>): “Entropy Refinement”. Page-text SHA-256 `b22db21a84ab09b40aff301714efb0283fe60f0b94ecdde9d418009085ae1a48`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0f3deff790c3--Entropy (1).pdf#page=2>): “Zero-Free Regions”. Page-text SHA-256 `379fc45e173e2ffa6fc66c426a4831b30fd59ceb5976c8106cfc21b07b306756`.
- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0f3deff790c3--Entropy (1).pdf#page=1>): “Residue Clustering, Modular Symmetry, and the Generalized”. Page-text SHA-256 `b22db21a84ab09b40aff301714efb0283fe60f0b94ecdde9d418009085ae1a48`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0f3deff790c3--Entropy (1).pdf#page=2>): “4.2    Connecting to Random Matrix Theory”. Page-text SHA-256 `379fc45e173e2ffa6fc66c426a4831b30fd59ceb5976c8106cfc21b07b306756`.

Further complete pages read: 1, 2. Pages beyond previously recorded citation pages: none; reread of already recorded material. Short asset; no further unreviewed substantive section located. Complete listed pages reread. Exact twin-page text may be read once across distinct assets; identities remain separate.

Broadened search terms: `finite Shannon entropy`, `binEntropy_zero`, `entropy threshold zero-free`, `probability correction`.

Lean candidates inspected:

- **rejected-candidate**: [`Real.binEntropy_zero`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Analysis/SpecialFunctions/BinaryEntropy.lean#L65-L65), `Mathlib/Analysis/SpecialFunctions/BinaryEntropy.lean:65–65`. The Bernoulli entropy at p=0 is exactly zero. This is an entropy formula for a specified degenerate probability model; it identifies no L-function zero-free set and does not refute a source-linked criterion whose missing construction has yet to be supplied.

Missing bridges:

- Define the correction on probabilities and prove it preserves normalization/nonnegativity; subtracting projections from an entropy value need not yield a Shannon entropy.
- State constants and parameter ranges for the two different scaling laws, and provide reproducible data/certified errors.
- Prove threshold implies zero exclusion with exact source domain and all-height/rank coverage. Finite GL11–GL100 checks do not construct an infinite-dimensional limit.
- Prove normalization, nonnegativity, convergence and an all-height source-specific exclusion implication.
- Define the probability law and admissible correction and prove a uniform source-specific threshold implication.
- Define the probability distribution derived from the actual L-function, prove the correction preserves it, and prove the uniform implication to zero exclusion with full domain/tail coverage.

<a id="579328ace007be79-entropy-threshold-zero-free-gap"></a>
### Residue Clustering, Modular Symmetry, and the Generalized Riemann Hypothesis: Techniques and Next Steps — `579328ace007`

`idea:unpublished-v3:579328ace007be79:entropy-threshold-zero-free-gap` — **unresolved**. Main claim unresolved.

Current broader-search assessment: **conditional-fragment**, main claim unresolved. [Further paper and pinned Lean evidence](ten-idea-target-search.md#579328ace007be79-entropy-threshold-zero-free-gap).

Shannon entropy is corrected by weighted residue projections; empirical conductor/rank scaling and H<0.1 are used to predict zero-free modular classes.

The whole body leaves entropy-threshold⇒zero-exclusion as a future step. Upstream binEntropy_zero gives entropy zero for a degenerate Bernoulli law, illustrating that a small entropy number alone identifies no arithmetic zero-free domain. It is not a counterexample to a fully specified source-linked criterion, because the paper never supplies that link; it is a rejected substitute for it.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/579328ace007--Entropy (2).pdf#page=1>): “Entropy Refinement”. Page-text SHA-256 `b22db21a84ab09b40aff301714efb0283fe60f0b94ecdde9d418009085ae1a48`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/579328ace007--Entropy (2).pdf#page=2>): “Zero-Free Regions”. Page-text SHA-256 `379fc45e173e2ffa6fc66c426a4831b30fd59ceb5976c8106cfc21b07b306756`.
- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/579328ace007--Entropy (2).pdf#page=1>): “Residue Clustering, Modular Symmetry, and the Generalized”. Page-text SHA-256 `b22db21a84ab09b40aff301714efb0283fe60f0b94ecdde9d418009085ae1a48`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/579328ace007--Entropy (2).pdf#page=2>): “4.2    Connecting to Random Matrix Theory”. Page-text SHA-256 `379fc45e173e2ffa6fc66c426a4831b30fd59ceb5976c8106cfc21b07b306756`.

Further complete pages read: 1, 2. Pages beyond previously recorded citation pages: none; reread of already recorded material. Short asset; no further unreviewed substantive section located. Complete listed pages reread. Exact twin-page text may be read once across distinct assets; identities remain separate.

Broadened search terms: `finite Shannon entropy`, `binEntropy_zero`, `entropy threshold zero-free`, `probability correction`.

Lean candidates inspected:

- **rejected-candidate**: [`Real.binEntropy_zero`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Analysis/SpecialFunctions/BinaryEntropy.lean#L65-L65), `Mathlib/Analysis/SpecialFunctions/BinaryEntropy.lean:65–65`. The Bernoulli entropy at p=0 is exactly zero. This is an entropy formula for a specified degenerate probability model; it identifies no L-function zero-free set and does not refute a source-linked criterion whose missing construction has yet to be supplied.

Missing bridges:

- Define the correction on probabilities and prove it preserves normalization/nonnegativity; subtracting projections from an entropy value need not yield a Shannon entropy.
- State constants and parameter ranges for the two different scaling laws, and provide reproducible data/certified errors.
- Prove threshold implies zero exclusion with exact source domain and all-height/rank coverage. Finite GL11–GL100 checks do not construct an infinite-dimensional limit.
- Prove normalization, nonnegativity, convergence and an all-height source-specific exclusion implication.
- Define the probability law and admissible correction and prove a uniform source-specific threshold implication.
- Define the probability distribution derived from the actual L-function, prove the correction preserves it, and prove the uniform implication to zero exclusion with full domain/tail coverage.

<a id="7e3e7acb686d4196-short-rmt-proof-upgrade-gap"></a>
### A Unified Theoretical Framework for the Proof of the Riemann Hypothesis and Its Generalizations — `7e3e7acb686d`

`idea:unpublished-v3:7e3e7acb686d4196:short-rmt-proof-upgrade-gap` — **repair-candidate**. Main claim unresolved.

The five-page version relies on GUE pair-correlation agreement and absence of observed anomalies to infer all zeros align.

A maintained source theorem gives a concrete possible replacement for the missing statistical-to-deterministic bridge: certified even/odd channel errors on the same pair, plus a strict model-energy margin, exclude simultaneous endpoint zeros. This short RMT version asserts alignment from statistical agreement but supplies no such enclosures. The theorem is unelaborated source at the pin and does not derive its hypotheses from GUE statistics.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 4](</Users/local/Desktop/MathematicsLibrary/NumberTheory/7e3e7acb686d--On_the__notion__of_Principle_as_a_chomocological_invariant_ (1).pdf#page=4>): “Critical Line as a Universal Symmetry.”. Page-text SHA-256 `b31c602456977453fa7241a1c4c22ab4d30f19a65c9d059ed695d18cb8f5092e`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/7e3e7acb686d--On_the__notion__of_Principle_as_a_chomocological_invariant_ (1).pdf#page=3>): “A UNIFIED THEORETICAL FRAMEWORK FOR THE PROOF OF THE RIEMANN”. Page-text SHA-256 `d72fd852ae2be9f5946bb161814e5346eeb9c4675e5ccbc5f265089e2f2d801a`.
- [p. 4](</Users/local/Desktop/MathematicsLibrary/NumberTheory/7e3e7acb686d--On_the__notion__of_Principle_as_a_chomocological_invariant_ (1).pdf#page=4>): “4                            grwtsk contributors”. Page-text SHA-256 `b31c602456977453fa7241a1c4c22ab4d30f19a65c9d059ed695d18cb8f5092e`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/7e3e7acb686d--On_the__notion__of_Principle_as_a_chomocological_invariant_ (1).pdf#page=2>): “2                           grwtsk contributors”. Page-text SHA-256 `ddcfc4718843ca07fc0778e086015f37c36ff39c8155afd0819280d253ffba47`.

Further complete pages read: 2, 3, 4. Pages beyond previously recorded citation pages: 2. Short asset; no further unreviewed substantive section located. Complete listed pages reread. Exact twin-page text may be read once across distinct assets; identities remain separate.

Broadened search terms: `symmetric pair enclosure`, `Enclosure excludes_pair`, `deterministic zero exclusion`, `RMT statistical upgrade`.

Lean candidates inspected:

- **repair-candidate**: [`GRWTSK.Analysis.Complex.SymmetricPair.Enclosure.excludes_pair`](https://github.com/grwtsk/math/blob/ba191bd06dcd3b2be364f9b7267b4ea57df21bbc/GRWTSK/Analysis/Complex/SymmetricPair.lean#L114-L129), `GRWTSK/Analysis/Complex/SymmetricPair.lean:114–129`. SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED at this pin. On the same exact source/model pair c±d, a supplied even-value/normalized-odd-secant enclosure and strict budget<model-energy margin exclude simultaneous endpoint zeros. It constructs no arithmetic enclosure, margin, all-pair coverage, statistical upgrade or source nonvanishing. Zero displacement is allowed and is not a derivative jet.

Missing bridges:

- Prove the deterministic upgrade for the exact source rather than equating finite numerical agreement with universal alignment.
- Preserve conjectural versus proved ranges of pair correlation and family symmetry type; nearest-neighbor/repulsion heuristics do not rule out individual off-line zeros.
- Prove the source-specific local/global comparison and an independent deterministic exclusion theorem with all conductor, dual and tail data.
- State an exact statistical proposition and prove a separate all-height deterministic/source comparison. The survey’s Newman-sign and perturbation claims also need their precise family and normalization.
- Choose the actual completed arithmetic source, valid reflected pair and exact domain; prove the required symmetry/dual comparison.
- Construct independently certified value and secant errors, prove the strict margin on every required pair and control all tails. Pointwise eventual acceptance cannot be silently made uniform.

## Method and limitations

The code search covered maintained `GRWTSK/**` excluding `GRWTSK/SourceCorpus/**`, and the pinned upstream `Mathlib/**` tree. It included declaration names, statement text and subject terms, then inspection of candidate statements, ambient hypotheses and proof source. Similar names, supplied records, unrelated nilpotent algebra, recursion costs and illustrative figures were not counted as matches. Full search outputs and new machine-access observations stay in the external library.

- No main manuscript claim is marked resolved. A conditional fragment is limited to the exact stated subclaim and domain.
- Obstruction-only records check unsupported asymptotic or finite-to-limit inferences, not the arithmetic conjecture itself. Paper-specific adapters were not newly compiled.
- All code citations are immutable source comparisons. No new Lean compilation or independent kernel audit is claimed.
- Selected complete pages were read, not whole manuscripts. Short exhausted assets were reread, and distinct versions never inherit unseen content from another asset.
- Original paths, bibliography, source/owner statements, access observations and human understanding dates are preserved. New machine-access observations stay private in the external library.
- Assistant interpretations remain proposals. Correspondence is not owner testimony, historical influence, priority or a proof of the larger conjecture.

## Exact code identities

- [`binary-entropy-zero`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Analysis/SpecialFunctions/BinaryEntropy.lean#L65-L65): Git blob `5a54ece56f09925fa0228346b067031558fc4b88`; full-file SHA-256 `cc0a8ab88f30af34d55b2f3987663f6f341ad851bfd56c10c70e9c6c1aad0407`.
- [`independence-to-linear`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/RingTheory/AlgebraicIndependent/Basic.lean#L71-L83): Git blob `f3f901a4a128fa8b9cdab443c56944215ca22dd6`; full-file SHA-256 `450f46eb94d5e32eb6d5cceeea6baf72f10835005e70212ab2bca6730a8ca7eb`.
- [`nonzero-powers`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Algebra/GroupWithZero/Basic.lean#L258-L260): Git blob `b645df61d0cab8996f9f949357ac218e7ddb0b1c`; full-file SHA-256 `6a07f5f5910a8378db7d5fd4ff71d846c6cc54cf97408b4c4961b3e4ebeca24c`.
- [`pair-exclusion`](https://github.com/grwtsk/math/blob/ba191bd06dcd3b2be364f9b7267b4ea57df21bbc/GRWTSK/Analysis/Complex/SymmetricPair.lean#L114-L129): Git blob `3d05c813a5a408bb9c4172e52bcfdc6c2f5fac01`; full-file SHA-256 `1839dbbc3b587b7597272ee8082feec08c3a9c0bfcf4ad5a8e6def4909ebf043`.
- [`powers-tend-zero`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Analysis/SpecificLimits/Normed.lean#L221-L225): Git blob `deecc84a1b389905bfddde42a9aa08ebc8ed944a`; full-file SHA-256 `113aaf52a8970f3d5731b3bef38b5eb29be69585d68fdd5fc22f4868fa9f35e6`.
- [`square-distance-expansion`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Analysis/InnerProductSpace/Basic.lean#L435-L438): Git blob `df294ad3a9269545374b410a9f806932b4417025`; full-file SHA-256 `344aa5e0b104223d327bb1f13db092b4d320017c8f82b7ba9846b5f517222468`.
- [`zero-bigO`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Analysis/Asymptotics/Defs.lean#L1147-L1148): Git blob `11d00735f6e01026b811d05b93c586c2c12e615d`; full-file SHA-256 `9d9f03b59c6a8ca243954c72b150d79eaba2c2ffb5ca2f8d9ed55bdaebe8eb1b`.
