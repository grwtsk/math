# Broader Lean search: 40 unresolved research ideas

Current follow-up for the 21 unresolved ideas: [broader maintained/upstream Lean search by taxonomy](remaining-idea-target-search.md). Earlier statuses remain historical; the newer review distinguishes conditional fragments, obstruction checks, repair candidates and remaining gaps.

**6 conditional-fragment**; **5 corrective-fragment**; **7 analogy-only**; **1 repair-candidate**; **21 unresolved**. All 40 exact asset/idea identities remain separate. **No main manuscript claim is marked resolved.**

Maintained-code search baseline: `0b05245818a34f3312274ee4e41d13fa17fa8fb4`. Explicit upstream mathlib dependency: `db584cd6d46c92f209a44c0f1c829460d327499d`, verified against `lake-manifest.json` at that maintained baseline. [Review data](unresolved-idea-broader-search.json) · [Strict schema](unresolved-idea-broader-search.schema.json) · [Prior 70-idea pass](unmatched-idea-followup.md)

Conditional fragments concern narrower source subclaims; corrective fragments support a correction to a printed calculation. Analogies and repair candidates are not established formalizations. Rejected candidates are included only to explain why a similar declaration is insufficient. Owner understanding dates remain null.

## Algebra — 9 versions

<a id="1574517a994e89cc-motivic-period-orbits"></a>
### Conjectures and Proofs for Galois-Theoretic Extensions of Automorphic L-Functions — `1574517a994e`

`idea:unpublished-v3:1574517a994e89cc:motivic-period-orbits` — **unresolved**. Main claim unresolved.

Current broader-search assessment: **conditional-fragment**, main claim unresolved. [Further paper and pinned Lean evidence](remaining-idea-target-search.md#1574517a994e89cc-motivic-period-orbits).

The manuscript proposes a motivic-Galois action on noncritical values, independence of conjugates and a field containing infinitely many algebraically independent periods.

The conjecture page assumes motivic period independence and uses an off-critical-line condition for noncritical. The pinned upstream Lindemann file proves an analytic exponential-polynomial approximation lemma; it is not Baker’s logarithmic-form theorem, a motivic period-independence theorem, or a transcendence-degree result.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/1574517a994e--Proof_Draft_for_Zeros_on_the_Critical_Line__Riemann_Zeta_Function_and_Dirichlet_L_functions (4).pdf#page=1>): “Conjecture 1:”. Page-text SHA-256 `0c52294d74ab6084de944ef31a6358ebfa5a3c995a711530b3669360c8f68049`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/1574517a994e--Proof_Draft_for_Zeros_on_the_Critical_Line__Riemann_Zeta_Function_and_Dirichlet_L_functions (4).pdf#page=2>): “Proof of Conjecture 3:”. Page-text SHA-256 `54860375a64a792f74356ff7e66e13e03beb88ab7e58530071d737b1986baf5f`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/1574517a994e--Proof_Draft_for_Zeros_on_the_Critical_Line__Riemann_Zeta_Function_and_Dirichlet_L_functions (4).pdf#page=2>): “Conjecture 3: Galois Closure for Transcendental Values”. Page-text SHA-256 `54860375a64a792f74356ff7e66e13e03beb88ab7e58530071d737b1986baf5f`.
- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/1574517a994e--Proof_Draft_for_Zeros_on_the_Critical_Line__Riemann_Zeta_Function_and_Dirichlet_L_functions (4).pdf#page=1>): “Conjectures and Proofs for Galois-Theoretic”. Page-text SHA-256 `0c52294d74ab6084de944ef31a6358ebfa5a3c995a711530b3669360c8f68049`.

Further complete pages read: 1. Pages beyond previously recorded citation pages: none; reread of already recorded material. Selected complete physical pages, reread where already recorded; no full-manuscript audit. Byte-identical page text may be read once across distinct assets, whose identities remain separate.

Broadened search terms: `motivic Galois`, `period torsor`, `Baker`, `Lindemann`.

Lean candidates inspected:

- **rejected-candidate**: [`LindemannWeierstrass.exp_polynomial_approx`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/NumberTheory/Transcendental/Lindemann/AnalyticalPart.lean#L157-L206), `Mathlib/NumberTheory/Transcendental/Lindemann/AnalyticalPart.lean:157–206`. An integer polynomial with nonzero constant term admits specified prime-indexed integer/polynomial exponential approximations at its complex roots with factorial error bounds. This is an analytic auxiliary result, not the full Lindemann-Weierstrass theorem, Baker logarithmic independence, motivic independence or an infinite-sum transcendence theorem.

Missing bridges:

- Distinguish noncritical in the motivic critical-value sense from Re(s)≠1/2; define the exact values and realizations.
- Specify the acting group and period torsor and prove orbit-generation claims. Baker’s theorem does not establish arbitrary motivic period independence.
- A group orbit or transcendental generator does not by itself produce infinitely many algebraically independent periods; state and prove the required transcendence-degree assertion.
- Specify the period torsor and coefficient field and prove the required independence instead of assuming it.
- Construct the actual motivic action and period relations; neither the auxiliary approximation lemma nor transcendence of one value establishes infinitely many independent periods.

<a id="1961da5dba9ca115-motivic-period-orbits"></a>
### Conjectures and Proofs for Galois-Theoretic Extensions of Automorphic L-Functions — `1961da5dba9c`

`idea:unpublished-v3:1961da5dba9ca115:motivic-period-orbits` — **unresolved**. Main claim unresolved.

Current broader-search assessment: **conditional-fragment**, main claim unresolved. [Further paper and pinned Lean evidence](remaining-idea-target-search.md#1961da5dba9ca115-motivic-period-orbits).

The manuscript proposes a motivic-Galois action on noncritical values, independence of conjugates and a field containing infinitely many algebraically independent periods.

The conjecture page assumes motivic period independence and uses an off-critical-line condition for noncritical. The pinned upstream Lindemann file proves an analytic exponential-polynomial approximation lemma; it is not Baker’s logarithmic-form theorem, a motivic period-independence theorem, or a transcendence-degree result.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/1961da5dba9c--Proof_Draft_for_Zeros_on_the_Critical_Line__Riemann_Zeta_Function_and_Dirichlet_L_functions (3).pdf#page=1>): “Conjecture 1:”. Page-text SHA-256 `0c52294d74ab6084de944ef31a6358ebfa5a3c995a711530b3669360c8f68049`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/1961da5dba9c--Proof_Draft_for_Zeros_on_the_Critical_Line__Riemann_Zeta_Function_and_Dirichlet_L_functions (3).pdf#page=2>): “Proof of Conjecture 3:”. Page-text SHA-256 `54860375a64a792f74356ff7e66e13e03beb88ab7e58530071d737b1986baf5f`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/1961da5dba9c--Proof_Draft_for_Zeros_on_the_Critical_Line__Riemann_Zeta_Function_and_Dirichlet_L_functions (3).pdf#page=2>): “Conjecture 3: Galois Closure for Transcendental Values”. Page-text SHA-256 `54860375a64a792f74356ff7e66e13e03beb88ab7e58530071d737b1986baf5f`.
- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/1961da5dba9c--Proof_Draft_for_Zeros_on_the_Critical_Line__Riemann_Zeta_Function_and_Dirichlet_L_functions (3).pdf#page=1>): “Conjectures and Proofs for Galois-Theoretic”. Page-text SHA-256 `0c52294d74ab6084de944ef31a6358ebfa5a3c995a711530b3669360c8f68049`.

Further complete pages read: 1. Pages beyond previously recorded citation pages: none; reread of already recorded material. Selected complete physical pages, reread where already recorded; no full-manuscript audit. Byte-identical page text may be read once across distinct assets, whose identities remain separate.

Broadened search terms: `motivic Galois`, `period torsor`, `Baker`, `Lindemann`.

Lean candidates inspected:

- **rejected-candidate**: [`LindemannWeierstrass.exp_polynomial_approx`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/NumberTheory/Transcendental/Lindemann/AnalyticalPart.lean#L157-L206), `Mathlib/NumberTheory/Transcendental/Lindemann/AnalyticalPart.lean:157–206`. An integer polynomial with nonzero constant term admits specified prime-indexed integer/polynomial exponential approximations at its complex roots with factorial error bounds. This is an analytic auxiliary result, not the full Lindemann-Weierstrass theorem, Baker logarithmic independence, motivic independence or an infinite-sum transcendence theorem.

Missing bridges:

- Distinguish noncritical in the motivic critical-value sense from Re(s)≠1/2; define the exact values and realizations.
- Specify the acting group and period torsor and prove orbit-generation claims. Baker’s theorem does not establish arbitrary motivic period independence.
- A group orbit or transcendental generator does not by itself produce infinitely many algebraically independent periods; state and prove the required transcendence-degree assertion.
- Specify the period torsor and coefficient field and prove the required independence instead of assuming it.
- Construct the actual motivic action and period relations; neither the auxiliary approximation lemma nor transcendence of one value establishes infinitely many independent periods.

<a id="498a8b7e7583e8ec-exceptional-embedding-transfer"></a>
### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations — `498a8b7e7583`

`idea:unpublished-v3:498a8b7e7583e8ec:exceptional-embedding-transfer` — **unresolved**. Main claim unresolved.

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and pinned Lean evidence](remaining-idea-target-search.md#498a8b7e7583e8ec-exceptional-embedding-transfer).

The outline proposes G2,F4,E8 representations in GL(7),GL(26),GL(248) and claims that embeddings preserve critical-line residue properties.

The exceptional-group outline still provides no parameter-preserving automorphic transfer. The exact upstream Dirichlet Euler product assumes a scalar DirichletCharacter; it cannot certify the proposed G2/F4/E8 lifts from faithful linear embeddings or their numerical tolerances.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/498a8b7e7583--i (3).pdf#page=1>): “Exceptional Group Embeddings”. Page-text SHA-256 `e1a09142b500da0d9b255b6c37916fb490be74ab2426c74414dffe11adf39f21`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/498a8b7e7583--i (3).pdf#page=2>): “Residue Suppression and Functional Equation”. Page-text SHA-256 `d4918a427957a5f13637da97018dd8484476128ae3af09279b685a9826d9b150`.
- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/498a8b7e7583--i (3).pdf#page=1>): “Exceptional Groups: Embeddings and”. Page-text SHA-256 `e1a09142b500da0d9b255b6c37916fb490be74ab2426c74414dffe11adf39f21`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/498a8b7e7583--i (3).pdf#page=2>): “4     Residue Suppression and Functional Equation Sym-”. Page-text SHA-256 `d4918a427957a5f13637da97018dd8484476128ae3af09279b685a9826d9b150`.

Further complete pages read: 2. Pages beyond previously recorded citation pages: none; reread of already recorded material. Selected complete physical pages, reread where already recorded; no full-manuscript audit. Byte-identical page text may be read once across distinct assets, whose identities remain separate.

Broadened search terms: `exceptional embedding`, `automorphic lift`, `Euler factor`, `twisted character`.

Lean candidates inspected:

- **rejected-candidate**: [`DirichletCharacter.LSeries_eulerProduct_tprod`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/NumberTheory/EulerProduct/DirichletLSeries.lean#L120-L123), `Mathlib/NumberTheory/EulerProduct/DirichletLSeries.lean:120–123`. For an actual complex Dirichlet character χ and Re(s)>1, the convergent prime product of (1−χ(p)*p^(−s))⁻¹ equals its Dirichlet L-series. Not an arbitrary exceptional automorphic lift, local reflection law, critical-strip product identity or a spectrum-union theorem.

Missing bridges:

- Construct the actual representation homomorphisms with the required base fields and exact preservation laws.
- A faithful linear representation does not identify automorphic L-functions or preserve their zeros by itself. Supply the local parameters, global analytic comparison and boundary regularization theorem.
- Construct the group representations and the separate analytic/local-global L-function comparison.
- Construct the representation homomorphisms, genuine twists and local-factor identities; prove the separate global analytic comparison.

<a id="67b33f06a6094d05-exceptional-embedding-transfer"></a>
### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations — `67b33f06a609`

`idea:unpublished-v3:67b33f06a6094d05:exceptional-embedding-transfer` — **unresolved**. Main claim unresolved.

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and pinned Lean evidence](remaining-idea-target-search.md#67b33f06a6094d05-exceptional-embedding-transfer).

The outline proposes G2,F4,E8 representations in GL(7),GL(26),GL(248) and claims that embeddings preserve critical-line residue properties.

The exceptional-group outline still provides no parameter-preserving automorphic transfer. The exact upstream Dirichlet Euler product assumes a scalar DirichletCharacter; it cannot certify the proposed G2/F4/E8 lifts from faithful linear embeddings or their numerical tolerances.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/67b33f06a609--i (2).pdf#page=1>): “Exceptional Group Embeddings”. Page-text SHA-256 `e1a09142b500da0d9b255b6c37916fb490be74ab2426c74414dffe11adf39f21`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/67b33f06a609--i (2).pdf#page=2>): “Residue Suppression and Functional Equation”. Page-text SHA-256 `d4918a427957a5f13637da97018dd8484476128ae3af09279b685a9826d9b150`.
- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/67b33f06a609--i (2).pdf#page=1>): “Exceptional Groups: Embeddings and”. Page-text SHA-256 `e1a09142b500da0d9b255b6c37916fb490be74ab2426c74414dffe11adf39f21`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/67b33f06a609--i (2).pdf#page=2>): “4     Residue Suppression and Functional Equation Sym-”. Page-text SHA-256 `d4918a427957a5f13637da97018dd8484476128ae3af09279b685a9826d9b150`.

Further complete pages read: 2. Pages beyond previously recorded citation pages: none; reread of already recorded material. Selected complete physical pages, reread where already recorded; no full-manuscript audit. Byte-identical page text may be read once across distinct assets, whose identities remain separate.

Broadened search terms: `exceptional embedding`, `automorphic lift`, `Euler factor`, `twisted character`.

Lean candidates inspected:

- **rejected-candidate**: [`DirichletCharacter.LSeries_eulerProduct_tprod`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/NumberTheory/EulerProduct/DirichletLSeries.lean#L120-L123), `Mathlib/NumberTheory/EulerProduct/DirichletLSeries.lean:120–123`. For an actual complex Dirichlet character χ and Re(s)>1, the convergent prime product of (1−χ(p)*p^(−s))⁻¹ equals its Dirichlet L-series. Not an arbitrary exceptional automorphic lift, local reflection law, critical-strip product identity or a spectrum-union theorem.

Missing bridges:

- Construct the actual representation homomorphisms with the required base fields and exact preservation laws.
- A faithful linear representation does not identify automorphic L-functions or preserve their zeros by itself. Supply the local parameters, global analytic comparison and boundary regularization theorem.
- Construct the group representations and the separate analytic/local-global L-function comparison.
- Construct the representation homomorphisms, genuine twists and local-factor identities; prove the separate global analytic comparison.

<a id="159cb12b34d5a425-kl-positive-to-residue-gap"></a>
### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis — `159cb12b34d5`

`idea:unpublished-v3:159cb12b34d5a425:kl-positive-to-residue-gap` — **unresolved**. Main claim unresolved.

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and pinned Lean evidence](remaining-idea-target-search.md#159cb12b34d5a425-kl-positive-to-residue-gap).

KL polynomial positivity and nilpotent-stratum localization are asserted to imply analytic residue vanishing, with affine/quantum extensions and a G2 example.

The recurrence page prints a truncated rule and positivity⇒residue vanishing. Broadening to upstream Hecke-ring definitions did not locate a KL recurrence/positivity theorem with this analytic realization. The subsequent q² diagonal example and claimed universal Pe,v=1 normalization remain unverified.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/159cb12b34d5--C (7).pdf#page=2>): “The positivity of Pu,v”. Page-text SHA-256 `f0dd8824015f3d5ec19eeb4f9c9f0a7b283f60e9aee9d54c7b16d45155a0a6f0`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/159cb12b34d5--C (7).pdf#page=3>): “recursive computations yielding”. Page-text SHA-256 `886f5bc6db5b64b1dd21ed0a5d9c802d1fb95e06c8ad022ebef9dc079c098103`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/159cb12b34d5--C (7).pdf#page=3>): “4     Affine and Quantum Extensions”. Page-text SHA-256 `886f5bc6db5b64b1dd21ed0a5d9c802d1fb95e06c8ad022ebef9dc079c098103`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/159cb12b34d5--C (7).pdf#page=2>): “• Localizing residues of L(s, π) to nilpotent cones in compactified moduli spaces.”. Page-text SHA-256 `f0dd8824015f3d5ec19eeb4f9c9f0a7b283f60e9aee9d54c7b16d45155a0a6f0`.

Further complete pages read: 2. Pages beyond previously recorded citation pages: none; reread of already recorded material. Selected complete physical pages, reread where already recorded; no full-manuscript audit. Byte-identical page text may be read once across distinct assets, whose identities remain separate.

Broadened search terms: `Kazhdan`, `Lusztig`, `HeckeRing`, `KL positivity`, `nilpotent`.

Lean candidates inspected:

- No concrete declaration established. This is a limited negative search finding, not proof of absence from Lean.

Missing bridges:

- Verify the polynomial recurrence, diagonal normalization and G2 example against the defining Hecke relations; the printed recursion and q² diagonal example are not established by the text.
- Construct the localization/realization and prove a source-specific identity linking its signed or graded pairing to analytic residues/zeros. Positivity does not imply vanishing without an additional proved implication.
- Specify and justify the affine/quantum variants instead of adding unnamed correction terms.
- Define the Hecke/KL recurrence and realization; prove an actual signed analytic comparison before any vanishing conclusion.
- Supply a correct KL specification and its geometric realization, then prove a source-specific residue/zero comparison; positivity alone does not discharge it.

<a id="553f237f431fc299-kl-positive-to-residue-gap"></a>
### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis — `553f237f431f`

`idea:unpublished-v3:553f237f431fc299:kl-positive-to-residue-gap` — **unresolved**. Main claim unresolved.

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and pinned Lean evidence](remaining-idea-target-search.md#553f237f431fc299-kl-positive-to-residue-gap).

KL polynomial positivity and nilpotent-stratum localization are asserted to imply analytic residue vanishing, with affine/quantum extensions and a G2 example.

The recurrence page prints a truncated rule and positivity⇒residue vanishing. Broadening to upstream Hecke-ring definitions did not locate a KL recurrence/positivity theorem with this analytic realization. The subsequent q² diagonal example and claimed universal Pe,v=1 normalization remain unverified.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/553f237f431f--C (9).pdf#page=2>): “The positivity of Pu,v”. Page-text SHA-256 `f0dd8824015f3d5ec19eeb4f9c9f0a7b283f60e9aee9d54c7b16d45155a0a6f0`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/553f237f431f--C (9).pdf#page=3>): “recursive computations yielding”. Page-text SHA-256 `886f5bc6db5b64b1dd21ed0a5d9c802d1fb95e06c8ad022ebef9dc079c098103`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/553f237f431f--C (9).pdf#page=3>): “4     Affine and Quantum Extensions”. Page-text SHA-256 `886f5bc6db5b64b1dd21ed0a5d9c802d1fb95e06c8ad022ebef9dc079c098103`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/553f237f431f--C (9).pdf#page=2>): “• Localizing residues of L(s, π) to nilpotent cones in compactified moduli spaces.”. Page-text SHA-256 `f0dd8824015f3d5ec19eeb4f9c9f0a7b283f60e9aee9d54c7b16d45155a0a6f0`.

Further complete pages read: 2. Pages beyond previously recorded citation pages: none; reread of already recorded material. Selected complete physical pages, reread where already recorded; no full-manuscript audit. Byte-identical page text may be read once across distinct assets, whose identities remain separate.

Broadened search terms: `Kazhdan`, `Lusztig`, `HeckeRing`, `KL positivity`, `nilpotent`.

Lean candidates inspected:

- No concrete declaration established. This is a limited negative search finding, not proof of absence from Lean.

Missing bridges:

- Verify the polynomial recurrence, diagonal normalization and G2 example against the defining Hecke relations; the printed recursion and q² diagonal example are not established by the text.
- Construct the localization/realization and prove a source-specific identity linking its signed or graded pairing to analytic residues/zeros. Positivity does not imply vanishing without an additional proved implication.
- Specify and justify the affine/quantum variants instead of adding unnamed correction terms.
- Define the Hecke/KL recurrence and realization; prove an actual signed analytic comparison before any vanishing conclusion.
- Supply a correct KL specification and its geometric realization, then prove a source-specific residue/zero comparison; positivity alone does not discharge it.

<a id="bd284739968eab78-exceptional-embedding-not-automorphic-transfer"></a>
### Residue Suppression via Embeddings and Geometric Langlands Localization — `bd284739968e`

`idea:unpublished-v3:bd284739968eab78:exceptional-embedding-not-automorphic-transfer` — **unresolved**. Main claim unresolved.

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and pinned Lean evidence](remaining-idea-target-search.md#bd284739968eab78-exceptional-embedding-not-automorphic-transfer).

Exceptional-group linear embeddings are paired with nilpotent localization and finite prime residue tables to claim all-zero suppression.

The exceptional-group discussion still provides no parameter-preserving automorphic transfer. In the longer version the additional twisted tables use χ(p)=(−1)^p; this needs a genuine character definition and multiplicativity, not a parity-labelled test array. The exact upstream Dirichlet Euler product assumes an actual DirichletCharacter and therefore cannot certify these exceptional lifts or tables.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/bd284739968e--D (2).pdf#page=3>): “Theorem: Positivity Constraints for F4 and E8”. Page-text SHA-256 `99610e9919ad114cfb222667bd41771aa3b3895f779491bb758ba364ae52ef98`.
- [p. 5](</Users/local/Desktop/MathematicsLibrary/NumberTheory/bd284739968e--D (2).pdf#page=5>): “Extensions to Symmetric and Exterior Powers”. Page-text SHA-256 `029252e0e8c3cc44824ae20e6a0db4a1fa7016fb2489646e969b19de12e742b7`.
- [p. 10](</Users/local/Desktop/MathematicsLibrary/NumberTheory/bd284739968e--D (2).pdf#page=10>): “def residue_computation(prime_list, eigenvalues):”. Page-text SHA-256 `3943ccf311e2f855e0a595f09cbb263bc494c3c4e52d6d41d33c09b948f549c1`.
- [p. 8](</Users/local/Desktop/MathematicsLibrary/NumberTheory/bd284739968e--D (2).pdf#page=8>): “Prime p     Res(p)G2   Res(p)GL(7) Difference”. Page-text SHA-256 `eecf6273c7d8f380e42dbc525d90401a0d44133ed299aa89c5abdf5186ab877b`.

Further complete pages read: 8. Pages beyond previously recorded citation pages: 8. Selected complete physical pages, reread where already recorded; no full-manuscript audit. Byte-identical page text may be read once across distinct assets, whose identities remain separate.

Broadened search terms: `exceptional embedding`, `automorphic lift`, `Euler factor`, `twisted character`.

Lean candidates inspected:

- **rejected-candidate**: [`DirichletCharacter.LSeries_eulerProduct_tprod`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/NumberTheory/EulerProduct/DirichletLSeries.lean#L120-L123), `Mathlib/NumberTheory/EulerProduct/DirichletLSeries.lean:120–123`. For an actual complex Dirichlet character χ and Re(s)>1, the convergent prime product of (1−χ(p)*p^(−s))⁻¹ equals its Dirichlet L-series. Not an arbitrary exceptional automorphic lift, local reflection law, critical-strip product identity or a spectrum-union theorem.

Missing bridges:

- A faithful linear representation G→GL(n) alone does not construct a global automorphic lift or prove equality of L-functions.
- Construct compactification/localization and prove the actual positivity-to-residue-zero and residue-to-zero-location comparisons.
- Finite prime tables with 10⁻⁸/10⁻⁹ differences are approximate comparisons, not exact factor identities or all-zero coverage; symmetric/exterior/twisted claims need separate sources.
- Construct exact local parameters and the automorphic transfer; certify numerical errors only after fixing the actual mathematical source.
- Construct the representation homomorphisms, genuine twists and local-factor identities; prove the separate global analytic comparison.

<a id="a748ea4b4592e7ab-purity-frobenius-versus-global-zeros"></a>
### The Ring—A Comprehensive Framework for Spectral Purity, Motivic Cohomology, and Fourier-Mukai Symmetries — `a748ea4b4592`

`idea:unpublished-v3:a748ea4b4592e7ab:purity-frobenius-versus-global-zeros` — **unresolved**. Main claim unresolved.

Current broader-search assessment: **obstruction-only**, main claim unresolved. [Further paper and pinned Lean evidence](remaining-idea-target-search.md#a748ea4b4592e7ab-purity-frobenius-versus-global-zeros).

The Ring identifies local Frobenius weight magnitudes with automorphic global zeros and uses Fourier–Mukai irreducibility/support preservation and intersection-cohomology spectrum to enforce purity.

The further chapter explicitly asserts Spec(L)=union_v Spec(Lv) from the Euler product and then infers global purity. The inspected exact GL1 Euler-product theorem is an analytic product identity on Re(s)>1, not a spectrum-union law or continuation theorem. The Fourier–Mukai chapter also needs a specified kernel before claiming an equivalence. No target for this local-weight-to-global-zero implication was established.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 82](</Users/local/Desktop/MathematicsLibrary/NumberTheory/a748ea4b4592--The_Ring_Spectral_Purity__Motivic_Cohomology__and_Fourier_Mukai_Symmetries (3).pdf#page=82>): “Lemma 8.2”. Page-text SHA-256 `d512130e9dc70e0587b35512a132b17e2f6eceb1a72fb4cd33fd1ccb7941fb48`.
- [p. 87](</Users/local/Desktop/MathematicsLibrary/NumberTheory/a748ea4b4592--The_Ring_Spectral_Purity__Motivic_Cohomology__and_Fourier_Mukai_Symmetries (3).pdf#page=87>): “Lemma 9.3”. Page-text SHA-256 `8a986f83e54cab6305b70b8c7cabc97d92a2b6018b5c24cf7a65292c468c49b5`.
- [p. 91](</Users/local/Desktop/MathematicsLibrary/NumberTheory/a748ea4b4592--The_Ring_Spectral_Purity__Motivic_Cohomology__and_Fourier_Mukai_Symmetries (3).pdf#page=91>): “Lemma 10.4”. Page-text SHA-256 `bad1bc584eba3673bbd0d6e1ee07de3e95bb7b659126a32a2027abf981995e0e`.
- [p. 108](</Users/local/Desktop/MathematicsLibrary/NumberTheory/a748ea4b4592--The_Ring_Spectral_Purity__Motivic_Cohomology__and_Fourier_Mukai_Symmetries (3).pdf#page=108>): “15     Frobenius Eigenvalues: Arithmetic and Spectral Connections”. Page-text SHA-256 `f7a0544aa29e2632785b727f39ccb1c488a19bb30fc9e20af927f1ab721e669c`.
- [p. 138](</Users/local/Desktop/MathematicsLibrary/NumberTheory/a748ea4b4592--The_Ring_Spectral_Purity__Motivic_Cohomology__and_Fourier_Mukai_Symmetries (3).pdf#page=138>): “23     Fourier-Mukai Transform: Definition and Fundamental Prop-”. Page-text SHA-256 `12c4d2c302efb686564d478a4519280a7a66847ae86566e760997cc36d27f144`.
- [p. 175](</Users/local/Desktop/MathematicsLibrary/NumberTheory/a748ea4b4592--The_Ring_Spectral_Purity__Motivic_Cohomology__and_Fourier_Mukai_Symmetries (3).pdf#page=175>): “33     Global-Local Motivic Extensions: Bridging Local and Global”. Page-text SHA-256 `7e16429453e344c38aec3f1ef1d9b5f1ec10cd2bc795627ed99c802cd0c7a2f5`.
- [p. 176](</Users/local/Desktop/MathematicsLibrary/NumberTheory/a748ea4b4592--The_Ring_Spectral_Purity__Motivic_Cohomology__and_Fourier_Mukai_Symmetries (3).pdf#page=176>): “33.2.2    Global Spectral Purity”. Page-text SHA-256 `9ea34b7a98c1f4a44d0fb75411f0902463d1e5c3a6605c3f2f9d0b3eca3f13fc`.

Further complete pages read: 138, 175, 176. Pages beyond previously recorded citation pages: 138, 175, 176. Selected complete physical pages, reread where already recorded; no full-manuscript audit. Byte-identical page text may be read once across distinct assets, whose identities remain separate.

Broadened search terms: `Fourier Mukai equivalence`, `local global purity`, `Euler product`, `spectrum union`.

Lean candidates inspected:

- **rejected-candidate**: [`DirichletCharacter.LSeries_eulerProduct_tprod`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/NumberTheory/EulerProduct/DirichletLSeries.lean#L120-L123), `Mathlib/NumberTheory/EulerProduct/DirichletLSeries.lean:120–123`. For an actual complex Dirichlet character χ and Re(s)>1, the convergent prime product of (1−χ(p)*p^(−s))⁻¹ equals its Dirichlet L-series. Not an arbitrary exceptional automorphic lift, local reflection law, critical-strip product identity or a spectrum-union theorem.

Missing bridges:

- Separate local Frobenius eigenvalue weights |α|=q^(w/2) from complex global L-function zero coordinates; construct an exact comparison with all normalizations.
- A general Fourier–Mukai kernel need not preserve irreducibility or support; supports even live on different spaces. Specify equivalence/kernel hypotheses and prove the intended relation.
- Define Spec(IC(M_G)) and prove its all-zero trace realization. Derived-category formation localizes quasi-isomorphisms, not merely homotopy equivalences; retain this categorical distinction.
- Construct the variable/normalization change and exact determinant/global analytic realization, with all convergence and weight hypotheses.
- Define the local/global spectral objects and prove their relation under analytic continuation; local factor roots and global complex zero coordinates are different objects.
- Specify the Fourier–Mukai kernel and equivalence hypotheses; arbitrary kernels on dual abelian varieties need not induce equivalences.

<a id="e686e3fe101ea8bf-purity-frobenius-versus-global-zeros"></a>
### The Ring—A Comprehensive Framework for Spectral Purity, Motivic Cohomology, and Fourier-Mukai Symmetries — `e686e3fe101e`

`idea:unpublished-v3:e686e3fe101ea8bf:purity-frobenius-versus-global-zeros` — **unresolved**. Main claim unresolved.

Current broader-search assessment: **obstruction-only**, main claim unresolved. [Further paper and pinned Lean evidence](remaining-idea-target-search.md#e686e3fe101ea8bf-purity-frobenius-versus-global-zeros).

The Ring identifies local Frobenius weight magnitudes with automorphic global zeros and uses Fourier–Mukai irreducibility/support preservation and intersection-cohomology spectrum to enforce purity.

The further chapter explicitly asserts Spec(L)=union_v Spec(Lv) from the Euler product and then infers global purity. The inspected exact GL1 Euler-product theorem is an analytic product identity on Re(s)>1, not a spectrum-union law or continuation theorem. The Fourier–Mukai chapter also needs a specified kernel before claiming an equivalence. No target for this local-weight-to-global-zero implication was established.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 82](</Users/local/Desktop/MathematicsLibrary/NumberTheory/e686e3fe101e--The_Ring_Spectral_Purity__Motivic_Cohomology__and_Fourier_Mukai_Symmetries (2).pdf#page=82>): “Lemma 8.2”. Page-text SHA-256 `d512130e9dc70e0587b35512a132b17e2f6eceb1a72fb4cd33fd1ccb7941fb48`.
- [p. 87](</Users/local/Desktop/MathematicsLibrary/NumberTheory/e686e3fe101e--The_Ring_Spectral_Purity__Motivic_Cohomology__and_Fourier_Mukai_Symmetries (2).pdf#page=87>): “Lemma 9.3”. Page-text SHA-256 `8a986f83e54cab6305b70b8c7cabc97d92a2b6018b5c24cf7a65292c468c49b5`.
- [p. 91](</Users/local/Desktop/MathematicsLibrary/NumberTheory/e686e3fe101e--The_Ring_Spectral_Purity__Motivic_Cohomology__and_Fourier_Mukai_Symmetries (2).pdf#page=91>): “Lemma 10.4”. Page-text SHA-256 `bad1bc584eba3673bbd0d6e1ee07de3e95bb7b659126a32a2027abf981995e0e`.
- [p. 108](</Users/local/Desktop/MathematicsLibrary/NumberTheory/e686e3fe101e--The_Ring_Spectral_Purity__Motivic_Cohomology__and_Fourier_Mukai_Symmetries (2).pdf#page=108>): “15     Frobenius Eigenvalues: Arithmetic and Spectral Connections”. Page-text SHA-256 `f7a0544aa29e2632785b727f39ccb1c488a19bb30fc9e20af927f1ab721e669c`.
- [p. 138](</Users/local/Desktop/MathematicsLibrary/NumberTheory/e686e3fe101e--The_Ring_Spectral_Purity__Motivic_Cohomology__and_Fourier_Mukai_Symmetries (2).pdf#page=138>): “23     Fourier-Mukai Transform: Definition and Fundamental Prop-”. Page-text SHA-256 `12c4d2c302efb686564d478a4519280a7a66847ae86566e760997cc36d27f144`.
- [p. 175](</Users/local/Desktop/MathematicsLibrary/NumberTheory/e686e3fe101e--The_Ring_Spectral_Purity__Motivic_Cohomology__and_Fourier_Mukai_Symmetries (2).pdf#page=175>): “33     Global-Local Motivic Extensions: Bridging Local and Global”. Page-text SHA-256 `7e16429453e344c38aec3f1ef1d9b5f1ec10cd2bc795627ed99c802cd0c7a2f5`.
- [p. 176](</Users/local/Desktop/MathematicsLibrary/NumberTheory/e686e3fe101e--The_Ring_Spectral_Purity__Motivic_Cohomology__and_Fourier_Mukai_Symmetries (2).pdf#page=176>): “33.2.2    Global Spectral Purity”. Page-text SHA-256 `9ea34b7a98c1f4a44d0fb75411f0902463d1e5c3a6605c3f2f9d0b3eca3f13fc`.

Further complete pages read: 138, 175, 176. Pages beyond previously recorded citation pages: 138, 175, 176. Selected complete physical pages, reread where already recorded; no full-manuscript audit. Byte-identical page text may be read once across distinct assets, whose identities remain separate.

Broadened search terms: `Fourier Mukai equivalence`, `local global purity`, `Euler product`, `spectrum union`.

Lean candidates inspected:

- **rejected-candidate**: [`DirichletCharacter.LSeries_eulerProduct_tprod`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/NumberTheory/EulerProduct/DirichletLSeries.lean#L120-L123), `Mathlib/NumberTheory/EulerProduct/DirichletLSeries.lean:120–123`. For an actual complex Dirichlet character χ and Re(s)>1, the convergent prime product of (1−χ(p)*p^(−s))⁻¹ equals its Dirichlet L-series. Not an arbitrary exceptional automorphic lift, local reflection law, critical-strip product identity or a spectrum-union theorem.

Missing bridges:

- Separate local Frobenius eigenvalue weights |α|=q^(w/2) from complex global L-function zero coordinates; construct an exact comparison with all normalizations.
- A general Fourier–Mukai kernel need not preserve irreducibility or support; supports even live on different spaces. Specify equivalence/kernel hypotheses and prove the intended relation.
- Define Spec(IC(M_G)) and prove its all-zero trace realization. Derived-category formation localizes quasi-isomorphisms, not merely homotopy equivalences; retain this categorical distinction.
- Construct the variable/normalization change and exact determinant/global analytic realization, with all convergence and weight hypotheses.
- Define the local/global spectral objects and prove their relation under analytic continuation; local factor roots and global complex zero coordinates are different objects.
- Specify the Fourier–Mukai kernel and equivalence hypotheses; arbitrary kernels on dual abelian varieties need not induce equivalences.

## Analysis — 3 versions

<a id="465f76a208948832-absolute-error-integral-scale"></a>
### A Hybrid Approach to Proving the Riemann Hypothesis: Cross-Domain Consistency and Error Propagation — `465f76a20894`

`idea:unpublished-v3:465f76a208948832:absolute-error-integral-scale` — **corrective-fragment**. Main claim unresolved.

The hybrid argument defines propagation P(x,ρ)=∫₁ˣ|t^ρ/ρ|dt and claims logarithmic growth on the critical line, alongside strengthened RMT assumptions.

Upstream integral_rpow computes the decisive scalar integral exactly. For the paper’s absolute integrand and nonzero ρ, the β=1/2 case is (2/(3|ρ|))*(x^(3/2)−1) on x≥1, after the norm-of-complex-power and constant-factor adapters. This supplies a correction calculation, not the paper’s claimed logarithmic propagation or cross-domain contradiction. The further assumptions page still imports spectral and motivic premises.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 9](</Users/local/Desktop/MathematicsLibrary/NumberTheory/465f76a20894--A_Hybrid_Approach_to_Proving_the_Riemann_Hypothesis__Cross_Domain_Consistency_and_Error_Propagation (3).pdf#page=9>): “Quantifying the Error: Propagation Metric”. Page-text SHA-256 `3e1309485eeaaf7e1ff97b0c7be4e409a0161431a2b33c75e36c6680485d22ce`.
- [p. 7](</Users/local/Desktop/MathematicsLibrary/NumberTheory/465f76a20894--A_Hybrid_Approach_to_Proving_the_Riemann_Hypothesis__Cross_Domain_Consistency_and_Error_Propagation (3).pdf#page=7>): “Strengthened Spectral Assumptions”. Page-text SHA-256 `d4d2cd3f0fa6e7937c169fb93bad2a51cb6e933d021eafadef34c933382b98ee`.
- [p. 11](</Users/local/Desktop/MathematicsLibrary/NumberTheory/465f76a20894--A_Hybrid_Approach_to_Proving_the_Riemann_Hypothesis__Cross_Domain_Consistency_and_Error_Propagation (3).pdf#page=11>): “assumption guarantees consistency in the cohomological interpretations of”. Page-text SHA-256 `731196e6cfe071ddf7e3534a14b673ee667de827f15b50b481e6a63df3f09663`.
- [p. 10](</Users/local/Desktop/MathematicsLibrary/NumberTheory/465f76a20894--A_Hybrid_Approach_to_Proving_the_Riemann_Hypothesis__Cross_Domain_Consistency_and_Error_Propagation (3).pdf#page=10>): “In subsequent sections, we will show that an off-critical zero necessarily”. Page-text SHA-256 `31314f689538ec09a5306306ead5d54f30ac5cbebb712428e72828f236355ffe`.

Further complete pages read: 10. Pages beyond previously recorded citation pages: 10. Selected complete physical pages, reread where already recorded; no full-manuscript audit. Byte-identical page text may be read once across distinct assets, whose identities remain separate.

Broadened search terms: `integral_rpow`, `absolute complex power`, `propagation metric`.

Lean candidates inspected:

- **corrective-fragment**: [`integral_rpow`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Analysis/SpecialFunctions/Integrals/Basic.lean#L147-L165), `Mathlib/Analysis/SpecialFunctions/Integrals/Basic.lean:147–165`. The oriented real interval integral of x^r is (b^(r+1)−a^(r+1))/(r+1), assuming r>−1 or r≠−1 with zero outside the unoriented interval. To use it for |t^ρ/ρ|, prove the positive-real norm identity and ρ≠0 and factor out its norm. No logarithmic or arithmetic error estimate follows.

Missing bridges:

- For the displayed absolute integral, the integrand magnitude is t^β/|ρ|; at β=1/2 its integral has power growth, not logarithmic growth. Correct the normalization or the conclusion.
- Preserve the expressly assumed refined pair-correlation framework; it is not an unconditional consequence of naming RMT.
- Prove source-specific modular/motivic/geometric comparison and a genuinely contradictory bound; an allowed lower-order PNT error is not itself a contradiction.
- Recompute the exact integral and normalization, then prove a genuinely incompatible bound for the same source.
- Prove the norm identity on positive real t and match the exact integral convention; the displayed scalar specialization has not been added as a new Lean theorem.
- Change the normalization or the claimed growth, then prove a contradictory estimate for that same source with all extra assumptions retained.

<a id="d8d87416bd1943d6-absolute-error-integral-scale"></a>
### A Hybrid Approach to Proving the Riemann Hypothesis: Cross-Domain Consistency and Error Propagation — `d8d87416bd19`

`idea:unpublished-v3:d8d87416bd1943d6:absolute-error-integral-scale` — **corrective-fragment**. Main claim unresolved.

The hybrid argument defines propagation P(x,ρ)=∫₁ˣ|t^ρ/ρ|dt and claims logarithmic growth on the critical line, alongside strengthened RMT assumptions.

Upstream integral_rpow computes the decisive scalar integral exactly. For the paper’s absolute integrand and nonzero ρ, the β=1/2 case is (2/(3|ρ|))*(x^(3/2)−1) on x≥1, after the norm-of-complex-power and constant-factor adapters. This supplies a correction calculation, not the paper’s claimed logarithmic propagation or cross-domain contradiction. The further assumptions page still imports spectral and motivic premises.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 9](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d8d87416bd19--A_Hybrid_Approach_to_Proving_the_Riemann_Hypothesis__Cross_Domain_Consistency_and_Error_Propagation (4).pdf#page=9>): “Quantifying the Error: Propagation Metric”. Page-text SHA-256 `3e1309485eeaaf7e1ff97b0c7be4e409a0161431a2b33c75e36c6680485d22ce`.
- [p. 7](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d8d87416bd19--A_Hybrid_Approach_to_Proving_the_Riemann_Hypothesis__Cross_Domain_Consistency_and_Error_Propagation (4).pdf#page=7>): “Strengthened Spectral Assumptions”. Page-text SHA-256 `d4d2cd3f0fa6e7937c169fb93bad2a51cb6e933d021eafadef34c933382b98ee`.
- [p. 11](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d8d87416bd19--A_Hybrid_Approach_to_Proving_the_Riemann_Hypothesis__Cross_Domain_Consistency_and_Error_Propagation (4).pdf#page=11>): “assumption guarantees consistency in the cohomological interpretations of”. Page-text SHA-256 `731196e6cfe071ddf7e3534a14b673ee667de827f15b50b481e6a63df3f09663`.
- [p. 10](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d8d87416bd19--A_Hybrid_Approach_to_Proving_the_Riemann_Hypothesis__Cross_Domain_Consistency_and_Error_Propagation (4).pdf#page=10>): “In subsequent sections, we will show that an off-critical zero necessarily”. Page-text SHA-256 `31314f689538ec09a5306306ead5d54f30ac5cbebb712428e72828f236355ffe`.

Further complete pages read: 10. Pages beyond previously recorded citation pages: 10. Selected complete physical pages, reread where already recorded; no full-manuscript audit. Byte-identical page text may be read once across distinct assets, whose identities remain separate.

Broadened search terms: `integral_rpow`, `absolute complex power`, `propagation metric`.

Lean candidates inspected:

- **corrective-fragment**: [`integral_rpow`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Analysis/SpecialFunctions/Integrals/Basic.lean#L147-L165), `Mathlib/Analysis/SpecialFunctions/Integrals/Basic.lean:147–165`. The oriented real interval integral of x^r is (b^(r+1)−a^(r+1))/(r+1), assuming r>−1 or r≠−1 with zero outside the unoriented interval. To use it for |t^ρ/ρ|, prove the positive-real norm identity and ρ≠0 and factor out its norm. No logarithmic or arithmetic error estimate follows.

Missing bridges:

- For the displayed absolute integral, the integrand magnitude is t^β/|ρ|; at β=1/2 its integral has power growth, not logarithmic growth. Correct the normalization or the conclusion.
- Preserve the expressly assumed refined pair-correlation framework; it is not an unconditional consequence of naming RMT.
- Prove source-specific modular/motivic/geometric comparison and a genuinely contradictory bound; an allowed lower-order PNT error is not itself a contradiction.
- Recompute the exact integral and normalization, then prove a genuinely incompatible bound for the same source.
- Prove the norm identity on positive real t and match the exact integral convention; the displayed scalar specialization has not been added as a new Lean theorem.
- Change the normalization or the claimed growth, then prove a contradictory estimate for that same source with all extra assumptions retained.

<a id="0b655e075a1e7798-dimension-decay-versus-fixed-source"></a>
### Residue Clustering, Entropy Suppression, and Symmetry Alignment: A Framework for Validating the Generalized Riemann Hypothesis — `0b655e075a1e`

`idea:unpublished-v3:0b655e075a1e7798:dimension-decay-versus-fixed-source` — **repair-candidate**. Main claim unresolved.

Residue corrections have denominator (a+b‖g−σ‖^p)^dimG and are extrapolated to a GL∞ limit with vanishing entropy.

The later entropy table prints numerical zero at rank 1000 and then passes to an integral over G∞. Upstream dominated convergence gives a precise possible repair for functions on one fixed measure space, with a common integrable envelope and almost-everywhere convergence. It supplies none of the rank embeddings, compatible measures or domination needed here.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 4](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0b655e075a1e--Residue_Clustering__Entropy_Suppression__and_Symmetry_Alignment__A_Framework_for_Validating_the_Generalized_Riemann_Hypothesis_ (2).pdf#page=4>): “Geometric Suppression of Residues”. Page-text SHA-256 `b3eccda07f78473823ccd264dc06cacbbde80b0bdf35c0b725d1ab376ad93aa1`.
- [p. 8](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0b655e075a1e--Residue_Clustering__Entropy_Suppression__and_Symmetry_Alignment__A_Framework_for_Validating_the_Generalized_Riemann_Hypothesis_ (2).pdf#page=8>): “Residue Clustering in G∞”. Page-text SHA-256 `9d128b3804123915457f4afba8900c6d3291a0172a1c88982b4e0cfa47cd516e`.
- [p. 5](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0b655e075a1e--Residue_Clustering__Entropy_Suppression__and_Symmetry_Alignment__A_Framework_for_Validating_the_Generalized_Riemann_Hypothesis_ (2).pdf#page=5>): “Dimension dim(G)      Perturbation ϵ Residue Value ∆G (g, π)”. Page-text SHA-256 `75a4e5b7d88accff58e675deb42d550da8969d58d8c008fbba3d688b7e6ed90d`.
- [p. 6](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0b655e075a1e--Residue_Clustering__Entropy_Suppression__and_Symmetry_Alignment__A_Framework_for_Validating_the_Generalized_Riemann_Hypothesis_ (2).pdf#page=6>): “Boundary regions in modular groups correspond to the cusps and higher-dimensional”. Page-text SHA-256 `9c14a6f0176aee61d53c4e1040b7e9ca7942fcbbe71da4f7256bce81d74d3669`.
- [p. 7](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0b655e075a1e--Residue_Clustering__Entropy_Suppression__and_Symmetry_Alignment__A_Framework_for_Validating_the_Generalized_Riemann_Hypothesis_ (2).pdf#page=7>): “Symmetry alignment represents the third pillar in our framework for validating the Gener-”. Page-text SHA-256 `f20397129e5d2e99115eb4c62ab0e96aef0b787047a447201e4a15fabe6bbf92`.

Further complete pages read: 6, 7. Pages beyond previously recorded citation pages: 6, 7. Selected complete physical pages, reread where already recorded; no full-manuscript audit. Byte-identical page text may be read once across distinct assets, whose identities remain separate.

Broadened search terms: `rank limit`, `dominated convergence`, `common measure`, `entropy suppression`.

Lean candidates inspected:

- **repair-candidate**: [`MeasureTheory.tendsto_integral_of_dominated_convergence`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/MeasureTheory/Integral/DominatedConvergence.lean#L57-L64), `Mathlib/MeasureTheory/Integral/DominatedConvergence.lean:57–64`. On one fixed measure space, a.e. strong measurability, a common integrable norm bound and a.e. pointwise convergence yield convergence of Bochner integrals. It constructs none of the rank embeddings, measures or domination needed for G∞, and does not identify a fixed arithmetic source.

Missing bridges:

- The denominator yields geometric decay only where its base exceeds1 and numerator growth is controlled; prove these conditions uniformly.
- Construct embeddings/topology, compatible measures and actual rank-limit objects before interchanging rank limits and integrals.
- Vanishing in a growing-rank model does not imply exact zero exclusion for a fixed original L-function. Numerical underflow to0 is not an exact vanishing certificate.
- Define compatible rank embeddings and measures, prove domination and base>1 bounds uniformly, and prove a fixed-source consequence separately.
- Put all ranks on an identified common measure space and prove measurability, a uniform integrable majorant and actual a.e. convergence.
- Prove any implication for a fixed original L-function separately; a rank limit or floating zero does not establish fixed-source vanishing.

## Geometry and topology — 10 versions

<a id="ec2b9a77a14f5ea8-distance-reduction"></a>
### Absolute Proof of the Nonexistence of a Rational Distance Point for a Square — `ec2b9a77a14f`

`idea:unpublished-v3:ec2b9a77a14f5ea8:distance-reduction` — **unresolved**. Main claim unresolved.

Current broader-search assessment: **conditional-fragment**, main claim unresolved. [Further paper and pinned Lean evidence](remaining-idea-target-search.md#ec2b9a77a14f5ea8-distance-reduction).

Rational distances to the four square vertices give rational squared-distance differences and hence rational coordinates; the draft then claims a reduction to a quartic with no rational points.

Rereading the coordinate reduction confirms that arbitrary rational coordinates are replaced by half-integers without justification. The broader Diophantine and geometry search did not establish a theorem excluding these four rational distances. Generic circle identities cannot supply the missing rational-point enumeration.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 1](</Users/local/Desktop/MathematicsLibrary/GeometryTopology/ec2b9a77a14f--Rational_Distance (2).pdf#page=1>): “Reduction to a Diophantine System”. Page-text SHA-256 `97d68d6a1a2f1cc2b9eae109618bcdf8035e1edbfce1a5cab6f594e26c5483c3`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/GeometryTopology/ec2b9a77a14f--Rational_Distance (2).pdf#page=2>): “Higher-Genus Curve Argument”. Page-text SHA-256 `85cb0c447a322aa85bbe6e2e33168cdfac4d6328b6f4d025974165799171ccac`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/GeometryTopology/ec2b9a77a14f--Rational_Distance (2).pdf#page=2>): “3     Nonexistence of Rational Solutions via Elliptic Curves”. Page-text SHA-256 `85cb0c447a322aa85bbe6e2e33168cdfac4d6328b6f4d025974165799171ccac`.
- [p. 1](</Users/local/Desktop/MathematicsLibrary/GeometryTopology/ec2b9a77a14f--Rational_Distance (2).pdf#page=1>): “Absolute Proof of the Nonexistence of a Rational Distance Point”. Page-text SHA-256 `97d68d6a1a2f1cc2b9eae109618bcdf8035e1edbfce1a5cab6f594e26c5483c3`.

Further complete pages read: 1. Pages beyond previously recorded citation pages: none; reread of already recorded material. Selected complete physical pages, reread where already recorded; no full-manuscript audit. Byte-identical page text may be read once across distinct assets, whose identities remain separate.

Broadened search terms: `rational distance`, `square rational`, `elliptic quartic`, `Faltings`.

Lean candidates inspected:

- No concrete declaration established. This is a limited negative search finding, not proof of absence from Lean.

Missing bridges:

- Rational x and y do not imply x=m/2,y=n/2 for integers m,n; retain arbitrary denominators. Rational squared distances are weaker than rational distances.
- Specify a genuine birational reduction with all degeneracies. Faltings finiteness does not imply emptiness, and no exhaustive rational-point certificate is supplied.
- Retain arbitrary rational denominators and supply explicit maps and a complete rational-point certificate.
- Specify the actual curve and all denominators and exceptional points, then prove exhaustive exclusion rather than finiteness.

<a id="4eae7c78f226245e-joint-runner-orbit"></a>
### Absolute Proof of the Lonely Runner Conjecture — `4eae7c78f226`

`idea:unpublished-v3:4eae7c78f226245e:joint-runner-orbit` — **conditional-fragment**. Main claim unresolved.

Moving to a runner’s frame reduces loneliness to joint avoidance by relative-speed torus coordinates; the paper invokes equidistribution and Minkowski to assert a time for every speed vector.

The first page explicitly invokes density/equidistribution for relative rotations. Upstream AddCircle.denseRange_zsmul_coe_iff supplies a precise one-coordinate fragment: integer multiples are dense exactly when a/p is irrational. Density is weaker than equidistribution, and coordinatewise density does not prove simultaneous avoidance for a rationally dependent vector of speeds.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/4eae7c78f226--Absolute_Proof_of_the_Lonely_Runner_Conjecture (2).pdf#page=1>): “Reformulation in a Moving Reference Frame”. Page-text SHA-256 `a4b9e4fd9ade62cd3690f50d38043302aca210ae0f618fb5621eac2f829445ee`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/4eae7c78f226--Absolute_Proof_of_the_Lonely_Runner_Conjecture (2).pdf#page=2>): “Minkowski’s Theorem”. Page-text SHA-256 `0d46fb9ce351d315b56d15f27b7c2db7106332ac1de3bb8d2c9b601d0979fd9a`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/4eae7c78f226--Absolute_Proof_of_the_Lonely_Runner_Conjecture (2).pdf#page=2>): “3.1    Bounding the Density of Clustering”. Page-text SHA-256 `0d46fb9ce351d315b56d15f27b7c2db7106332ac1de3bb8d2c9b601d0979fd9a`.
- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/4eae7c78f226--Absolute_Proof_of_the_Lonely_Runner_Conjecture (2).pdf#page=1>): “Absolute Proof of the Lonely Runner Conjecture”. Page-text SHA-256 `a4b9e4fd9ade62cd3690f50d38043302aca210ae0f618fb5621eac2f829445ee`.

Further complete pages read: 1. Pages beyond previously recorded citation pages: none; reread of already recorded material. Selected complete physical pages, reread where already recorded; no full-manuscript audit. Byte-identical page text may be read once across distinct assets, whose identities remain separate.

Broadened search terms: `lonely runner`, `AddCircle`, `denseRange_zsmul`, `Minkowski`.

Lean candidates inspected:

- **conditional-fragment**: [`AddCircle.denseRange_zsmul_coe_iff`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Topology/Instances/AddCircle/DenseSubgroup.lean#L55-L61), `Mathlib/Topology/Instances/AddCircle/DenseSubgroup.lean:55–61`. For real a,p, integer multiples of the class of a in AddCircle p have dense range iff a/p is irrational. Not joint torus equidistribution, positive-time avoidance or arbitrary-speed lonely runners.

Missing bridges:

- Retain the quantifier order: each runner may have its own lonely time. Do not replace it by simultaneous mutual separation of every runner.
- Joint equidistribution requires a specified orbit closure; individual irrational rotations do not handle arbitrary rationally dependent speed vectors.
- The allowed-time region is not shown to be a symmetric convex body in the claimed lattice dimension, and no covolume/volume inequality is proved. Supply those data or a different avoidance argument.
- Supply the joint orbit closure, convexity and volume/covolume comparison for every allowed speed vector.
- Use p=1 and a specific relative speed; prove its irrationality for this branch. Handle positive-time direction if integer density is used.
- Construct the joint orbit closure and the allowed target set. The universal arbitrary-speed lonely-runner claim remains without a target.

<a id="796ba01d4a02a5ba-boundary-positivity-outline"></a>
### Boundary Regularization: A Framework for High-Rank Elimination — `796ba01d4a02`

`idea:unpublished-v3:796ba01d4a02a5ba:boundary-positivity-outline` — **unresolved**. Main claim unresolved.

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and pinned Lean evidence](remaining-idea-target-search.md#796ba01d4a02a5ba-boundary-positivity-outline).

The two-page outline proposes boundary localization, Euler-form positivity and exceptional-group regularization, with a reported 10^−8 numerical error.

The second page remains an outline with claimed numerical tolerances. Broader searches of cohomology, intersection, Hecke and positivity declarations did not establish the missing Euler-pairing-to-analytic-vanishing implication. Definitions of Hecke rings or generic positivity guards are not that theorem.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/796ba01d4a02--g (2).pdf#page=1>): “Residue Suppression via Localization”. Page-text SHA-256 `4d8c7b048753cc2dfb6f88275ea478c9e047b33124d3ab9cae9143d6bdd843ff`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/796ba01d4a02--g (2).pdf#page=2>): “Positivity Constraints”. Page-text SHA-256 `ff18a835d335c007bb73a0f80dacab2cb5911bd573e04fa067fad2bf14dcddb2`.
- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/796ba01d4a02--g (2).pdf#page=1>): “Boundary Regularization: A Framework for”. Page-text SHA-256 `4d8c7b048753cc2dfb6f88275ea478c9e047b33124d3ab9cae9143d6bdd843ff`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/796ba01d4a02--g (2).pdf#page=2>): “5     Positivity Constraints”. Page-text SHA-256 `ff18a835d335c007bb73a0f80dacab2cb5911bd573e04fa067fad2bf14dcddb2`.

Further complete pages read: 2. Pages beyond previously recorded citation pages: none; reread of already recorded material. Selected complete physical pages, reread where already recorded; no full-manuscript audit. Byte-identical page text may be read once across distinct assets, whose identities remain separate.

Broadened search terms: `Euler form positivity`, `boundary cohomology vanishing`, `nilpotent strata`, `Kazhdan Lusztig`.

Lean candidates inspected:

- No concrete declaration established. This is a limited negative search finding, not proof of absence from Lean.

Missing bridges:

- Define the boundary complex, localization functor and actual signed residue/zero consumer, then prove the source comparison.
- Euler pairings are not universally positive. State the precise sheaves, degrees and positivity theorem, and derive vanishing separately.
- A reported tolerance is not a validated enclosure with full tails or an all-rank result.
- Construct a geometric positive form on the exact class of objects; Hermitian symmetry alone does not imply positivity or vanishing.
- Construct the exact pairing and localization/analytic realization and prove its sign and vanishing implications on the intended objects.

<a id="8b0f8dbc97a4587f-homotopy-rigidity-unproved-comparisons"></a>
### Spectral Rigidity, Homotopy Constraints, and the Functorial Necessity of the Riemann Hypothesis — `8b0f8dbc97a4`

`idea:unpublished-v3:8b0f8dbc97a4587f:homotopy-rigidity-unproved-comparisons` — **analogy-only**. Main claim unresolved.

Seven proposed principles identify categorical spectral constraints, missing arithmetic cohomology, reciprocity and noncommutative geometry as consequences of spectral RH.

The further pages repeat a spectral realization premise rather than construct it. Upstream IsSelfAdjoint.mem_spectrum_eq_re is a genuine real-spectrum theorem for an element of a complex C*-algebra. It does not construct the paper’s unbounded arithmetic operator, establish domain self-adjointness, or identify zero coordinates with the relevant spectrum. In particular, identifying only imaginary parts of zeros is compatible with off-line zeros.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/8b0f8dbc97a4--Spectral_Rigidity__Homotopy_Constraints__and_the_Functorial_Necessity_of_the_Riemann_Hypothesis__2_.pdf#page=2>): “Theorem 3.1”. Page-text SHA-256 `e21cb255c9e00fd20a38144467d1650580870d9b9bc7fcac1e6224b29b59883a`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/8b0f8dbc97a4--Spectral_Rigidity__Homotopy_Constraints__and_the_Functorial_Necessity_of_the_Riemann_Hypothesis__2_.pdf#page=3>): “Theorem 5.1”. Page-text SHA-256 `a17ee8a50187606c45054ba9e1f049a03d2d6846f22a7d45162c54cc85b61ba9`.
- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/8b0f8dbc97a4--Spectral_Rigidity__Homotopy_Constraints__and_the_Functorial_Necessity_of_the_Riemann_Hypothesis__2_.pdf#page=1>): “Annals of Mathematics 00 (XXXX), 1–4”. Page-text SHA-256 `8f2af0692441c8c95df167e5989a0366d24ac7f3f5a7286ca4b8842d640cc4d1`.
- [p. 4](</Users/local/Desktop/MathematicsLibrary/NumberTheory/8b0f8dbc97a4--Spectral_Rigidity__Homotopy_Constraints__and_the_Functorial_Necessity_of_the_Riemann_Hypothesis__2_.pdf#page=4>): “element in a derived category of spectral operators. - This replaces trace positivity con-”. Page-text SHA-256 `18e2ca0ffa31934ce18a9784a5c6856def40738d6509bdf98a4c33957b8bbfc9`.

Further complete pages read: 4. Pages beyond previously recorded citation pages: 4. Selected complete physical pages, reread where already recorded; no full-manuscript audit. Byte-identical page text may be read once across distinct assets, whose identities remain separate.

Broadened search terms: `self adjoint spectrum`, `spectral rigidity`, `homotopy constraint`, `unbounded operator`.

Lean candidates inspected:

- **analogy-only**: [`IsSelfAdjoint.mem_spectrum_eq_re`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Analysis/CStarAlgebra/Spectrum.lean#L173-L184), `Mathlib/Analysis/CStarAlgebra/Spectrum.lean:173–184`. For a self-adjoint element of a complex C*-algebra, every complex spectral point is real. No unbounded operator domain, arithmetic realization, homotopy obstruction or zero-coordinate correspondence is constructed.

Missing bridges:

- Construct the category and prove why an off-line zero determines a forbidden homotopy class; the claimed impossibility is not derived.
- Supply actual cohomology/weight and trace realization instead of importing finite-field Frobenius purity by analogy.
- Prove the arithmetic operator/prime-orbit reciprocity and exact source comparison. Discrete zeros do not by themselves exclude quantum chaos or resonances.
- Construct the operator/domain and multiplicity-preserving source comparison and prove the asserted categorical obstruction.
- Construct the actual operator and domain and a valid bounded transform/resolvent adapter if using this C*-algebra theorem.
- Prove an exact multiplicity-preserving correspondence that detects the real part of each zero; real imaginary-part data alone is insufficient.

<a id="0db38ec749b78bd0-derived-vanishing-zero-comparison"></a>
### A Derived Geometric Framework for the Riemann Hypothesis — `0db38ec749b7`

`idea:unpublished-v3:0db38ec749b78bd0:derived-vanishing-zero-comparison` — **analogy-only**. Main claim unresolved.

Derived bundle-stack boundary positivity and high-degree cohomology vanishing are combined with reflected trace terms to assert zero exclusion.

Further trace-formula pages give the pull-push Hecke expression and an interior-plus-boundary trace sum. Upstream LinearMap.trace_prodMap' proves trace additivity for a block-diagonal product of finite free modules; it does not derive a stratified stack trace formula from a set decomposition. Nonproper stacks, derived/categorical traces, infinite sums and boundary terms require different suppliers.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 13](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0db38ec749b7--A_Derived_Geometric_Framework_for_the_Riemann_Hypothesis (2).pdf#page=13>): “Theorem 3.2”. Page-text SHA-256 `6568d2288e3fe9f47cf2780b69467685e7078c36f429f32983f2352487e66692`.
- [p. 17](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0db38ec749b7--A_Derived_Geometric_Framework_for_the_Riemann_Hypothesis (2).pdf#page=17>): “Corollary 3.6”. Page-text SHA-256 `49d0dfee1b4fe09337378dc50799a2320ad144ed8b5817a6094d6ff6fa8dcf6f`.
- [p. 14](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0db38ec749b7--A_Derived_Geometric_Framework_for_the_Riemann_Hypothesis (2).pdf#page=14>): “• Hard Lefschetz theorem (generalized to derived stacks): Provides a cohomological sym-”. Page-text SHA-256 `8a2e053adf8870da744730eecd1b568a95a92b028218ab88006da7e313a86ca0`.
- [p. 16](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0db38ec749b7--A_Derived_Geometric_Framework_for_the_Riemann_Hypothesis (2).pdf#page=16>): “Definition of Hecke Operators. Let V be a finite-dimensional representation of the”. Page-text SHA-256 `b9541874b2548f7eb4c1b99a724db925b85298326bc1f845b3392aecb19892b5`.
- [p. 37](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0db38ec749b7--A_Derived_Geometric_Framework_for_the_Riemann_Hypothesis (2).pdf#page=37>): “G.5     Recursive Structure of Boundary Strata”. Page-text SHA-256 `11a716930c68ded8afb53df3a9fd9e3316c719ab4a612181cdb9fb7aae370b9b`.

Further complete pages read: 16, 37. Pages beyond previously recorded citation pages: 16, 37. Selected complete physical pages, reread where already recorded; no full-manuscript audit. Byte-identical page text may be read once across distinct assets, whose identities remain separate.

Broadened search terms: `derived trace formula`, `Hecke pull push`, `trace_prodMap`, `boundary splitting`.

Lean candidates inspected:

- **analogy-only**: [`LinearMap.trace_prodMap'`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/LinearAlgebra/Trace.lean#L218-L223), `Mathlib/LinearAlgebra/Trace.lean:218–223`. For the supplied finite free module hypotheses, the trace of a block-diagonal product map is the sum of its traces. This is ordinary algebraic trace, not an infinite/categorical/derived stack trace. The geometric splitting and trace-class/finite-rank realization are not constructed.

Missing bridges:

- Construct the stated stack and ample bundles; reductivity alone does not supply all required properness/ample/vanishing hypotheses.
- Prove which off-line zero produces a nonzero class in a forbidden degree, with an exact trace/source identity. High-degree vanishing does not by itself eliminate every boundary term.
- Reflection pairs off-line points too; symmetry of trace contributions does not force each contribution onto Re(s)=1/2.
- Prove the exact zero-to-class map, its nonvanishing and degree, and the relevant geometric vanishing hypotheses.
- Construct the actual cohomology and an invariant split, prove traceability/convergence and identify the exact trace convention.
- Prove which off-line zero gives a nonzero forbidden-degree class, without transferring vanishing from a positive twist to the original untwisted object by assertion.

<a id="a9d476a5336e2064-derived-vanishing-zero-comparison"></a>
### A Derived Geometric Framework for the Riemann Hypothesis — `a9d476a5336e`

`idea:unpublished-v3:a9d476a5336e2064:derived-vanishing-zero-comparison` — **analogy-only**. Main claim unresolved.

Derived bundle-stack boundary positivity and high-degree cohomology vanishing are combined with reflected trace terms to assert zero exclusion.

Further trace-formula pages give the pull-push Hecke expression and an interior-plus-boundary trace sum. Upstream LinearMap.trace_prodMap' proves trace additivity for a block-diagonal product of finite free modules; it does not derive a stratified stack trace formula from a set decomposition. Nonproper stacks, derived/categorical traces, infinite sums and boundary terms require different suppliers.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 13](</Users/local/Desktop/MathematicsLibrary/NumberTheory/a9d476a5336e--A_Derived_Geometric_Framework_for_the_Riemann_Hypothesis (3).pdf#page=13>): “Theorem 3.2”. Page-text SHA-256 `6568d2288e3fe9f47cf2780b69467685e7078c36f429f32983f2352487e66692`.
- [p. 17](</Users/local/Desktop/MathematicsLibrary/NumberTheory/a9d476a5336e--A_Derived_Geometric_Framework_for_the_Riemann_Hypothesis (3).pdf#page=17>): “Corollary 3.6”. Page-text SHA-256 `49d0dfee1b4fe09337378dc50799a2320ad144ed8b5817a6094d6ff6fa8dcf6f`.
- [p. 14](</Users/local/Desktop/MathematicsLibrary/NumberTheory/a9d476a5336e--A_Derived_Geometric_Framework_for_the_Riemann_Hypothesis (3).pdf#page=14>): “• Hard Lefschetz theorem (generalized to derived stacks): Provides a cohomological sym-”. Page-text SHA-256 `8a2e053adf8870da744730eecd1b568a95a92b028218ab88006da7e313a86ca0`.
- [p. 16](</Users/local/Desktop/MathematicsLibrary/NumberTheory/a9d476a5336e--A_Derived_Geometric_Framework_for_the_Riemann_Hypothesis (3).pdf#page=16>): “Definition of Hecke Operators. Let V be a finite-dimensional representation of the”. Page-text SHA-256 `b9541874b2548f7eb4c1b99a724db925b85298326bc1f845b3392aecb19892b5`.
- [p. 37](</Users/local/Desktop/MathematicsLibrary/NumberTheory/a9d476a5336e--A_Derived_Geometric_Framework_for_the_Riemann_Hypothesis (3).pdf#page=37>): “G.5     Recursive Structure of Boundary Strata”. Page-text SHA-256 `11a716930c68ded8afb53df3a9fd9e3316c719ab4a612181cdb9fb7aae370b9b`.

Further complete pages read: 16, 37. Pages beyond previously recorded citation pages: 16, 37. Selected complete physical pages, reread where already recorded; no full-manuscript audit. Byte-identical page text may be read once across distinct assets, whose identities remain separate.

Broadened search terms: `derived trace formula`, `Hecke pull push`, `trace_prodMap`, `boundary splitting`.

Lean candidates inspected:

- **analogy-only**: [`LinearMap.trace_prodMap'`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/LinearAlgebra/Trace.lean#L218-L223), `Mathlib/LinearAlgebra/Trace.lean:218–223`. For the supplied finite free module hypotheses, the trace of a block-diagonal product map is the sum of its traces. This is ordinary algebraic trace, not an infinite/categorical/derived stack trace. The geometric splitting and trace-class/finite-rank realization are not constructed.

Missing bridges:

- Construct the stated stack and ample bundles; reductivity alone does not supply all required properness/ample/vanishing hypotheses.
- Prove which off-line zero produces a nonzero class in a forbidden degree, with an exact trace/source identity. High-degree vanishing does not by itself eliminate every boundary term.
- Reflection pairs off-line points too; symmetry of trace contributions does not force each contribution onto Re(s)=1/2.
- Prove the exact zero-to-class map, its nonvanishing and degree, and the relevant geometric vanishing hypotheses.
- Construct the actual cohomology and an invariant split, prove traceability/convergence and identify the exact trace convention.
- Prove which off-line zero gives a nonzero forbidden-degree class, without transferring vanishing from a positive twist to the original untwisted object by assertion.

<a id="34ebca88596ffc41-twisted-vanishing-versus-untwisted-source"></a>
### A Derived Geometric Proof of the Riemann Hypothesis — `34ebca88596f`

`idea:unpublished-v3:34ebca88596ffc41:twisted-vanishing-versus-untwisted-source` — **analogy-only**. Main claim unresolved.

The draft passes from sufficiently positive twists to an untwisted boundary vanishing theorem and asserts off-line zeros produce high-degree boundary cohomology.

Further trace-formula pages give the pull-push Hecke expression and an interior-plus-boundary trace sum. Upstream LinearMap.trace_prodMap' proves trace additivity for a block-diagonal product of finite free modules; it does not derive a stratified stack trace formula from a set decomposition. Nonproper stacks, derived/categorical traces, infinite sums and boundary terms require different suppliers.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 18](</Users/local/Desktop/MathematicsLibrary/NumberTheory/34ebca88596f--A_Derived_Geometric_Proof_of_the_Riemann_Hypothesis (5).pdf#page=18>): “Theorem 2.6”. Page-text SHA-256 `cecb5827f8a8df4915256d48344b6b7e8a1638db4aaa2824b70034d2dfcf8417`.
- [p. 18](</Users/local/Desktop/MathematicsLibrary/NumberTheory/34ebca88596f--A_Derived_Geometric_Proof_of_the_Riemann_Hypothesis (5).pdf#page=18>): “Off-Line Zeros and Cohomological Obstructions.”. Page-text SHA-256 `cecb5827f8a8df4915256d48344b6b7e8a1638db4aaa2824b70034d2dfcf8417`.
- [p. 19](</Users/local/Desktop/MathematicsLibrary/NumberTheory/34ebca88596f--A_Derived_Geometric_Proof_of_the_Riemann_Hypothesis (5).pdf#page=19>): “Contradiction via Vanishing. The Boundary Vanishing Theorem eliminates such classes”. Page-text SHA-256 `8db262c223aa1f1354decd63ac862181a5237e7b712e35d27e6f3a3f4760e54a`.
- [p. 20](</Users/local/Desktop/MathematicsLibrary/NumberTheory/34ebca88596f--A_Derived_Geometric_Proof_of_the_Riemann_Hypothesis (5).pdf#page=20>): “The Hecke operator HV acts on the derived category Db (BunG ) of coherent sheaves as:”. Page-text SHA-256 `160e0835226b0bd9759f2ecf799199ce67612930e6dd6bc219a68d896cddec23`.
- [p. 21](</Users/local/Desktop/MathematicsLibrary/NumberTheory/34ebca88596f--A_Derived_Geometric_Proof_of_the_Riemann_Hypothesis (5).pdf#page=21>): “Boundary Contributions: Degenerate Bundles. The boundary terms TrBunM (HV )”. Page-text SHA-256 `83e519c994f3ba6b0be2f0d90f28be0a67901928844f871b656ddb9abb6346d6`.

Further complete pages read: 20, 21. Pages beyond previously recorded citation pages: 20, 21. Selected complete physical pages, reread where already recorded; no full-manuscript audit. Byte-identical page text may be read once across distinct assets, whose identities remain separate.

Broadened search terms: `derived trace formula`, `Hecke pull push`, `trace_prodMap`, `boundary splitting`.

Lean candidates inspected:

- **analogy-only**: [`LinearMap.trace_prodMap'`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/LinearAlgebra/Trace.lean#L218-L223), `Mathlib/LinearAlgebra/Trace.lean:218–223`. For the supplied finite free module hypotheses, the trace of a block-diagonal product map is the sum of its traces. This is ordinary algebraic trace, not an infinite/categorical/derived stack trace. The geometric splitting and trace-class/finite-rank realization are not constructed.

Missing bridges:

- Vanishing for F⊗L^k does not automatically transfer to F; prove the actual comparison, hypotheses and degree range.
- Construct the claimed nonzero cohomology class from each off-line zero and prove it lies above the vanishing threshold.
- Correct ζ(s)=ζ(1−s) to the properly completed functional equation; even correct reflection does not fix all zeros.
- Prove the exact zero-to-class map, its nonvanishing and degree, and the relevant geometric vanishing hypotheses.
- Construct the actual cohomology and an invariant split, prove traceability/convergence and identify the exact trace convention.
- Prove which off-line zero gives a nonzero forbidden-degree class, without transferring vanishing from a positive twist to the original untwisted object by assertion.

<a id="50a2340db4a9dbfa-twisted-vanishing-versus-untwisted-source"></a>
### A Derived Geometric Proof of the Riemann Hypothesis — `50a2340db4a9`

`idea:unpublished-v3:50a2340db4a9dbfa:twisted-vanishing-versus-untwisted-source` — **analogy-only**. Main claim unresolved.

The draft passes from sufficiently positive twists to an untwisted boundary vanishing theorem and asserts off-line zeros produce high-degree boundary cohomology.

Further trace-formula pages give the pull-push Hecke expression and an interior-plus-boundary trace sum. Upstream LinearMap.trace_prodMap' proves trace additivity for a block-diagonal product of finite free modules; it does not derive a stratified stack trace formula from a set decomposition. Nonproper stacks, derived/categorical traces, infinite sums and boundary terms require different suppliers.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 18](</Users/local/Desktop/MathematicsLibrary/NumberTheory/50a2340db4a9--A_Derived_Geometric_Proof_of_the_Riemann_Hypothesis (6).pdf#page=18>): “Theorem 2.6”. Page-text SHA-256 `cecb5827f8a8df4915256d48344b6b7e8a1638db4aaa2824b70034d2dfcf8417`.
- [p. 18](</Users/local/Desktop/MathematicsLibrary/NumberTheory/50a2340db4a9--A_Derived_Geometric_Proof_of_the_Riemann_Hypothesis (6).pdf#page=18>): “Off-Line Zeros and Cohomological Obstructions.”. Page-text SHA-256 `cecb5827f8a8df4915256d48344b6b7e8a1638db4aaa2824b70034d2dfcf8417`.
- [p. 19](</Users/local/Desktop/MathematicsLibrary/NumberTheory/50a2340db4a9--A_Derived_Geometric_Proof_of_the_Riemann_Hypothesis (6).pdf#page=19>): “Contradiction via Vanishing. The Boundary Vanishing Theorem eliminates such classes”. Page-text SHA-256 `8db262c223aa1f1354decd63ac862181a5237e7b712e35d27e6f3a3f4760e54a`.
- [p. 20](</Users/local/Desktop/MathematicsLibrary/NumberTheory/50a2340db4a9--A_Derived_Geometric_Proof_of_the_Riemann_Hypothesis (6).pdf#page=20>): “The Hecke operator HV acts on the derived category Db (BunG ) of coherent sheaves as:”. Page-text SHA-256 `160e0835226b0bd9759f2ecf799199ce67612930e6dd6bc219a68d896cddec23`.
- [p. 21](</Users/local/Desktop/MathematicsLibrary/NumberTheory/50a2340db4a9--A_Derived_Geometric_Proof_of_the_Riemann_Hypothesis (6).pdf#page=21>): “Boundary Contributions: Degenerate Bundles. The boundary terms TrBunM (HV )”. Page-text SHA-256 `83e519c994f3ba6b0be2f0d90f28be0a67901928844f871b656ddb9abb6346d6`.

Further complete pages read: 20, 21. Pages beyond previously recorded citation pages: 20, 21. Selected complete physical pages, reread where already recorded; no full-manuscript audit. Byte-identical page text may be read once across distinct assets, whose identities remain separate.

Broadened search terms: `derived trace formula`, `Hecke pull push`, `trace_prodMap`, `boundary splitting`.

Lean candidates inspected:

- **analogy-only**: [`LinearMap.trace_prodMap'`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/LinearAlgebra/Trace.lean#L218-L223), `Mathlib/LinearAlgebra/Trace.lean:218–223`. For the supplied finite free module hypotheses, the trace of a block-diagonal product map is the sum of its traces. This is ordinary algebraic trace, not an infinite/categorical/derived stack trace. The geometric splitting and trace-class/finite-rank realization are not constructed.

Missing bridges:

- Vanishing for F⊗L^k does not automatically transfer to F; prove the actual comparison, hypotheses and degree range.
- Construct the claimed nonzero cohomology class from each off-line zero and prove it lies above the vanishing threshold.
- Correct ζ(s)=ζ(1−s) to the properly completed functional equation; even correct reflection does not fix all zeros.
- Prove the exact zero-to-class map, its nonvanishing and degree, and the relevant geometric vanishing hypotheses.
- Construct the actual cohomology and an invariant split, prove traceability/convergence and identify the exact trace convention.
- Prove which off-line zero gives a nonzero forbidden-degree class, without transferring vanishing from a positive twist to the original untwisted object by assertion.

<a id="8a8dc8e29d327ad4-geometric-functorial-alignment-outline"></a>
### A Geometric Framework for the Grand Riemann Hypothesis — `8a8dc8e29d32`

`idea:unpublished-v3:8a8dc8e29d327ad4:geometric-functorial-alignment-outline` — **analogy-only**. Main claim unresolved.

Functoriality, dual groups and derived compactifications are proposed to preserve residues and stabilize spectral operators.

The further pages repeat a spectral realization premise rather than construct it. Upstream IsSelfAdjoint.mem_spectrum_eq_re is a genuine real-spectrum theorem for an element of a complex C*-algebra. It does not construct the paper’s unbounded arithmetic operator, establish domain self-adjointness, or identify zero coordinates with the relevant spectrum. In particular, identifying only imaginary parts of zeros is compatible with off-line zeros.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 30](</Users/local/Desktop/MathematicsLibrary/NumberTheory/8a8dc8e29d32--A_Geometric_Framework_for_the_Grand_Riemann_Hypothesis (2).pdf#page=30>): “Functoriality in the Langlands Framework”. Page-text SHA-256 `ab5ab2630efba39f7cb909fcee979bd13f4d4f3543583f62fcad4ca219266ae6`.
- [p. 40](</Users/local/Desktop/MathematicsLibrary/NumberTheory/8a8dc8e29d32--A_Geometric_Framework_for_the_Grand_Riemann_Hypothesis (2).pdf#page=40>): “Utility in Residue Alignment and Spectral Operators”. Page-text SHA-256 `69aa4b3d7d999e3d5b0cb78ce9c0774d56ec950a4a778636e8481947e34f7397`.
- [p. 27](</Users/local/Desktop/MathematicsLibrary/NumberTheory/8a8dc8e29d32--A_Geometric_Framework_for_the_Grand_Riemann_Hypothesis (2).pdf#page=27>): “Local Context: This subsection highlights the role of the Frobenius trace”. Page-text SHA-256 `65f6ae45c2aecd0d82ede28f4fe4a48072098142057387a04ff5a9a33ad1371f`.
- [p. 53](</Users/local/Desktop/MathematicsLibrary/NumberTheory/8a8dc8e29d32--A_Geometric_Framework_for_the_Grand_Riemann_Hypothesis (2).pdf#page=53>): “The spectral operator Hπ is constructed as follows:”. Page-text SHA-256 `3b8d4c5274e7cc19eb4a130afd23005c0e2befd3a84fb9f33d9e18e3b311b38c`.
- [p. 55](</Users/local/Desktop/MathematicsLibrary/NumberTheory/8a8dc8e29d32--A_Geometric_Framework_for_the_Grand_Riemann_Hypothesis (2).pdf#page=55>): “Local Context: This subsection examines the relationship between eigen-”. Page-text SHA-256 `aa0e22a7efa5129459a4a94eb3dfd7b39ae0eb3b7fb8bd65bbcb5bc965867f5e`.

Further complete pages read: 53, 55. Pages beyond previously recorded citation pages: 53, 55. Selected complete physical pages, reread where already recorded; no full-manuscript audit. Byte-identical page text may be read once across distinct assets, whose identities remain separate.

Broadened search terms: `self adjoint spectrum`, `spectral rigidity`, `homotopy constraint`, `unbounded operator`.

Lean candidates inspected:

- **analogy-only**: [`IsSelfAdjoint.mem_spectrum_eq_re`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Analysis/CStarAlgebra/Spectrum.lean#L173-L184), `Mathlib/Analysis/CStarAlgebra/Spectrum.lean:173–184`. For a self-adjoint element of a complex C*-algebra, every complex spectral point is real. No unbounded operator domain, arithmetic realization, homotopy obstruction or zero-coordinate correspondence is constructed.

Missing bridges:

- Define the actual lift, its local factors and induced spectral map; a GL2→GL3 lift does not simply preserve every original Hecke eigenvalue.
- Correct the uncompleted zeta symmetry and prove source identities through boundary strata.
- Supply actual derived-stack and residue theorems; placeholder figures and descriptions do not establish stability or zero exclusion.
- Supply the actual lift, Euler-factor normalization, trace identity and boundary realization; finite-field traces alone do not identify complex global zeros.
- Construct the actual operator and domain and a valid bounded transform/resolvent adapter if using this C*-algebra theorem.
- Prove an exact multiplicity-preserving correspondence that detects the real part of each zero; real imaginary-part data alone is insufficient.

<a id="efe16f86d1739c61-geometric-functorial-alignment-outline"></a>
### A Geometric Framework for the Grand Riemann Hypothesis — `efe16f86d173`

`idea:unpublished-v3:efe16f86d1739c61:geometric-functorial-alignment-outline` — **analogy-only**. Main claim unresolved.

Functoriality, dual groups and derived compactifications are proposed to preserve residues and stabilize spectral operators.

The further pages repeat a spectral realization premise rather than construct it. Upstream IsSelfAdjoint.mem_spectrum_eq_re is a genuine real-spectrum theorem for an element of a complex C*-algebra. It does not construct the paper’s unbounded arithmetic operator, establish domain self-adjointness, or identify zero coordinates with the relevant spectrum. In particular, identifying only imaginary parts of zeros is compatible with off-line zeros.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 30](</Users/local/Desktop/MathematicsLibrary/NumberTheory/efe16f86d173--A_Geometric_Framework_for_the_Grand_Riemann_Hypothesis (3).pdf#page=30>): “Functoriality in the Langlands Framework”. Page-text SHA-256 `ab5ab2630efba39f7cb909fcee979bd13f4d4f3543583f62fcad4ca219266ae6`.
- [p. 40](</Users/local/Desktop/MathematicsLibrary/NumberTheory/efe16f86d173--A_Geometric_Framework_for_the_Grand_Riemann_Hypothesis (3).pdf#page=40>): “Utility in Residue Alignment and Spectral Operators”. Page-text SHA-256 `69aa4b3d7d999e3d5b0cb78ce9c0774d56ec950a4a778636e8481947e34f7397`.
- [p. 27](</Users/local/Desktop/MathematicsLibrary/NumberTheory/efe16f86d173--A_Geometric_Framework_for_the_Grand_Riemann_Hypothesis (3).pdf#page=27>): “Local Context: This subsection highlights the role of the Frobenius trace”. Page-text SHA-256 `65f6ae45c2aecd0d82ede28f4fe4a48072098142057387a04ff5a9a33ad1371f`.
- [p. 53](</Users/local/Desktop/MathematicsLibrary/NumberTheory/efe16f86d173--A_Geometric_Framework_for_the_Grand_Riemann_Hypothesis (3).pdf#page=53>): “The spectral operator Hπ is constructed as follows:”. Page-text SHA-256 `3b8d4c5274e7cc19eb4a130afd23005c0e2befd3a84fb9f33d9e18e3b311b38c`.
- [p. 55](</Users/local/Desktop/MathematicsLibrary/NumberTheory/efe16f86d173--A_Geometric_Framework_for_the_Grand_Riemann_Hypothesis (3).pdf#page=55>): “Local Context: This subsection examines the relationship between eigen-”. Page-text SHA-256 `aa0e22a7efa5129459a4a94eb3dfd7b39ae0eb3b7fb8bd65bbcb5bc965867f5e`.

Further complete pages read: 53, 55. Pages beyond previously recorded citation pages: 53, 55. Selected complete physical pages, reread where already recorded; no full-manuscript audit. Byte-identical page text may be read once across distinct assets, whose identities remain separate.

Broadened search terms: `self adjoint spectrum`, `spectral rigidity`, `homotopy constraint`, `unbounded operator`.

Lean candidates inspected:

- **analogy-only**: [`IsSelfAdjoint.mem_spectrum_eq_re`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Analysis/CStarAlgebra/Spectrum.lean#L173-L184), `Mathlib/Analysis/CStarAlgebra/Spectrum.lean:173–184`. For a self-adjoint element of a complex C*-algebra, every complex spectral point is real. No unbounded operator domain, arithmetic realization, homotopy obstruction or zero-coordinate correspondence is constructed.

Missing bridges:

- Define the actual lift, its local factors and induced spectral map; a GL2→GL3 lift does not simply preserve every original Hecke eigenvalue.
- Correct the uncompleted zeta symmetry and prove source identities through boundary strata.
- Supply actual derived-stack and residue theorems; placeholder figures and descriptions do not establish stability or zero exclusion.
- Supply the actual lift, Euler-factor normalization, trace identity and boundary realization; finite-field traces alone do not identify complex global zeros.
- Construct the actual operator and domain and a valid bounded transform/resolvent adapter if using this C*-algebra theorem.
- Prove an exact multiplicity-preserving correspondence that detects the real part of each zero; real imaginary-part data alone is insufficient.

## Logic and computation — 3 versions

<a id="3f28be14404a64ea-recomposition-upper-bound-not-separation"></a>
### Unified Proof of the Generalized Riemann Hypothesis and Computational Complexity — `3f28be14404a`

`idea:unpublished-v3:3f28be14404a64ea:recomposition-upper-bound-not-separation` — **unresolved**. Main claim unresolved.

Current broader-search assessment: **obstruction-only**, main claim unresolved. [Further paper and pinned Lean evidence](remaining-idea-target-search.md#3f28be14404a64ea-recomposition-upper-bound-not-separation).

The unified proof asserts sieve-fixed-point zero alignment and an exponential recomposition barrier T=O(2^n) as a proof of P≠NP.

The additional figures illustrate residue and symmetric-power profiles, not an all-algorithm lower bound. In the rendered first version the line labelled Re(s)=1/2 is drawn at the displayed coordinate 0. The separate O(2^n) statement remains an upper bound for a chosen procedure. Broader recursion/complexity searches did not establish the claimed separation.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 4](</Users/local/Desktop/MathematicsLibrary/NumberTheory/3f28be14404a--Unified_Proof_of_the_Generalized_Riemann_Hypothesis_and_Computational_Complexity__1_ (1).pdf#page=4>): “Exponential Recomposition Barrier”. Page-text SHA-256 `075ae668d72594331084056f406723b94b61d7c29c113560829a3fce112fa188`.
- [p. 4](</Users/local/Desktop/MathematicsLibrary/NumberTheory/3f28be14404a--Unified_Proof_of_the_Generalized_Riemann_Hypothesis_and_Computational_Complexity__1_ (1).pdf#page=4>): “4   Computational Complexity”. Page-text SHA-256 `075ae668d72594331084056f406723b94b61d7c29c113560829a3fce112fa188`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/3f28be14404a--Unified_Proof_of_the_Generalized_Riemann_Hypothesis_and_Computational_Complexity__1_ (1).pdf#page=3>): “Figure 1:”. Page-text SHA-256 `1044bb5c5e704fb5a1894ebf6307bb5309c24e51218238c95c57f84f19b3c7fe`.

Further complete pages read: 3. Pages beyond previously recorded citation pages: 3. Selected complete physical pages, reread where already recorded; no full-manuscript audit. Byte-identical page text may be read once across distinct assets, whose identities remain separate.

Broadened search terms: `P versus NP`, `NP complete`, `recomposition`, `algorithm lower bound`.

Lean candidates inspected:

- No concrete declaration established. This is a limited negative search finding, not proof of absence from Lean.

Missing bridges:

- O(2^n) is an upper bound, not an exponential lower bound. A slow decomposition/recomposition algorithm cannot rule out all polynomial-time algorithms.
- Prove the sieve iteration converges and preserves the original function/zeros; symmetric fixed data need not force each zero onto the symmetry axis.
- Keep contragredient/conjugate characters, gamma factors and symmetric-power existence hypotheses.
- Specify the computation model and prove the universal lower bound; keep upper bounds and algorithm-specific costs distinct.
- Specify the computation model and universal lower-bound quantifiers; illustrative graphs and an exponential upper bound cannot establish P≠NP.

<a id="b799fd9cb24af2a3-recomposition-upper-bound-not-separation"></a>
### Unified Proof of the Generalized Riemann Hypothesis and Computational Complexity — `b799fd9cb24a`

`idea:unpublished-v3:b799fd9cb24af2a3:recomposition-upper-bound-not-separation` — **unresolved**. Main claim unresolved.

Current broader-search assessment: **obstruction-only**, main claim unresolved. [Further paper and pinned Lean evidence](remaining-idea-target-search.md#b799fd9cb24af2a3-recomposition-upper-bound-not-separation).

The unified proof asserts sieve-fixed-point zero alignment and an exponential recomposition barrier T=O(2^n) as a proof of P≠NP.

The additional figures illustrate residue and symmetric-power profiles, not an all-algorithm lower bound. The separate O(2^n) statement remains an upper bound for a chosen procedure. Broader recursion/complexity searches did not establish the claimed separation.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 4](</Users/local/Desktop/MathematicsLibrary/NumberTheory/b799fd9cb24a--Unified_Proof_of_the_Generalized_Riemann_Hypothesis_and_Computational_Complexity (1).pdf#page=4>): “Exponential Recomposition Barrier”. Page-text SHA-256 `0d9f901bc0bc9c755e5c0747e0fa805feabfb8a83d5526ed3c65a72208c8bbc9`.
- [p. 4](</Users/local/Desktop/MathematicsLibrary/NumberTheory/b799fd9cb24a--Unified_Proof_of_the_Generalized_Riemann_Hypothesis_and_Computational_Complexity (1).pdf#page=4>): “2     Computational Complexity”. Page-text SHA-256 `0d9f901bc0bc9c755e5c0747e0fa805feabfb8a83d5526ed3c65a72208c8bbc9`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/b799fd9cb24a--Unified_Proof_of_the_Generalized_Riemann_Hypothesis_and_Computational_Complexity (1).pdf#page=3>): “Figure 1:”. Page-text SHA-256 `1044bb5c5e704fb5a1894ebf6307bb5309c24e51218238c95c57f84f19b3c7fe`.

Further complete pages read: 3. Pages beyond previously recorded citation pages: 3. Selected complete physical pages, reread where already recorded; no full-manuscript audit. Byte-identical page text may be read once across distinct assets, whose identities remain separate.

Broadened search terms: `P versus NP`, `NP complete`, `recomposition`, `algorithm lower bound`.

Lean candidates inspected:

- No concrete declaration established. This is a limited negative search finding, not proof of absence from Lean.

Missing bridges:

- O(2^n) is an upper bound, not an exponential lower bound. A slow decomposition/recomposition algorithm cannot rule out all polynomial-time algorithms.
- Prove the sieve iteration converges and preserves the original function/zeros; symmetric fixed data need not force each zero onto the symmetry axis.
- Keep contragredient/conjugate characters, gamma factors and symmetric-power existence hypotheses.
- Specify the computation model and prove the universal lower bound; keep upper bounds and algorithm-specific costs distinct.
- Specify the computation model and universal lower-bound quantifiers; illustrative graphs and an exponential upper bound cannot establish P≠NP.

<a id="d7819c0364c77a97-status-assertions-not-proof-evidence"></a>
### Updated Verification of Recursive Refinement Framework — `d7819c0364c7`

`idea:unpublished-v3:d7819c0364c77a97:status-assertions-not-proof-evidence` — **unresolved**. Main claim unresolved.

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and pinned Lean evidence](remaining-idea-target-search.md#d7819c0364c77a97-status-assertions-not-proof-evidence).

The status note declares Axioms 1/5, mixed-source consistency and zero independence resolved while listing remaining cross-term and higher-dimensional bounds.

The final page explicitly acknowledges missing mixed-form cross-term estimates and higher-dimensional extensions. It does not replace them with a complete quantitative statement. A broader asymptotic-budget search found no supplied arithmetic estimate matching the claimed resolution of the cited axioms.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d7819c0364c7--Updated_Verification_of_Recursive_Refinement_Framework (2).pdf#page=2>): “Statistical Independence of Zeros”. Page-text SHA-256 `b949895416d938edf5079487f3f65be80e0f8ca1acb84eceda5b3d93d367c973`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d7819c0364c7--Updated_Verification_of_Recursive_Refinement_Framework (2).pdf#page=3>): “Error Bounds for Mixed Automorphic Forms”. Page-text SHA-256 `c387efc0635800128e43a12a348f65f43c6ac5e364f4aa0df95d3701d94a85d4`.
- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d7819c0364c7--Updated_Verification_of_Recursive_Refinement_Framework (2).pdf#page=1>): “Updated Verification of Recursive Refinement”. Page-text SHA-256 `7d7c35049871f94b14430d67322c1c07daaf6264263287c8eb07eee6f2449eb5`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d7819c0364c7--Updated_Verification_of_Recursive_Refinement_Framework (2).pdf#page=3>): “Critical Review of Remaining Open Problems”. Page-text SHA-256 `c387efc0635800128e43a12a348f65f43c6ac5e364f4aa0df95d3701d94a85d4`.

Further complete pages read: 3. Pages beyond previously recorded citation pages: none; reread of already recorded material. Selected complete physical pages, reread where already recorded; no full-manuscript audit. Byte-identical page text may be read once across distinct assets, whose identities remain separate.

Broadened search terms: `bounded error`, `mixed Rankin Selberg`, `cross term`, `uniform estimate`.

Lean candidates inspected:

- No concrete declaration established. This is a limited negative search finding, not proof of absence from Lean.

Missing bridges:

- Verify the cited Axiom 1 uniform bound versus its growing estimates and Axiom 5 rate versus normalized convergence.
- Zero correlation is weaker than independence; retain RH/GRH premises in the cited independence argument.
- The acknowledged mixed cross-term bounds remain missing. Status labels and future numerical validation do not discharge them.
- Resolve the underlying references and preserve their exact rate, normalization and RH/GRH premises.
- Resolve the actual referenced inequalities and retain constants, rates, normalization and all conditional premises.

## Number theory — 12 versions

<a id="0b423568798d1ce3-prime-research-roadmap"></a>
### A Holistic Strategy for Deriving Properties of Prime Numbers — `0b423568798d`

`idea:unpublished-v3:0b423568798d1ce3:prime-research-roadmap` — **unresolved**. Main claim unresolved.

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and pinned Lean evidence](remaining-idea-target-search.md#0b423568798d1ce3-prime-research-roadmap).

The document proposes a research program joining zeta derivatives, prime-generation algorithms, motives and geometric visualizations; it states objectives rather than proving a prime-distribution theorem.

The final page is a list of geometric and experimental objectives, with numbered resource placeholders. Existing prime-counting or prime-list definitions would be tools for a future specification, not a formalization of a mathematical assertion in this roadmap.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0b423568798d--A_Holistic_Strategy_for_Deriving_Properties_of_Prime_Numbers (3).pdf#page=1>): “Analytic Number Theory”. Page-text SHA-256 `39a9fcea1d40a7413342a18358fee7b26bc3c11a1a7e3eda322c4818b889cfe1`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0b423568798d--A_Holistic_Strategy_for_Deriving_Properties_of_Prime_Numbers (3).pdf#page=3>): “Computational and Experimental Verification”. Page-text SHA-256 `22960f02b1cc371c3fad11641b450135c2f1b1060cbc7ebe69a36c069e42a617`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0b423568798d--A_Holistic_Strategy_for_Deriving_Properties_of_Prime_Numbers (3).pdf#page=2>): “3     Algebraic Number Theory and Primes in Fields”. Page-text SHA-256 `506eb036515e8f32eed5d026e1e8d76a66eba7e8c16a86ff40ccfebfd6517ba4`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0b423568798d--A_Holistic_Strategy_for_Deriving_Properties_of_Prime_Numbers (3).pdf#page=3>): “5     Geometric Representations and the Langlands”. Page-text SHA-256 `22960f02b1cc371c3fad11641b450135c2f1b1060cbc7ebe69a36c069e42a617`.

Further complete pages read: 3. Pages beyond previously recorded citation pages: none; reread of already recorded material. Selected complete physical pages, reread where already recorded; no full-manuscript audit. Byte-identical page text may be read once across distinct assets, whose identities remain separate.

Broadened search terms: `prime generation`, `primesBelow`, `geometric Langlands`, `recursive prime`.

Lean candidates inspected:

- No concrete declaration established. This is a limited negative search finding, not proof of absence from Lean.

Missing bridges:

- Replace each objective by a precise source identity or estimate with domains, constants and quantifiers before selecting a Lean theorem.
- The source-number citations are not an exact construction of a prime detector, algorithm correctness theorem or motive comparison.
- Choose a particular algorithm or source identity with an exact correctness or error claim before assigning a target.
- Select an exact algorithm, source identity or quantitative theorem and resolve its numbered resources.

<a id="d00d427aef3a27d8-rmt-langlands-survey-boundary"></a>
### A Comprehensive Exploration of the Generalized Riemann Hypothesis — `d00d427aef3a`

`idea:unpublished-v3:d00d427aef3a27d8:rmt-langlands-survey-boundary` — **unresolved**. Main claim unresolved.

Current broader-search assessment: **repair-candidate**, main claim unresolved. [Further paper and pinned Lean evidence](remaining-idea-target-search.md#d00d427aef3a27d8-rmt-langlands-survey-boundary).

The survey connects local/global Langlands representations, trace formulas and random-matrix zero-spacing analogies with speculative approaches to GRH.

The further survey/RMT pages assert an upgrade from statistical agreement to universal alignment without specifying a deterministic exclusion theorem. A bounded C*-algebra real-spectrum result applies to an identified self-adjoint element, not an empirical zero-spacing law or a general Langlands correspondence.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 6](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d00d427aef3a--A_Comprehensive_Exploration_of_the_Generalized_Riemann_Hypothesis (1).pdf#page=6>): “Langlands Correspondences”. Page-text SHA-256 `bdaa5afd57bb92160e4fb31216fc67ed433964e589caeb9ae2df85aed2ed4fe4`.
- [p. 8](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d00d427aef3a--A_Comprehensive_Exploration_of_the_Generalized_Riemann_Hypothesis (1).pdf#page=8>): “Universality and the GUE Conjecture”. Page-text SHA-256 `4c6436f25c2386c8f0d93770808b15d25f422cdb640e630e84c137dc97594d9b`.
- [p. 11](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d00d427aef3a--A_Comprehensive_Exploration_of_the_Generalized_Riemann_Hypothesis (1).pdf#page=11>): “5.6    Future Directions in Computational Verification”. Page-text SHA-256 `6408cfa885b825568438b5009f73ab1f4d998c33a34f9895585a1ae81ec0c43f`.
- [p. 12](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d00d427aef3a--A_Comprehensive_Exploration_of_the_Generalized_Riemann_Hypothesis (1).pdf#page=12>): “varieties provides a geometric realization of automorphic representations, allowing the”. Page-text SHA-256 `a91203a092eb19a128edb952fcf13d7d087c38c56f04626a1dba2a28819a53e1`.
- [p. 13](</Users/local/Desktop/MathematicsLibrary/NumberTheory/d00d427aef3a--A_Comprehensive_Exploration_of_the_Generalized_Riemann_Hypothesis (1).pdf#page=13>): “Sheaf theory, cohomology, and higher-dimensional geometry offer profound insights into”. Page-text SHA-256 `bd17d0a0d9b583695ed7511448a1e78b81eb155f7a73dd6d4dea3bc0e9d171b8`.

Further complete pages read: 12, 13. Pages beyond previously recorded citation pages: 12, 13. Selected complete physical pages, reread where already recorded; no full-manuscript audit. Byte-identical page text may be read once across distinct assets, whose identities remain separate.

Broadened search terms: `GUE pair correlation`, `deterministic upgrade`, `de Bruijn Newman`, `cohomology zeros`.

Lean candidates inspected:

- **rejected-candidate**: [`IsSelfAdjoint.mem_spectrum_eq_re`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Analysis/CStarAlgebra/Spectrum.lean#L173-L184), `Mathlib/Analysis/CStarAlgebra/Spectrum.lean:173–184`. For a self-adjoint element of a complex C*-algebra, every complex spectral point is real. No unbounded operator domain, arithmetic realization, homotopy obstruction or zero-coordinate correspondence is constructed.

Missing bridges:

- State the exact proven versus conjectural local/global correspondence for each group; do not assume a general global bijection.
- Correct/define unfolded spacing and distinguish pair correlation from nearest-neighbor laws and finite samples. A symmetry-type analogy does not transfer GRH between families.
- Retain the speculative and empirical scope of the machine-learning/quantum/statistical proposals and do not treat the survey bibliography as source verification.
- Prove the source-specific local/global comparison and an independent deterministic exclusion theorem with all conductor, dual and tail data.
- State an exact statistical proposition and prove a separate all-height deterministic/source comparison. The survey’s Newman-sign and perturbation claims also need their precise family and normalization.

<a id="f8f7f4692f9a8412-local-clustering-symmetry-gap"></a>
### A Proof of the Generalized Riemann Hypothesis via Residue Clustering Laws — `f8f7f4692f9a`

`idea:unpublished-v3:f8f7f4692f9a8412:local-clustering-symmetry-gap` — **conditional-fragment**. Main claim unresolved.

The longer version defines a prime-local Hecke series as a clustering density and asserts reflection symmetry and universal GUE statistics across discrete, continuous and mixed sources.

The local series can be compared concretely in its GL1 Dirichlet specialization. With q=χ(p)*p^(−s) and ||q||<1, the geometric-series theorem computes the k≥0 series as (1−q)⁻¹; subtracting k=0 gives the paper’s k≥1 local density. The exact Dirichlet Euler product is available for Re(s)>1. General Hecke eigenvalues at p^k are not automatically powers of λ(p), and none of these results gives local reflection.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 7](</Users/local/Desktop/MathematicsLibrary/NumberTheory/f8f7f4692f9a--Grh (1).pdf#page=7>): “Residue Clustering Densities and RMT”. Page-text SHA-256 `57094442a0e82a63f042bbfcc0fd3d3aa87e2ca5c5392abf21b8841f42ce21bf`.
- [p. 7](</Users/local/Desktop/MathematicsLibrary/NumberTheory/f8f7f4692f9a--Grh (1).pdf#page=7>): “Statistical Universality”. Page-text SHA-256 `57094442a0e82a63f042bbfcc0fd3d3aa87e2ca5c5392abf21b8841f42ce21bf`.
- [p. 8](</Users/local/Desktop/MathematicsLibrary/NumberTheory/f8f7f4692f9a--Grh (1).pdf#page=8>): “The statistical universality of residue clustering densities reinforces their role in proving the GRH.”. Page-text SHA-256 `87eab5eefd3446dcaecb1e2d7d3e089df1383e121114d8bfa7c3aef5f4ac8e4f`.
- [p. 5](</Users/local/Desktop/MathematicsLibrary/NumberTheory/f8f7f4692f9a--Grh (1).pdf#page=5>): “3    Universality Across Spectral Types and Groups”. Page-text SHA-256 `2bc10e2a0693efa9d0149e275c8208de6623b8f7fe468a1b09ff987fde0ebcd4`.
- [p. 9](</Users/local/Desktop/MathematicsLibrary/NumberTheory/f8f7f4692f9a--Grh (1).pdf#page=9>): “Resolving Singularities. For a singular variety X, intersection cohomology IH i (X, Q) gener-”. Page-text SHA-256 `27568bd47666c91652e1528c204219ef61274f44f8727ffbd5c7454969f602a4`.

Further complete pages read: 5, 9. Pages beyond previously recorded citation pages: 5, 9. Selected complete physical pages, reread where already recorded; no full-manuscript audit. Byte-identical page text may be read once across distinct assets, whose identities remain separate.

Broadened search terms: `local clustering`, `prime power series`, `DirichletCharacter`, `geometric sum`, `Euler product`.

Lean candidates inspected:

- **conditional-fragment**: [`tsum_geometric_of_norm_lt_one`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Analysis/SpecificLimits/Normed.lean#L372-L373), `Mathlib/Analysis/SpecificLimits/Normed.lean:372–373`. For an element q of a normed division ring with ||q||<1, Σ_{n≥0} q^n=(1−q)⁻¹. Matching a χ(p^k)*p^(−ks) series requires multiplicativity/cpow and index-shift adapters. General Hecke coefficients are not automatically powers of one scalar.
- **conditional-fragment**: [`DirichletCharacter.LSeries_eulerProduct_tprod`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/NumberTheory/EulerProduct/DirichletLSeries.lean#L120-L123), `Mathlib/NumberTheory/EulerProduct/DirichletLSeries.lean:120–123`. For an actual complex Dirichlet character χ and Re(s)>1, the convergent prime product of (1−χ(p)*p^(−s))⁻¹ equals its Dirichlet L-series. Not an arbitrary exceptional automorphic lift, local reflection law, critical-strip product identity or a spectrum-union theorem.

Missing bridges:

- Prove the claimed symmetry of the local series; a global functional equation does not give each Euler factor symmetry under s↦1−s.
- Specify the continuous spectral measure and mixed-source identity, unfolding and ensemble. The displayed nearest-neighbor surmise must not be equated with full GUE pair correlation.
- Provide verifiable data and an exact zero-exclusion bridge; finite numerical universality and placeholder references are not a proof for all groups.
- Prove the source-specific local/global comparison and an independent deterministic exclusion theorem with all conductor, dual and tail data.
- Prove the character/cpow/power and index-shift adapters and the norm bound on the exact domain.
- For higher-rank forms supply the actual local recurrence/Satake parameters. Prove a completed global functional equation separately; a local factor need not be reflection-symmetric.

<a id="ba422dcbe9ffc6fb-compact-integral-residue-alignment-gap"></a>
### Proof of the Generalized Riemann Hypothesis: Computational and Theoretical Integration — `ba422dcbe9ff`

`idea:unpublished-v3:ba422dcbe9ffc6fb:compact-integral-residue-alignment-gap` — **conditional-fragment**. Main claim unresolved.

The axiomatic proof infers global analytic continuation from compact subgroup integrals, then asserts inversion residue symmetry aligns zeros.

The additional methods pages specify integration over compact regions K. Upstream ContinuousOn.integrableOn_compact gives a concrete integrability fragment under continuity on K, the topological/measurable hypotheses and a measure finite on compact sets. It does not give holomorphic dependence on s, convergence over infinitely many translates, or normalized Monte Carlo accuracy.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 6](</Users/local/Desktop/MathematicsLibrary/NumberTheory/ba422dcbe9ff--Proof_of_the_Generalized_Riemann_Hypothesis__Computational_and_Theoretical_Integration (9).pdf#page=6>): “Lemma 1: Bounded Residues from Modular Periodicity”. Page-text SHA-256 `80e80ee0698c0cc24d7b0faabb2fe6c7cb2aff0f15c18dd53dd032b5ec95e377`.
- [p. 7](</Users/local/Desktop/MathematicsLibrary/NumberTheory/ba422dcbe9ff--Proof_of_the_Generalized_Riemann_Hypothesis__Computational_and_Theoretical_Integration (9).pdf#page=7>): “Lemma 2: Residue Symmetry Aligns Zeros”. Page-text SHA-256 `21d4775281142310e76a1476197c14be892f29eecf0dce73bf463e5df50300f2`.
- [p. 5](</Users/local/Desktop/MathematicsLibrary/NumberTheory/ba422dcbe9ff--Proof_of_the_Generalized_Riemann_Hypothesis__Computational_and_Theoretical_Integration (9).pdf#page=5>): “2.2   Axiom 2: Residue Symmetry”. Page-text SHA-256 `8a848ec49b28a7e3bced5b4e6c0254ebfb25758de10bf73504b01174e2aa9032`.
- [p. 8](</Users/local/Desktop/MathematicsLibrary/NumberTheory/ba422dcbe9ff--Proof_of_the_Generalized_Riemann_Hypothesis__Computational_and_Theoretical_Integration (9).pdf#page=8>): “3.4    Theorem: All Non-Trivial Zeros Lie on the Critical Line”. Page-text SHA-256 `cea8d8b54f384c34bf4b38424ab76dd83e69d1461b2d9984e538eb254e3faa32`.
- [p. 9](</Users/local/Desktop/MathematicsLibrary/NumberTheory/ba422dcbe9ff--Proof_of_the_Generalized_Riemann_Hypothesis__Computational_and_Theoretical_Integration (9).pdf#page=9>): “• Compact regions K ⊂ G were defined for integration, expressing residue integrals as:”. Page-text SHA-256 `055cb2caf37571c15718dc3644b2e00e2ad05f7ce2bb3df61a7d7664f0396c9e`.

Further complete pages read: 8, 9. Pages beyond previously recorded citation pages: 8, 9. Selected complete physical pages, reread where already recorded; no full-manuscript audit. Byte-identical page text may be read once across distinct assets, whose identities remain separate.

Broadened search terms: `compact subgroup integral`, `ContinuousOn.integrableOn_compact`, `analytic continuation`, `Monte Carlo`.

Lean candidates inspected:

- **conditional-fragment**: [`ContinuousOn.integrableOn_compact`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/MeasureTheory/Function/LocallyIntegrable.lean#L592-L594), `Mathlib/MeasureTheory/Function/LocallyIntegrable.lean:592–594`. In the file’s Borel/topological normed-space setting, a function continuous on a compact K in a Hausdorff domain is integrable on K for a measure finite on compact sets. Parameter holomorphy, infinite translate sums, normalized Monte Carlo error and global continuation require separate proofs.

Missing bridges:

- The sum over infinitely many Γ translates of the same compact integral needs convergence/fundamental-domain weights; compactness alone does not make that sum finite.
- Finite compact integrals do not by themselves continue an L-function globally. Prove the parameter-dependent analytic continuation.
- Ψ(x)+Ψ(1/x)=0 and the printed an∼a(n−1) do not imply zero location without an exact Mellin/source and exclusion theorem. Monte Carlo tolerance is not proof of equality.
- Prove convergence, parameter-dependent holomorphy and the exact source/zero comparison before applying a symmetry theorem.
- Instantiate the actual subgroup/region, locally finite measure and continuous integrand, retaining the measure’s normalization.
- Prove dominated parameter-dependent analyticity and translate-sum convergence. A sample mean approximates a normalized integral only with the appropriate probability law and certified error statement.

<a id="0523b6d449088321-modular-j-density-countercheck"></a>
### Residue Clustering Laws and the Proof of the Generalized Riemann Hypothesis — `0523b6d44908`

`idea:unpublished-v3:0523b6d449088321:modular-j-density-countercheck` — **corrective-fragment**. Main claim unresolved.

The clustering law derives a prime-local density from positive f(J(τ)), then claims reflection, boundedness on H and automorphy enforcement.

The additional mimic-correction pages make further positivity claims from an unrestricted modular perturbation. The earlier density’s reciprocal powers can instead be checked using Real.rpow_right_inj: for prime p>1, equality of the exponents’ powers forces equality of the exponents. That is a concrete correction tool, not a modular converse theorem. The claims that |τ|² is discontinuous and that a nonzero cusp correction universally forces negative density also require repair.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 8](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0523b6d44908--Residue_Clustering_Laws_and_the_Proof_of_the_Generalized_Riemann_Hypothesis (3).pdf#page=8>): “Theorem 4.2”. Page-text SHA-256 `eb6dd40faebfd8abca5b1da78da40fb38e7f94cf9b04673c53802142d15c7c32`.
- [p. 8](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0523b6d44908--Residue_Clustering_Laws_and_the_Proof_of_the_Generalized_Riemann_Hypothesis (3).pdf#page=8>): “Theorem 4.3”. Page-text SHA-256 `eb6dd40faebfd8abca5b1da78da40fb38e7f94cf9b04673c53802142d15c7c32`.
- [p. 11](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0523b6d44908--Residue_Clustering_Laws_and_the_Proof_of_the_Generalized_Riemann_Hypothesis (3).pdf#page=11>): “Theorem 5.1”. Page-text SHA-256 `1f06a7b8e487e59a5f6d65399fbfac307833e1667158459dc83a474899cd8cc8`.
- [p. 12](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0523b6d44908--Residue_Clustering_Laws_and_the_Proof_of_the_Generalized_Riemann_Hypothesis (3).pdf#page=12>): “Connection to Residue Clustering and GRH”. Page-text SHA-256 `32645ca867aef1c46718d2d03e75d881c8dd501009c034cb2a8659b09a2aaf51`.
- [p. 5](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0523b6d44908--Residue_Clustering_Laws_and_the_Proof_of_the_Generalized_Riemann_Hypothesis (3).pdf#page=5>): “3     Exclusion of Mimic Corrections”. Page-text SHA-256 `2603140b3ff09fbce89dc33a56b550b8030f3e87e8fdab7ff4a332e235c2e526`.
- [p. 6](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0523b6d44908--Residue_Clustering_Laws_and_the_Proof_of_the_Generalized_Riemann_Hypothesis (3).pdf#page=6>): “1. Residue Positivity Violations: Residue positivity requires:”. Page-text SHA-256 `ed23a9fe2721fbfc2c5b2066f258d860cc950066f61a73b7c94b209f3e848860`.

Further complete pages read: 5, 6. Pages beyond previously recorded citation pages: 5, 6. Selected complete physical pages, reread where already recorded; no full-manuscript audit. Byte-identical page text may be read once across distinct assets, whose identities remain separate.

Broadened search terms: `modular J density`, `rpow_right_inj`, `upper half plane`, `mimic correction`.

Lean candidates inspected:

- **corrective-fragment**: [`Real.rpow_right_inj`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Analysis/SpecialFunctions/Pow/Real.lean#L918-L922), `Mathlib/Analysis/SpecialFunctions/Pow/Real.lean:918–922`. For x>0 and x≠1, x^y=x^z iff y=z. Prime-base reciprocal-power reflection therefore requires equality of the exponents; the scalar specialization is a correction route, not a modular symmetry theorem.

Missing bridges:

- The denominator p^(Re(s)−1/2) changes under reflection, so fixed positive f(J) does not supply the printed equality except special cases.
- Holomorphicity on H does not imply boundedness on the noncompact quotient/cusp; prove actual cusp bounds.
- τ↦1−τ does not preserve H. Construct a valid modular involution/source map and an actual converse theorem, not an automorphy assertion from three modeled density properties.
- Repair the density/involution on its actual domain and construct the completed-source comparison before any zero or BSD conclusion.
- State a real-valued correction and its range, correct the local reflection calculation and construct a valid upper-half-plane action and analytic source comparison.

<a id="482cdae3e36c3e60-modular-density-and-bsd-residue-gap"></a>
### Residue Clustering and the Proof of the Generalized Riemann Hypothesis — `482cdae3e36c`

`idea:unpublished-v3:482cdae3e36c3e60:modular-density-and-bsd-residue-gap` — **corrective-fragment**. Main claim unresolved.

The density model asserts modular integral positivity/reflection and then a positive residue of elliptic L(s,E) at1 as support for BSD.

The further derivative argument does not yield a central stationary point. For fixed positive A=fG(JG(τ)) and p>1, the normalized density (1+A*p^(1/2−σ))/log(p) has derivative −A*p^(1/2−σ), which is strictly negative. Upstream constant-base rpow differentiation supplies the scalar derivative ingredient; the composition and normalization specialization remains an explicit adapter. This also does not repair the separate pole-residue/BSD-leading-term confusion.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 5](</Users/local/Desktop/MathematicsLibrary/NumberTheory/482cdae3e36c--Residue_Clustering_and_the_Proof_of_the_Generalized_Riemann_Hypothesis (1).pdf#page=5>): “Birch and Swinnerton-Dyer Conjecture”. Page-text SHA-256 `4351999ffdad49cfa196a71a1c1cd38092cc64527759d789ef00f86245a73ccb`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/482cdae3e36c--Residue_Clustering_and_the_Proof_of_the_Generalized_Riemann_Hypothesis (1).pdf#page=3>): “Modular Corrections and Symmetry”. Page-text SHA-256 `341d57b75e2aab13aba2535324be303dded54e537a7e0a96ada484c871645a00`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/482cdae3e36c--Residue_Clustering_and_the_Proof_of_the_Generalized_Riemann_Hypothesis (1).pdf#page=2>): “The Generalized Riemann Hypothesis (GRH) is one of the most profound and far-reaching”. Page-text SHA-256 `083d9edaab6980e5714817562dc4bd01344631bc263b19afb85426b62d266ffd`.
- [p. 4](</Users/local/Desktop/MathematicsLibrary/NumberTheory/482cdae3e36c--Residue_Clustering_and_the_Proof_of_the_Generalized_Riemann_Hypothesis (1).pdf#page=4>): “The density function is positive for ℜ(s) ∈ (0, 1):”. Page-text SHA-256 `d0a261de9ef6d732d5e21ed52c46a0b037012e527a5eb984d2c086a0ce69416e`.
- [p. 6](</Users/local/Desktop/MathematicsLibrary/NumberTheory/482cdae3e36c--Residue_Clustering_and_the_Proof_of_the_Generalized_Riemann_Hypothesis (1).pdf#page=6>): “4.4     Connections to Geometry and Analysis”. Page-text SHA-256 `cc46457f573c8d7686cbb80ec490cd32b44a4c98b5e4b62a31c05cc3a49bc1e0`.

Further complete pages read: 4, 6. Pages beyond previously recorded citation pages: 4, 6. Selected complete physical pages, reread where already recorded; no full-manuscript audit. Byte-identical page text may be read once across distinct assets, whose identities remain separate.

Broadened search terms: `density stationary point`, `const_rpow`, `elliptic leading coefficient`, `BSD`.

Lean candidates inspected:

- **corrective-fragment**: [`Real.hasStrictDerivAt_const_rpow`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Analysis/SpecialFunctions/Pow/Deriv.lean#L395-L397), `Mathlib/Analysis/SpecialFunctions/Pow/Deriv.lean:395–397`. For a>0, x↦a^x has strict derivative a^x*log(a). The paper-specific exponent composition, constants, sign and normalization must still be instantiated; no critical-point or zero-location theorem is supplied.

Missing bridges:

- Prove real positivity of the complex modular integral and the actual s↦1−s transformation; τ↦1−τ is not an upper-half-plane modular action.
- Separate residue at a pole from leading Taylor coefficient at a central zero. For a holomorphic elliptic L-function the printed positive pole residue is not its BSD leading coefficient.
- Provide a genuine source/zero identity and missing prime-pattern arguments; GRH-style error control alone does not establish twin primes or binary Goldbach.
- Repair the density/involution on its actual domain and construct the completed-source comparison before any zero or BSD conclusion.
- Prove the exact scalar specialization with fixed A and its sign; do not infer a critical point from an everywhere negative derivative.
- Identify the actual holomorphic elliptic L-function and leading Taylor coefficient, including rank/order, periods and finiteness assumptions.

<a id="6900e23cd2e098fd-reciprocal-power-reflection-error"></a>
### Residue Clustering, Modular Symmetries, and the Generalized Riemann Hypothesis: Proof and Workflow — `6900e23cd2e0`

`idea:unpublished-v3:6900e23cd2e098fd:reciprocal-power-reflection-error` — **corrective-fragment**. Main claim unresolved.

The workflow derives reflection by equating reciprocal prime powers and extends modular corrections to exceptional systems and Re(s)>1/2 nonvanishing.

Rereading the calculation confirms the exact algebraic failure: p^(σ−1/2)=p^(1/2−σ) for prime p>1 forces σ=1/2 by injectivity in the exponent. It cannot be used as a reflection identity at arbitrary σ. The cited upstream lemma gives a concrete formal route to this correction.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 4](</Users/local/Desktop/MathematicsLibrary/NumberTheory/6900e23cd2e0--Framework (1).pdf#page=4>): “Substituting the Taylor expansion”. Page-text SHA-256 `a5773449911a98032ef118efd6ea5b392bea4a50a204b9809ff28b412883bbe9`.
- [p. 4](</Users/local/Desktop/MathematicsLibrary/NumberTheory/6900e23cd2e0--Framework (1).pdf#page=4>): “Bounds on Clustering Densities”. Page-text SHA-256 `a5773449911a98032ef118efd6ea5b392bea4a50a204b9809ff28b412883bbe9`.
- [p. 9](</Users/local/Desktop/MathematicsLibrary/NumberTheory/6900e23cd2e0--Framework (1).pdf#page=9>): “Spectral Universality and Zero Spacing”. Page-text SHA-256 `7b3300cea13ea1daad486925a644124f0dd13597149d56aab558c721dcfd0d45`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/6900e23cd2e0--Framework (1).pdf#page=3>): “By adhering to this systematic workflow, the proof strategy consolidates residue cluster-”. Page-text SHA-256 `006e7cd37fa57986d58e1ae67c64ae1becf33ac54ab8176e8ca27d17fb9028eb`.
- [p. 4](</Users/local/Desktop/MathematicsLibrary/NumberTheory/6900e23cd2e0--Framework (1).pdf#page=4>): “2. Since pσ−1/2 = p1/2−σ , it follows directly that:”. Page-text SHA-256 `a5773449911a98032ef118efd6ea5b392bea4a50a204b9809ff28b412883bbe9`.

Further complete pages read: 3, 4. Pages beyond previously recorded citation pages: 3. Selected complete physical pages, reread where already recorded; no full-manuscript audit. Byte-identical page text may be read once across distinct assets, whose identities remain separate.

Broadened search terms: `reciprocal prime powers`, `rpow_right_inj`, `reflection equality`.

Lean candidates inspected:

- **corrective-fragment**: [`Real.rpow_right_inj`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Analysis/SpecialFunctions/Pow/Real.lean#L918-L922), `Mathlib/Analysis/SpecialFunctions/Pow/Real.lean:918–922`. For x>0 and x≠1, x^y=x^z iff y=z. Prime-base reciprocal-power reflection therefore requires equality of the exponents; the scalar specialization is a correction route, not a modular symmetry theorem.

Missing bridges:

- 1/p^(σ−1/2) is not 1/p^(1/2−σ) except at σ=1/2. Correct the core reflection calculation.
- A local Taylor approximation does not imply the printed global exponential bound without a quantified remainder/range.
- Construct exceptional modular invariants and the actual nonvanishing criterion. The text explicitly excepts Langlands reciprocity from its proved claims; preserve that premise.
- Repair the density/involution on its actual domain and construct the completed-source comparison before any zero or BSD conclusion.
- Specialize the injectivity theorem and solve the exponent equality; then replace the paper’s invalid global symmetry and rederive its bounds.

<a id="47f41bdea32cea56-local-dirichlet-clustering-reflection-gap"></a>
### The Proof of the Generalized Riemann Hypothesis A Modular and Rigorous Approach — `47f41bdea32c`

`idea:unpublished-v3:47f41bdea32cea56:local-dirichlet-clustering-reflection-gap` — **conditional-fragment**. Main claim unresolved.

The modular proof assigns ρ(p,χ,s)=Σχ(p^k)p^(−ks) and claims each prime-local series is reflection-symmetric, supported by numerical tolerances.

The local series can be compared concretely in its GL1 Dirichlet specialization. With q=χ(p)*p^(−s) and ||q||<1, the geometric-series theorem computes the k≥0 series as (1−q)⁻¹; subtracting k=0 gives the paper’s k≥1 local density. The exact Dirichlet Euler product is available for Re(s)>1. General Hecke eigenvalues at p^k are not automatically powers of λ(p), and none of these results gives local reflection.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 14](</Users/local/Desktop/MathematicsLibrary/NumberTheory/47f41bdea32c--The_Proof_of_the_Generalized_Riemann_Hypothesis.pdf#page=14>): “Example: Dirichlet L-Functions”. Page-text SHA-256 `93162c23f45f9aa0f129755c67206032a27ac0a26a84d1ff8d3aedb391dc1b09`.
- [p. 14](</Users/local/Desktop/MathematicsLibrary/NumberTheory/47f41bdea32c--The_Proof_of_the_Generalized_Riemann_Hypothesis.pdf#page=14>): “Example: Modular Forms”. Page-text SHA-256 `93162c23f45f9aa0f129755c67206032a27ac0a26a84d1ff8d3aedb391dc1b09`.
- [p. 22](</Users/local/Desktop/MathematicsLibrary/NumberTheory/47f41bdea32c--The_Proof_of_the_Generalized_Riemann_Hypothesis.pdf#page=22>): “Random Matrix Ensembles and Disordered Systems”. Page-text SHA-256 `f386ad2edbdf3a94daaede60926d8a1b68a344289ecc31041dcd6e725c4e8d26`.
- [p. 6](</Users/local/Desktop/MathematicsLibrary/NumberTheory/47f41bdea32c--The_Proof_of_the_Generalized_Riemann_Hypothesis.pdf#page=6>): “The proof is modularly structured as follows:”. Page-text SHA-256 `c2ddb4ccf8442049d9ab0a5dad96b4374a12a526a06dded5bc4eeb8be6a2112f`.
- [p. 7](</Users/local/Desktop/MathematicsLibrary/NumberTheory/47f41bdea32c--The_Proof_of_the_Generalized_Riemann_Hypothesis.pdf#page=7>): “Functional Equation and Symmetry”. Page-text SHA-256 `d72fbf79d50d4281675d1eb375f061f0320850a9a4c59cb3d23b54b6159bb6a6`.

Further complete pages read: 6, 7. Pages beyond previously recorded citation pages: 6, 7. Selected complete physical pages, reread where already recorded; no full-manuscript audit. Byte-identical page text may be read once across distinct assets, whose identities remain separate.

Broadened search terms: `local clustering`, `prime power series`, `DirichletCharacter`, `geometric sum`, `Euler product`.

Lean candidates inspected:

- **conditional-fragment**: [`tsum_geometric_of_norm_lt_one`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Analysis/SpecificLimits/Normed.lean#L372-L373), `Mathlib/Analysis/SpecificLimits/Normed.lean:372–373`. For an element q of a normed division ring with ||q||<1, Σ_{n≥0} q^n=(1−q)⁻¹. Matching a χ(p^k)*p^(−ks) series requires multiplicativity/cpow and index-shift adapters. General Hecke coefficients are not automatically powers of one scalar.
- **conditional-fragment**: [`DirichletCharacter.LSeries_eulerProduct_tprod`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/NumberTheory/EulerProduct/DirichletLSeries.lean#L120-L123), `Mathlib/NumberTheory/EulerProduct/DirichletLSeries.lean:120–123`. For an actual complex Dirichlet character χ and Re(s)>1, the convergent prime product of (1−χ(p)*p^(−s))⁻¹ equals its Dirichlet L-series. Not an arbitrary exceptional automorphic lift, local reflection law, critical-strip product identity or a spectrum-union theorem.

Missing bridges:

- For a principal unramified local factor the geometric series depends on p^(−s) and is not generally invariant under s↦1−s. Prove/correct the density model.
- A global completed functional equation does not transfer separately to every prime-local series. Include all conductor/gamma/dual data.
- Checks below10⁻¹² for finitely many primes cannot establish exact symmetry, continuous/exceptional universality or exhaustive zero alignment.
- Prove the source-specific local/global comparison and an independent deterministic exclusion theorem with all conductor, dual and tail data.
- Prove the character/cpow/power and index-shift adapters and the norm bound on the exact domain.
- For higher-rank forms supply the actual local recurrence/Satake parameters. Prove a completed global functional equation separately; a local factor need not be reflection-symmetric.

<a id="a26ad58b00222955-arithmetic-residue-formula-scope"></a>
### The Riemann Hypothesis and Its Automorphic Generalizations: Comprehensive Insights into Unified Analytic, Spectral, and Geometric Structures — `a26ad58b0022`

`idea:unpublished-v3:a26ad58b00222955:arithmetic-residue-formula-scope` — **conditional-fragment**. Main claim unresolved.

The synthesis links compactified boundary traces to zero suppression and prints a universal scheme-zeta residue formula using regulator, Picard torsion, Sha and Tamagawa factors.

The previously unread numerical appendix contains an exact substantive subclaim: integrating exp(sum xi−sum xi²) in dimensions 5 and 16 gives π^(5/2)e^(5/4) and π^8 e^4. Upstream GaussianFourier.integral_cexp_neg_mul_sum_add supplies the finite-dimensional complex-valued Gaussian identity; b=1 and all ci=1 recover these values after real/complex and measure-coordinate adapters. This evaluates the model integral, not an automorphic residue.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 15](</Users/local/Desktop/MathematicsLibrary/NumberTheory/a26ad58b0022--The_Riemann_Hypothesis_and_Its_Automorphic_Generalizations__Comprehensive_Insights_into_Unified_Analytic__Spectral__and_Geometric_Structures (3).pdf#page=15>): “Arithmetic Zeta Functions”. Page-text SHA-256 `17661ff7cb8ed763f07f8d3cd8175cbf7f15ef6e315d2b33ff34832c4e07c2f1`.
- [p. 6](</Users/local/Desktop/MathematicsLibrary/NumberTheory/a26ad58b0022--The_Riemann_Hypothesis_and_Its_Automorphic_Generalizations__Comprehensive_Insights_into_Unified_Analytic__Spectral__and_Geometric_Structures (3).pdf#page=6>): “Boundary Conditions and Residue Localization:”. Page-text SHA-256 `da68efb15a2c06936173f684620b32e20223c7507441ee90fdf7091897651b50`.
- [p. 23](</Users/local/Desktop/MathematicsLibrary/NumberTheory/a26ad58b0022--The_Riemann_Hypothesis_and_Its_Automorphic_Generalizations__Comprehensive_Insights_into_Unified_Analytic__Spectral__and_Geometric_Structures (3).pdf#page=23>): “• **Resolution:** Validate using the full formalism of geometric Langlands theory as”. Page-text SHA-256 `14a93666668f525faa1fc4cea7aa16fddf6679e4e3496a12cc65ae61751dfe03`.
- [p. 12](</Users/local/Desktop/MathematicsLibrary/NumberTheory/a26ad58b0022--The_Riemann_Hypothesis_and_Its_Automorphic_Generalizations__Comprehensive_Insights_into_Unified_Analytic__Spectral__and_Geometric_Structures (3).pdf#page=12>): “By leveraging positivity arguments derived from the geometric Satake correspondence”. Page-text SHA-256 `9c1826a0a0d48e8c256a93fa6b0a73085a9e6e509e500294602295e15362d688`.
- [p. 24](</Users/local/Desktop/MathematicsLibrary/NumberTheory/a26ad58b0022--The_Riemann_Hypothesis_and_Its_Automorphic_Generalizations__Comprehensive_Insights_into_Unified_Analytic__Spectral__and_Geometric_Structures (3).pdf#page=24>): “Gaussian Integrals for Residue Validation”. Page-text SHA-256 `b6f56aa565c60afdd9a2926b5b43fd1856b509e6234100db2d9f4f5569906cf9`.

Further complete pages read: 12, 24. Pages beyond previously recorded citation pages: 12, 24. Selected complete physical pages, reread where already recorded; no full-manuscript audit. Byte-identical page text may be read once across distinct assets, whose identities remain separate.

Broadened search terms: `Gaussian residue validation`, `integral_cexp_neg_mul_sum_add`, `arithmetic residue formula`.

Lean candidates inspected:

- **conditional-fragment**: [`GaussianFourier.integral_cexp_neg_mul_sum_add`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Analysis/SpecialFunctions/Gaussian/FourierTransform.lean#L286-L291), `Mathlib/Analysis/SpecialFunctions/Gaussian/FourierTransform.lean:286–291`. For finite index type, complex b with positive real part and coefficients c_i, the product-volume integral of exp(−b*Σv_i²+Σc_i v_i) equals (π/b)^(card/2)*exp(Σc_i²/(4b)). With b=c_i=1 it computes the model integrals after real/complex conversion. No identification with an automorphic residue or boundary cohomology is supplied.

Missing bridges:

- A BSD/Tamagawa-shaped leading term is not a general formula for Res₁ Z(X,s). Specify the exact source, rank/order, periods, torsion powers and finiteness assumptions.
- Prove an actual boundary/interior cohomology splitting and trace identity; imposing boundary conditions can change the represented source.
- Residue alignment is not zero exclusion without a proved zero-detecting analytic comparison.
- Specify the exact arithmetic source/order and all leading-term factors, and retain the acknowledged external conjectures.
- Instantiate Fin 5/Fin 16, Euclidean/product-volume conventions and the real/complex exponential and power identities.
- Prove that the displayed model weight represents the actual automorphic source. Its positive integral has no displayed spectral parameter and does not itself prove off-line boundary suppression or the universal arithmetic residue formula.

<a id="e04e2d11c430078f-arithmetic-residue-formula-scope"></a>
### The Riemann Hypothesis and Its Automorphic Generalizations: Comprehensive Insights into Unified Analytic, Spectral, and Geometric Structures — `e04e2d11c430`

`idea:unpublished-v3:e04e2d11c430078f:arithmetic-residue-formula-scope` — **conditional-fragment**. Main claim unresolved.

The synthesis links compactified boundary traces to zero suppression and prints a universal scheme-zeta residue formula using regulator, Picard torsion, Sha and Tamagawa factors.

The previously unread numerical appendix contains an exact substantive subclaim: integrating exp(sum xi−sum xi²) in dimensions 5 and 16 gives π^(5/2)e^(5/4) and π^8 e^4. Upstream GaussianFourier.integral_cexp_neg_mul_sum_add supplies the finite-dimensional complex-valued Gaussian identity; b=1 and all ci=1 recover these values after real/complex and measure-coordinate adapters. This evaluates the model integral, not an automorphic residue.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 15](</Users/local/Desktop/MathematicsLibrary/NumberTheory/e04e2d11c430--The_Riemann_Hypothesis_and_Its_Automorphic_Generalizations__Comprehensive_Insights_into_Unified_Analytic__Spectral__and_Geometric_Structures (2).pdf#page=15>): “Arithmetic Zeta Functions”. Page-text SHA-256 `17661ff7cb8ed763f07f8d3cd8175cbf7f15ef6e315d2b33ff34832c4e07c2f1`.
- [p. 6](</Users/local/Desktop/MathematicsLibrary/NumberTheory/e04e2d11c430--The_Riemann_Hypothesis_and_Its_Automorphic_Generalizations__Comprehensive_Insights_into_Unified_Analytic__Spectral__and_Geometric_Structures (2).pdf#page=6>): “Boundary Conditions and Residue Localization:”. Page-text SHA-256 `da68efb15a2c06936173f684620b32e20223c7507441ee90fdf7091897651b50`.
- [p. 23](</Users/local/Desktop/MathematicsLibrary/NumberTheory/e04e2d11c430--The_Riemann_Hypothesis_and_Its_Automorphic_Generalizations__Comprehensive_Insights_into_Unified_Analytic__Spectral__and_Geometric_Structures (2).pdf#page=23>): “• **Resolution:** Validate using the full formalism of geometric Langlands theory as”. Page-text SHA-256 `14a93666668f525faa1fc4cea7aa16fddf6679e4e3496a12cc65ae61751dfe03`.
- [p. 12](</Users/local/Desktop/MathematicsLibrary/NumberTheory/e04e2d11c430--The_Riemann_Hypothesis_and_Its_Automorphic_Generalizations__Comprehensive_Insights_into_Unified_Analytic__Spectral__and_Geometric_Structures (2).pdf#page=12>): “By leveraging positivity arguments derived from the geometric Satake correspondence”. Page-text SHA-256 `9c1826a0a0d48e8c256a93fa6b0a73085a9e6e509e500294602295e15362d688`.
- [p. 24](</Users/local/Desktop/MathematicsLibrary/NumberTheory/e04e2d11c430--The_Riemann_Hypothesis_and_Its_Automorphic_Generalizations__Comprehensive_Insights_into_Unified_Analytic__Spectral__and_Geometric_Structures (2).pdf#page=24>): “Gaussian Integrals for Residue Validation”. Page-text SHA-256 `b6f56aa565c60afdd9a2926b5b43fd1856b509e6234100db2d9f4f5569906cf9`.

Further complete pages read: 12, 24. Pages beyond previously recorded citation pages: 12, 24. Selected complete physical pages, reread where already recorded; no full-manuscript audit. Byte-identical page text may be read once across distinct assets, whose identities remain separate.

Broadened search terms: `Gaussian residue validation`, `integral_cexp_neg_mul_sum_add`, `arithmetic residue formula`.

Lean candidates inspected:

- **conditional-fragment**: [`GaussianFourier.integral_cexp_neg_mul_sum_add`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Analysis/SpecialFunctions/Gaussian/FourierTransform.lean#L286-L291), `Mathlib/Analysis/SpecialFunctions/Gaussian/FourierTransform.lean:286–291`. For finite index type, complex b with positive real part and coefficients c_i, the product-volume integral of exp(−b*Σv_i²+Σc_i v_i) equals (π/b)^(card/2)*exp(Σc_i²/(4b)). With b=c_i=1 it computes the model integrals after real/complex conversion. No identification with an automorphic residue or boundary cohomology is supplied.

Missing bridges:

- A BSD/Tamagawa-shaped leading term is not a general formula for Res₁ Z(X,s). Specify the exact source, rank/order, periods, torsion powers and finiteness assumptions.
- Prove an actual boundary/interior cohomology splitting and trace identity; imposing boundary conditions can change the represented source.
- Residue alignment is not zero exclusion without a proved zero-detecting analytic comparison.
- Specify the exact arithmetic source/order and all leading-term factors, and retain the acknowledged external conjectures.
- Instantiate Fin 5/Fin 16, Euclidean/product-volume conventions and the real/complex exponential and power identities.
- Prove that the displayed model weight represents the actual automorphic source. Its positive integral has no displayed spectral parameter and does not itself prove off-line boundary suppression or the universal arithmetic residue formula.

<a id="2b7478353ae500b1-conditional-transcendence-and-chaotic-sums"></a>
### Universal Transcendence of Non-Critical Values in Automorphic and Motivic L-Functions — `2b7478353ae5`

`idea:unpublished-v3:2b7478353ae500b1:conditional-transcendence-and-chaotic-sums` — **unresolved**. Main claim unresolved.

Current broader-search assessment: **conditional-fragment**, main claim unresolved. [Further paper and pinned Lean evidence](remaining-idea-target-search.md#2b7478353ae500b1-conditional-transcendence-and-chaotic-sums).

The universal transcendence theorem assumes logarithm independence, RMT predictions and motivic period independence, using dense phases to prevent algebraic cancellation.

The further pages explicitly assume logarithmic algebraic independence and claim transcendence propagates from paired values to every noncritical value. The pinned Lindemann analytic approximation lemma neither proves Baker’s theorem nor handles a convergent infinite prime-log sum. Reflection relates specified paired values with gamma/conductor factors; holomorphic continuation does not preserve transcendence pointwise.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 15](</Users/local/Desktop/MathematicsLibrary/NumberTheory/2b7478353ae5--Universal_Transcendence_of_Non_Critical_Values_in_Automorphic_and_Motivic__L__Functions (4).pdf#page=15>): “Theorem 5.3”. Page-text SHA-256 `c6168009049cc379dc22dafdb833aca881faf8da4e6f37d924d4910aa9f53515`.
- [p. 24](</Users/local/Desktop/MathematicsLibrary/NumberTheory/2b7478353ae5--Universal_Transcendence_of_Non_Critical_Values_in_Automorphic_and_Motivic__L__Functions (4).pdf#page=24>): “Theorem 8.5”. Page-text SHA-256 `ed98e538993ace6b5031d5d6b9b92540bf31565c7c803802149b94029e8cf066`.
- [p. 12](</Users/local/Desktop/MathematicsLibrary/NumberTheory/2b7478353ae5--Universal_Transcendence_of_Non_Critical_Values_in_Automorphic_and_Motivic__L__Functions (4).pdf#page=12>): “4.2    Logarithmic Independence”. Page-text SHA-256 `d1b6aa4021c60daee81c785d23fbc9ed0fc1191e507c582c210cb6589c003613`.
- [p. 13](</Users/local/Desktop/MathematicsLibrary/NumberTheory/2b7478353ae5--Universal_Transcendence_of_Non_Critical_Values_in_Automorphic_and_Motivic__L__Functions (4).pdf#page=13>): “Proof. Combining Lemma 3.2 and Lemma 3.3, we see that:”. Page-text SHA-256 `555a8fdf607ec152dc5a34f6336de6a68f1ec856a534a36c5d8d1faf9b56687a`.
- [p. 18](</Users/local/Desktop/MathematicsLibrary/NumberTheory/2b7478353ae5--Universal_Transcendence_of_Non_Critical_Values_in_Automorphic_and_Motivic__L__Functions (4).pdf#page=18>): “6.3    Propagation of Transcendence”. Page-text SHA-256 `6af0ad3ef32d9539b52520e8fc1cb9dc6cfe89c269d6a1d2e8213ba58132723c`.

Further complete pages read: 13, 18. Pages beyond previously recorded citation pages: 13, 18. Selected complete physical pages, reread where already recorded; no full-manuscript audit. Byte-identical page text may be read once across distinct assets, whose identities remain separate.

Broadened search terms: `Baker logarithmic form`, `Lindemann`, `infinite prime logarithm sum`, `functional equation transcendence`.

Lean candidates inspected:

- **rejected-candidate**: [`LindemannWeierstrass.exp_polynomial_approx`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/NumberTheory/Transcendental/Lindemann/AnalyticalPart.lean#L157-L206), `Mathlib/NumberTheory/Transcendental/Lindemann/AnalyticalPart.lean:157–206`. An integer polynomial with nonzero constant term admits specified prime-indexed integer/polynomial exponential approximations at its complex roots with factorial error bounds. This is an analytic auxiliary result, not the full Lindemann-Weierstrass theorem, Baker logarithmic independence, motivic independence or an infinite-sum transcendence theorem.

Missing bridges:

- Density/quasi-randomness does not imply a sum is transcendental or cannot cancel. Define the infinite sum and prove an actual transcendence theorem with algebraic coefficient hypotheses.
- Logarithm independence must specify linear/algebraic and coefficient fields; modularly dense phases are a different assertion.
- Functional equations relate specified paired values with gamma/conductor factors, not all critical and noncritical values. Preserve the conditional motivic period and analytic-continuation scope.
- Separate finite nonzero algebraic-coefficient logarithmic forms from convergent infinite sums; prove coefficient hypotheses, nonvanishing and the required transcendence result.
- Supply the appropriate finite logarithmic-form theorem with nonzero algebraic coefficients and a separate infinite-sum argument.
- State the exact paired values and algebraicity/nonvanishing of multipliers; no universal propagation of transcendence follows from continuity or holomorphy.

<a id="ac7a2ecdc5f9c787-conditional-transcendence-and-chaotic-sums"></a>
### Universal Transcendence of Non-Critical Values in Automorphic and Motivic L-Functions — `ac7a2ecdc5f9`

`idea:unpublished-v3:ac7a2ecdc5f9c787:conditional-transcendence-and-chaotic-sums` — **unresolved**. Main claim unresolved.

Current broader-search assessment: **conditional-fragment**, main claim unresolved. [Further paper and pinned Lean evidence](remaining-idea-target-search.md#ac7a2ecdc5f9c787-conditional-transcendence-and-chaotic-sums).

The universal transcendence theorem assumes logarithm independence, RMT predictions and motivic period independence, using dense phases to prevent algebraic cancellation.

The further pages explicitly assume logarithmic algebraic independence and claim transcendence propagates from paired values to every noncritical value. The pinned Lindemann analytic approximation lemma neither proves Baker’s theorem nor handles a convergent infinite prime-log sum. Reflection relates specified paired values with gamma/conductor factors; holomorphic continuation does not preserve transcendence pointwise.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 15](</Users/local/Desktop/MathematicsLibrary/NumberTheory/ac7a2ecdc5f9--Universal_Transcendence_of_Non_Critical_Values_in_Automorphic_and_Motivic__L__Functions (5).pdf#page=15>): “Theorem 5.3”. Page-text SHA-256 `c6168009049cc379dc22dafdb833aca881faf8da4e6f37d924d4910aa9f53515`.
- [p. 24](</Users/local/Desktop/MathematicsLibrary/NumberTheory/ac7a2ecdc5f9--Universal_Transcendence_of_Non_Critical_Values_in_Automorphic_and_Motivic__L__Functions (5).pdf#page=24>): “Theorem 8.5”. Page-text SHA-256 `ed98e538993ace6b5031d5d6b9b92540bf31565c7c803802149b94029e8cf066`.
- [p. 12](</Users/local/Desktop/MathematicsLibrary/NumberTheory/ac7a2ecdc5f9--Universal_Transcendence_of_Non_Critical_Values_in_Automorphic_and_Motivic__L__Functions (5).pdf#page=12>): “4.2    Logarithmic Independence”. Page-text SHA-256 `d1b6aa4021c60daee81c785d23fbc9ed0fc1191e507c582c210cb6589c003613`.
- [p. 13](</Users/local/Desktop/MathematicsLibrary/NumberTheory/ac7a2ecdc5f9--Universal_Transcendence_of_Non_Critical_Values_in_Automorphic_and_Motivic__L__Functions (5).pdf#page=13>): “Proof. Combining Lemma 3.2 and Lemma 3.3, we see that:”. Page-text SHA-256 `555a8fdf607ec152dc5a34f6336de6a68f1ec856a534a36c5d8d1faf9b56687a`.
- [p. 18](</Users/local/Desktop/MathematicsLibrary/NumberTheory/ac7a2ecdc5f9--Universal_Transcendence_of_Non_Critical_Values_in_Automorphic_and_Motivic__L__Functions (5).pdf#page=18>): “6.3    Propagation of Transcendence”. Page-text SHA-256 `6af0ad3ef32d9539b52520e8fc1cb9dc6cfe89c269d6a1d2e8213ba58132723c`.

Further complete pages read: 13, 18. Pages beyond previously recorded citation pages: 13, 18. Selected complete physical pages, reread where already recorded; no full-manuscript audit. Byte-identical page text may be read once across distinct assets, whose identities remain separate.

Broadened search terms: `Baker logarithmic form`, `Lindemann`, `infinite prime logarithm sum`, `functional equation transcendence`.

Lean candidates inspected:

- **rejected-candidate**: [`LindemannWeierstrass.exp_polynomial_approx`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/NumberTheory/Transcendental/Lindemann/AnalyticalPart.lean#L157-L206), `Mathlib/NumberTheory/Transcendental/Lindemann/AnalyticalPart.lean:157–206`. An integer polynomial with nonzero constant term admits specified prime-indexed integer/polynomial exponential approximations at its complex roots with factorial error bounds. This is an analytic auxiliary result, not the full Lindemann-Weierstrass theorem, Baker logarithmic independence, motivic independence or an infinite-sum transcendence theorem.

Missing bridges:

- Density/quasi-randomness does not imply a sum is transcendental or cannot cancel. Define the infinite sum and prove an actual transcendence theorem with algebraic coefficient hypotheses.
- Logarithm independence must specify linear/algebraic and coefficient fields; modularly dense phases are a different assertion.
- Functional equations relate specified paired values with gamma/conductor factors, not all critical and noncritical values. Preserve the conditional motivic period and analytic-continuation scope.
- Separate finite nonzero algebraic-coefficient logarithmic forms from convergent infinite sums; prove coefficient hypotheses, nonvanishing and the required transcendence result.
- Supply the appropriate finite logarithmic-form theorem with nonzero algebraic coefficients and a separate infinite-sum argument.
- State the exact paired values and algebraicity/nonvanishing of multipliers; no universal propagation of transcendence follows from continuity or holomorphy.

## Probability and combinatorics — 3 versions

<a id="0f3deff790c3e598-entropy-threshold-zero-free-gap"></a>
### Residue Clustering, Modular Symmetry, and the Generalized Riemann Hypothesis: Techniques and Next Steps — `0f3deff790c3`

`idea:unpublished-v3:0f3deff790c3e598:entropy-threshold-zero-free-gap` — **unresolved**. Main claim unresolved.

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and pinned Lean evidence](remaining-idea-target-search.md#0f3deff790c3e598-entropy-threshold-zero-free-gap).

Shannon entropy is corrected by weighted residue projections; empirical conductor/rank scaling and H<0.1 are used to predict zero-free modular classes.

The second page explicitly lists generalizing entropy thresholds to zero-free regions as a next step. Upstream binary-entropy formulas concern a different scalar entropy and do not prove that a numerical H<0.1 condition excludes zeros of this L-function. No exact threshold-to-zero theorem was established.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0f3deff790c3--Entropy (1).pdf#page=1>): “Entropy Refinement”. Page-text SHA-256 `b22db21a84ab09b40aff301714efb0283fe60f0b94ecdde9d418009085ae1a48`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0f3deff790c3--Entropy (1).pdf#page=2>): “Zero-Free Regions”. Page-text SHA-256 `379fc45e173e2ffa6fc66c426a4831b30fd59ceb5976c8106cfc21b07b306756`.
- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0f3deff790c3--Entropy (1).pdf#page=1>): “Residue Clustering, Modular Symmetry, and the Generalized”. Page-text SHA-256 `b22db21a84ab09b40aff301714efb0283fe60f0b94ecdde9d418009085ae1a48`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/0f3deff790c3--Entropy (1).pdf#page=2>): “4.2    Connecting to Random Matrix Theory”. Page-text SHA-256 `379fc45e173e2ffa6fc66c426a4831b30fd59ceb5976c8106cfc21b07b306756`.

Further complete pages read: 2. Pages beyond previously recorded citation pages: none; reread of already recorded material. Selected complete physical pages, reread where already recorded; no full-manuscript audit. Byte-identical page text may be read once across distinct assets, whose identities remain separate.

Broadened search terms: `Shannon entropy`, `BinaryEntropy`, `entropy threshold`, `zero free`.

Lean candidates inspected:

- No concrete declaration established. This is a limited negative search finding, not proof of absence from Lean.

Missing bridges:

- Define the correction on probabilities and prove it preserves normalization/nonnegativity; subtracting projections from an entropy value need not yield a Shannon entropy.
- State constants and parameter ranges for the two different scaling laws, and provide reproducible data/certified errors.
- Prove threshold implies zero exclusion with exact source domain and all-height/rank coverage. Finite GL11–GL100 checks do not construct an infinite-dimensional limit.
- Prove normalization, nonnegativity, convergence and an all-height source-specific exclusion implication.
- Define the probability law and admissible correction and prove a uniform source-specific threshold implication.

<a id="579328ace007be79-entropy-threshold-zero-free-gap"></a>
### Residue Clustering, Modular Symmetry, and the Generalized Riemann Hypothesis: Techniques and Next Steps — `579328ace007`

`idea:unpublished-v3:579328ace007be79:entropy-threshold-zero-free-gap` — **unresolved**. Main claim unresolved.

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and pinned Lean evidence](remaining-idea-target-search.md#579328ace007be79-entropy-threshold-zero-free-gap).

Shannon entropy is corrected by weighted residue projections; empirical conductor/rank scaling and H<0.1 are used to predict zero-free modular classes.

The second page explicitly lists generalizing entropy thresholds to zero-free regions as a next step. Upstream binary-entropy formulas concern a different scalar entropy and do not prove that a numerical H<0.1 condition excludes zeros of this L-function. No exact threshold-to-zero theorem was established.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/579328ace007--Entropy (2).pdf#page=1>): “Entropy Refinement”. Page-text SHA-256 `b22db21a84ab09b40aff301714efb0283fe60f0b94ecdde9d418009085ae1a48`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/579328ace007--Entropy (2).pdf#page=2>): “Zero-Free Regions”. Page-text SHA-256 `379fc45e173e2ffa6fc66c426a4831b30fd59ceb5976c8106cfc21b07b306756`.
- [p. 1](</Users/local/Desktop/MathematicsLibrary/NumberTheory/579328ace007--Entropy (2).pdf#page=1>): “Residue Clustering, Modular Symmetry, and the Generalized”. Page-text SHA-256 `b22db21a84ab09b40aff301714efb0283fe60f0b94ecdde9d418009085ae1a48`.
- [p. 2](</Users/local/Desktop/MathematicsLibrary/NumberTheory/579328ace007--Entropy (2).pdf#page=2>): “4.2    Connecting to Random Matrix Theory”. Page-text SHA-256 `379fc45e173e2ffa6fc66c426a4831b30fd59ceb5976c8106cfc21b07b306756`.

Further complete pages read: 2. Pages beyond previously recorded citation pages: none; reread of already recorded material. Selected complete physical pages, reread where already recorded; no full-manuscript audit. Byte-identical page text may be read once across distinct assets, whose identities remain separate.

Broadened search terms: `Shannon entropy`, `BinaryEntropy`, `entropy threshold`, `zero free`.

Lean candidates inspected:

- No concrete declaration established. This is a limited negative search finding, not proof of absence from Lean.

Missing bridges:

- Define the correction on probabilities and prove it preserves normalization/nonnegativity; subtracting projections from an entropy value need not yield a Shannon entropy.
- State constants and parameter ranges for the two different scaling laws, and provide reproducible data/certified errors.
- Prove threshold implies zero exclusion with exact source domain and all-height/rank coverage. Finite GL11–GL100 checks do not construct an infinite-dimensional limit.
- Prove normalization, nonnegativity, convergence and an all-height source-specific exclusion implication.
- Define the probability law and admissible correction and prove a uniform source-specific threshold implication.

<a id="7e3e7acb686d4196-short-rmt-proof-upgrade-gap"></a>
### A Unified Theoretical Framework for the Proof of the Riemann Hypothesis and Its Generalizations — `7e3e7acb686d`

`idea:unpublished-v3:7e3e7acb686d4196:short-rmt-proof-upgrade-gap` — **unresolved**. Main claim unresolved.

Current broader-search assessment: **repair-candidate**, main claim unresolved. [Further paper and pinned Lean evidence](remaining-idea-target-search.md#7e3e7acb686d4196-short-rmt-proof-upgrade-gap).

The five-page version relies on GUE pair-correlation agreement and absence of observed anomalies to infer all zeros align.

The further survey/RMT pages assert an upgrade from statistical agreement to universal alignment without specifying a deterministic exclusion theorem. A bounded C*-algebra real-spectrum result applies to an identified self-adjoint element, not an empirical zero-spacing law or a general Langlands correspondence.

Paper evidence (physical page numbers; prior citations preserved):

- [p. 4](</Users/local/Desktop/MathematicsLibrary/NumberTheory/7e3e7acb686d--On_the__notion__of_Principle_as_a_chomocological_invariant_ (1).pdf#page=4>): “Critical Line as a Universal Symmetry.”. Page-text SHA-256 `b31c602456977453fa7241a1c4c22ab4d30f19a65c9d059ed695d18cb8f5092e`.
- [p. 3](</Users/local/Desktop/MathematicsLibrary/NumberTheory/7e3e7acb686d--On_the__notion__of_Principle_as_a_chomocological_invariant_ (1).pdf#page=3>): “A UNIFIED THEORETICAL FRAMEWORK FOR THE PROOF OF THE RIEMANN”. Page-text SHA-256 `d72fd852ae2be9f5946bb161814e5346eeb9c4675e5ccbc5f265089e2f2d801a`.
- [p. 4](</Users/local/Desktop/MathematicsLibrary/NumberTheory/7e3e7acb686d--On_the__notion__of_Principle_as_a_chomocological_invariant_ (1).pdf#page=4>): “4                            grwtsk contributors”. Page-text SHA-256 `b31c602456977453fa7241a1c4c22ab4d30f19a65c9d059ed695d18cb8f5092e`.

Further complete pages read: 4. Pages beyond previously recorded citation pages: none; reread of already recorded material. Selected complete physical pages, reread where already recorded; no full-manuscript audit. Byte-identical page text may be read once across distinct assets, whose identities remain separate.

Broadened search terms: `GUE pair correlation`, `deterministic upgrade`, `de Bruijn Newman`, `cohomology zeros`.

Lean candidates inspected:

- **rejected-candidate**: [`IsSelfAdjoint.mem_spectrum_eq_re`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Analysis/CStarAlgebra/Spectrum.lean#L173-L184), `Mathlib/Analysis/CStarAlgebra/Spectrum.lean:173–184`. For a self-adjoint element of a complex C*-algebra, every complex spectral point is real. No unbounded operator domain, arithmetic realization, homotopy obstruction or zero-coordinate correspondence is constructed.

Missing bridges:

- Prove the deterministic upgrade for the exact source rather than equating finite numerical agreement with universal alignment.
- Preserve conjectural versus proved ranges of pair correlation and family symmetry type; nearest-neighbor/repulsion heuristics do not rule out individual off-line zeros.
- Prove the source-specific local/global comparison and an independent deterministic exclusion theorem with all conductor, dual and tail data.
- State an exact statistical proposition and prove a separate all-height deterministic/source comparison. The survey’s Newman-sign and perturbation claims also need their precise family and normalization.

## Method and limitations

The code search covered maintained `GRWTSK/**` excluding `GRWTSK/SourceCorpus/**`, and the pinned upstream `Mathlib/**` tree. It included declaration names, statement text and subject terms, then inspection of candidate statements, ambient hypotheses and proof source. Similar names, supplied records, unrelated nilpotent algebra, recursion costs and illustrative figures were not counted as matches. Full search outputs and new machine-access observations stay in the external library.

- No main manuscript claim is marked resolved. A conditional fragment is limited to the exact stated subclaim and domain.
- Corrective fragments are scalar or finite calculations supporting a correction; paper-specific adapters were not newly compiled.
- All code citations are immutable source comparisons. No new Lean compilation or independent kernel audit is claimed.
- Selected complete pages were read, not whole manuscripts. Short exhausted assets were reread, and distinct versions never inherit unseen content from another asset.
- Original paths, bibliography, source/owner statements, access observations and human understanding dates are preserved. New machine-access observations stay private in the external library.
- Assistant interpretations remain proposals. Correspondence is not owner testimony, historical influence, priority or a proof of the larger conjecture.

## Exact upstream code identities

- [`circle-density`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Topology/Instances/AddCircle/DenseSubgroup.lean#L55-L61): Git blob `5f7ed77262c4c8a67c7f1bd11336c47ff5b796ee`; full-file SHA-256 `45014575c8b53391541f17b1d76f274a3fa8ff10a82f61770a7ebc3fd2224282`.
- [`compact-integral`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/MeasureTheory/Function/LocallyIntegrable.lean#L592-L594): Git blob `dc00e515b31d960ce61d0ce79d08ba0d8ab3af83`; full-file SHA-256 `b64a5dcc099b916bcf213f441092873475fb326bac913e03890c2f268d56540b`.
- [`dirichlet-product`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/NumberTheory/EulerProduct/DirichletLSeries.lean#L120-L123): Git blob `58a6430496fc0b4c22b2c5ccdc777b09a099a6a6`; full-file SHA-256 `0bf111b07e132e05a17d6f4909c4b71f215e486ba88fa7f73072e001cc100f9f`.
- [`dominated-limit`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/MeasureTheory/Integral/DominatedConvergence.lean#L57-L64): Git blob `e01402b504d1b8f96ed88bdd18266da7def493aa`; full-file SHA-256 `18b709ea5c9ef9136e3e75ded82a6135641e6e19688e0ca3abcb0af45648ab84`.
- [`gaussian-integral`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Analysis/SpecialFunctions/Gaussian/FourierTransform.lean#L286-L291): Git blob `e66f719517bc84d4a2ff3deafd3b47868b700bd4`; full-file SHA-256 `6bdd5e351d714198761da26ce7eac19a140a54218e9902dcf4fd41616d311523`.
- [`geometric-sum`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Analysis/SpecificLimits/Normed.lean#L372-L373): Git blob `deecc84a1b389905bfddde42a9aa08ebc8ed944a`; full-file SHA-256 `113aaf52a8970f3d5731b3bef38b5eb29be69585d68fdd5fc22f4868fa9f35e6`.
- [`lindemann-aux`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/NumberTheory/Transcendental/Lindemann/AnalyticalPart.lean#L157-L206): Git blob `f25063e0c90276fc3a610fff69779aa826546505`; full-file SHA-256 `2052e62931d13be5dc28440b40dbe9c198530a946ae1f9e272810c709b5f328b`.
- [`power-derivative`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Analysis/SpecialFunctions/Pow/Deriv.lean#L395-L397): Git blob `da5718034d23456aaf0a41c7fb0de4eec67ea348`; full-file SHA-256 `1c42da13b6121a76de1ec5cbc49833cbdaa71901c7c9d5e3b44bdf33b2c1c481`.
- [`power-integral`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Analysis/SpecialFunctions/Integrals/Basic.lean#L147-L165): Git blob `335df785f4a6b999c0836dc5a67c359f7766d56a`; full-file SHA-256 `58a81e8137bddf5cc43ae28f08ffa75ea3aa086e607cf70e70f70c3c8e935e81`.
- [`rpow-injective`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Analysis/SpecialFunctions/Pow/Real.lean#L918-L922): Git blob `4fa7722f332deb748b54c7b0bda553bb1b979ad0`; full-file SHA-256 `1f4e64fc28a20f4e19291a94dafd68daa82588b46f6ee5b9203df373ba595fa3`.
- [`selfadjoint-real`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/Analysis/CStarAlgebra/Spectrum.lean#L173-L184): Git blob `951ea294ce6b81241d2c0ac10b06fd8eec905711`; full-file SHA-256 `646739cb74ea8f0ecf16a554e25d40197de9bee13289c848860c53b3fbb908cc`.
- [`trace-split`](https://github.com/leanprover-community/mathlib4/blob/db584cd6d46c92f209a44c0f1c829460d327499d/Mathlib/LinearAlgebra/Trace.lean#L218-L223): Git blob `2e916eca8f2b72744a51eb44240f3e5fece3e12b`; full-file SHA-256 `c8d816f20ea5c1d137351fc16041c632bfb1e82f38d7cbb724553367b6e45c11`.
