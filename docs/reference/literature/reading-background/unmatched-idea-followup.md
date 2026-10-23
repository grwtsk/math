# Follow-up: 70 ideas without established Lean targets

Current follow-up for the 21 unresolved ideas: [broader maintained/upstream Lean search by taxonomy](remaining-idea-target-search.md). Earlier statuses remain historical; the newer review distinguishes conditional fragments, obstruction checks, repair candidates and remaining gaps.

Current follow-up for the 40 unresolved ideas: [broader maintained/upstream Lean search by taxonomy](unresolved-idea-broader-search.md). Earlier statuses remain historical; the newer review distinguishes narrow fragments, corrections and remaining gaps.

All 70 exact version-bound ideas were revisited. **5 conditional-fragment**; **13 analogy-only**; **7 repair-candidate**; **2 obstruction-only**; **40 unresolved**; **3 no-substantive-body**. **No main manuscript claim is marked resolved.** Five conditional fragments cover narrower subclaims; repair candidates, finite analogies and obstruction checks remain separate.

Code baseline: `f66bd00c9ab5cfd83749db3e57889b68d08aa185`. [Machine-readable decisions](unmatched-idea-followup.json) · [Schema](unmatched-idea-followup.schema.json) · [Historical map](idea-formalization-map.md)

The original 279 ideas and 226 code links remain historical records. This follow-up is the current target-search assessment for the 70 entries identified below. All interpretations are assistant-proposed; owner understanding dates remain null.

## Algebra — 13 versions

<a id="1574517a994e89cc-motivic-period-orbits"></a>
### Conjectures and Proofs for Galois-Theoretic Extensions of Automorphic L-Functions — `1574517a994e`

Idea: `idea:unpublished-v3:1574517a994e89cc:motivic-period-orbits`. Outcome: **unresolved**; main claim unresolved.

Current broader-search assessment: **conditional-fragment**, main claim unresolved. [Further paper and pinned Lean evidence](remaining-idea-target-search.md#1574517a994e89cc-motivic-period-orbits).

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and upstream Lean evidence](unresolved-idea-broader-search.md#1574517a994e89cc-motivic-period-orbits).

The manuscript proposes a motivic-Galois action on noncritical values, independence of conjugates and a field containing infinitely many algebraically independent periods.

The concluding proof sketches explicitly assume algebraic independence of motivic periods. They do not derive infinite transcendence degree from the orbit construction. No motivic-Galois orbit or period-independence theorem was established in the maintained Lean search.

Paper evidence (physical PDF page numbers):

- [p. 1](</Users/think/Desktop/MathematicsLibrary/NumberTheory/1574517a994e--Proof_Draft_for_Zeros_on_the_Critical_Line__Riemann_Zeta_Function_and_Dirichlet_L_functions (4).pdf#page=1>): “Conjecture 1:”. Page-text SHA-256 `0c52294d74ab6084de944ef31a6358ebfa5a3c995a711530b3669360c8f68049`.
- [p. 2](</Users/think/Desktop/MathematicsLibrary/NumberTheory/1574517a994e--Proof_Draft_for_Zeros_on_the_Critical_Line__Riemann_Zeta_Function_and_Dirichlet_L_functions (4).pdf#page=2>): “Proof of Conjecture 3:”. Page-text SHA-256 `54860375a64a792f74356ff7e66e13e03beb88ab7e58530071d737b1986baf5f`.
- [p. 2](</Users/think/Desktop/MathematicsLibrary/NumberTheory/1574517a994e--Proof_Draft_for_Zeros_on_the_Critical_Line__Riemann_Zeta_Function_and_Dirichlet_L_functions (4).pdf#page=2>): “Conjecture 3: Galois Closure for Transcendental Values”. Page-text SHA-256 `54860375a64a792f74356ff7e66e13e03beb88ab7e58530071d737b1986baf5f`.

Follow-up complete page read: 2. This selected page was already in the previous review; the short asset or relevant passage was reread, with no claim of new unseen content.

Lean candidates inspected:

- No concrete maintained declaration established. Negative search findings are limited to this inspection, not a proof that no suitable theorem exists.

Missing bridges:

- Distinguish noncritical in the motivic critical-value sense from Re(s)≠1/2; define the exact values and realizations.
- Specify the acting group and period torsor and prove orbit-generation claims. Baker’s theorem does not establish arbitrary motivic period independence.
- A group orbit or transcendental generator does not by itself produce infinitely many algebraically independent periods; state and prove the required transcendence-degree assertion.
- Specify the period torsor and coefficient field and prove the required independence instead of assuming it.

<a id="1961da5dba9ca115-motivic-period-orbits"></a>
### Conjectures and Proofs for Galois-Theoretic Extensions of Automorphic L-Functions — `1961da5dba9c`

Idea: `idea:unpublished-v3:1961da5dba9ca115:motivic-period-orbits`. Outcome: **unresolved**; main claim unresolved.

Current broader-search assessment: **conditional-fragment**, main claim unresolved. [Further paper and pinned Lean evidence](remaining-idea-target-search.md#1961da5dba9ca115-motivic-period-orbits).

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and upstream Lean evidence](unresolved-idea-broader-search.md#1961da5dba9ca115-motivic-period-orbits).

The manuscript proposes a motivic-Galois action on noncritical values, independence of conjugates and a field containing infinitely many algebraically independent periods.

The concluding proof sketches explicitly assume algebraic independence of motivic periods. They do not derive infinite transcendence degree from the orbit construction. No motivic-Galois orbit or period-independence theorem was established in the maintained Lean search.

Paper evidence (physical PDF page numbers):

- [p. 1](</Users/think/Desktop/MathematicsLibrary/NumberTheory/1961da5dba9c--Proof_Draft_for_Zeros_on_the_Critical_Line__Riemann_Zeta_Function_and_Dirichlet_L_functions (3).pdf#page=1>): “Conjecture 1:”. Page-text SHA-256 `0c52294d74ab6084de944ef31a6358ebfa5a3c995a711530b3669360c8f68049`.
- [p. 2](</Users/think/Desktop/MathematicsLibrary/NumberTheory/1961da5dba9c--Proof_Draft_for_Zeros_on_the_Critical_Line__Riemann_Zeta_Function_and_Dirichlet_L_functions (3).pdf#page=2>): “Proof of Conjecture 3:”. Page-text SHA-256 `54860375a64a792f74356ff7e66e13e03beb88ab7e58530071d737b1986baf5f`.
- [p. 2](</Users/think/Desktop/MathematicsLibrary/NumberTheory/1961da5dba9c--Proof_Draft_for_Zeros_on_the_Critical_Line__Riemann_Zeta_Function_and_Dirichlet_L_functions (3).pdf#page=2>): “Conjecture 3: Galois Closure for Transcendental Values”. Page-text SHA-256 `54860375a64a792f74356ff7e66e13e03beb88ab7e58530071d737b1986baf5f`.

Follow-up complete page read: 2. This selected page was already in the previous review; the short asset or relevant passage was reread, with no claim of new unseen content.

Lean candidates inspected:

- No concrete maintained declaration established. Negative search findings are limited to this inspection, not a proof that no suitable theorem exists.

Missing bridges:

- Distinguish noncritical in the motivic critical-value sense from Re(s)≠1/2; define the exact values and realizations.
- Specify the acting group and period torsor and prove orbit-generation claims. Baker’s theorem does not establish arbitrary motivic period independence.
- A group orbit or transcendental generator does not by itself produce infinitely many algebraically independent periods; state and prove the required transcendence-degree assertion.
- Specify the period torsor and coefficient field and prove the required independence instead of assuming it.

<a id="498a8b7e7583e8ec-exceptional-embedding-transfer"></a>
### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations — `498a8b7e7583`

Idea: `idea:unpublished-v3:498a8b7e7583e8ec:exceptional-embedding-transfer`. Outcome: **unresolved**; main claim unresolved.

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and pinned Lean evidence](remaining-idea-target-search.md#498a8b7e7583e8ec-exceptional-embedding-transfer).

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and upstream Lean evidence](unresolved-idea-broader-search.md#498a8b7e7583e8ec-exceptional-embedding-transfer).

The outline proposes G2,F4,E8 representations in GL(7),GL(26),GL(248) and claims that embeddings preserve critical-line residue properties.

The representation outline asserts preservation of spectral and residue properties without local-factor or automorphic-lift data. Rational Hodge transport requires two actual linear equivalences and an exact commuting square; it is a rejected replacement for an exceptional automorphic lift.

Paper evidence (physical PDF page numbers):

- [p. 1](</Users/think/Desktop/MathematicsLibrary/NumberTheory/498a8b7e7583--i (3).pdf#page=1>): “Exceptional Group Embeddings”. Page-text SHA-256 `e1a09142b500da0d9b255b6c37916fb490be74ab2426c74414dffe11adf39f21`.
- [p. 2](</Users/think/Desktop/MathematicsLibrary/NumberTheory/498a8b7e7583--i (3).pdf#page=2>): “Residue Suppression and Functional Equation”. Page-text SHA-256 `d4918a427957a5f13637da97018dd8484476128ae3af09279b685a9826d9b150`.
- [p. 1](</Users/think/Desktop/MathematicsLibrary/NumberTheory/498a8b7e7583--i (3).pdf#page=1>): “Exceptional Groups: Embeddings and”. Page-text SHA-256 `e1a09142b500da0d9b255b6c37916fb490be74ab2426c74414dffe11adf39f21`.

Follow-up complete page read: 1. This selected page was already in the previous review; the short asset or relevant passage was reread, with no claim of new unseen content.

Lean candidates inspected:

- **rejected-candidate**: [`GRWTSK.Geometry.Hodge.RationalHodgeTransport.CycleClassEquiv.surjective_iff`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/Geometry/Hodge/RationalHodgeTransport.lean#L73-L75), `GRWTSK/Geometry/Hodge/RationalHodgeTransport.lean:73–75`. Surjectivity transports through supplied exact rational cycle-class equivalences and a commuting square.

Missing bridges:

- Construct the actual representation homomorphisms with the required base fields and exact preservation laws.
- A faithful linear representation does not identify automorphic L-functions or preserve their zeros by itself. Supply the local parameters, global analytic comparison and boundary regularization theorem.
- Construct the group representations and the separate analytic/local-global L-function comparison.

<a id="67b33f06a6094d05-exceptional-embedding-transfer"></a>
### Exceptional Groups: Embeddings and Compactifications Aligned with Classical Representations — `67b33f06a609`

Idea: `idea:unpublished-v3:67b33f06a6094d05:exceptional-embedding-transfer`. Outcome: **unresolved**; main claim unresolved.

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and pinned Lean evidence](remaining-idea-target-search.md#67b33f06a6094d05-exceptional-embedding-transfer).

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and upstream Lean evidence](unresolved-idea-broader-search.md#67b33f06a6094d05-exceptional-embedding-transfer).

The outline proposes G2,F4,E8 representations in GL(7),GL(26),GL(248) and claims that embeddings preserve critical-line residue properties.

The representation outline asserts preservation of spectral and residue properties without local-factor or automorphic-lift data. Rational Hodge transport requires two actual linear equivalences and an exact commuting square; it is a rejected replacement for an exceptional automorphic lift.

Paper evidence (physical PDF page numbers):

- [p. 1](</Users/think/Desktop/MathematicsLibrary/NumberTheory/67b33f06a609--i (2).pdf#page=1>): “Exceptional Group Embeddings”. Page-text SHA-256 `e1a09142b500da0d9b255b6c37916fb490be74ab2426c74414dffe11adf39f21`.
- [p. 2](</Users/think/Desktop/MathematicsLibrary/NumberTheory/67b33f06a609--i (2).pdf#page=2>): “Residue Suppression and Functional Equation”. Page-text SHA-256 `d4918a427957a5f13637da97018dd8484476128ae3af09279b685a9826d9b150`.
- [p. 1](</Users/think/Desktop/MathematicsLibrary/NumberTheory/67b33f06a609--i (2).pdf#page=1>): “Exceptional Groups: Embeddings and”. Page-text SHA-256 `e1a09142b500da0d9b255b6c37916fb490be74ab2426c74414dffe11adf39f21`.

Follow-up complete page read: 1. This selected page was already in the previous review; the short asset or relevant passage was reread, with no claim of new unseen content.

Lean candidates inspected:

- **rejected-candidate**: [`GRWTSK.Geometry.Hodge.RationalHodgeTransport.CycleClassEquiv.surjective_iff`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/Geometry/Hodge/RationalHodgeTransport.lean#L73-L75), `GRWTSK/Geometry/Hodge/RationalHodgeTransport.lean:73–75`. Surjectivity transports through supplied exact rational cycle-class equivalences and a commuting square.

Missing bridges:

- Construct the actual representation homomorphisms with the required base fields and exact preservation laws.
- A faithful linear representation does not identify automorphic L-functions or preserve their zeros by itself. Supply the local parameters, global analytic comparison and boundary regularization theorem.
- Construct the group representations and the separate analytic/local-global L-function comparison.

<a id="159cb12b34d5a425-kl-positive-to-residue-gap"></a>
### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis — `159cb12b34d5`

Idea: `idea:unpublished-v3:159cb12b34d5a425:kl-positive-to-residue-gap`. Outcome: **unresolved**; main claim unresolved.

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and pinned Lean evidence](remaining-idea-target-search.md#159cb12b34d5a425-kl-positive-to-residue-gap).

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and upstream Lean evidence](unresolved-idea-broader-search.md#159cb12b34d5a425-kl-positive-to-residue-gap).

KL polynomial positivity and nilpotent-stratum localization are asserted to imply analytic residue vanishing, with affine/quantum extensions and a G2 example.

The affine/quantum section adds unspecified periodic terms and repeats positivity-to-vanishing. Its G2 example prints a diagonal KL polynomial q², which must be reconciled with the defining normalization. The matrix guard is not a KL theorem or a proof of residue suppression.

Paper evidence (physical PDF page numbers):

- [p. 2](</Users/think/Desktop/MathematicsLibrary/NumberTheory/159cb12b34d5--C (7).pdf#page=2>): “The positivity of Pu,v”. Page-text SHA-256 `f0dd8824015f3d5ec19eeb4f9c9f0a7b283f60e9aee9d54c7b16d45155a0a6f0`.
- [p. 3](</Users/think/Desktop/MathematicsLibrary/NumberTheory/159cb12b34d5--C (7).pdf#page=3>): “recursive computations yielding”. Page-text SHA-256 `886f5bc6db5b64b1dd21ed0a5d9c802d1fb95e06c8ad022ebef9dc079c098103`.
- [p. 3](</Users/think/Desktop/MathematicsLibrary/NumberTheory/159cb12b34d5--C (7).pdf#page=3>): “4     Affine and Quantum Extensions”. Page-text SHA-256 `886f5bc6db5b64b1dd21ed0a5d9c802d1fb95e06c8ad022ebef9dc079c098103`.

Follow-up complete page read: 3. This selected page was already in the previous review; the short asset or relevant passage was reread, with no claim of new unseen content.

Lean candidates inspected:

- **rejected-candidate**: [`GRWTSK.RiemannHypothesis.hermitian_does_not_imply_positive_semidefinite`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/LinearAlgebra/Matrix/HermitianCounterexamples.lean#L26-L33), `GRWTSK/LinearAlgebra/Matrix/HermitianCounterexamples.lean:26–33`. A negative one-dimensional real identity matrix is Hermitian and not positive semidefinite. Obstruction to symmetry-implies-positivity only; not a theorem about KL polynomials or actual geometric pairings.

Missing bridges:

- Verify the polynomial recurrence, diagonal normalization and G2 example against the defining Hecke relations; the printed recursion and q² diagonal example are not established by the text.
- Construct the localization/realization and prove a source-specific identity linking its signed or graded pairing to analytic residues/zeros. Positivity does not imply vanishing without an additional proved implication.
- Specify and justify the affine/quantum variants instead of adding unnamed correction terms.
- Define the Hecke/KL recurrence and realization; prove an actual signed analytic comparison before any vanishing conclusion.

<a id="553f237f431fc299-kl-positive-to-residue-gap"></a>
### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis — `553f237f431f`

Idea: `idea:unpublished-v3:553f237f431fc299:kl-positive-to-residue-gap`. Outcome: **unresolved**; main claim unresolved.

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and pinned Lean evidence](remaining-idea-target-search.md#553f237f431fc299-kl-positive-to-residue-gap).

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and upstream Lean evidence](unresolved-idea-broader-search.md#553f237f431fc299-kl-positive-to-residue-gap).

KL polynomial positivity and nilpotent-stratum localization are asserted to imply analytic residue vanishing, with affine/quantum extensions and a G2 example.

The affine/quantum section adds unspecified periodic terms and repeats positivity-to-vanishing. Its G2 example prints a diagonal KL polynomial q², which must be reconciled with the defining normalization. The matrix guard is not a KL theorem or a proof of residue suppression.

Paper evidence (physical PDF page numbers):

- [p. 2](</Users/think/Desktop/MathematicsLibrary/NumberTheory/553f237f431f--C (9).pdf#page=2>): “The positivity of Pu,v”. Page-text SHA-256 `f0dd8824015f3d5ec19eeb4f9c9f0a7b283f60e9aee9d54c7b16d45155a0a6f0`.
- [p. 3](</Users/think/Desktop/MathematicsLibrary/NumberTheory/553f237f431f--C (9).pdf#page=3>): “recursive computations yielding”. Page-text SHA-256 `886f5bc6db5b64b1dd21ed0a5d9c802d1fb95e06c8ad022ebef9dc079c098103`.
- [p. 3](</Users/think/Desktop/MathematicsLibrary/NumberTheory/553f237f431f--C (9).pdf#page=3>): “4     Affine and Quantum Extensions”. Page-text SHA-256 `886f5bc6db5b64b1dd21ed0a5d9c802d1fb95e06c8ad022ebef9dc079c098103`.

Follow-up complete page read: 3. This selected page was already in the previous review; the short asset or relevant passage was reread, with no claim of new unseen content.

Lean candidates inspected:

- **rejected-candidate**: [`GRWTSK.RiemannHypothesis.hermitian_does_not_imply_positive_semidefinite`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/LinearAlgebra/Matrix/HermitianCounterexamples.lean#L26-L33), `GRWTSK/LinearAlgebra/Matrix/HermitianCounterexamples.lean:26–33`. A negative one-dimensional real identity matrix is Hermitian and not positive semidefinite. Obstruction to symmetry-implies-positivity only; not a theorem about KL polynomials or actual geometric pairings.

Missing bridges:

- Verify the polynomial recurrence, diagonal normalization and G2 example against the defining Hecke relations; the printed recursion and q² diagonal example are not established by the text.
- Construct the localization/realization and prove a source-specific identity linking its signed or graded pairing to analytic residues/zeros. Positivity does not imply vanishing without an additional proved implication.
- Specify and justify the affine/quantum variants instead of adding unnamed correction terms.
- Define the Hecke/KL recurrence and realization; prove an actual signed analytic comparison before any vanishing conclusion.

<a id="21b37ab459e746fe-geometric-positivity-residue-bridge"></a>
### Residue Suppression and Critical Line Alignment for Automorphic L-Functions: A Comprehensive Framework — `21b37ab459e7`

Idea: `idea:unpublished-v3:21b37ab459e746fe:geometric-positivity-residue-bridge`. Outcome: **repair-candidate**; main claim unresolved.

Compactification, nilpotent localization and positive intersection-cohomology pairings are asserted to force all off-line residues to vanish, including p-adic and quantum settings.

Further localization/functional-equation discussion retains an ambiguity between residues of L at poles and the zero detector L′/L. The logarithmic principal-part theorem gives a concrete repair route from an actual integer-order factorization, with coefficient equal to the order. It is not an existing realization of the paper’s geometric residue consumer.

Paper evidence (physical PDF page numbers):

- [p. 2](</Users/think/Desktop/MathematicsLibrary/NumberTheory/21b37ab459e7--A (11).pdf#page=2>): “Positivity Constraints”. Page-text SHA-256 `68c90079ade258371fd7ef7d4c7294eaa50fc955b3f003a3b4c425da424494fe`.
- [p. 3](</Users/think/Desktop/MathematicsLibrary/NumberTheory/21b37ab459e7--A (11).pdf#page=3>): “Step 3: Positivity Constraints.”. Page-text SHA-256 `6cd70f65b0a842b4e6970075128bd2615c4415170d3221649f7abd83b6d83f7b`.
- [p. 1](</Users/think/Desktop/MathematicsLibrary/NumberTheory/21b37ab459e7--A (11).pdf#page=1>): “Residue Suppression and Critical Line Alignment for”. Page-text SHA-256 `ded27e3af5f99d7cbc7746b43a492655d8228bfc83fa002a515cd41c7f48cf37`.

Follow-up complete page read: 1. This adds a page beyond the previously recorded review.

Lean candidates inspected:

- **repair-candidate**: [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.logDeriv_principal_part`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/Analysis/Complex/LogarithmicPrincipalPart.lean#L34-L51), `GRWTSK/Analysis/Complex/LogarithmicPrincipalPart.lean:34–51`. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. From f=(s−a)^k*g on a punctured neighborhood, integer k and g analytic/nonzero at a, Mathlib logDeriv f has principal part k/(s−a). A zero of f need not give a pole of f itself. No global zero exclusion or geometric realization follows.

Missing bridges:

- Prove the displayed positivity ⇒ residue-zero implication, including sign, pairing and source identities. Positivity by itself does not imply vanishing.
- Distinguish residues at poles of L from residues of its logarithmic derivative at zeros; suppression of the former need not locate zeros.
- Construct the proposed compactification/localization and specify quantum/p-adic comparisons; numerical redundancy below 10⁻¹² cannot replace exact proofs.
- Construct and identify the exact zero-detecting logarithmic source and local factorizations, then prove the geometric comparison and global exclusion theorem.

<a id="a18a628c04c5a33a-geometric-positivity-residue-bridge"></a>
### Residue Suppression and Critical Line Alignment for Automorphic L-Functions: A Comprehensive Framework — `a18a628c04c5`

Idea: `idea:unpublished-v3:a18a628c04c5a33a:geometric-positivity-residue-bridge`. Outcome: **repair-candidate**; main claim unresolved.

Compactification, nilpotent localization and positive intersection-cohomology pairings are asserted to force all off-line residues to vanish, including p-adic and quantum settings.

Further localization/functional-equation discussion retains an ambiguity between residues of L at poles and the zero detector L′/L. The logarithmic principal-part theorem gives a concrete repair route from an actual integer-order factorization, with coefficient equal to the order. It is not an existing realization of the paper’s geometric residue consumer.

Paper evidence (physical PDF page numbers):

- [p. 2](</Users/think/Desktop/MathematicsLibrary/NumberTheory/a18a628c04c5--A (8).pdf#page=2>): “Positivity Constraints”. Page-text SHA-256 `68c90079ade258371fd7ef7d4c7294eaa50fc955b3f003a3b4c425da424494fe`.
- [p. 3](</Users/think/Desktop/MathematicsLibrary/NumberTheory/a18a628c04c5--A (8).pdf#page=3>): “Step 3: Positivity Constraints.”. Page-text SHA-256 `6cd70f65b0a842b4e6970075128bd2615c4415170d3221649f7abd83b6d83f7b`.
- [p. 1](</Users/think/Desktop/MathematicsLibrary/NumberTheory/a18a628c04c5--A (8).pdf#page=1>): “Residue Suppression and Critical Line Alignment for”. Page-text SHA-256 `ded27e3af5f99d7cbc7746b43a492655d8228bfc83fa002a515cd41c7f48cf37`.

Follow-up complete page read: 1. This adds a page beyond the previously recorded review.

Lean candidates inspected:

- **repair-candidate**: [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.logDeriv_principal_part`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/Analysis/Complex/LogarithmicPrincipalPart.lean#L34-L51), `GRWTSK/Analysis/Complex/LogarithmicPrincipalPart.lean:34–51`. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. From f=(s−a)^k*g on a punctured neighborhood, integer k and g analytic/nonzero at a, Mathlib logDeriv f has principal part k/(s−a). A zero of f need not give a pole of f itself. No global zero exclusion or geometric realization follows.

Missing bridges:

- Prove the displayed positivity ⇒ residue-zero implication, including sign, pairing and source identities. Positivity by itself does not imply vanishing.
- Distinguish residues at poles of L from residues of its logarithmic derivative at zeros; suppression of the former need not locate zeros.
- Construct the proposed compactification/localization and specify quantum/p-adic comparisons; numerical redundancy below 10⁻¹² cannot replace exact proofs.
- Construct and identify the exact zero-detecting logarithmic source and local factorizations, then prove the geometric comparison and global exclusion theorem.

<a id="bd284739968eab78-exceptional-embedding-not-automorphic-transfer"></a>
### Residue Suppression via Embeddings and Geometric Langlands Localization — `bd284739968e`

Idea: `idea:unpublished-v3:bd284739968eab78:exceptional-embedding-not-automorphic-transfer`. Outcome: **unresolved**; main claim unresolved.

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and pinned Lean evidence](remaining-idea-target-search.md#bd284739968eab78-exceptional-embedding-not-automorphic-transfer).

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and upstream Lean evidence](unresolved-idea-broader-search.md#bd284739968eab78-exceptional-embedding-not-automorphic-transfer).

Exceptional-group linear embeddings are paired with nilpotent localization and finite prime residue tables to claim all-zero suppression.

The numerical appendix computes sums of supplied floating eigenvalues divided by sqrt(p). These test arrays and the table are not an automorphic lift or equality of local factors, and their listed normalizations require reconciliation. No exceptional-group residue-transfer target was established.

Paper evidence (physical PDF page numbers):

- [p. 3](</Users/think/Desktop/MathematicsLibrary/NumberTheory/bd284739968e--D (2).pdf#page=3>): “Theorem: Positivity Constraints for F4 and E8”. Page-text SHA-256 `99610e9919ad114cfb222667bd41771aa3b3895f779491bb758ba364ae52ef98`.
- [p. 5](</Users/think/Desktop/MathematicsLibrary/NumberTheory/bd284739968e--D (2).pdf#page=5>): “Extensions to Symmetric and Exterior Powers”. Page-text SHA-256 `029252e0e8c3cc44824ae20e6a0db4a1fa7016fb2489646e969b19de12e742b7`.
- [p. 10](</Users/think/Desktop/MathematicsLibrary/NumberTheory/bd284739968e--D (2).pdf#page=10>): “def residue_computation(prime_list, eigenvalues):”. Page-text SHA-256 `3943ccf311e2f855e0a595f09cbb263bc494c3c4e52d6d41d33c09b948f549c1`.

Follow-up complete page read: 10. This adds a page beyond the previously recorded review.

Lean candidates inspected:

- No concrete maintained declaration established. Negative search findings are limited to this inspection, not a proof that no suitable theorem exists.

Missing bridges:

- A faithful linear representation G→GL(n) alone does not construct a global automorphic lift or prove equality of L-functions.
- Construct compactification/localization and prove the actual positivity-to-residue-zero and residue-to-zero-location comparisons.
- Finite prime tables with 10⁻⁸/10⁻⁹ differences are approximate comparisons, not exact factor identities or all-zero coverage; symmetric/exterior/twisted claims need separate sources.
- Construct exact local parameters and the automorphic transfer; certify numerical errors only after fixing the actual mathematical source.

<a id="4fd05e96b1d7ef28-strict-pairing-and-variance-counterchecks"></a>
### Resolution of the Riemann Hypothesis: Representation-Theoretic, Numerical, and Compactification-Based Methods — `4fd05e96b1d7`

Idea: `idea:unpublished-v3:4fd05e96b1d7ef28:strict-pairing-and-variance-counterchecks`. Outcome: **obstruction-only**; main claim unresolved.

Appendix G asserts all boundary/interior cohomology pairings are strictly positive and a polynomial eigenvalue growth bound makes empirical variance tend to zero.

The later nilpotent-orbit discussion adds no normalization resolving the strict-pairing or variance claims. Exact finite variance splitting retains a nonnegative within-pair term; polynomial spectral growth does not remove it. The Hermitian counterexample separately blocks symmetry-to-positivity. Neither reference formalizes the proposed arithmetic conclusion.

Paper evidence (physical PDF page numbers):

- [p. 34](</Users/think/Desktop/MathematicsLibrary/NumberTheory/4fd05e96b1d7--e (1).pdf#page=34>): “Theorem 1: Positivity of Boundary Pairings”. Page-text SHA-256 `e8e3759bfa25a3946cac50ecc39af49c7ffd8f0b18da5c7db2d8565af3a0f22a`.
- [p. 34](</Users/think/Desktop/MathematicsLibrary/NumberTheory/4fd05e96b1d7--e (1).pdf#page=34>): “Theorem 2: Stability of Hecke Eigenvalues”. Page-text SHA-256 `e8e3759bfa25a3946cac50ecc39af49c7ffd8f0b18da5c7db2d8565af3a0f22a`.
- [p. 9](</Users/think/Desktop/MathematicsLibrary/NumberTheory/4fd05e96b1d7--e (1).pdf#page=9>): “• Map D-modules on the open moduli space Mopen to coherent sheaves on nilpo-”. Page-text SHA-256 `969022e6d83ec74f816fe253e6363f527b31c6cf08e196d806cee2bb7d7ffa61`.

Follow-up complete page read: 9. This adds a page beyond the previously recorded review.

Lean candidates inspected:

- **obstruction-only**: [`GRWTSK.Analysis.FiniteSum.DyadicVariance.pair_centered_split`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/Analysis/FiniteSum/DyadicVariance.lean#L19-L23), `GRWTSK/Analysis/FiniteSum/DyadicVariance.lean:19–23`. Candidate source, not elaborated according to its header. Exact weighted two-point centered-square decomposition retains the within-pair term (w/4)*(a−b)^2. It does not prove asymptotic variance vanishing.
- **obstruction-only**: [`GRWTSK.RiemannHypothesis.hermitian_does_not_imply_positive_semidefinite`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/LinearAlgebra/Matrix/HermitianCounterexamples.lean#L26-L33), `GRWTSK/LinearAlgebra/Matrix/HermitianCounterexamples.lean:26–33`. A negative one-dimensional real identity matrix is Hermitian and not positive semidefinite. Obstruction to symmetry-implies-positivity only; not a theorem about KL polynomials or actual geometric pairings.

Missing bridges:

- A bilinear pairing cannot be strictly positive for all vectors, including zero and sign reversals. State the intended positive cone and prove its geometry.
- Subexponential/polynomial growth does not force centered sample variance to vanish as sample size grows. Prove actual normalized moment estimates.
- These claims must be repaired before using them as analytic zero-location bridges; numerical cohomology/localization is not an exact source correspondence.
- State a positive cone and normalized moment estimates for the actual source; prove variance decay instead of inferring it from a growth class.

<a id="c34a092c5adbd193-strict-pairing-and-variance-counterchecks"></a>
### Resolution of the Riemann Hypothesis: Representation-Theoretic, Numerical, and Compactification-Based Methods — `c34a092c5adb`

Idea: `idea:unpublished-v3:c34a092c5adbd193:strict-pairing-and-variance-counterchecks`. Outcome: **obstruction-only**; main claim unresolved.

Appendix G asserts all boundary/interior cohomology pairings are strictly positive and a polynomial eigenvalue growth bound makes empirical variance tend to zero.

The later nilpotent-orbit discussion adds no normalization resolving the strict-pairing or variance claims. Exact finite variance splitting retains a nonnegative within-pair term; polynomial spectral growth does not remove it. The Hermitian counterexample separately blocks symmetry-to-positivity. Neither reference formalizes the proposed arithmetic conclusion.

Paper evidence (physical PDF page numbers):

- [p. 34](</Users/think/Desktop/MathematicsLibrary/NumberTheory/c34a092c5adb--e (2).pdf#page=34>): “Theorem 1: Positivity of Boundary Pairings”. Page-text SHA-256 `e8e3759bfa25a3946cac50ecc39af49c7ffd8f0b18da5c7db2d8565af3a0f22a`.
- [p. 34](</Users/think/Desktop/MathematicsLibrary/NumberTheory/c34a092c5adb--e (2).pdf#page=34>): “Theorem 2: Stability of Hecke Eigenvalues”. Page-text SHA-256 `e8e3759bfa25a3946cac50ecc39af49c7ffd8f0b18da5c7db2d8565af3a0f22a`.
- [p. 9](</Users/think/Desktop/MathematicsLibrary/NumberTheory/c34a092c5adb--e (2).pdf#page=9>): “• Map D-modules on the open moduli space Mopen to coherent sheaves on nilpo-”. Page-text SHA-256 `969022e6d83ec74f816fe253e6363f527b31c6cf08e196d806cee2bb7d7ffa61`.

Follow-up complete page read: 9. This adds a page beyond the previously recorded review.

Lean candidates inspected:

- **obstruction-only**: [`GRWTSK.Analysis.FiniteSum.DyadicVariance.pair_centered_split`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/Analysis/FiniteSum/DyadicVariance.lean#L19-L23), `GRWTSK/Analysis/FiniteSum/DyadicVariance.lean:19–23`. Candidate source, not elaborated according to its header. Exact weighted two-point centered-square decomposition retains the within-pair term (w/4)*(a−b)^2. It does not prove asymptotic variance vanishing.
- **obstruction-only**: [`GRWTSK.RiemannHypothesis.hermitian_does_not_imply_positive_semidefinite`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/LinearAlgebra/Matrix/HermitianCounterexamples.lean#L26-L33), `GRWTSK/LinearAlgebra/Matrix/HermitianCounterexamples.lean:26–33`. A negative one-dimensional real identity matrix is Hermitian and not positive semidefinite. Obstruction to symmetry-implies-positivity only; not a theorem about KL polynomials or actual geometric pairings.

Missing bridges:

- A bilinear pairing cannot be strictly positive for all vectors, including zero and sign reversals. State the intended positive cone and prove its geometry.
- Subexponential/polynomial growth does not force centered sample variance to vanish as sample size grows. Prove actual normalized moment estimates.
- These claims must be repaired before using them as analytic zero-location bridges; numerical cohomology/localization is not an exact source correspondence.
- State a positive cone and normalized moment estimates for the actual source; prove variance decay instead of inferring it from a growth class.

<a id="a748ea4b4592e7ab-purity-frobenius-versus-global-zeros"></a>
### The Ring—A Comprehensive Framework for Spectral Purity, Motivic Cohomology, and Fourier-Mukai Symmetries — `a748ea4b4592`

Idea: `idea:unpublished-v3:a748ea4b4592e7ab:purity-frobenius-versus-global-zeros`. Outcome: **unresolved**; main claim unresolved.

Current broader-search assessment: **obstruction-only**, main claim unresolved. [Further paper and pinned Lean evidence](remaining-idea-target-search.md#a748ea4b4592e7ab-purity-frobenius-versus-global-zeros).

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and upstream Lean evidence](unresolved-idea-broader-search.md#a748ea4b4592e7ab-purity-frobenius-versus-global-zeros).

The Ring identifies local Frobenius weight magnitudes with automorphic global zeros and uses Fourier–Mukai irreducibility/support preservation and intersection-cohomology spectrum to enforce purity.

The later Frobenius chapter passes directly from finite-field weight magnitudes to zeros/poles of an Euler product. A commuting finite projector can preserve Frobenius-stable summands but proves neither purity nor the required comparison between local eigenvalues and complex global zero coordinates.

Paper evidence (physical PDF page numbers):

- [p. 82](</Users/think/Desktop/MathematicsLibrary/NumberTheory/a748ea4b4592--The_Ring_Spectral_Purity__Motivic_Cohomology__and_Fourier_Mukai_Symmetries (3).pdf#page=82>): “Lemma 8.2”. Page-text SHA-256 `d512130e9dc70e0587b35512a132b17e2f6eceb1a72fb4cd33fd1ccb7941fb48`.
- [p. 87](</Users/think/Desktop/MathematicsLibrary/NumberTheory/a748ea4b4592--The_Ring_Spectral_Purity__Motivic_Cohomology__and_Fourier_Mukai_Symmetries (3).pdf#page=87>): “Lemma 9.3”. Page-text SHA-256 `8a986f83e54cab6305b70b8c7cabc97d92a2b6018b5c24cf7a65292c468c49b5`.
- [p. 91](</Users/think/Desktop/MathematicsLibrary/NumberTheory/a748ea4b4592--The_Ring_Spectral_Purity__Motivic_Cohomology__and_Fourier_Mukai_Symmetries (3).pdf#page=91>): “Lemma 10.4”. Page-text SHA-256 `bad1bc584eba3673bbd0d6e1ee07de3e95bb7b659126a32a2027abf981995e0e`.
- [p. 108](</Users/think/Desktop/MathematicsLibrary/NumberTheory/a748ea4b4592--The_Ring_Spectral_Purity__Motivic_Cohomology__and_Fourier_Mukai_Symmetries (3).pdf#page=108>): “15     Frobenius Eigenvalues: Arithmetic and Spectral Connections”. Page-text SHA-256 `f7a0544aa29e2632785b727f39ccb1c488a19bb30fc9e20af927f1ab721e669c`.

Follow-up complete page read: 108. This adds a page beyond the previously recorded review.

Lean candidates inspected:

- **rejected-candidate**: [`GRWTSK.LinearAlgebra.FilteredProjectorSplit.FilteredIdempotent.range_isCompl`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/LinearAlgebra/FilteredProjectorSplit.lean#L64-L69), `GRWTSK/LinearAlgebra/FilteredProjectorSplit.lean:64–69`. For a supplied idempotent on a finite-dimensional vector space, ranges of p and 1−p are complementary. No bounded Hilbert completion, metric preservation, cohomological boundary projector, Frobenius purity or arithmetic source map is constructed.

Missing bridges:

- Separate local Frobenius eigenvalue weights |α|=q^(w/2) from complex global L-function zero coordinates; construct an exact comparison with all normalizations.
- A general Fourier–Mukai kernel need not preserve irreducibility or support; supports even live on different spaces. Specify equivalence/kernel hypotheses and prove the intended relation.
- Define Spec(IC(M_G)) and prove its all-zero trace realization. Derived-category formation localizes quasi-isomorphisms, not merely homotopy equivalences; retain this categorical distinction.
- Construct the variable/normalization change and exact determinant/global analytic realization, with all convergence and weight hypotheses.

<a id="e686e3fe101ea8bf-purity-frobenius-versus-global-zeros"></a>
### The Ring—A Comprehensive Framework for Spectral Purity, Motivic Cohomology, and Fourier-Mukai Symmetries — `e686e3fe101e`

Idea: `idea:unpublished-v3:e686e3fe101ea8bf:purity-frobenius-versus-global-zeros`. Outcome: **unresolved**; main claim unresolved.

Current broader-search assessment: **obstruction-only**, main claim unresolved. [Further paper and pinned Lean evidence](remaining-idea-target-search.md#e686e3fe101ea8bf-purity-frobenius-versus-global-zeros).

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and upstream Lean evidence](unresolved-idea-broader-search.md#e686e3fe101ea8bf-purity-frobenius-versus-global-zeros).

The Ring identifies local Frobenius weight magnitudes with automorphic global zeros and uses Fourier–Mukai irreducibility/support preservation and intersection-cohomology spectrum to enforce purity.

The later Frobenius chapter passes directly from finite-field weight magnitudes to zeros/poles of an Euler product. A commuting finite projector can preserve Frobenius-stable summands but proves neither purity nor the required comparison between local eigenvalues and complex global zero coordinates.

Paper evidence (physical PDF page numbers):

- [p. 82](</Users/think/Desktop/MathematicsLibrary/NumberTheory/e686e3fe101e--The_Ring_Spectral_Purity__Motivic_Cohomology__and_Fourier_Mukai_Symmetries (2).pdf#page=82>): “Lemma 8.2”. Page-text SHA-256 `d512130e9dc70e0587b35512a132b17e2f6eceb1a72fb4cd33fd1ccb7941fb48`.
- [p. 87](</Users/think/Desktop/MathematicsLibrary/NumberTheory/e686e3fe101e--The_Ring_Spectral_Purity__Motivic_Cohomology__and_Fourier_Mukai_Symmetries (2).pdf#page=87>): “Lemma 9.3”. Page-text SHA-256 `8a986f83e54cab6305b70b8c7cabc97d92a2b6018b5c24cf7a65292c468c49b5`.
- [p. 91](</Users/think/Desktop/MathematicsLibrary/NumberTheory/e686e3fe101e--The_Ring_Spectral_Purity__Motivic_Cohomology__and_Fourier_Mukai_Symmetries (2).pdf#page=91>): “Lemma 10.4”. Page-text SHA-256 `bad1bc584eba3673bbd0d6e1ee07de3e95bb7b659126a32a2027abf981995e0e`.
- [p. 108](</Users/think/Desktop/MathematicsLibrary/NumberTheory/e686e3fe101e--The_Ring_Spectral_Purity__Motivic_Cohomology__and_Fourier_Mukai_Symmetries (2).pdf#page=108>): “15     Frobenius Eigenvalues: Arithmetic and Spectral Connections”. Page-text SHA-256 `f7a0544aa29e2632785b727f39ccb1c488a19bb30fc9e20af927f1ab721e669c`.

Follow-up complete page read: 108. This adds a page beyond the previously recorded review.

Lean candidates inspected:

- **rejected-candidate**: [`GRWTSK.LinearAlgebra.FilteredProjectorSplit.FilteredIdempotent.range_isCompl`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/LinearAlgebra/FilteredProjectorSplit.lean#L64-L69), `GRWTSK/LinearAlgebra/FilteredProjectorSplit.lean:64–69`. For a supplied idempotent on a finite-dimensional vector space, ranges of p and 1−p are complementary. No bounded Hilbert completion, metric preservation, cohomological boundary projector, Frobenius purity or arithmetic source map is constructed.

Missing bridges:

- Separate local Frobenius eigenvalue weights |α|=q^(w/2) from complex global L-function zero coordinates; construct an exact comparison with all normalizations.
- A general Fourier–Mukai kernel need not preserve irreducibility or support; supports even live on different spaces. Specify equivalence/kernel hypotheses and prove the intended relation.
- Define Spec(IC(M_G)) and prove its all-zero trace realization. Derived-category formation localizes quasi-isomorphisms, not merely homotopy equivalences; retain this categorical distinction.
- Construct the variable/normalization change and exact determinant/global analytic realization, with all convergence and weight hypotheses.

## Analysis — 11 versions

<a id="a470293a2cf9c81e-unweighted-energy-variational-gap"></a>
### Harmonic-Residue Framework for the Generalized Riemann Hypothesis — `a470293a2cf9`

Idea: `idea:unpublished-v3:a470293a2cf9c81e:unweighted-energy-variational-gap`. Outcome: **conditional-fragment**; main claim unresolved.

The paper proposes an unweighted critical-line integral as a harmonic energy and infers a unique zero configuration and a Lindelöf-strength bound.

The residue subsection supplies a local simple-pole asymptotic and separately claims critical-line growth. One-pole subtraction supplies a precise analytic regularization fragment if a full punctured-neighborhood principal-part identity is proved. The variational identity is only a real quadratic-form analogy; it does not establish the improper harmonic energy or uniqueness of its zero configuration.

Paper evidence (physical PDF page numbers):

- [p. 1](</Users/think/Desktop/MathematicsLibrary/NumberTheory/a470293a2cf9--Harmonic_Residue_Framework_for_the_Generalized_Riemann_Hypothesis (2).pdf#page=1>): “Definition 3.1 (Harmonic Functional).”. Page-text SHA-256 `5c2381f9d3eaa941a1f0a6bd98fc0f8fb0e6b6cf51fd5b0cbbb1764684746da3`.
- [p. 2](</Users/think/Desktop/MathematicsLibrary/NumberTheory/a470293a2cf9--Harmonic_Residue_Framework_for_the_Generalized_Riemann_Hypothesis (2).pdf#page=2>): “Theorem 4.3 (Harmonic-Residue Bridge).”. Page-text SHA-256 `7a0b6062cb5867a4acb64db923ef744dafc01efb68f7ac05593f48576c5f8c56`.
- [p. 2](</Users/think/Desktop/MathematicsLibrary/NumberTheory/a470293a2cf9--Harmonic_Residue_Framework_for_the_Generalized_Riemann_Hypothesis (2).pdf#page=2>): “Theorem 3.3 (Variational Principle for the Zeta Function). The critical line ℜ(s) = 21 is the unique”. Page-text SHA-256 `7a0b6062cb5867a4acb64db923ef744dafc01efb68f7ac05593f48576c5f8c56`.

Follow-up complete page read: 2. This selected page was already in the previous review; the short asset or relevant passage was reread, with no claim of new unseen content.

Lean candidates inspected:

- **conditional-fragment**: [`GRWTSK.Analysis.Complex.FinitePoleSubtraction.one_pole_subtraction`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/Analysis/Complex/FinitePoleSubtraction.lean#L81-L98), `GRWTSK/Analysis/Complex/FinitePoleSubtraction.lean:81–98`. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED at this pin. Given an analytic regular part and a full local simple principal-part equality on a punctured neighborhood, subtraction extends analytically after updating the center value. No contour, infinite-tail or arithmetic principal-part supplier is supplied.
- **analogy-only**: [`GRWTSK.Analysis.InnerProductSpace.VariationalResidual.variational_identity`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/Analysis/InnerProductSpace/VariationalResidual.lean#L49-L58), `GRWTSK/Analysis/InnerProductSpace/VariationalResidual.lean:49–58`. Authored source, not yet elaborated according to its header. Exact real quadratic completion on a declared linear domain, with symmetry and Ax=b assumed. No existence, L-function integrability or zero-position convexity is constructed.

Missing bridges:

- Specify modulus-square versus complex square, truncation/weights and integrability; no finite coercive energy follows from the displayed improper integral.
- Construct the variation space and prove actual coercivity/minimality and a source-to-zero bridge. Symmetry and a pole residue do not supply the asserted growth estimate.
- Strengthen the printed asymptotic to an analytic regular-part identity for the actual zeta source; the generic theorem does not supply that identity.
- The global energy, source-preserving variations and claimed growth estimate remain unproved.

<a id="eea3f78035e7071a-unweighted-energy-variational-gap"></a>
### Harmonic-Residue Framework for the Generalized Riemann Hypothesis — `eea3f78035e7`

Idea: `idea:unpublished-v3:eea3f78035e7071a:unweighted-energy-variational-gap`. Outcome: **conditional-fragment**; main claim unresolved.

The paper proposes an unweighted critical-line integral as a harmonic energy and infers a unique zero configuration and a Lindelöf-strength bound.

The residue subsection supplies a local simple-pole asymptotic and separately claims critical-line growth. One-pole subtraction supplies a precise analytic regularization fragment if a full punctured-neighborhood principal-part identity is proved. The variational identity is only a real quadratic-form analogy; it does not establish the improper harmonic energy or uniqueness of its zero configuration.

Paper evidence (physical PDF page numbers):

- [p. 1](</Users/think/Desktop/MathematicsLibrary/NumberTheory/eea3f78035e7--Harmonic_Residue_Framework_for_the_Generalized_Riemann_Hypothesis (1).pdf#page=1>): “Definition 3.1 (Harmonic Functional).”. Page-text SHA-256 `5c2381f9d3eaa941a1f0a6bd98fc0f8fb0e6b6cf51fd5b0cbbb1764684746da3`.
- [p. 2](</Users/think/Desktop/MathematicsLibrary/NumberTheory/eea3f78035e7--Harmonic_Residue_Framework_for_the_Generalized_Riemann_Hypothesis (1).pdf#page=2>): “Theorem 4.3 (Harmonic-Residue Bridge).”. Page-text SHA-256 `7a0b6062cb5867a4acb64db923ef744dafc01efb68f7ac05593f48576c5f8c56`.
- [p. 2](</Users/think/Desktop/MathematicsLibrary/NumberTheory/eea3f78035e7--Harmonic_Residue_Framework_for_the_Generalized_Riemann_Hypothesis (1).pdf#page=2>): “Theorem 3.3 (Variational Principle for the Zeta Function). The critical line ℜ(s) = 21 is the unique”. Page-text SHA-256 `7a0b6062cb5867a4acb64db923ef744dafc01efb68f7ac05593f48576c5f8c56`.

Follow-up complete page read: 2. This selected page was already in the previous review; the short asset or relevant passage was reread, with no claim of new unseen content.

Lean candidates inspected:

- **conditional-fragment**: [`GRWTSK.Analysis.Complex.FinitePoleSubtraction.one_pole_subtraction`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/Analysis/Complex/FinitePoleSubtraction.lean#L81-L98), `GRWTSK/Analysis/Complex/FinitePoleSubtraction.lean:81–98`. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED at this pin. Given an analytic regular part and a full local simple principal-part equality on a punctured neighborhood, subtraction extends analytically after updating the center value. No contour, infinite-tail or arithmetic principal-part supplier is supplied.
- **analogy-only**: [`GRWTSK.Analysis.InnerProductSpace.VariationalResidual.variational_identity`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/Analysis/InnerProductSpace/VariationalResidual.lean#L49-L58), `GRWTSK/Analysis/InnerProductSpace/VariationalResidual.lean:49–58`. Authored source, not yet elaborated according to its header. Exact real quadratic completion on a declared linear domain, with symmetry and Ax=b assumed. No existence, L-function integrability or zero-position convexity is constructed.

Missing bridges:

- Specify modulus-square versus complex square, truncation/weights and integrability; no finite coercive energy follows from the displayed improper integral.
- Construct the variation space and prove actual coercivity/minimality and a source-to-zero bridge. Symmetry and a pole residue do not supply the asserted growth estimate.
- Strengthen the printed asymptotic to an analytic regular-part identity for the actual zeta source; the generic theorem does not supply that identity.
- The global energy, source-preserving variations and claimed growth estimate remain unproved.

<a id="33a5d8fe67a4e573-li-flow-source-preservation"></a>
### A Gradient-Flow Approach to the Generalized Riemann Hypothesis via Li’s Coefficients and Convex Energy Functionals — `33a5d8fe67a4`

Idea: `idea:unpublished-v3:33a5d8fe67a4e573:li-flow-source-preservation`. Outcome: **analogy-only**; main claim unresolved.

A convex positive-coordinate energy flow is claimed to converge to positive Li-like coefficients and hence prove GRH.

The later LaSalle proof treats coercive level sets as compact in ℓ² and equates the positive minimizer with Li coefficients. The domain-sensitive quadratic variational identity is a useful restricted model with symmetry and an exact solution assumed. It supplies neither compactness nor preservation of the original coefficients.

Paper evidence (physical PDF page numbers):

- [p. 6](</Users/think/Desktop/MathematicsLibrary/NumberTheory/33a5d8fe67a4--A_Flow_Based_Proof_of_the_Generalized_Riemann_Hypothesis (3).pdf#page=6>): “Theorem 4.1”. Page-text SHA-256 `2422d58f52ec889752308618cc656df7fb29998c6ac58af0773288c8784f2e43`.
- [p. 11](</Users/think/Desktop/MathematicsLibrary/NumberTheory/33a5d8fe67a4--A_Flow_Based_Proof_of_the_Generalized_Riemann_Hypothesis (3).pdf#page=11>): “Lemma 11.3”. Page-text SHA-256 `a03e75ab599b7183c9d1451c775b6d8ed79bcb63afcf1c614c59b2a916d64eab`.
- [p. 14](</Users/think/Desktop/MathematicsLibrary/NumberTheory/33a5d8fe67a4--A_Flow_Based_Proof_of_the_Generalized_Riemann_Hypothesis (3).pdf#page=14>): “Theorem 15.1”. Page-text SHA-256 `2a621cd0b3b77310f0f804de4fe6a68b57481015c3f904c8f67161b986d79fce`.
- [p. 13](</Users/think/Desktop/MathematicsLibrary/NumberTheory/33a5d8fe67a4--A_Flow_Based_Proof_of_the_Generalized_Riemann_Hypothesis (3).pdf#page=13>): “GRADIENT-FLOW APPROACH TO GRH                           13”. Page-text SHA-256 `ea3979c00b6992557773c802425a3ad92c02c2df3738098dc089f7f59a1c10b5`.

Follow-up complete page read: 13. This adds a page beyond the previously recorded review.

Lean candidates inspected:

- **analogy-only**: [`GRWTSK.Analysis.InnerProductSpace.VariationalResidual.variational_identity`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/Analysis/InnerProductSpace/VariationalResidual.lean#L49-L58), `GRWTSK/Analysis/InnerProductSpace/VariationalResidual.lean:49–58`. Authored source, not yet elaborated according to its header. Exact real quadratic completion on a declared linear domain, with symmetry and Ax=b assumed. No existence, L-function integrability or zero-position convexity is constructed.

Missing bridges:

- The displayed derivatives of log ξ at s0 omit the classical Li factor s^(n−1); prove a valid criterion for the actual chosen coefficients and normalization.
- A positive minimizer of a newly designed energy need not equal the fixed coefficients of the original L-function. Prove the invariant/source identity throughout the flow.
- Justify ℓ² membership, infinite energy/gradient domain, uniform coercivity and boundary positivity; an energy defined only for positive coordinates cannot start from arbitrary ℓ² data.
- Prove actual precompactness and coefficient/source invariance; correct the Li normalization before applying a criterion.

<a id="465f76a208948832-absolute-error-integral-scale"></a>
### A Hybrid Approach to Proving the Riemann Hypothesis: Cross-Domain Consistency and Error Propagation — `465f76a20894`

Idea: `idea:unpublished-v3:465f76a208948832:absolute-error-integral-scale`. Outcome: **unresolved**; main claim unresolved.

Current broader-search assessment: **corrective-fragment**, main claim unresolved. [Further paper and upstream Lean evidence](unresolved-idea-broader-search.md#465f76a208948832-absolute-error-integral-scale).

The hybrid argument defines propagation P(x,ρ)=∫₁ˣ|t^ρ/ρ|dt and claims logarithmic growth on the critical line, alongside strengthened RMT assumptions.

The later cross-domain meta-theorem still says critical-line propagation is logarithmic, although the earlier absolute integral has power growth at β=1/2. A polynomial bound is subexponential but need not be logarithmic or bounded. The comparison lemma is a scope check, not a repair of the arithmetic contradiction.

Paper evidence (physical PDF page numbers):

- [p. 9](</Users/think/Desktop/MathematicsLibrary/NumberTheory/465f76a20894--A_Hybrid_Approach_to_Proving_the_Riemann_Hypothesis__Cross_Domain_Consistency_and_Error_Propagation (3).pdf#page=9>): “Quantifying the Error: Propagation Metric”. Page-text SHA-256 `3e1309485eeaaf7e1ff97b0c7be4e409a0161431a2b33c75e36c6680485d22ce`.
- [p. 7](</Users/think/Desktop/MathematicsLibrary/NumberTheory/465f76a20894--A_Hybrid_Approach_to_Proving_the_Riemann_Hypothesis__Cross_Domain_Consistency_and_Error_Propagation (3).pdf#page=7>): “Strengthened Spectral Assumptions”. Page-text SHA-256 `d4d2cd3f0fa6e7937c169fb93bad2a51cb6e933d021eafadef34c933382b98ee`.
- [p. 11](</Users/think/Desktop/MathematicsLibrary/NumberTheory/465f76a20894--A_Hybrid_Approach_to_Proving_the_Riemann_Hypothesis__Cross_Domain_Consistency_and_Error_Propagation (3).pdf#page=11>): “assumption guarantees consistency in the cohomological interpretations of”. Page-text SHA-256 `731196e6cfe071ddf7e3534a14b673ee667de827f15b50b481e6a63df3f09663`.

Follow-up complete page read: 11. This adds a page beyond the previously recorded review.

Lean candidates inspected:

- **rejected-candidate**: [`GRWTSK.RiemannHypothesis.CCC.subexponentialUpper_of_polynomial`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/Analysis/Asymptotics/PolynomialSubexponential.lean#L55-L64), `GRWTSK/Analysis/Asymptotics/PolynomialSubexponential.lean:55–64`. Given an actual global polynomial upper bound with nonnegative constant, obtain an upper exponential bound for every strictly positive rate, each with its own constant. No rate-zero bound, fitted-law certification, variance decay or arithmetic supplier.

Missing bridges:

- For the displayed absolute integral, the integrand magnitude is t^β/|ρ|; at β=1/2 its integral has power growth, not logarithmic growth. Correct the normalization or the conclusion.
- Preserve the expressly assumed refined pair-correlation framework; it is not an unconditional consequence of naming RMT.
- Prove source-specific modular/motivic/geometric comparison and a genuinely contradictory bound; an allowed lower-order PNT error is not itself a contradiction.
- Recompute the exact integral and normalization, then prove a genuinely incompatible bound for the same source.

<a id="d8d87416bd1943d6-absolute-error-integral-scale"></a>
### A Hybrid Approach to Proving the Riemann Hypothesis: Cross-Domain Consistency and Error Propagation — `d8d87416bd19`

Idea: `idea:unpublished-v3:d8d87416bd1943d6:absolute-error-integral-scale`. Outcome: **unresolved**; main claim unresolved.

Current broader-search assessment: **corrective-fragment**, main claim unresolved. [Further paper and upstream Lean evidence](unresolved-idea-broader-search.md#d8d87416bd1943d6-absolute-error-integral-scale).

The hybrid argument defines propagation P(x,ρ)=∫₁ˣ|t^ρ/ρ|dt and claims logarithmic growth on the critical line, alongside strengthened RMT assumptions.

The later cross-domain meta-theorem still says critical-line propagation is logarithmic, although the earlier absolute integral has power growth at β=1/2. A polynomial bound is subexponential but need not be logarithmic or bounded. The comparison lemma is a scope check, not a repair of the arithmetic contradiction.

Paper evidence (physical PDF page numbers):

- [p. 9](</Users/think/Desktop/MathematicsLibrary/NumberTheory/d8d87416bd19--A_Hybrid_Approach_to_Proving_the_Riemann_Hypothesis__Cross_Domain_Consistency_and_Error_Propagation (4).pdf#page=9>): “Quantifying the Error: Propagation Metric”. Page-text SHA-256 `3e1309485eeaaf7e1ff97b0c7be4e409a0161431a2b33c75e36c6680485d22ce`.
- [p. 7](</Users/think/Desktop/MathematicsLibrary/NumberTheory/d8d87416bd19--A_Hybrid_Approach_to_Proving_the_Riemann_Hypothesis__Cross_Domain_Consistency_and_Error_Propagation (4).pdf#page=7>): “Strengthened Spectral Assumptions”. Page-text SHA-256 `d4d2cd3f0fa6e7937c169fb93bad2a51cb6e933d021eafadef34c933382b98ee`.
- [p. 11](</Users/think/Desktop/MathematicsLibrary/NumberTheory/d8d87416bd19--A_Hybrid_Approach_to_Proving_the_Riemann_Hypothesis__Cross_Domain_Consistency_and_Error_Propagation (4).pdf#page=11>): “assumption guarantees consistency in the cohomological interpretations of”. Page-text SHA-256 `731196e6cfe071ddf7e3534a14b673ee667de827f15b50b481e6a63df3f09663`.

Follow-up complete page read: 11. This adds a page beyond the previously recorded review.

Lean candidates inspected:

- **rejected-candidate**: [`GRWTSK.RiemannHypothesis.CCC.subexponentialUpper_of_polynomial`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/Analysis/Asymptotics/PolynomialSubexponential.lean#L55-L64), `GRWTSK/Analysis/Asymptotics/PolynomialSubexponential.lean:55–64`. Given an actual global polynomial upper bound with nonnegative constant, obtain an upper exponential bound for every strictly positive rate, each with its own constant. No rate-zero bound, fitted-law certification, variance decay or arithmetic supplier.

Missing bridges:

- For the displayed absolute integral, the integrand magnitude is t^β/|ρ|; at β=1/2 its integral has power growth, not logarithmic growth. Correct the normalization or the conclusion.
- Preserve the expressly assumed refined pair-correlation framework; it is not an unconditional consequence of naming RMT.
- Prove source-specific modular/motivic/geometric comparison and a genuinely contradictory bound; an allowed lower-order PNT error is not itself a contradiction.
- Recompute the exact integral and normalization, then prove a genuinely incompatible bound for the same source.

<a id="17fb9e43b5ef8cff-weighted-gradient-energy-minimizer"></a>
### A Unified Theoretical Framework for the Proof of the Riemann Hypothesis and Its Generalizations — `17fb9e43b5ef`

Idea: `idea:unpublished-v3:17fb9e43b5ef8cff:weighted-gradient-energy-minimizer`. Outcome: **analogy-only**; main claim unresolved.

The 24-page versions claim a Gaussian weight has positive second derivative and hence weighted gradient energy uniquely minimizes when all zero coordinates lie at1/2.

The appendix infers a unique minimum from claimed convexity in zero coordinates. The inspected variational identity instead has a specified real linear domain, symmetric operator and exact equation Ax=b. It is a restricted algebraic analogy, not convexity of the weighted L-function energy or the Gaussian-weight argument.

Paper evidence (physical PDF page numbers):

- [p. 7](</Users/think/Desktop/MathematicsLibrary/NumberTheory/17fb9e43b5ef--A_Unified_Theoretical_Framework_for_the_Proof_of_the_Riemann_Hypothesis_and_Its_Generalizations (5).pdf#page=7>): “Theorem 4 (Convexity and Uniqueness).”. Page-text SHA-256 `2ea73354d7b5f6489c8f3150330aefa81505170044c1a206d1f4b6c0b2085076`.
- [p. 14](</Users/think/Desktop/MathematicsLibrary/NumberTheory/17fb9e43b5ef--A_Unified_Theoretical_Framework_for_the_Proof_of_the_Riemann_Hypothesis_and_Its_Generalizations (5).pdf#page=14>): “Theorem 12”. Page-text SHA-256 `082eb7b839082d456ca71f986371b6d4088cbff7c2099296ab8ff6e19fd7192b`.
- [p. 20](</Users/think/Desktop/MathematicsLibrary/NumberTheory/17fb9e43b5ef--A_Unified_Theoretical_Framework_for_the_Proof_of_the_Riemann_Hypothesis_and_Its_Generalizations (5).pdf#page=20>): “20                            R.A. JACOB MARTONE”. Page-text SHA-256 `1b291582edd00896537f9e707fd522e1d09ae3e2406b7f2a86f732544d7e20e4`.

Follow-up complete page read: 20. This adds a page beyond the previously recorded review.

Lean candidates inspected:

- **analogy-only**: [`GRWTSK.Analysis.InnerProductSpace.VariationalResidual.variational_identity`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/Analysis/InnerProductSpace/VariationalResidual.lean#L49-L58), `GRWTSK/Analysis/InnerProductSpace/VariationalResidual.lean:49–58`. Authored source, not yet elaborated according to its header. Exact real quadratic completion on a declared linear domain, with symmetry and Ax=b assumed. No existence, L-function integrability or zero-position convexity is constructed.

Missing bridges:

- A Gaussian does not have positive second derivative everywhere. Convexity in the function variable is distinct from convexity in zero positions.
- Prove original L-function data is the unique admissible minimizer and preserve infinite-energy/tail conditions.
- Retain the explicit statement that motivic GRH remains open in the printed theorem12; do not interpret it as an established generalization.
- Construct the zero-position variation domain and prove the actual second variation, integrability and source-minimizer identity.

<a id="92dd2484898a99ea-weighted-gradient-energy-minimizer"></a>
### A Unified Theoretical Framework for the Proof of the Riemann Hypothesis and Its Generalizations — `92dd2484898a`

Idea: `idea:unpublished-v3:92dd2484898a99ea:weighted-gradient-energy-minimizer`. Outcome: **analogy-only**; main claim unresolved.

The 24-page versions claim a Gaussian weight has positive second derivative and hence weighted gradient energy uniquely minimizes when all zero coordinates lie at1/2.

The appendix infers a unique minimum from claimed convexity in zero coordinates. The inspected variational identity instead has a specified real linear domain, symmetric operator and exact equation Ax=b. It is a restricted algebraic analogy, not convexity of the weighted L-function energy or the Gaussian-weight argument.

Paper evidence (physical PDF page numbers):

- [p. 7](</Users/think/Desktop/MathematicsLibrary/NumberTheory/92dd2484898a--A_Unified_Theoretical_Framework_for_the_Proof_of_the_Riemann_Hypothesis_and_Its_Generalizations (7).pdf#page=7>): “Theorem 4 (Convexity and Uniqueness).”. Page-text SHA-256 `2ea73354d7b5f6489c8f3150330aefa81505170044c1a206d1f4b6c0b2085076`.
- [p. 14](</Users/think/Desktop/MathematicsLibrary/NumberTheory/92dd2484898a--A_Unified_Theoretical_Framework_for_the_Proof_of_the_Riemann_Hypothesis_and_Its_Generalizations (7).pdf#page=14>): “Theorem 12”. Page-text SHA-256 `082eb7b839082d456ca71f986371b6d4088cbff7c2099296ab8ff6e19fd7192b`.
- [p. 20](</Users/think/Desktop/MathematicsLibrary/NumberTheory/92dd2484898a--A_Unified_Theoretical_Framework_for_the_Proof_of_the_Riemann_Hypothesis_and_Its_Generalizations (7).pdf#page=20>): “20                            R.A. JACOB MARTONE”. Page-text SHA-256 `1b291582edd00896537f9e707fd522e1d09ae3e2406b7f2a86f732544d7e20e4`.

Follow-up complete page read: 20. This adds a page beyond the previously recorded review.

Lean candidates inspected:

- **analogy-only**: [`GRWTSK.Analysis.InnerProductSpace.VariationalResidual.variational_identity`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/Analysis/InnerProductSpace/VariationalResidual.lean#L49-L58), `GRWTSK/Analysis/InnerProductSpace/VariationalResidual.lean:49–58`. Authored source, not yet elaborated according to its header. Exact real quadratic completion on a declared linear domain, with symmetry and Ax=b assumed. No existence, L-function integrability or zero-position convexity is constructed.

Missing bridges:

- A Gaussian does not have positive second derivative everywhere. Convexity in the function variable is distinct from convexity in zero positions.
- Prove original L-function data is the unique admissible minimizer and preserve infinite-energy/tail conditions.
- Retain the explicit statement that motivic GRH remains open in the printed theorem12; do not interpret it as an established generalization.
- Construct the zero-position variation domain and prove the actual second variation, integrability and source-minimizer identity.

<a id="294c1f7e26b63880-sobolev-compactness-and-entropy-correction"></a>
### Entropy-Driven Residue Dynamics: A Rigorous Proof of the Riemann Hypothesis — `294c1f7e26b6`

Idea: `idea:unpublished-v3:294c1f7e26b63880:sobolev-compactness-and-entropy-correction`. Outcome: **analogy-only**; main claim unresolved.

Entropy dynamics invokes compact Sobolev embeddings and a smooth correction g vanishing near1 to claim identical dynamics with or without a Siegel-zero term.

Appendix B introduces forced decay R′+λR=F(s,t) but states an unforced exponential envelope. The finite heat inequality handles explicit homogeneous diagonal damping only. It does not bound the forcing, justify Sobolev compactness or preserve the original zeros.

Paper evidence (physical PDF page numbers):

- [p. 17](</Users/think/Desktop/MathematicsLibrary/NumberTheory/294c1f7e26b6--Entropy_Driven_Residue_Dynamics__A_Rigorous_Proof_of_the_Riemann_Hypothesis (7).pdf#page=17>): “Theorem 6.7”. Page-text SHA-256 `810031a3dc4ed7db04bdedeb62dea918f0ba0c3c80ef5c890652043a64638c08`.
- [p. 21](</Users/think/Desktop/MathematicsLibrary/NumberTheory/294c1f7e26b6--Entropy_Driven_Residue_Dynamics__A_Rigorous_Proof_of_the_Riemann_Hypothesis (7).pdf#page=21>): “Theorem 7.1”. Page-text SHA-256 `f2c3bfbb8fc201fbcf05183066ae2d48eb466a3a7ea606d15a60496dca2e0eda`.
- [p. 43](</Users/think/Desktop/MathematicsLibrary/NumberTheory/294c1f7e26b6--Entropy_Driven_Residue_Dynamics__A_Rigorous_Proof_of_the_Riemann_Hypothesis (7).pdf#page=43>): “ENTROPY-DRIVEN RESIDUE DYNAMICS: A RIGOROUS PROOF OF THE RIEMANN”. Page-text SHA-256 `869ef6c235667f3ba2b413075ce7be7cff6da921027668bb2666d7947841ceeb`.

Follow-up complete page read: 43. This adds a page beyond the previously recorded review.

Lean candidates inspected:

- **analogy-only**: [`GRWTSK.LinearAlgebra.FinitePositiveHodgeHeat.heat_gap_contracts`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/LinearAlgebra/FinitePositiveHodgeHeatBounds.lean#L12-L55), `GRWTSK/LinearAlgebra/FinitePositiveHodgeHeatBounds.lean:12–55`. Finite explicitly diagonal heat obeys squared-norm damping exp(−2*t*γ) when t≥0 and γ≤a(i)^2 for every mode. Strict decay requires γ>0. No undamped second-order stability, forced-PDE estimate, Ricci flow or arithmetic realization is supplied.

Missing bridges:

- g(σ)→0 does not imply ∇g(σ)→0 or equality of entropy derivatives. Prove derivative bounds and the exact trajectory comparison.
- L² boundedness alone does not give H^k boundedness or precompactness in the same H^k norm; state the actual compact embedding and domain coverage.
- A bounded domain cannot contain the entire infinite-height critical strip. Prove all-height uniformity and preservation of original zeta zeros under the proposed flow.
- Retain and bound the Duhamel forcing contribution; prove derivative estimates for the correction and all-height compactness/source conditions.

<a id="3dda12b56a7f399b-modular-correction-product-faithfulness"></a>
### RESIDUE CLUSTERING, MODULAR SYMMETRY, AND THE PROOF OF THE GENERALIZED RIEMANN HYPOTHESIS — `3dda12b56a7f`

Idea: `idea:unpublished-v3:3dda12b56a7f399b:modular-correction-product-faithfulness`. Outcome: **repair-candidate**; main claim unresolved.

An infinite exponential correction product and an L² symmetry integral are used to impose residue clustering under sparse, alternating and random spectral growth.

The boundary page defines an infinite product of exponential corrections. Local principal-part multiplication and logarithmic factorization show what must be tracked for a finite analytic multiplier, but do not prove convergence or that the resulting infinite multiplier is an analytic unit.

Paper evidence (physical PDF page numbers):

- [p. 4](</Users/think/Desktop/MathematicsLibrary/NumberTheory/3dda12b56a7f--Residue_Clustering__Modular_Symmetry__and_the_Proof_of_the_Generalized_Riemann_Hypothesis (5).pdf#page=4>): “Residue Clustering Symmetry.”. Page-text SHA-256 `ef7dccd0f77425afc8191e2366c356a0f9badad1f6160724e84cb67a62753da2`.
- [p. 7](</Users/think/Desktop/MathematicsLibrary/NumberTheory/3dda12b56a7f--Residue_Clustering__Modular_Symmetry__and_the_Proof_of_the_Generalized_Riemann_Hypothesis (5).pdf#page=7>): “Entropy Minimization at Boundaries.”. Page-text SHA-256 `147fa614f409ff33352b1e1a560de13ee1cb1b34ab9be43d0bb2caa3abeb7540`.
- [p. 6](</Users/think/Desktop/MathematicsLibrary/NumberTheory/3dda12b56a7f--Residue_Clustering__Modular_Symmetry__and_the_Proof_of_the_Generalized_Riemann_Hypothesis (5).pdf#page=6>): “6                                   RA JACOB MARTONE”. Page-text SHA-256 `11df423560851a32ffbf0f13dab99d6bba4c13e9db19f1570004844fe44fb285`.

Follow-up complete page read: 6. This adds a page beyond the previously recorded review.

Lean candidates inspected:

- **repair-candidate**: [`GRWTSK.Analysis.Complex.FinitePoleSubtraction.principal_part_mul`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/Analysis/Complex/FinitePoleSubtraction.lean#L35-L49), `GRWTSK/Analysis/Complex/FinitePoleSubtraction.lean:35–49`. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. An analytic multiplier changes a supplied simple-pole coefficient c to c*M(a), with a new analytic regular part. No coordinate change, Jacobian or infinite-product theorem is supplied.
- **repair-candidate**: [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.logDeriv_principal_part`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/Analysis/Complex/LogarithmicPrincipalPart.lean#L34-L51), `GRWTSK/Analysis/Complex/LogarithmicPrincipalPart.lean:34–51`. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. From f=(s−a)^k*g on a punctured neighborhood, integer k and g analytic/nonzero at a, Mathlib logDeriv f has principal part k/(s−a). A zero of f need not give a pole of f itself. No global zero exclusion or geometric realization follows.

Missing bridges:

- Specify what parameter tends to a limit in the fixed integral and prove uniform/product convergence with zero-free factors and tails.
- The entropy sum repeats the same full-product log across j and generally diverges; define factor-level probabilities/entropy and prove finiteness.
- Absolute-value corrections in complex s need not be holomorphic. Prove preservation of the original L-function divisor rather than imposing symmetry on a replacement.
- Prove locally uniform convergence to a nonvanishing holomorphic multiplier with controlled tails and identify its divisor against the original L-function.

<a id="0b655e075a1e7798-dimension-decay-versus-fixed-source"></a>
### Residue Clustering, Entropy Suppression, and Symmetry Alignment: A Framework for Validating the Generalized Riemann Hypothesis — `0b655e075a1e`

Idea: `idea:unpublished-v3:0b655e075a1e7798:dimension-decay-versus-fixed-source`. Outcome: **unresolved**; main claim unresolved.

Current broader-search assessment: **repair-candidate**, main claim unresolved. [Further paper and upstream Lean evidence](unresolved-idea-broader-search.md#0b655e075a1e7798-dimension-decay-versus-fixed-source).

Residue corrections have denominator (a+b‖g−σ‖^p)^dimG and are extrapolated to a GL∞ limit with vanishing entropy.

The entropy page explicitly passes from rank-dependent pointwise corrections to a G∞ integral limit. No common measure, dominating bound or comparison to a fixed L-function is supplied. No maintained target proving that rank-limit-to-fixed-source implication was established.

Paper evidence (physical PDF page numbers):

- [p. 4](</Users/think/Desktop/MathematicsLibrary/NumberTheory/0b655e075a1e--Residue_Clustering__Entropy_Suppression__and_Symmetry_Alignment__A_Framework_for_Validating_the_Generalized_Riemann_Hypothesis_ (2).pdf#page=4>): “Geometric Suppression of Residues”. Page-text SHA-256 `b3eccda07f78473823ccd264dc06cacbbde80b0bdf35c0b725d1ab376ad93aa1`.
- [p. 8](</Users/think/Desktop/MathematicsLibrary/NumberTheory/0b655e075a1e--Residue_Clustering__Entropy_Suppression__and_Symmetry_Alignment__A_Framework_for_Validating_the_Generalized_Riemann_Hypothesis_ (2).pdf#page=8>): “Residue Clustering in G∞”. Page-text SHA-256 `9d128b3804123915457f4afba8900c6d3291a0172a1c88982b4e0cfa47cd516e`.
- [p. 5](</Users/think/Desktop/MathematicsLibrary/NumberTheory/0b655e075a1e--Residue_Clustering__Entropy_Suppression__and_Symmetry_Alignment__A_Framework_for_Validating_the_Generalized_Riemann_Hypothesis_ (2).pdf#page=5>): “Dimension dim(G)      Perturbation ϵ Residue Value ∆G (g, π)”. Page-text SHA-256 `75a4e5b7d88accff58e675deb42d550da8969d58d8c008fbba3d688b7e6ed90d`.

Follow-up complete page read: 5. This adds a page beyond the previously recorded review.

Lean candidates inspected:

- No concrete maintained declaration established. Negative search findings are limited to this inspection, not a proof that no suitable theorem exists.

Missing bridges:

- The denominator yields geometric decay only where its base exceeds1 and numerator growth is controlled; prove these conditions uniformly.
- Construct embeddings/topology, compatible measures and actual rank-limit objects before interchanging rank limits and integrals.
- Vanishing in a growing-rank model does not imply exact zero exclusion for a fixed original L-function. Numerical underflow to0 is not an exact vanishing certificate.
- Define compatible rank embeddings and measures, prove domination and base>1 bounds uniformly, and prove a fixed-source consequence separately.

<a id="e49b4fba58be2cb5-theta-one-excitation-authority-boundary"></a>
### Theta–Eisenstein–Hecke Local-to-Global Compatibility — `e49b4fba58be`

Idea: `idea:unpublished-v3:e49b4fba58be2cb5:theta-one-excitation-authority-boundary`. Outcome: **conditional-fragment**; main claim unresolved.

The compatibility paper distinguishes finite-prime and infinity source augmentation, raw scalar cocycles and represented-image lower floors in incomplete tensor products.

The later boundary-completion theorem explicitly uses an idempotent I−Er with rE=I and separates bounded from unitary branches. Complementary projector splitting supplies its finite-dimensional linear-algebra fragment once the maps and invariant filtration are instantiated. It does not supply incomplete tensor products, represented-image floors, bounded completion or the open global realization A02-O06.

Paper evidence (physical PDF page numbers):

- [p. 11](</Users/think/Desktop/MathematicsLibrary/NumberTheory/e49b4fba58be--A02-v1.1 (1).pdf#page=11>): “Actual quotient authority”. Page-text SHA-256 `72b5e4c4f159e19786a5cf7544f57571cd00957a748bd255f7579cf993336316`.
- [p. 11](</Users/think/Desktop/MathematicsLibrary/NumberTheory/e49b4fba58be--A02-v1.1 (1).pdf#page=11>): “Theorem 5.2”. Page-text SHA-256 `72b5e4c4f159e19786a5cf7544f57571cd00957a748bd255f7579cf993336316`.
- [p. 13](</Users/think/Desktop/MathematicsLibrary/NumberTheory/e49b4fba58be--A02-v1.1 (1).pdf#page=13>): “Zero excitation summands are excluded”. Page-text SHA-256 `d5b66f19d9c9de7c9c9747da41ae51c9de5a7be0eaeb54d5bc834ba577a33f8e`.
- [p. 15](</Users/think/Desktop/MathematicsLibrary/NumberTheory/e49b4fba58be--A02-v1.1 (1).pdf#page=15>): “A02 – Theta–Eisenstein–Hecke Compatibility                                                 Revision 1.1”. Page-text SHA-256 `1b0e14bf25b469e55de36df7b2d238e41bd29a6f2dcd662a7c84058705c0af84`.

Follow-up complete page read: 15. This adds a page beyond the previously recorded review.

Lean candidates inspected:

- **conditional-fragment**: [`GRWTSK.LinearAlgebra.FilteredProjectorSplit.FilteredIdempotent.range_isCompl`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/LinearAlgebra/FilteredProjectorSplit.lean#L64-L69), `GRWTSK/LinearAlgebra/FilteredProjectorSplit.lean:64–69`. For a supplied idempotent on a finite-dimensional vector space, ranges of p and 1−p are complementary. No bounded Hilbert completion, metric preservation, cohomological boundary projector, Frobenius purity or arithmetic source map is constructed.

Missing bridges:

- Construct the actual source null space and certified prime-block decomposition identified as A02-O04; abstract quotient descent does not supply them.
- Prove zero-free scalar normalization and raw overlap cocycles on the exact domain, plus bounded infinite-product extension.
- Keep the represented-image minimum modulus distinct from global local-floor infima and retain separate infinity/Hecke source squares; matching local spectra cannot establish them.
- Construct the finite source maps r,E and idempotence/filtration adapter; extend separately to the paper’s completed Hilbert spaces.
- Retain the original versus transported metric and value/residue/leading branch distinctions; one-excitation augmentation remains an open target.

## Geometry and topology — 18 versions

<a id="ec2b9a77a14f5ea8-distance-reduction"></a>
### Absolute Proof of the Nonexistence of a Rational Distance Point for a Square — `ec2b9a77a14f`

Idea: `idea:unpublished-v3:ec2b9a77a14f5ea8:distance-reduction`. Outcome: **unresolved**; main claim unresolved.

Current broader-search assessment: **conditional-fragment**, main claim unresolved. [Further paper and pinned Lean evidence](remaining-idea-target-search.md#ec2b9a77a14f5ea8-distance-reduction).

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and upstream Lean evidence](unresolved-idea-broader-search.md#ec2b9a77a14f5ea8-distance-reduction).

Rational distances to the four square vertices give rational squared-distance differences and hence rational coordinates; the draft then claims a reduction to a quartic with no rational points.

The conclusion page appeals to general elliptic-curve behavior and an unspecified computation. It supplies neither the actual curve parameters nor an exhaustive rational-point calculation. No maintained square-distance exclusion target was established.

Paper evidence (physical PDF page numbers):

- [p. 1](</Users/think/Desktop/MathematicsLibrary/GeometryTopology/ec2b9a77a14f--Rational_Distance (2).pdf#page=1>): “Reduction to a Diophantine System”. Page-text SHA-256 `97d68d6a1a2f1cc2b9eae109618bcdf8035e1edbfce1a5cab6f594e26c5483c3`.
- [p. 2](</Users/think/Desktop/MathematicsLibrary/GeometryTopology/ec2b9a77a14f--Rational_Distance (2).pdf#page=2>): “Higher-Genus Curve Argument”. Page-text SHA-256 `85cb0c447a322aa85bbe6e2e33168cdfac4d6328b6f4d025974165799171ccac`.
- [p. 2](</Users/think/Desktop/MathematicsLibrary/GeometryTopology/ec2b9a77a14f--Rational_Distance (2).pdf#page=2>): “3     Nonexistence of Rational Solutions via Elliptic Curves”. Page-text SHA-256 `85cb0c447a322aa85bbe6e2e33168cdfac4d6328b6f4d025974165799171ccac`.

Follow-up complete page read: 2. This selected page was already in the previous review; the short asset or relevant passage was reread, with no claim of new unseen content.

Lean candidates inspected:

- No concrete maintained declaration established. Negative search findings are limited to this inspection, not a proof that no suitable theorem exists.

Missing bridges:

- Rational x and y do not imply x=m/2,y=n/2 for integers m,n; retain arbitrary denominators. Rational squared distances are weaker than rational distances.
- Specify a genuine birational reduction with all degeneracies. Faltings finiteness does not imply emptiness, and no exhaustive rational-point certificate is supplied.
- Retain arbitrary rational denominators and supply explicit maps and a complete rational-point certificate.

<a id="4eae7c78f226245e-joint-runner-orbit"></a>
### Absolute Proof of the Lonely Runner Conjecture — `4eae7c78f226`

Idea: `idea:unpublished-v3:4eae7c78f226245e:joint-runner-orbit`. Outcome: **unresolved**; main claim unresolved.

Current broader-search assessment: **conditional-fragment**, main claim unresolved. [Further paper and upstream Lean evidence](unresolved-idea-broader-search.md#4eae7c78f226245e-joint-runner-orbit).

Moving to a runner’s frame reduces loneliness to joint avoidance by relative-speed torus coordinates; the paper invokes equidistribution and Minkowski to assert a time for every speed vector.

The Minkowski section still assumes sufficient volume for a region described in the time variable. It never constructs the required full-dimensional convex body, lattice or covolume. A primitive integer kernel frame is not this torus-avoidance theorem.

Paper evidence (physical PDF page numbers):

- [p. 1](</Users/think/Desktop/MathematicsLibrary/NumberTheory/4eae7c78f226--Absolute_Proof_of_the_Lonely_Runner_Conjecture (2).pdf#page=1>): “Reformulation in a Moving Reference Frame”. Page-text SHA-256 `a4b9e4fd9ade62cd3690f50d38043302aca210ae0f618fb5621eac2f829445ee`.
- [p. 2](</Users/think/Desktop/MathematicsLibrary/NumberTheory/4eae7c78f226--Absolute_Proof_of_the_Lonely_Runner_Conjecture (2).pdf#page=2>): “Minkowski’s Theorem”. Page-text SHA-256 `0d46fb9ce351d315b56d15f27b7c2db7106332ac1de3bb8d2c9b601d0979fd9a`.
- [p. 2](</Users/think/Desktop/MathematicsLibrary/NumberTheory/4eae7c78f226--Absolute_Proof_of_the_Lonely_Runner_Conjecture (2).pdf#page=2>): “3.1    Bounding the Density of Clustering”. Page-text SHA-256 `0d46fb9ce351d315b56d15f27b7c2db7106332ac1de3bb8d2c9b601d0979fd9a`.

Follow-up complete page read: 2. This selected page was already in the previous review; the short asset or relevant passage was reread, with no claim of new unseen content.

Lean candidates inspected:

- No concrete maintained declaration established. Negative search findings are limited to this inspection, not a proof that no suitable theorem exists.

Missing bridges:

- Retain the quantifier order: each runner may have its own lonely time. Do not replace it by simultaneous mutual separation of every runner.
- Joint equidistribution requires a specified orbit closure; individual irrational rotations do not handle arbitrary rationally dependent speed vectors.
- The allowed-time region is not shown to be a symmetric convex body in the claimed lattice dimension, and no covolume/volume inequality is proved. Supply those data or a different avoidance argument.
- Supply the joint orbit closure, convexity and volume/covolume comparison for every allowed speed vector.

<a id="796ba01d4a02a5ba-boundary-positivity-outline"></a>
### Boundary Regularization: A Framework for High-Rank Elimination — `796ba01d4a02`

Idea: `idea:unpublished-v3:796ba01d4a02a5ba:boundary-positivity-outline`. Outcome: **unresolved**; main claim unresolved.

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and pinned Lean evidence](remaining-idea-target-search.md#796ba01d4a02a5ba-boundary-positivity-outline).

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and upstream Lean evidence](unresolved-idea-broader-search.md#796ba01d4a02a5ba-boundary-positivity-outline).

The two-page outline proposes boundary localization, Euler-form positivity and exceptional-group regularization, with a reported 10^−8 numerical error.

The boundary-strata outline names compactification and localization, but defines no pairing or signed analytic consumer. The inspected Hermitian counterexample is an obstruction to a possible positivity shortcut, not a boundary-vanishing target.

Paper evidence (physical PDF page numbers):

- [p. 1](</Users/think/Desktop/MathematicsLibrary/NumberTheory/796ba01d4a02--g (2).pdf#page=1>): “Residue Suppression via Localization”. Page-text SHA-256 `4d8c7b048753cc2dfb6f88275ea478c9e047b33124d3ab9cae9143d6bdd843ff`.
- [p. 2](</Users/think/Desktop/MathematicsLibrary/NumberTheory/796ba01d4a02--g (2).pdf#page=2>): “Positivity Constraints”. Page-text SHA-256 `ff18a835d335c007bb73a0f80dacab2cb5911bd573e04fa067fad2bf14dcddb2`.
- [p. 1](</Users/think/Desktop/MathematicsLibrary/NumberTheory/796ba01d4a02--g (2).pdf#page=1>): “Boundary Regularization: A Framework for”. Page-text SHA-256 `4d8c7b048753cc2dfb6f88275ea478c9e047b33124d3ab9cae9143d6bdd843ff`.

Follow-up complete page read: 1. This selected page was already in the previous review; the short asset or relevant passage was reread, with no claim of new unseen content.

Lean candidates inspected:

- **rejected-candidate**: [`GRWTSK.RiemannHypothesis.hermitian_does_not_imply_positive_semidefinite`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/LinearAlgebra/Matrix/HermitianCounterexamples.lean#L26-L33), `GRWTSK/LinearAlgebra/Matrix/HermitianCounterexamples.lean:26–33`. A negative one-dimensional real identity matrix is Hermitian and not positive semidefinite. Obstruction to symmetry-implies-positivity only; not a theorem about KL polynomials or actual geometric pairings.

Missing bridges:

- Define the boundary complex, localization functor and actual signed residue/zero consumer, then prove the source comparison.
- Euler pairings are not universally positive. State the precise sheaves, degrees and positivity theorem, and derive vanishing separately.
- A reported tolerance is not a validated enclosure with full tails or an all-rank result.
- Construct a geometric positive form on the exact class of objects; Hermitian symmetry alone does not imply positivity or vanishing.

<a id="8b0f8dbc97a4587f-homotopy-rigidity-unproved-comparisons"></a>
### Spectral Rigidity, Homotopy Constraints, and the Functorial Necessity of the Riemann Hypothesis — `8b0f8dbc97a4`

Idea: `idea:unpublished-v3:8b0f8dbc97a4587f:homotopy-rigidity-unproved-comparisons`. Outcome: **unresolved**; main claim unresolved.

Current broader-search assessment: **analogy-only**, main claim unresolved. [Further paper and upstream Lean evidence](unresolved-idea-broader-search.md#8b0f8dbc97a4587f-homotopy-rigidity-unproved-comparisons).

Seven proposed principles identify categorical spectral constraints, missing arithmetic cohomology, reciprocity and noncommutative geometry as consequences of spectral RH.

The opening spectral-rigidity premise already assumes an arithmetic operator with exactly the desired spectrum. A cycle-class commuting square or a formal KK equivalence cannot supply spectral realization or exclude a forbidden homotopy class. No target for the claimed homotopy obstruction was established.

Paper evidence (physical PDF page numbers):

- [p. 2](</Users/think/Desktop/MathematicsLibrary/NumberTheory/8b0f8dbc97a4--Spectral_Rigidity__Homotopy_Constraints__and_the_Functorial_Necessity_of_the_Riemann_Hypothesis__2_.pdf#page=2>): “Theorem 3.1”. Page-text SHA-256 `e21cb255c9e00fd20a38144467d1650580870d9b9bc7fcac1e6224b29b59883a`.
- [p. 3](</Users/think/Desktop/MathematicsLibrary/NumberTheory/8b0f8dbc97a4--Spectral_Rigidity__Homotopy_Constraints__and_the_Functorial_Necessity_of_the_Riemann_Hypothesis__2_.pdf#page=3>): “Theorem 5.1”. Page-text SHA-256 `a17ee8a50187606c45054ba9e1f049a03d2d6846f22a7d45162c54cc85b61ba9`.
- [p. 1](</Users/think/Desktop/MathematicsLibrary/NumberTheory/8b0f8dbc97a4--Spectral_Rigidity__Homotopy_Constraints__and_the_Functorial_Necessity_of_the_Riemann_Hypothesis__2_.pdf#page=1>): “Annals of Mathematics 00 (XXXX), 1–4”. Page-text SHA-256 `8f2af0692441c8c95df167e5989a0366d24ac7f3f5a7286ca4b8842d640cc4d1`.

Follow-up complete page read: 1. This adds a page beyond the previously recorded review.

Lean candidates inspected:

- **rejected-candidate**: [`GRWTSK.Geometry.Hodge.RationalHodgeTransport.CycleClassEquiv.surjective_iff`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/Geometry/Hodge/RationalHodgeTransport.lean#L73-L75), `GRWTSK/Geometry/Hodge/RationalHodgeTransport.lean:73–75`. Surjectivity transports through supplied exact rational cycle-class equivalences and a commuting square.

Missing bridges:

- Construct the category and prove why an off-line zero determines a forbidden homotopy class; the claimed impossibility is not derived.
- Supply actual cohomology/weight and trace realization instead of importing finite-field Frobenius purity by analogy.
- Prove the arithmetic operator/prime-orbit reciprocity and exact source comparison. Discrete zeros do not by themselves exclude quantum chaos or resonances.
- Construct the operator/domain and multiplicity-preserving source comparison and prove the asserted categorical obstruction.

<a id="35e6de86f6760712-boundary-localization-positivity-gap"></a>
### B (8) — `35e6de86f676`

Idea: `idea:unpublished-v3:35e6de86f6760712:boundary-localization-positivity-gap`. Outcome: **repair-candidate**; main claim unresolved.

Blow-ups, intersection homology and nilpotent localization are proposed to suppress high-dimensional boundary residues and enforce critical-line alignment.

Further localization/functional-equation discussion retains an ambiguity between residues of L at poles and the zero detector L′/L. The logarithmic principal-part theorem gives a concrete repair route from an actual integer-order factorization, with coefficient equal to the order. It is not an existing realization of the paper’s geometric residue consumer.

Paper evidence (physical PDF page numbers):

- [p. 3](</Users/think/Desktop/MathematicsLibrary/ReviewQueue/35e6de86f676--B (8).pdf#page=3>): “Localization Functor”. Page-text SHA-256 `aa392b3aae95af24e4b8b92da9cc3aba994072c49cf29452bc7c69cdfabd90fa`.
- [p. 3](</Users/think/Desktop/MathematicsLibrary/ReviewQueue/35e6de86f676--B (8).pdf#page=3>): “Positivity Constraints”. Page-text SHA-256 `aa392b3aae95af24e4b8b92da9cc3aba994072c49cf29452bc7c69cdfabd90fa`.
- [p. 4](</Users/think/Desktop/MathematicsLibrary/ReviewQueue/35e6de86f676--B (8).pdf#page=4>): “5     Applications to Functional Equation Symmetry”. Page-text SHA-256 `0ec72de8e11a6c9a3b8f9634d9418db4dd70df63f6571a69b841ee71dd962fb8`.

Follow-up complete page read: 4. This selected page was already in the previous review; the short asset or relevant passage was reread, with no claim of new unseen content.

Lean candidates inspected:

- **repair-candidate**: [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart.logDeriv_principal_part`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/Analysis/Complex/LogarithmicPrincipalPart.lean#L34-L51), `GRWTSK/Analysis/Complex/LogarithmicPrincipalPart.lean:34–51`. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. From f=(s−a)^k*g on a punctured neighborhood, integer k and g analytic/nonzero at a, Mathlib logDeriv f has principal part k/(s−a). A zero of f need not give a pole of f itself. No global zero exclusion or geometric realization follows.

Missing bridges:

- Construct canonical extensions and identify the actual boundary complex; a resolution alone does not remove all analytic contributions.
- Prove the positivity/residue-vanishing implication and then distinguish pole residues from zero-detecting logarithmic derivatives.
- Use completed functional equations with the correct dual/root/conductor data. Finite GL3/GL4 numerical checks below 10⁻⁸ do not prove all-rank alignment.
- Construct and identify the exact zero-detecting logarithmic source and local factorizations, then prove the geometric comparison and global exclusion theorem.

<a id="0db38ec749b78bd0-derived-vanishing-zero-comparison"></a>
### A Derived Geometric Framework for the Riemann Hypothesis — `0db38ec749b7`

Idea: `idea:unpublished-v3:0db38ec749b78bd0:derived-vanishing-zero-comparison`. Outcome: **unresolved**; main claim unresolved.

Current broader-search assessment: **analogy-only**, main claim unresolved. [Further paper and upstream Lean evidence](unresolved-idea-broader-search.md#0db38ec749b78bd0-derived-vanishing-zero-comparison).

Derived bundle-stack boundary positivity and high-degree cohomology vanishing are combined with reflected trace terms to assert zero exclusion.

The boundary-vanishing discussion still assumes that an off-line zero produces a nonzero cohomology class above the vanishing threshold. Rational cycle-class transport only transports surjectivity through supplied equivalences; it constructs neither this class nor untwisted vanishing from positive twists.

Paper evidence (physical PDF page numbers):

- [p. 13](</Users/think/Desktop/MathematicsLibrary/NumberTheory/0db38ec749b7--A_Derived_Geometric_Framework_for_the_Riemann_Hypothesis (2).pdf#page=13>): “Theorem 3.2”. Page-text SHA-256 `6568d2288e3fe9f47cf2780b69467685e7078c36f429f32983f2352487e66692`.
- [p. 17](</Users/think/Desktop/MathematicsLibrary/NumberTheory/0db38ec749b7--A_Derived_Geometric_Framework_for_the_Riemann_Hypothesis (2).pdf#page=17>): “Corollary 3.6”. Page-text SHA-256 `49d0dfee1b4fe09337378dc50799a2320ad144ed8b5817a6094d6ff6fa8dcf6f`.
- [p. 14](</Users/think/Desktop/MathematicsLibrary/NumberTheory/0db38ec749b7--A_Derived_Geometric_Framework_for_the_Riemann_Hypothesis (2).pdf#page=14>): “• Hard Lefschetz theorem (generalized to derived stacks): Provides a cohomological sym-”. Page-text SHA-256 `8a2e053adf8870da744730eecd1b568a95a92b028218ab88006da7e313a86ca0`.

Follow-up complete page read: 14. This adds a page beyond the previously recorded review.

Lean candidates inspected:

- **rejected-candidate**: [`GRWTSK.Geometry.Hodge.RationalHodgeTransport.CycleClassEquiv.surjective_iff`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/Geometry/Hodge/RationalHodgeTransport.lean#L73-L75), `GRWTSK/Geometry/Hodge/RationalHodgeTransport.lean:73–75`. Surjectivity transports through supplied exact rational cycle-class equivalences and a commuting square.

Missing bridges:

- Construct the stated stack and ample bundles; reductivity alone does not supply all required properness/ample/vanishing hypotheses.
- Prove which off-line zero produces a nonzero class in a forbidden degree, with an exact trace/source identity. High-degree vanishing does not by itself eliminate every boundary term.
- Reflection pairs off-line points too; symmetry of trace contributions does not force each contribution onto Re(s)=1/2.
- Prove the exact zero-to-class map, its nonvanishing and degree, and the relevant geometric vanishing hypotheses.

<a id="a9d476a5336e2064-derived-vanishing-zero-comparison"></a>
### A Derived Geometric Framework for the Riemann Hypothesis — `a9d476a5336e`

Idea: `idea:unpublished-v3:a9d476a5336e2064:derived-vanishing-zero-comparison`. Outcome: **unresolved**; main claim unresolved.

Current broader-search assessment: **analogy-only**, main claim unresolved. [Further paper and upstream Lean evidence](unresolved-idea-broader-search.md#a9d476a5336e2064-derived-vanishing-zero-comparison).

Derived bundle-stack boundary positivity and high-degree cohomology vanishing are combined with reflected trace terms to assert zero exclusion.

The boundary-vanishing discussion still assumes that an off-line zero produces a nonzero cohomology class above the vanishing threshold. Rational cycle-class transport only transports surjectivity through supplied equivalences; it constructs neither this class nor untwisted vanishing from positive twists.

Paper evidence (physical PDF page numbers):

- [p. 13](</Users/think/Desktop/MathematicsLibrary/NumberTheory/a9d476a5336e--A_Derived_Geometric_Framework_for_the_Riemann_Hypothesis (3).pdf#page=13>): “Theorem 3.2”. Page-text SHA-256 `6568d2288e3fe9f47cf2780b69467685e7078c36f429f32983f2352487e66692`.
- [p. 17](</Users/think/Desktop/MathematicsLibrary/NumberTheory/a9d476a5336e--A_Derived_Geometric_Framework_for_the_Riemann_Hypothesis (3).pdf#page=17>): “Corollary 3.6”. Page-text SHA-256 `49d0dfee1b4fe09337378dc50799a2320ad144ed8b5817a6094d6ff6fa8dcf6f`.
- [p. 14](</Users/think/Desktop/MathematicsLibrary/NumberTheory/a9d476a5336e--A_Derived_Geometric_Framework_for_the_Riemann_Hypothesis (3).pdf#page=14>): “• Hard Lefschetz theorem (generalized to derived stacks): Provides a cohomological sym-”. Page-text SHA-256 `8a2e053adf8870da744730eecd1b568a95a92b028218ab88006da7e313a86ca0`.

Follow-up complete page read: 14. This adds a page beyond the previously recorded review.

Lean candidates inspected:

- **rejected-candidate**: [`GRWTSK.Geometry.Hodge.RationalHodgeTransport.CycleClassEquiv.surjective_iff`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/Geometry/Hodge/RationalHodgeTransport.lean#L73-L75), `GRWTSK/Geometry/Hodge/RationalHodgeTransport.lean:73–75`. Surjectivity transports through supplied exact rational cycle-class equivalences and a commuting square.

Missing bridges:

- Construct the stated stack and ample bundles; reductivity alone does not supply all required properness/ample/vanishing hypotheses.
- Prove which off-line zero produces a nonzero class in a forbidden degree, with an exact trace/source identity. High-degree vanishing does not by itself eliminate every boundary term.
- Reflection pairs off-line points too; symmetry of trace contributions does not force each contribution onto Re(s)=1/2.
- Prove the exact zero-to-class map, its nonvanishing and degree, and the relevant geometric vanishing hypotheses.

<a id="34ebca88596ffc41-twisted-vanishing-versus-untwisted-source"></a>
### A Derived Geometric Proof of the Riemann Hypothesis — `34ebca88596f`

Idea: `idea:unpublished-v3:34ebca88596ffc41:twisted-vanishing-versus-untwisted-source`. Outcome: **unresolved**; main claim unresolved.

Current broader-search assessment: **analogy-only**, main claim unresolved. [Further paper and upstream Lean evidence](unresolved-idea-broader-search.md#34ebca88596ffc41-twisted-vanishing-versus-untwisted-source).

The draft passes from sufficiently positive twists to an untwisted boundary vanishing theorem and asserts off-line zeros produce high-degree boundary cohomology.

The boundary-vanishing discussion still assumes that an off-line zero produces a nonzero cohomology class above the vanishing threshold. Rational cycle-class transport only transports surjectivity through supplied equivalences; it constructs neither this class nor untwisted vanishing from positive twists.

Paper evidence (physical PDF page numbers):

- [p. 18](</Users/think/Desktop/MathematicsLibrary/NumberTheory/34ebca88596f--A_Derived_Geometric_Proof_of_the_Riemann_Hypothesis (5).pdf#page=18>): “Theorem 2.6”. Page-text SHA-256 `cecb5827f8a8df4915256d48344b6b7e8a1638db4aaa2824b70034d2dfcf8417`.
- [p. 18](</Users/think/Desktop/MathematicsLibrary/NumberTheory/34ebca88596f--A_Derived_Geometric_Proof_of_the_Riemann_Hypothesis (5).pdf#page=18>): “Off-Line Zeros and Cohomological Obstructions.”. Page-text SHA-256 `cecb5827f8a8df4915256d48344b6b7e8a1638db4aaa2824b70034d2dfcf8417`.
- [p. 19](</Users/think/Desktop/MathematicsLibrary/NumberTheory/34ebca88596f--A_Derived_Geometric_Proof_of_the_Riemann_Hypothesis (5).pdf#page=19>): “Contradiction via Vanishing. The Boundary Vanishing Theorem eliminates such classes”. Page-text SHA-256 `8db262c223aa1f1354decd63ac862181a5237e7b712e35d27e6f3a3f4760e54a`.

Follow-up complete page read: 19. This adds a page beyond the previously recorded review.

Lean candidates inspected:

- **rejected-candidate**: [`GRWTSK.Geometry.Hodge.RationalHodgeTransport.CycleClassEquiv.surjective_iff`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/Geometry/Hodge/RationalHodgeTransport.lean#L73-L75), `GRWTSK/Geometry/Hodge/RationalHodgeTransport.lean:73–75`. Surjectivity transports through supplied exact rational cycle-class equivalences and a commuting square.

Missing bridges:

- Vanishing for F⊗L^k does not automatically transfer to F; prove the actual comparison, hypotheses and degree range.
- Construct the claimed nonzero cohomology class from each off-line zero and prove it lies above the vanishing threshold.
- Correct ζ(s)=ζ(1−s) to the properly completed functional equation; even correct reflection does not fix all zeros.
- Prove the exact zero-to-class map, its nonvanishing and degree, and the relevant geometric vanishing hypotheses.

<a id="50a2340db4a9dbfa-twisted-vanishing-versus-untwisted-source"></a>
### A Derived Geometric Proof of the Riemann Hypothesis — `50a2340db4a9`

Idea: `idea:unpublished-v3:50a2340db4a9dbfa:twisted-vanishing-versus-untwisted-source`. Outcome: **unresolved**; main claim unresolved.

Current broader-search assessment: **analogy-only**, main claim unresolved. [Further paper and upstream Lean evidence](unresolved-idea-broader-search.md#50a2340db4a9dbfa-twisted-vanishing-versus-untwisted-source).

The draft passes from sufficiently positive twists to an untwisted boundary vanishing theorem and asserts off-line zeros produce high-degree boundary cohomology.

The boundary-vanishing discussion still assumes that an off-line zero produces a nonzero cohomology class above the vanishing threshold. Rational cycle-class transport only transports surjectivity through supplied equivalences; it constructs neither this class nor untwisted vanishing from positive twists.

Paper evidence (physical PDF page numbers):

- [p. 18](</Users/think/Desktop/MathematicsLibrary/NumberTheory/50a2340db4a9--A_Derived_Geometric_Proof_of_the_Riemann_Hypothesis (6).pdf#page=18>): “Theorem 2.6”. Page-text SHA-256 `cecb5827f8a8df4915256d48344b6b7e8a1638db4aaa2824b70034d2dfcf8417`.
- [p. 18](</Users/think/Desktop/MathematicsLibrary/NumberTheory/50a2340db4a9--A_Derived_Geometric_Proof_of_the_Riemann_Hypothesis (6).pdf#page=18>): “Off-Line Zeros and Cohomological Obstructions.”. Page-text SHA-256 `cecb5827f8a8df4915256d48344b6b7e8a1638db4aaa2824b70034d2dfcf8417`.
- [p. 19](</Users/think/Desktop/MathematicsLibrary/NumberTheory/50a2340db4a9--A_Derived_Geometric_Proof_of_the_Riemann_Hypothesis (6).pdf#page=19>): “Contradiction via Vanishing. The Boundary Vanishing Theorem eliminates such classes”. Page-text SHA-256 `8db262c223aa1f1354decd63ac862181a5237e7b712e35d27e6f3a3f4760e54a`.

Follow-up complete page read: 19. This adds a page beyond the previously recorded review.

Lean candidates inspected:

- **rejected-candidate**: [`GRWTSK.Geometry.Hodge.RationalHodgeTransport.CycleClassEquiv.surjective_iff`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/Geometry/Hodge/RationalHodgeTransport.lean#L73-L75), `GRWTSK/Geometry/Hodge/RationalHodgeTransport.lean:73–75`. Surjectivity transports through supplied exact rational cycle-class equivalences and a commuting square.

Missing bridges:

- Vanishing for F⊗L^k does not automatically transfer to F; prove the actual comparison, hypotheses and degree range.
- Construct the claimed nonzero cohomology class from each off-line zero and prove it lies above the vanishing threshold.
- Correct ζ(s)=ζ(1−s) to the properly completed functional equation; even correct reflection does not fix all zeros.
- Prove the exact zero-to-class map, its nonvanishing and degree, and the relevant geometric vanishing hypotheses.

<a id="8a8dc8e29d327ad4-geometric-functorial-alignment-outline"></a>
### A Geometric Framework for the Grand Riemann Hypothesis — `8a8dc8e29d32`

Idea: `idea:unpublished-v3:8a8dc8e29d327ad4:geometric-functorial-alignment-outline`. Outcome: **unresolved**; main claim unresolved.

Current broader-search assessment: **analogy-only**, main claim unresolved. [Further paper and upstream Lean evidence](unresolved-idea-broader-search.md#8a8dc8e29d327ad4-geometric-functorial-alignment-outline).

Functoriality, dual groups and derived compactifications are proposed to preserve residues and stabilize spectral operators.

The Frobenius-trace page describes arithmetic coefficients and boundary alignment but gives no local-factor-preserving lift or zero comparison. The exact commuting-square requirements in rational Hodge transport identify missing input rather than establish this functorial claim.

Paper evidence (physical PDF page numbers):

- [p. 30](</Users/think/Desktop/MathematicsLibrary/NumberTheory/8a8dc8e29d32--A_Geometric_Framework_for_the_Grand_Riemann_Hypothesis (2).pdf#page=30>): “Functoriality in the Langlands Framework”. Page-text SHA-256 `ab5ab2630efba39f7cb909fcee979bd13f4d4f3543583f62fcad4ca219266ae6`.
- [p. 40](</Users/think/Desktop/MathematicsLibrary/NumberTheory/8a8dc8e29d32--A_Geometric_Framework_for_the_Grand_Riemann_Hypothesis (2).pdf#page=40>): “Utility in Residue Alignment and Spectral Operators”. Page-text SHA-256 `69aa4b3d7d999e3d5b0cb78ce9c0774d56ec950a4a778636e8481947e34f7397`.
- [p. 27](</Users/think/Desktop/MathematicsLibrary/NumberTheory/8a8dc8e29d32--A_Geometric_Framework_for_the_Grand_Riemann_Hypothesis (2).pdf#page=27>): “Local Context: This subsection highlights the role of the Frobenius trace”. Page-text SHA-256 `65f6ae45c2aecd0d82ede28f4fe4a48072098142057387a04ff5a9a33ad1371f`.

Follow-up complete page read: 27. This adds a page beyond the previously recorded review.

Lean candidates inspected:

- **rejected-candidate**: [`GRWTSK.Geometry.Hodge.RationalHodgeTransport.CycleClassEquiv.surjective_iff`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/Geometry/Hodge/RationalHodgeTransport.lean#L73-L75), `GRWTSK/Geometry/Hodge/RationalHodgeTransport.lean:73–75`. Surjectivity transports through supplied exact rational cycle-class equivalences and a commuting square.

Missing bridges:

- Define the actual lift, its local factors and induced spectral map; a GL2→GL3 lift does not simply preserve every original Hecke eigenvalue.
- Correct the uncompleted zeta symmetry and prove source identities through boundary strata.
- Supply actual derived-stack and residue theorems; placeholder figures and descriptions do not establish stability or zero exclusion.
- Supply the actual lift, Euler-factor normalization, trace identity and boundary realization; finite-field traces alone do not identify complex global zeros.

<a id="efe16f86d1739c61-geometric-functorial-alignment-outline"></a>
### A Geometric Framework for the Grand Riemann Hypothesis — `efe16f86d173`

Idea: `idea:unpublished-v3:efe16f86d1739c61:geometric-functorial-alignment-outline`. Outcome: **unresolved**; main claim unresolved.

Current broader-search assessment: **analogy-only**, main claim unresolved. [Further paper and upstream Lean evidence](unresolved-idea-broader-search.md#efe16f86d1739c61-geometric-functorial-alignment-outline).

Functoriality, dual groups and derived compactifications are proposed to preserve residues and stabilize spectral operators.

The Frobenius-trace page describes arithmetic coefficients and boundary alignment but gives no local-factor-preserving lift or zero comparison. The exact commuting-square requirements in rational Hodge transport identify missing input rather than establish this functorial claim.

Paper evidence (physical PDF page numbers):

- [p. 30](</Users/think/Desktop/MathematicsLibrary/NumberTheory/efe16f86d173--A_Geometric_Framework_for_the_Grand_Riemann_Hypothesis (3).pdf#page=30>): “Functoriality in the Langlands Framework”. Page-text SHA-256 `ab5ab2630efba39f7cb909fcee979bd13f4d4f3543583f62fcad4ca219266ae6`.
- [p. 40](</Users/think/Desktop/MathematicsLibrary/NumberTheory/efe16f86d173--A_Geometric_Framework_for_the_Grand_Riemann_Hypothesis (3).pdf#page=40>): “Utility in Residue Alignment and Spectral Operators”. Page-text SHA-256 `69aa4b3d7d999e3d5b0cb78ce9c0774d56ec950a4a778636e8481947e34f7397`.
- [p. 27](</Users/think/Desktop/MathematicsLibrary/NumberTheory/efe16f86d173--A_Geometric_Framework_for_the_Grand_Riemann_Hypothesis (3).pdf#page=27>): “Local Context: This subsection highlights the role of the Frobenius trace”. Page-text SHA-256 `65f6ae45c2aecd0d82ede28f4fe4a48072098142057387a04ff5a9a33ad1371f`.

Follow-up complete page read: 27. This adds a page beyond the previously recorded review.

Lean candidates inspected:

- **rejected-candidate**: [`GRWTSK.Geometry.Hodge.RationalHodgeTransport.CycleClassEquiv.surjective_iff`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/Geometry/Hodge/RationalHodgeTransport.lean#L73-L75), `GRWTSK/Geometry/Hodge/RationalHodgeTransport.lean:73–75`. Surjectivity transports through supplied exact rational cycle-class equivalences and a commuting square.

Missing bridges:

- Define the actual lift, its local factors and induced spectral map; a GL2→GL3 lift does not simply preserve every original Hecke eigenvalue.
- Correct the uncompleted zeta symmetry and prove source identities through boundary strata.
- Supply actual derived-stack and residue theorems; placeholder figures and descriptions do not establish stability or zero exclusion.
- Supply the actual lift, Euler-factor normalization, trace identity and boundary realization; finite-field traces alone do not identify complex global zeros.

<a id="b4653d8949e0c7c3-residue-modified-ricci-arithmetic-gap"></a>
### A Unified Theoretical Framework for the Proof of the Riemann Hypothesis and Its Extensions — `b4653d8949e0`

Idea: `idea:unpublished-v3:b4653d8949e0c7c3:residue-modified-ricci-arithmetic-gap`. Outcome: **analogy-only**; main claim unresolved.

Residue-modified Ricci entropy is asserted monotone with positive Hessian for high-rank/exceptional representations, driving zeros toward the critical line.

The later entropy-delay discussion asserts monotonicity for residue-modified dynamics without displaying the complete derivative. Finite diagonal heat gives exact damping only after an explicit spectral gap; it cannot import Ricci monotonicity or identify evolving coordinates with the fixed arithmetic zero set.

Paper evidence (physical PDF page numbers):

- [p. 30](</Users/think/Desktop/MathematicsLibrary/NumberTheory/b4653d8949e0--A_Unified_Theoretical_Framework_for_the_Proof_of_the_Riemann_Hypothesis_and_Its_Extensions (5).pdf#page=30>): “Entropy Stability in Higher Dimensions”. Page-text SHA-256 `3c95f575cfd40b5ee838b23889cd8475d5e31f0e00aec38f54d8dc56df0b29a9`.
- [p. 40](</Users/think/Desktop/MathematicsLibrary/NumberTheory/b4653d8949e0--A_Unified_Theoretical_Framework_for_the_Proof_of_the_Riemann_Hypothesis_and_Its_Extensions (5).pdf#page=40>): “Higher-Dimensional Ricci Flow:”. Page-text SHA-256 `79a7caedeee67883f534ab28a26302c251ffc7c16f855cbebb6a580041670adb`.
- [p. 34](</Users/think/Desktop/MathematicsLibrary/NumberTheory/b4653d8949e0--A_Unified_Theoretical_Framework_for_the_Proof_of_the_Riemann_Hypothesis_and_Its_Extensions (5).pdf#page=34>): “3.2.3   Entropy Delays from Residue Contributions”. Page-text SHA-256 `5e376c4bb0abfa1b3a2dec9e597c83ae1896cf8d397a6fbd1e9a88c27b2c2b8f`.

Follow-up complete page read: 34. This adds a page beyond the previously recorded review.

Lean candidates inspected:

- **analogy-only**: [`GRWTSK.LinearAlgebra.FinitePositiveHodgeHeat.heat_gap_contracts`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/LinearAlgebra/FinitePositiveHodgeHeatBounds.lean#L12-L55), `GRWTSK/LinearAlgebra/FinitePositiveHodgeHeatBounds.lean:12–55`. Finite explicitly diagonal heat obeys squared-norm damping exp(−2*t*γ) when t≥0 and γ≤a(i)^2 for every mode. Strict decay requires γ>0. No undamped second-order stability, forced-PDE estimate, Ricci flow or arithmetic realization is supplied.

Missing bridges:

- Derive the modified entropy derivative including all residue/metric/measure terms and its sign; ordinary Ricci monotonicity cannot simply be imported.
- Specify rank/dimension normalization and constants for the differing residue scalings and exceptional curvature terms.
- Prove well-posedness, convergence and exact preservation/recognition of the original zero set, not only a flow whose attractor is the critical line.
- Derive the actual modified entropy law with metric, measure and residue terms and prove source preservation and convergence.

<a id="c5773b3ef5f0157d-residue-modified-ricci-arithmetic-gap"></a>
### A Unified Theoretical Framework for the Proof of the Riemann Hypothesis and Its Extensions — `c5773b3ef5f0`

Idea: `idea:unpublished-v3:c5773b3ef5f0157d:residue-modified-ricci-arithmetic-gap`. Outcome: **analogy-only**; main claim unresolved.

Residue-modified Ricci entropy is asserted monotone with positive Hessian for high-rank/exceptional representations, driving zeros toward the critical line.

The later entropy-delay discussion asserts monotonicity for residue-modified dynamics without displaying the complete derivative. Finite diagonal heat gives exact damping only after an explicit spectral gap; it cannot import Ricci monotonicity or identify evolving coordinates with the fixed arithmetic zero set.

Paper evidence (physical PDF page numbers):

- [p. 30](</Users/think/Desktop/MathematicsLibrary/NumberTheory/c5773b3ef5f0--A_Unified_Theoretical_Framework_for_the_Proof_of_the_Riemann_Hypothesis_and_Its_Extensions (4).pdf#page=30>): “Entropy Stability in Higher Dimensions”. Page-text SHA-256 `3c95f575cfd40b5ee838b23889cd8475d5e31f0e00aec38f54d8dc56df0b29a9`.
- [p. 40](</Users/think/Desktop/MathematicsLibrary/NumberTheory/c5773b3ef5f0--A_Unified_Theoretical_Framework_for_the_Proof_of_the_Riemann_Hypothesis_and_Its_Extensions (4).pdf#page=40>): “Higher-Dimensional Ricci Flow:”. Page-text SHA-256 `79a7caedeee67883f534ab28a26302c251ffc7c16f855cbebb6a580041670adb`.
- [p. 34](</Users/think/Desktop/MathematicsLibrary/NumberTheory/c5773b3ef5f0--A_Unified_Theoretical_Framework_for_the_Proof_of_the_Riemann_Hypothesis_and_Its_Extensions (4).pdf#page=34>): “3.2.3   Entropy Delays from Residue Contributions”. Page-text SHA-256 `5e376c4bb0abfa1b3a2dec9e597c83ae1896cf8d397a6fbd1e9a88c27b2c2b8f`.

Follow-up complete page read: 34. This adds a page beyond the previously recorded review.

Lean candidates inspected:

- **analogy-only**: [`GRWTSK.LinearAlgebra.FinitePositiveHodgeHeat.heat_gap_contracts`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/LinearAlgebra/FinitePositiveHodgeHeatBounds.lean#L12-L55), `GRWTSK/LinearAlgebra/FinitePositiveHodgeHeatBounds.lean:12–55`. Finite explicitly diagonal heat obeys squared-norm damping exp(−2*t*γ) when t≥0 and γ≤a(i)^2 for every mode. Strict decay requires γ>0. No undamped second-order stability, forced-PDE estimate, Ricci flow or arithmetic realization is supplied.

Missing bridges:

- Derive the modified entropy derivative including all residue/metric/measure terms and its sign; ordinary Ricci monotonicity cannot simply be imported.
- Specify rank/dimension normalization and constants for the differing residue scalings and exceptional curvature terms.
- Prove well-posedness, convergence and exact preservation/recognition of the original zero set, not only a flow whose attractor is the critical line.
- Derive the actual modified entropy law with metric, measure and residue terms and prove source preservation and convergence.

<a id="74fdf55b94927e16-compactification-gamma-cancellation"></a>
### Compactification Symmetry and the Riemann Hypothesis — `74fdf55b9492`

Idea: `idea:unpublished-v3:74fdf55b94927e16:compactification-gamma-cancellation`. Outcome: **repair-candidate**; main claim unresolved.

Boundary trace contributions are assigned dimension-scaled gamma factors whose sum is asserted to vanish exclusively on Re(s)=1/2.

The later tables test selected complex points rather than prove the gamma cancellation. The displayed plus-sign expression is already nonzero at the real center for positive T. Subtracting a genuine local principal part is an available analytic regularization mechanism, but does not validate cancellation of the paper’s boundary traces.

Paper evidence (physical PDF page numbers):

- [p. 4](</Users/think/Desktop/MathematicsLibrary/NumberTheory/74fdf55b9492--s (1).pdf#page=4>): “Generalized Residue Contributions”. Page-text SHA-256 `5970d274feeaa66b046f70912477b6588aa5b840415e362cc8e2bc0a70c585e1`.
- [p. 5](</Users/think/Desktop/MathematicsLibrary/NumberTheory/74fdf55b9492--s (1).pdf#page=5>): “3.4    Generalization to Exceptional Groups”. Page-text SHA-256 `ea336ccf2ae85ff9fedc97e91ffd9ccd13aa5c92fc32ffe89ff5a6986555da42`.

Follow-up complete page read: 5. This adds a page beyond the previously recorded review.

Lean candidates inspected:

- **repair-candidate**: [`GRWTSK.Analysis.Complex.FinitePoleSubtraction.one_pole_subtraction`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/Analysis/Complex/FinitePoleSubtraction.lean#L81-L98), `GRWTSK/Analysis/Complex/FinitePoleSubtraction.lean:81–98`. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED at this pin. Given an analytic regular part and a full local simple principal-part equality on a punctured neighborhood, subtraction extends analytically after updating the center value. No contour, infinite-tail or arithmetic principal-part supplier is supplied.

Missing bridges:

- Prove the displayed gamma cancellation: at s=1/2 with positive T its two real positive gamma terms do not cancel as written.
- Construct the moduli compactification and actual trace integral instead of equating it to a dimension factor.
- Even a boundary residue identity needs a separate all-zero analytic comparison; finite symbolic cases and functional symmetry do not supply it.
- Replace the false universal cancellation formula with an actual local expansion/trace identity; separate finite pole removal from global boundary or zero suppression.

<a id="b9cfb67e8d0ee43e-compactification-gamma-cancellation"></a>
### Compactification Symmetry and the Riemann Hypothesis — `b9cfb67e8d0e`

Idea: `idea:unpublished-v3:b9cfb67e8d0ee43e:compactification-gamma-cancellation`. Outcome: **repair-candidate**; main claim unresolved.

Boundary trace contributions are assigned dimension-scaled gamma factors whose sum is asserted to vanish exclusively on Re(s)=1/2.

The later tables test selected complex points rather than prove the gamma cancellation. The displayed plus-sign expression is already nonzero at the real center for positive T. Subtracting a genuine local principal part is an available analytic regularization mechanism, but does not validate cancellation of the paper’s boundary traces.

Paper evidence (physical PDF page numbers):

- [p. 4](</Users/think/Desktop/MathematicsLibrary/NumberTheory/b9cfb67e8d0e--s (2).pdf#page=4>): “Generalized Residue Contributions”. Page-text SHA-256 `5970d274feeaa66b046f70912477b6588aa5b840415e362cc8e2bc0a70c585e1`.
- [p. 5](</Users/think/Desktop/MathematicsLibrary/NumberTheory/b9cfb67e8d0e--s (2).pdf#page=5>): “3.4    Generalization to Exceptional Groups”. Page-text SHA-256 `ea336ccf2ae85ff9fedc97e91ffd9ccd13aa5c92fc32ffe89ff5a6986555da42`.

Follow-up complete page read: 5. This adds a page beyond the previously recorded review.

Lean candidates inspected:

- **repair-candidate**: [`GRWTSK.Analysis.Complex.FinitePoleSubtraction.one_pole_subtraction`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/Analysis/Complex/FinitePoleSubtraction.lean#L81-L98), `GRWTSK/Analysis/Complex/FinitePoleSubtraction.lean:81–98`. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED at this pin. Given an analytic regular part and a full local simple principal-part equality on a punctured neighborhood, subtraction extends analytically after updating the center value. No contour, infinite-tail or arithmetic principal-part supplier is supplied.

Missing bridges:

- Prove the displayed gamma cancellation: at s=1/2 with positive T its two real positive gamma terms do not cancel as written.
- Construct the moduli compactification and actual trace integral instead of equating it to a dimension factor.
- Even a boundary residue identity needs a separate all-zero analytic comparison; finite symbolic cases and functional symmetry do not supply it.
- Replace the false universal cancellation formula with an actual local expansion/trace identity; separate finite pole removal from global boundary or zero suppression.

<a id="c49188e01b3c6072-expanded-compactification-gamma-cancellation"></a>
### Compactification Symmetry and the Riemann Hypothesis — `c49188e01b3c`

Idea: `idea:unpublished-v3:c49188e01b3c6072:expanded-compactification-gamma-cancellation`. Outcome: **repair-candidate**; main claim unresolved.

The expanded version decomposes L(s) into interior/boundary traces and imposes T^(s−1)Γ(1−s)+T^(−s)Γ(s)=0 as reflection alignment.

The later tables test selected complex points rather than prove the gamma cancellation. The displayed plus-sign expression is already nonzero at the real center for positive T. Subtracting a genuine local principal part is an available analytic regularization mechanism, but does not validate cancellation of the paper’s boundary traces.

Paper evidence (physical PDF page numbers):

- [p. 10](</Users/think/Desktop/MathematicsLibrary/NumberTheory/c49188e01b3c--Compactification_Symmetry_and_the_Riemann_Hypothesis (6).pdf#page=10>): “Residue Decomposition and Boundary Contributions”. Page-text SHA-256 `86017745ced3117213f5f7127af2f329e939c776ac58bb71d1424312c32a4974`.
- [p. 10](</Users/think/Desktop/MathematicsLibrary/NumberTheory/c49188e01b3c--Compactification_Symmetry_and_the_Riemann_Hypothesis (6).pdf#page=10>): “Reflection Symmetry and Critical Line Alignment”. Page-text SHA-256 `86017745ced3117213f5f7127af2f329e939c776ac58bb71d1424312c32a4974`.
- [p. 15](</Users/think/Desktop/MathematicsLibrary/NumberTheory/c49188e01b3c--Compactification_Symmetry_and_the_Riemann_Hypothesis (6).pdf#page=15>): “Point          Residue (Boundary)           Residue (Interior) Alignment Status”. Page-text SHA-256 `a8c0dfabf7c381def96821eba45a07c4e4a0a523a57b1de478af27d318e8a4dd`.

Follow-up complete page read: 15. This adds a page beyond the previously recorded review.

Lean candidates inspected:

- **repair-candidate**: [`GRWTSK.Analysis.Complex.FinitePoleSubtraction.one_pole_subtraction`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/Analysis/Complex/FinitePoleSubtraction.lean#L81-L98), `GRWTSK/Analysis/Complex/FinitePoleSubtraction.lean:81–98`. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED at this pin. Given an analytic regular part and a full local simple principal-part equality on a punctured neighborhood, subtraction extends analytically after updating the center value. No contour, infinite-tail or arithmetic principal-part supplier is supplied.

Missing bridges:

- Prove the actual decomposition and gamma relation; the displayed plus-sign expression is positive at the real central point for positive T, so cannot vanish there as stated.
- Retain geometric hypotheses for boundary vanishing/positivity and identify the analytic residue consumer.
- The text calls exceptional/non-standard extensions active research; do not promote finite classical-group checks into all-family GRH.
- Replace the false universal cancellation formula with an actual local expansion/trace identity; separate finite pole removal from global boundary or zero suppression.

<a id="1973205b71af0113-foundational-correspondence-is-premise"></a>
### Resolution of the Riemann Hypothesis and Generalized Automorphic L-Functions — `1973205b71af`

Idea: `idea:unpublished-v3:1973205b71af0113:foundational-correspondence-is-premise`. Outcome: **analogy-only**; main claim unresolved.

The resolution lists geometric correspondence and residue suppression as foundational assumptions, then extends nilpotent-stratum alignment to exceptional groups.

The later localization section explicitly writes boundary/interior cohomology as a direct sum. Complementary idempotent ranges do split in finite linear algebra, but constructing such an idempotent on the actual cohomology is additional data; strict mixed-pairing positivity does not construct it.

Paper evidence (physical PDF page numbers):

- [p. 7](</Users/think/Desktop/MathematicsLibrary/NumberTheory/1973205b71af--Resolution_of_the_Riemann_Hypothesis_and_Generalized_Automorphic__L__Functions (13).pdf#page=7>): “Geometric Correspondence:”. Page-text SHA-256 `c1690d48584e97ee8b4bbc7624a931a69b20224d184b4122a8965510bd055efb`.
- [p. 20](</Users/think/Desktop/MathematicsLibrary/NumberTheory/1973205b71af--Resolution_of_the_Riemann_Hypothesis_and_Generalized_Automorphic__L__Functions (13).pdf#page=20>): “Cohomological Complexity in E8”. Page-text SHA-256 `b88b134ead7e6fc6081cdff8a65990f175c066c41fe65c86e2b03df028ff64ff`.
- [p. 17](</Users/think/Desktop/MathematicsLibrary/NumberTheory/1973205b71af--Resolution_of_the_Riemann_Hypothesis_and_Generalized_Automorphic__L__Functions (13).pdf#page=17>): “Enhanced Schematic for Residue Mapping. The localization process and its role in”. Page-text SHA-256 `562834ee681297b82e9ad3d25826739eddfe6d9ac9c6c18fb5dff01196897677`.

Follow-up complete page read: 17. This adds a page beyond the previously recorded review.

Lean candidates inspected:

- **analogy-only**: [`GRWTSK.LinearAlgebra.FilteredProjectorSplit.FilteredIdempotent.range_isCompl`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/LinearAlgebra/FilteredProjectorSplit.lean#L64-L69), `GRWTSK/LinearAlgebra/FilteredProjectorSplit.lean:64–69`. For a supplied idempotent on a finite-dimensional vector space, ranges of p and 1−p are complementary. No bounded Hilbert completion, metric preservation, cohomological boundary projector, Frobenius purity or arithmetic source map is constructed.

Missing bridges:

- Prove the stated cohomological decomposition and exact trace/source identity; a direct sum indexed by nilpotent orbits is additional mathematics.
- Establish positivity-to-residue vanishing and then a zero-detecting comparison. Reflection and root numbers do not supply either.
- Keep the foundational geometric correspondence/suppression assumptions visible rather than calling their consequences assumption-free.
- Build the actual boundary projector and identify its range, kernel, filtration and analytic trace/source action.

<a id="fc037812efa393af-foundational-correspondence-is-premise"></a>
### Resolution of the Riemann Hypothesis and Generalized Automorphic L-Functions — `fc037812efa3`

Idea: `idea:unpublished-v3:fc037812efa393af:foundational-correspondence-is-premise`. Outcome: **analogy-only**; main claim unresolved.

The resolution lists geometric correspondence and residue suppression as foundational assumptions, then extends nilpotent-stratum alignment to exceptional groups.

The later localization section explicitly writes boundary/interior cohomology as a direct sum. Complementary idempotent ranges do split in finite linear algebra, but constructing such an idempotent on the actual cohomology is additional data; strict mixed-pairing positivity does not construct it.

Paper evidence (physical PDF page numbers):

- [p. 7](</Users/think/Desktop/MathematicsLibrary/NumberTheory/fc037812efa3--Resolution_of_the_Riemann_Hypothesis_and_Generalized_Automorphic__L__Functions (14).pdf#page=7>): “Geometric Correspondence:”. Page-text SHA-256 `c1690d48584e97ee8b4bbc7624a931a69b20224d184b4122a8965510bd055efb`.
- [p. 20](</Users/think/Desktop/MathematicsLibrary/NumberTheory/fc037812efa3--Resolution_of_the_Riemann_Hypothesis_and_Generalized_Automorphic__L__Functions (14).pdf#page=20>): “Cohomological Complexity in E8”. Page-text SHA-256 `b88b134ead7e6fc6081cdff8a65990f175c066c41fe65c86e2b03df028ff64ff`.
- [p. 17](</Users/think/Desktop/MathematicsLibrary/NumberTheory/fc037812efa3--Resolution_of_the_Riemann_Hypothesis_and_Generalized_Automorphic__L__Functions (14).pdf#page=17>): “Enhanced Schematic for Residue Mapping. The localization process and its role in”. Page-text SHA-256 `562834ee681297b82e9ad3d25826739eddfe6d9ac9c6c18fb5dff01196897677`.

Follow-up complete page read: 17. This adds a page beyond the previously recorded review.

Lean candidates inspected:

- **analogy-only**: [`GRWTSK.LinearAlgebra.FilteredProjectorSplit.FilteredIdempotent.range_isCompl`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/LinearAlgebra/FilteredProjectorSplit.lean#L64-L69), `GRWTSK/LinearAlgebra/FilteredProjectorSplit.lean:64–69`. For a supplied idempotent on a finite-dimensional vector space, ranges of p and 1−p are complementary. No bounded Hilbert completion, metric preservation, cohomological boundary projector, Frobenius purity or arithmetic source map is constructed.

Missing bridges:

- Prove the stated cohomological decomposition and exact trace/source identity; a direct sum indexed by nilpotent orbits is additional mathematics.
- Establish positivity-to-residue vanishing and then a zero-detecting comparison. Reflection and root numbers do not supply either.
- Keep the foundational geometric correspondence/suppression assumptions visible rather than calling their consequences assumption-free.
- Build the actual boundary projector and identify its range, kernel, filtration and analytic trace/source action.

## Logic and computation — 3 versions

<a id="3f28be14404a64ea-recomposition-upper-bound-not-separation"></a>
### Unified Proof of the Generalized Riemann Hypothesis and Computational Complexity — `3f28be14404a`

Idea: `idea:unpublished-v3:3f28be14404a64ea:recomposition-upper-bound-not-separation`. Outcome: **unresolved**; main claim unresolved.

Current broader-search assessment: **obstruction-only**, main claim unresolved. [Further paper and pinned Lean evidence](remaining-idea-target-search.md#3f28be14404a64ea-recomposition-upper-bound-not-separation).

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and upstream Lean evidence](unresolved-idea-broader-search.md#3f28be14404a64ea-recomposition-upper-bound-not-separation).

The unified proof asserts sieve-fixed-point zero alignment and an exponential recomposition barrier T=O(2^n) as a proof of P≠NP.

The complexity page states T_recompose=O(2^n) without an all-algorithm lower bound. This is an upper-bound claim about a procedure, so neither finite recursion accounting nor an arithmetic sieve lemma is a concrete target for the asserted P≠NP separation.

Paper evidence (physical PDF page numbers):

- [p. 4](</Users/think/Desktop/MathematicsLibrary/NumberTheory/3f28be14404a--Unified_Proof_of_the_Generalized_Riemann_Hypothesis_and_Computational_Complexity__1_ (1).pdf#page=4>): “Exponential Recomposition Barrier”. Page-text SHA-256 `075ae668d72594331084056f406723b94b61d7c29c113560829a3fce112fa188`.
- [p. 4](</Users/think/Desktop/MathematicsLibrary/NumberTheory/3f28be14404a--Unified_Proof_of_the_Generalized_Riemann_Hypothesis_and_Computational_Complexity__1_ (1).pdf#page=4>): “4   Computational Complexity”. Page-text SHA-256 `075ae668d72594331084056f406723b94b61d7c29c113560829a3fce112fa188`.

Follow-up complete page read: 4. This selected page was already in the previous review; the short asset or relevant passage was reread, with no claim of new unseen content.

Lean candidates inspected:

- No concrete maintained declaration established. Negative search findings are limited to this inspection, not a proof that no suitable theorem exists.

Missing bridges:

- O(2^n) is an upper bound, not an exponential lower bound. A slow decomposition/recomposition algorithm cannot rule out all polynomial-time algorithms.
- Prove the sieve iteration converges and preserves the original function/zeros; symmetric fixed data need not force each zero onto the symmetry axis.
- Keep contragredient/conjugate characters, gamma factors and symmetric-power existence hypotheses.
- Specify the computation model and prove the universal lower bound; keep upper bounds and algorithm-specific costs distinct.

<a id="b799fd9cb24af2a3-recomposition-upper-bound-not-separation"></a>
### Unified Proof of the Generalized Riemann Hypothesis and Computational Complexity — `b799fd9cb24a`

Idea: `idea:unpublished-v3:b799fd9cb24af2a3:recomposition-upper-bound-not-separation`. Outcome: **unresolved**; main claim unresolved.

Current broader-search assessment: **obstruction-only**, main claim unresolved. [Further paper and pinned Lean evidence](remaining-idea-target-search.md#b799fd9cb24af2a3-recomposition-upper-bound-not-separation).

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and upstream Lean evidence](unresolved-idea-broader-search.md#b799fd9cb24af2a3-recomposition-upper-bound-not-separation).

The unified proof asserts sieve-fixed-point zero alignment and an exponential recomposition barrier T=O(2^n) as a proof of P≠NP.

The complexity page states T_recompose=O(2^n) without an all-algorithm lower bound. This is an upper-bound claim about a procedure, so neither finite recursion accounting nor an arithmetic sieve lemma is a concrete target for the asserted P≠NP separation.

Paper evidence (physical PDF page numbers):

- [p. 4](</Users/think/Desktop/MathematicsLibrary/NumberTheory/b799fd9cb24a--Unified_Proof_of_the_Generalized_Riemann_Hypothesis_and_Computational_Complexity (1).pdf#page=4>): “Exponential Recomposition Barrier”. Page-text SHA-256 `0d9f901bc0bc9c755e5c0747e0fa805feabfb8a83d5526ed3c65a72208c8bbc9`.
- [p. 4](</Users/think/Desktop/MathematicsLibrary/NumberTheory/b799fd9cb24a--Unified_Proof_of_the_Generalized_Riemann_Hypothesis_and_Computational_Complexity (1).pdf#page=4>): “2     Computational Complexity”. Page-text SHA-256 `0d9f901bc0bc9c755e5c0747e0fa805feabfb8a83d5526ed3c65a72208c8bbc9`.

Follow-up complete page read: 4. This selected page was already in the previous review; the short asset or relevant passage was reread, with no claim of new unseen content.

Lean candidates inspected:

- No concrete maintained declaration established. Negative search findings are limited to this inspection, not a proof that no suitable theorem exists.

Missing bridges:

- O(2^n) is an upper bound, not an exponential lower bound. A slow decomposition/recomposition algorithm cannot rule out all polynomial-time algorithms.
- Prove the sieve iteration converges and preserves the original function/zeros; symmetric fixed data need not force each zero onto the symmetry axis.
- Keep contragredient/conjugate characters, gamma factors and symmetric-power existence hypotheses.
- Specify the computation model and prove the universal lower bound; keep upper bounds and algorithm-specific costs distinct.

<a id="d7819c0364c77a97-status-assertions-not-proof-evidence"></a>
### Updated Verification of Recursive Refinement Framework — `d7819c0364c7`

Idea: `idea:unpublished-v3:d7819c0364c77a97:status-assertions-not-proof-evidence`. Outcome: **unresolved**; main claim unresolved.

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and pinned Lean evidence](remaining-idea-target-search.md#d7819c0364c77a97-status-assertions-not-proof-evidence).

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and upstream Lean evidence](unresolved-idea-broader-search.md#d7819c0364c77a97-status-assertions-not-proof-evidence).

The status note declares Axioms 1/5, mixed-source consistency and zero independence resolved while listing remaining cross-term and higher-dimensional bounds.

The status page calls a uniform bounded-error axiom resolved but does not exhibit its quantitative source inequality. Polynomial-to-subexponential conversion retains a different constant for every positive rate and cannot justify a rate-zero uniform bound. It is a rejected substitute for the cited source proof.

Paper evidence (physical PDF page numbers):

- [p. 2](</Users/think/Desktop/MathematicsLibrary/NumberTheory/d7819c0364c7--Updated_Verification_of_Recursive_Refinement_Framework (2).pdf#page=2>): “Statistical Independence of Zeros”. Page-text SHA-256 `b949895416d938edf5079487f3f65be80e0f8ca1acb84eceda5b3d93d367c973`.
- [p. 3](</Users/think/Desktop/MathematicsLibrary/NumberTheory/d7819c0364c7--Updated_Verification_of_Recursive_Refinement_Framework (2).pdf#page=3>): “Error Bounds for Mixed Automorphic Forms”. Page-text SHA-256 `c387efc0635800128e43a12a348f65f43c6ac5e364f4aa0df95d3701d94a85d4`.
- [p. 1](</Users/think/Desktop/MathematicsLibrary/NumberTheory/d7819c0364c7--Updated_Verification_of_Recursive_Refinement_Framework (2).pdf#page=1>): “Updated Verification of Recursive Refinement”. Page-text SHA-256 `7d7c35049871f94b14430d67322c1c07daaf6264263287c8eb07eee6f2449eb5`.

Follow-up complete page read: 1. This adds a page beyond the previously recorded review.

Lean candidates inspected:

- **rejected-candidate**: [`GRWTSK.RiemannHypothesis.CCC.subexponentialUpper_of_polynomial`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/Analysis/Asymptotics/PolynomialSubexponential.lean#L55-L64), `GRWTSK/Analysis/Asymptotics/PolynomialSubexponential.lean:55–64`. Given an actual global polynomial upper bound with nonnegative constant, obtain an upper exponential bound for every strictly positive rate, each with its own constant. No rate-zero bound, fitted-law certification, variance decay or arithmetic supplier.

Missing bridges:

- Verify the cited Axiom 1 uniform bound versus its growing estimates and Axiom 5 rate versus normalized convergence.
- Zero correlation is weaker than independence; retain RH/GRH premises in the cited independence argument.
- The acknowledged mixed cross-term bounds remain missing. Status labels and future numerical validation do not discharge them.
- Resolve the underlying references and preserve their exact rate, normalization and RH/GRH premises.

## Mathematical physics — 5 versions

<a id="6948b3b1a6b97ffd-empirical-power-law"></a>
### Error Scaling in Energy Functional Deviations: A Modular Framework for Exceptional, Classical, and Mixed Lie Groups — `6948b3b1a6b9`

Idea: `idea:unpublished-v3:6948b3b1a6b97ffd:empirical-power-law`. Outcome: **analogy-only**; main claim unresolved.

A fitted model log10(∆E)=−3.718 log10(s)+1.300 log10(dimπ)−2.821 is promoted to a cross-group scaling law.

The abstract and introduction describe a model derived from numerical analysis. PolynomialSubexponential converts a supplied global polynomial upper bound into positive-rate exponential bounds, but does not certify the fitted inverse-power law or its uniform dimension dependence.

Paper evidence (physical PDF page numbers):

- [p. 2](</Users/think/Desktop/MathematicsLibrary/NumberTheory/6948b3b1a6b9--Fill (1).pdf#page=2>): “The error scaling model quantifies”. Page-text SHA-256 `0d148ce073d94c11889fb37f7bb3ff292ba6c9decfe222ef04359d39ea3df2ad`.
- [p. 3](</Users/think/Desktop/MathematicsLibrary/NumberTheory/6948b3b1a6b9--Fill (1).pdf#page=3>): “Strong asymptotic stabilization”. Page-text SHA-256 `c27d8795318663c6321db0b6e4ae534d8347a6baf4efeb563447e604359756c3`.
- [p. 1](</Users/think/Desktop/MathematicsLibrary/NumberTheory/6948b3b1a6b9--Fill (1).pdf#page=1>): “Error Scaling in Energy Functional”. Page-text SHA-256 `9777c23c6e3f99044bba2d9bc23d4112a58a1f178895177b24dfbd4eb519f06a`.

Follow-up complete page read: 1. This adds a page beyond the previously recorded review.

Lean candidates inspected:

- **analogy-only**: [`GRWTSK.RiemannHypothesis.CCC.subexponentialUpper_of_polynomial`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/Analysis/Asymptotics/PolynomialSubexponential.lean#L55-L64), `GRWTSK/Analysis/Asymptotics/PolynomialSubexponential.lean:55–64`. Given an actual global polynomial upper bound with nonnegative constant, obtain an upper exponential bound for every strictly positive rate, each with its own constant. No rate-zero bound, fitted-law certification, variance decay or arithmetic supplier.

Missing bridges:

- Define ∆E and its normalization for each representation and distinguish fitted numerical coefficients from rigorously enclosed constants.
- Fixed-dimension decay of the model is not uniform in growing representation dimension. Prove the needed joint bound rather than extrapolating the plotted fit.
- Prove a global nonnegative envelope with dimension-dependent constants and a valid parameter substitution before applying the comparison lemma.

<a id="939947621e220181-empirical-power-law"></a>
### Error Scaling in Energy Functional Deviations: A Modular Framework for Exceptional, Classical, and Mixed Lie Groups — `939947621e22`

Idea: `idea:unpublished-v3:939947621e220181:empirical-power-law`. Outcome: **analogy-only**; main claim unresolved.

A fitted model log10(∆E)=−3.718 log10(s)+1.300 log10(dimπ)−2.821 is promoted to a cross-group scaling law.

The abstract and introduction describe a model derived from numerical analysis. PolynomialSubexponential converts a supplied global polynomial upper bound into positive-rate exponential bounds, but does not certify the fitted inverse-power law or its uniform dimension dependence.

Paper evidence (physical PDF page numbers):

- [p. 2](</Users/think/Desktop/MathematicsLibrary/NumberTheory/939947621e22--Fill (2).pdf#page=2>): “The error scaling model quantifies”. Page-text SHA-256 `0d148ce073d94c11889fb37f7bb3ff292ba6c9decfe222ef04359d39ea3df2ad`.
- [p. 3](</Users/think/Desktop/MathematicsLibrary/NumberTheory/939947621e22--Fill (2).pdf#page=3>): “Strong asymptotic stabilization”. Page-text SHA-256 `c27d8795318663c6321db0b6e4ae534d8347a6baf4efeb563447e604359756c3`.
- [p. 1](</Users/think/Desktop/MathematicsLibrary/NumberTheory/939947621e22--Fill (2).pdf#page=1>): “Error Scaling in Energy Functional”. Page-text SHA-256 `9777c23c6e3f99044bba2d9bc23d4112a58a1f178895177b24dfbd4eb519f06a`.

Follow-up complete page read: 1. This adds a page beyond the previously recorded review.

Lean candidates inspected:

- **analogy-only**: [`GRWTSK.RiemannHypothesis.CCC.subexponentialUpper_of_polynomial`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/Analysis/Asymptotics/PolynomialSubexponential.lean#L55-L64), `GRWTSK/Analysis/Asymptotics/PolynomialSubexponential.lean:55–64`. Given an actual global polynomial upper bound with nonnegative constant, obtain an upper exponential bound for every strictly positive rate, each with its own constant. No rate-zero bound, fitted-law certification, variance decay or arithmetic supplier.

Missing bridges:

- Define ∆E and its normalization for each representation and distinguish fitted numerical coefficients from rigorously enclosed constants.
- Fixed-dimension decay of the model is not uniform in growing representation dimension. Prove the needed joint bound rather than extrapolating the plotted fit.
- Prove a global nonnegative envelope with dimension-dependent constants and a valid parameter substitution before applying the comparison lemma.

<a id="404255208b9d6243-gap-flow-and-prime-lattice"></a>
### Spectral Gaps, Time-Asymptotic Behavior, and Lattice Models for Primes — `404255208b9d`

Idea: `idea:unpublished-v3:404255208b9d6243:gap-flow-and-prime-lattice`. Outcome: **analogy-only**; main claim unresolved.

The draft differentiates adjacent spectral eigenvalues, posits a continuum density PDE and a prime-position lattice potential, then asserts asymptotic stability.

The lattice body gives undamped second-order equations after a potential-energy equilibrium calculation. Finite positive Hodge heat has a genuine exponential damping inequality for explicitly diagonal first-order heat modes, not for this conservative lattice. The continuum negative-diffusion sign and full coupled Hessian still need repair.

Paper evidence (physical PDF page numbers):

- [p. 3](</Users/think/Desktop/MathematicsLibrary/NumberTheory/404255208b9d--Spectral_Gaps__Time_Asymptotic_Behavior__and_Lattice_Models_for_Primes (4).pdf#page=3>): “Stability Analysis”. Page-text SHA-256 `29bdad4a22640f32750068653ba978c8aac9cf150f41c83740dd9295a53e6b7b`.
- [p. 3](</Users/think/Desktop/MathematicsLibrary/NumberTheory/404255208b9d--Spectral_Gaps__Time_Asymptotic_Behavior__and_Lattice_Models_for_Primes (4).pdf#page=3>): “Lattice Dynamics”. Page-text SHA-256 `29bdad4a22640f32750068653ba978c8aac9cf150f41c83740dd9295a53e6b7b`.
- [p. 3](</Users/think/Desktop/MathematicsLibrary/NumberTheory/404255208b9d--Spectral_Gaps__Time_Asymptotic_Behavior__and_Lattice_Models_for_Primes (4).pdf#page=3>): “We define the total potential energy V of the system as:”. Page-text SHA-256 `29bdad4a22640f32750068653ba978c8aac9cf150f41c83740dd9295a53e6b7b`.

Follow-up complete page read: 3. This selected page was already in the previous review; the short asset or relevant passage was reread, with no claim of new unseen content.

Lean candidates inspected:

- **analogy-only**: [`GRWTSK.LinearAlgebra.FinitePositiveHodgeHeat.heat_gap_contracts`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/LinearAlgebra/FinitePositiveHodgeHeatBounds.lean#L12-L55), `GRWTSK/LinearAlgebra/FinitePositiveHodgeHeatBounds.lean:12–55`. Finite explicitly diagonal heat obeys squared-norm damping exp(−2*t*γ) when t≥0 and γ≤a(i)^2 for every mode. Strict decay requires γ>0. No undamped second-order stability, forced-PDE estimate, Ricci flow or arithmetic realization is supplied.

Missing bridges:

- Derive the PDE and specify D and nonlinear terms; the displayed negative diffusion sign requires analysis.
- Recompute the full Hessian including off-diagonal couplings and signs, and prove actual prime positions satisfy the equilibrium equations.
- Undamped second-order conservative lattice dynamics need not decay even with positive Hessian. Supply damping/Lyapunov dissipation and an arithmetic source bridge.
- Derive a dissipative arithmetic model with a complete Hessian, actual spectral gap and a justified map to the finite heat coordinates.

<a id="9b67b1410fb61cb6-gap-flow-and-prime-lattice"></a>
### Spectral Gaps, Time-Asymptotic Behavior, and Lattice Models for Primes — `9b67b1410fb6`

Idea: `idea:unpublished-v3:9b67b1410fb61cb6:gap-flow-and-prime-lattice`. Outcome: **analogy-only**; main claim unresolved.

The draft differentiates adjacent spectral eigenvalues, posits a continuum density PDE and a prime-position lattice potential, then asserts asymptotic stability.

The lattice body gives undamped second-order equations after a potential-energy equilibrium calculation. Finite positive Hodge heat has a genuine exponential damping inequality for explicitly diagonal first-order heat modes, not for this conservative lattice. The continuum negative-diffusion sign and full coupled Hessian still need repair.

Paper evidence (physical PDF page numbers):

- [p. 3](</Users/think/Desktop/MathematicsLibrary/NumberTheory/9b67b1410fb6--Spectral_Gaps__Time_Asymptotic_Behavior__and_Lattice_Models_for_Primes (3).pdf#page=3>): “Stability Analysis”. Page-text SHA-256 `29bdad4a22640f32750068653ba978c8aac9cf150f41c83740dd9295a53e6b7b`.
- [p. 3](</Users/think/Desktop/MathematicsLibrary/NumberTheory/9b67b1410fb6--Spectral_Gaps__Time_Asymptotic_Behavior__and_Lattice_Models_for_Primes (3).pdf#page=3>): “Lattice Dynamics”. Page-text SHA-256 `29bdad4a22640f32750068653ba978c8aac9cf150f41c83740dd9295a53e6b7b`.
- [p. 3](</Users/think/Desktop/MathematicsLibrary/NumberTheory/9b67b1410fb6--Spectral_Gaps__Time_Asymptotic_Behavior__and_Lattice_Models_for_Primes (3).pdf#page=3>): “We define the total potential energy V of the system as:”. Page-text SHA-256 `29bdad4a22640f32750068653ba978c8aac9cf150f41c83740dd9295a53e6b7b`.

Follow-up complete page read: 3. This selected page was already in the previous review; the short asset or relevant passage was reread, with no claim of new unseen content.

Lean candidates inspected:

- **analogy-only**: [`GRWTSK.LinearAlgebra.FinitePositiveHodgeHeat.heat_gap_contracts`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/LinearAlgebra/FinitePositiveHodgeHeatBounds.lean#L12-L55), `GRWTSK/LinearAlgebra/FinitePositiveHodgeHeatBounds.lean:12–55`. Finite explicitly diagonal heat obeys squared-norm damping exp(−2*t*γ) when t≥0 and γ≤a(i)^2 for every mode. Strict decay requires γ>0. No undamped second-order stability, forced-PDE estimate, Ricci flow or arithmetic realization is supplied.

Missing bridges:

- Derive the PDE and specify D and nonlinear terms; the displayed negative diffusion sign requires analysis.
- Recompute the full Hessian including off-diagonal couplings and signs, and prove actual prime positions satisfy the equilibrium equations.
- Undamped second-order conservative lattice dynamics need not decay even with positive Hessian. Supply damping/Lyapunov dissipation and an arithmetic source bridge.
- Derive a dissipative arithmetic model with a complete Hessian, actual spectral gap and a justified map to the finite heat coordinates.

<a id="b1ddb7027564ed7a-gap-flow-and-prime-lattice"></a>
### Spectral Gaps, Time-Asymptotic Behavior, and Lattice Models for Primes — `b1ddb7027564`

Idea: `idea:unpublished-v3:b1ddb7027564ed7a:gap-flow-and-prime-lattice`. Outcome: **analogy-only**; main claim unresolved.

The draft differentiates adjacent spectral eigenvalues, posits a continuum density PDE and a prime-position lattice potential, then asserts asymptotic stability.

The lattice body gives undamped second-order equations after a potential-energy equilibrium calculation. Finite positive Hodge heat has a genuine exponential damping inequality for explicitly diagonal first-order heat modes, not for this conservative lattice. The continuum negative-diffusion sign and full coupled Hessian still need repair.

Paper evidence (physical PDF page numbers):

- [p. 3](</Users/think/Desktop/MathematicsLibrary/NumberTheory/b1ddb7027564--Spectral_Gaps__Time_Asymptotic_Behavior__and_Lattice_Models_for_Primes (2).pdf#page=3>): “Stability Analysis”. Page-text SHA-256 `29bdad4a22640f32750068653ba978c8aac9cf150f41c83740dd9295a53e6b7b`.
- [p. 3](</Users/think/Desktop/MathematicsLibrary/NumberTheory/b1ddb7027564--Spectral_Gaps__Time_Asymptotic_Behavior__and_Lattice_Models_for_Primes (2).pdf#page=3>): “Lattice Dynamics”. Page-text SHA-256 `29bdad4a22640f32750068653ba978c8aac9cf150f41c83740dd9295a53e6b7b`.
- [p. 3](</Users/think/Desktop/MathematicsLibrary/NumberTheory/b1ddb7027564--Spectral_Gaps__Time_Asymptotic_Behavior__and_Lattice_Models_for_Primes (2).pdf#page=3>): “We define the total potential energy V of the system as:”. Page-text SHA-256 `29bdad4a22640f32750068653ba978c8aac9cf150f41c83740dd9295a53e6b7b`.

Follow-up complete page read: 3. This selected page was already in the previous review; the short asset or relevant passage was reread, with no claim of new unseen content.

Lean candidates inspected:

- **analogy-only**: [`GRWTSK.LinearAlgebra.FinitePositiveHodgeHeat.heat_gap_contracts`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/LinearAlgebra/FinitePositiveHodgeHeatBounds.lean#L12-L55), `GRWTSK/LinearAlgebra/FinitePositiveHodgeHeatBounds.lean:12–55`. Finite explicitly diagonal heat obeys squared-norm damping exp(−2*t*γ) when t≥0 and γ≤a(i)^2 for every mode. Strict decay requires γ>0. No undamped second-order stability, forced-PDE estimate, Ricci flow or arithmetic realization is supplied.

Missing bridges:

- Derive the PDE and specify D and nonlinear terms; the displayed negative diffusion sign requires analysis.
- Recompute the full Hessian including off-diagonal couplings and signs, and prove actual prime positions satisfy the equilibrium equations.
- Undamped second-order conservative lattice dynamics need not decay even with positive Hessian. Supply damping/Lyapunov dissipation and an arithmetic source bridge.
- Derive a dissipative arithmetic model with a complete Hessian, actual spectral gap and a justified map to the finite heat coordinates.

## Number theory — 14 versions

<a id="0b423568798d1ce3-prime-research-roadmap"></a>
### A Holistic Strategy for Deriving Properties of Prime Numbers — `0b423568798d`

Idea: `idea:unpublished-v3:0b423568798d1ce3:prime-research-roadmap`. Outcome: **unresolved**; main claim unresolved.

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and pinned Lean evidence](remaining-idea-target-search.md#0b423568798d1ce3-prime-research-roadmap).

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and upstream Lean evidence](unresolved-idea-broader-search.md#0b423568798d1ce3-prime-research-roadmap).

The document proposes a research program joining zeta derivatives, prime-generation algorithms, motives and geometric visualizations; it states objectives rather than proving a prime-distribution theorem.

The additional page contains algebraic-number-theory and algorithmic objectives with Source 23/27 references. These are research objectives, not an algorithm specification or a quantitative prime theorem.

Paper evidence (physical PDF page numbers):

- [p. 1](</Users/think/Desktop/MathematicsLibrary/NumberTheory/0b423568798d--A_Holistic_Strategy_for_Deriving_Properties_of_Prime_Numbers (3).pdf#page=1>): “Analytic Number Theory”. Page-text SHA-256 `39a9fcea1d40a7413342a18358fee7b26bc3c11a1a7e3eda322c4818b889cfe1`.
- [p. 3](</Users/think/Desktop/MathematicsLibrary/NumberTheory/0b423568798d--A_Holistic_Strategy_for_Deriving_Properties_of_Prime_Numbers (3).pdf#page=3>): “Computational and Experimental Verification”. Page-text SHA-256 `22960f02b1cc371c3fad11641b450135c2f1b1060cbc7ebe69a36c069e42a617`.
- [p. 2](</Users/think/Desktop/MathematicsLibrary/NumberTheory/0b423568798d--A_Holistic_Strategy_for_Deriving_Properties_of_Prime_Numbers (3).pdf#page=2>): “3     Algebraic Number Theory and Primes in Fields”. Page-text SHA-256 `506eb036515e8f32eed5d026e1e8d76a66eba7e8c16a86ff40ccfebfd6517ba4`.

Follow-up complete page read: 2. This adds a page beyond the previously recorded review.

Lean candidates inspected:

- No concrete maintained declaration established. Negative search findings are limited to this inspection, not a proof that no suitable theorem exists.

Missing bridges:

- Replace each objective by a precise source identity or estimate with domains, constants and quantifiers before selecting a Lean theorem.
- The source-number citations are not an exact construction of a prime detector, algorithm correctness theorem or motive comparison.
- Choose a particular algorithm or source identity with an exact correctness or error claim before assigning a target.

<a id="76129703513fecd2-modular-residue-numerical-source-gap"></a>
### Residue Clustering, Modular Symmetry, and Connections to the Generalized Riemann Hypothesis — `76129703513f`

Idea: `idea:unpublished-v3:76129703513fecd2:modular-residue-numerical-source-gap`. Outcome: **conditional-fragment**; main claim unresolved.

Numerical modular residues are reported to decay and nearly cancel under SL₂(Z), then interpreted as support for automorphic zero alignment.

The modular transformation law and contour-residue definition admit a concrete local multiplication fragment: multiplying a simple principal part by an analytic weight changes the coefficient to c*M(a) and also changes its regular part. The theorem does not perform the Möbius change of variable or account for its Jacobian.

Paper evidence (physical PDF page numbers):

- [p. 2](</Users/think/Desktop/MathematicsLibrary/NumberTheory/76129703513f--Residue_Clustering__Modular_Symmetry__and_Connections_to_the_Generalized_Riemann_Hypothesis (2).pdf#page=2>): “High-Precision Residue Values”. Page-text SHA-256 `7fcfb93ea826110ca551ff1f3430a97a81212604f1bd56132e2cfeeefe6b1fb2`.
- [p. 2](</Users/think/Desktop/MathematicsLibrary/NumberTheory/76129703513f--Residue_Clustering__Modular_Symmetry__and_Connections_to_the_Generalized_Riemann_Hypothesis (2).pdf#page=2>): “Magnitude Decay and Symmetry”. Page-text SHA-256 `7fcfb93ea826110ca551ff1f3430a97a81212604f1bd56132e2cfeeefe6b1fb2`.
- [p. 2](</Users/think/Desktop/MathematicsLibrary/NumberTheory/76129703513f--Residue_Clustering__Modular_Symmetry__and_Connections_to_the_Generalized_Riemann_Hypothesis (2).pdf#page=2>): “2.2    Residues of Modular Functions”. Page-text SHA-256 `7fcfb93ea826110ca551ff1f3430a97a81212604f1bd56132e2cfeeefe6b1fb2`.

Follow-up complete page read: 2. This selected page was already in the previous review; the short asset or relevant passage was reread, with no claim of new unseen content.

Lean candidates inspected:

- **conditional-fragment**: [`GRWTSK.Analysis.Complex.FinitePoleSubtraction.principal_part_mul`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/Analysis/Complex/FinitePoleSubtraction.lean#L35-L49), `GRWTSK/Analysis/Complex/FinitePoleSubtraction.lean:35–49`. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. An analytic multiplier changes a supplied simple-pole coefficient c to c*M(a), with a new analytic regular part. No coordinate change, Jacobian or infinite-product theorem is supplied.

Missing bridges:

- Specify the actual function and whether τ=1,2,… denotes boundary points or points in the upper half-plane; record contour and precision/error certificates.
- Derive the transformation of f(z)dz including its Jacobian. Near-zero floating values do not prove vanishing at all modular translates.
- Construct an exact comparison from this residue consumer to zeros of a specified completed L-function; decay and symmetry alone do not imply critical-line alignment.
- Construct the actual modular function and punctured local expansion; prove the coordinate-change/Jacobian law.
- Reported near-zero residues and a decay fit still do not establish zero exclusion.

<a id="c6b61ffc72f602af-modular-residue-numerical-source-gap"></a>
### Residue Clustering, Modular Symmetry, and Connections to the Generalized Riemann Hypothesis — `c6b61ffc72f6`

Idea: `idea:unpublished-v3:c6b61ffc72f602af:modular-residue-numerical-source-gap`. Outcome: **conditional-fragment**; main claim unresolved.

Numerical modular residues are reported to decay and nearly cancel under SL₂(Z), then interpreted as support for automorphic zero alignment.

The modular transformation law and contour-residue definition admit a concrete local multiplication fragment: multiplying a simple principal part by an analytic weight changes the coefficient to c*M(a) and also changes its regular part. The theorem does not perform the Möbius change of variable or account for its Jacobian.

Paper evidence (physical PDF page numbers):

- [p. 2](</Users/think/Desktop/MathematicsLibrary/NumberTheory/c6b61ffc72f6--Residue_Clustering__Modular_Symmetry__and_Connections_to_the_Generalized_Riemann_Hypothesis (1).pdf#page=2>): “High-Precision Residue Values”. Page-text SHA-256 `7fcfb93ea826110ca551ff1f3430a97a81212604f1bd56132e2cfeeefe6b1fb2`.
- [p. 2](</Users/think/Desktop/MathematicsLibrary/NumberTheory/c6b61ffc72f6--Residue_Clustering__Modular_Symmetry__and_Connections_to_the_Generalized_Riemann_Hypothesis (1).pdf#page=2>): “Magnitude Decay and Symmetry”. Page-text SHA-256 `7fcfb93ea826110ca551ff1f3430a97a81212604f1bd56132e2cfeeefe6b1fb2`.
- [p. 2](</Users/think/Desktop/MathematicsLibrary/NumberTheory/c6b61ffc72f6--Residue_Clustering__Modular_Symmetry__and_Connections_to_the_Generalized_Riemann_Hypothesis (1).pdf#page=2>): “2.2    Residues of Modular Functions”. Page-text SHA-256 `7fcfb93ea826110ca551ff1f3430a97a81212604f1bd56132e2cfeeefe6b1fb2`.

Follow-up complete page read: 2. This selected page was already in the previous review; the short asset or relevant passage was reread, with no claim of new unseen content.

Lean candidates inspected:

- **conditional-fragment**: [`GRWTSK.Analysis.Complex.FinitePoleSubtraction.principal_part_mul`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/Analysis/Complex/FinitePoleSubtraction.lean#L35-L49), `GRWTSK/Analysis/Complex/FinitePoleSubtraction.lean:35–49`. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. An analytic multiplier changes a supplied simple-pole coefficient c to c*M(a), with a new analytic regular part. No coordinate change, Jacobian or infinite-product theorem is supplied.

Missing bridges:

- Specify the actual function and whether τ=1,2,… denotes boundary points or points in the upper half-plane; record contour and precision/error certificates.
- Derive the transformation of f(z)dz including its Jacobian. Near-zero floating values do not prove vanishing at all modular translates.
- Construct an exact comparison from this residue consumer to zeros of a specified completed L-function; decay and symmetry alone do not imply critical-line alignment.
- Construct the actual modular function and punctured local expansion; prove the coordinate-change/Jacobian law.
- Reported near-zero residues and a decay fit still do not establish zero exclusion.

<a id="d00d427aef3a27d8-rmt-langlands-survey-boundary"></a>
### A Comprehensive Exploration of the Generalized Riemann Hypothesis — `d00d427aef3a`

Idea: `idea:unpublished-v3:d00d427aef3a27d8:rmt-langlands-survey-boundary`. Outcome: **unresolved**; main claim unresolved.

Current broader-search assessment: **repair-candidate**, main claim unresolved. [Further paper and pinned Lean evidence](remaining-idea-target-search.md#d00d427aef3a27d8-rmt-langlands-survey-boundary).

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and upstream Lean evidence](unresolved-idea-broader-search.md#d00d427aef3a27d8-rmt-langlands-survey-boundary).

The survey connects local/global Langlands representations, trace formulas and random-matrix zero-spacing analogies with speculative approaches to GRH.

The additional survey, sheaf or statistical discussion still supplies no deterministic implication from local/limiting spacing data to the location of every zero. The inspected zeta reflection theorem is exact symmetry for a specific nontrivial-zero predicate, not local Euler-factor symmetry or universal automorphic GRH.

Paper evidence (physical PDF page numbers):

- [p. 6](</Users/think/Desktop/MathematicsLibrary/NumberTheory/d00d427aef3a--A_Comprehensive_Exploration_of_the_Generalized_Riemann_Hypothesis (1).pdf#page=6>): “Langlands Correspondences”. Page-text SHA-256 `bdaa5afd57bb92160e4fb31216fc67ed433964e589caeb9ae2df85aed2ed4fe4`.
- [p. 8](</Users/think/Desktop/MathematicsLibrary/NumberTheory/d00d427aef3a--A_Comprehensive_Exploration_of_the_Generalized_Riemann_Hypothesis (1).pdf#page=8>): “Universality and the GUE Conjecture”. Page-text SHA-256 `4c6436f25c2386c8f0d93770808b15d25f422cdb640e630e84c137dc97594d9b`.
- [p. 11](</Users/think/Desktop/MathematicsLibrary/NumberTheory/d00d427aef3a--A_Comprehensive_Exploration_of_the_Generalized_Riemann_Hypothesis (1).pdf#page=11>): “5.6    Future Directions in Computational Verification”. Page-text SHA-256 `6408cfa885b825568438b5009f73ab1f4d998c33a34f9895585a1ae81ec0c43f`.

Follow-up complete page read: 11. This adds a page beyond the previously recorded review.

Lean candidates inspected:

- **rejected-candidate**: [`GRWTSK.RiemannHypothesis.NontrivialZetaZero.reflect`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean#L74-L95), `GRWTSK/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean:74–95`. The exact nontrivial Riemann zeta zero predicate transports under s↦1−s; no off-line exclusion.

Missing bridges:

- State the exact proven versus conjectural local/global correspondence for each group; do not assume a general global bijection.
- Correct/define unfolded spacing and distinguish pair correlation from nearest-neighbor laws and finite samples. A symmetry-type analogy does not transfer GRH between families.
- Retain the speculative and empirical scope of the machine-learning/quantum/statistical proposals and do not treat the survey bibliography as source verification.
- Prove the source-specific local/global comparison and an independent deterministic exclusion theorem with all conductor, dual and tail data.

<a id="f8f7f4692f9a8412-local-clustering-symmetry-gap"></a>
### A Proof of the Generalized Riemann Hypothesis via Residue Clustering Laws — `f8f7f4692f9a`

Idea: `idea:unpublished-v3:f8f7f4692f9a8412:local-clustering-symmetry-gap`. Outcome: **unresolved**; main claim unresolved.

Current broader-search assessment: **conditional-fragment**, main claim unresolved. [Further paper and upstream Lean evidence](unresolved-idea-broader-search.md#f8f7f4692f9a8412-local-clustering-symmetry-gap).

The longer version defines a prime-local Hecke series as a clustering density and asserts reflection symmetry and universal GUE statistics across discrete, continuous and mixed sources.

The additional survey, sheaf or statistical discussion still supplies no deterministic implication from local/limiting spacing data to the location of every zero. The inspected zeta reflection theorem is exact symmetry for a specific nontrivial-zero predicate, not local Euler-factor symmetry or universal automorphic GRH.

Paper evidence (physical PDF page numbers):

- [p. 7](</Users/think/Desktop/MathematicsLibrary/NumberTheory/f8f7f4692f9a--Grh (1).pdf#page=7>): “Residue Clustering Densities and RMT”. Page-text SHA-256 `57094442a0e82a63f042bbfcc0fd3d3aa87e2ca5c5392abf21b8841f42ce21bf`.
- [p. 7](</Users/think/Desktop/MathematicsLibrary/NumberTheory/f8f7f4692f9a--Grh (1).pdf#page=7>): “Statistical Universality”. Page-text SHA-256 `57094442a0e82a63f042bbfcc0fd3d3aa87e2ca5c5392abf21b8841f42ce21bf`.
- [p. 8](</Users/think/Desktop/MathematicsLibrary/NumberTheory/f8f7f4692f9a--Grh (1).pdf#page=8>): “The statistical universality of residue clustering densities reinforces their role in proving the GRH.”. Page-text SHA-256 `87eab5eefd3446dcaecb1e2d7d3e089df1383e121114d8bfa7c3aef5f4ac8e4f`.

Follow-up complete page read: 8. This adds a page beyond the previously recorded review.

Lean candidates inspected:

- **rejected-candidate**: [`GRWTSK.RiemannHypothesis.NontrivialZetaZero.reflect`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean#L74-L95), `GRWTSK/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean:74–95`. The exact nontrivial Riemann zeta zero predicate transports under s↦1−s; no off-line exclusion.

Missing bridges:

- Prove the claimed symmetry of the local series; a global functional equation does not give each Euler factor symmetry under s↦1−s.
- Specify the continuous spectral measure and mixed-source identity, unfolding and ensemble. The displayed nearest-neighbor surmise must not be equated with full GUE pair correlation.
- Provide verifiable data and an exact zero-exclusion bridge; finite numerical universality and placeholder references are not a proof for all groups.
- Prove the source-specific local/global comparison and an independent deterministic exclusion theorem with all conductor, dual and tail data.

<a id="ba422dcbe9ffc6fb-compact-integral-residue-alignment-gap"></a>
### Proof of the Generalized Riemann Hypothesis: Computational and Theoretical Integration — `ba422dcbe9ff`

Idea: `idea:unpublished-v3:ba422dcbe9ffc6fb:compact-integral-residue-alignment-gap`. Outcome: **unresolved**; main claim unresolved.

Current broader-search assessment: **conditional-fragment**, main claim unresolved. [Further paper and upstream Lean evidence](unresolved-idea-broader-search.md#ba422dcbe9ffc6fb-compact-integral-residue-alignment-gap).

The axiomatic proof infers global analytic continuation from compact subgroup integrals, then asserts inversion residue symmetry aligns zeros.

The axioms page repeats inversion antisymmetry and a higher-order correction bound. It does not supply analytic continuation of an infinite sum of compact integrals or a divisor-preserving Mellin identity. Zeta zero reflection is a rejected substitute for these analytic suppliers.

Paper evidence (physical PDF page numbers):

- [p. 6](</Users/think/Desktop/MathematicsLibrary/NumberTheory/ba422dcbe9ff--Proof_of_the_Generalized_Riemann_Hypothesis__Computational_and_Theoretical_Integration (9).pdf#page=6>): “Lemma 1: Bounded Residues from Modular Periodicity”. Page-text SHA-256 `80e80ee0698c0cc24d7b0faabb2fe6c7cb2aff0f15c18dd53dd032b5ec95e377`.
- [p. 7](</Users/think/Desktop/MathematicsLibrary/NumberTheory/ba422dcbe9ff--Proof_of_the_Generalized_Riemann_Hypothesis__Computational_and_Theoretical_Integration (9).pdf#page=7>): “Lemma 2: Residue Symmetry Aligns Zeros”. Page-text SHA-256 `21d4775281142310e76a1476197c14be892f29eecf0dce73bf463e5df50300f2`.
- [p. 5](</Users/think/Desktop/MathematicsLibrary/NumberTheory/ba422dcbe9ff--Proof_of_the_Generalized_Riemann_Hypothesis__Computational_and_Theoretical_Integration (9).pdf#page=5>): “2.2   Axiom 2: Residue Symmetry”. Page-text SHA-256 `8a848ec49b28a7e3bced5b4e6c0254ebfb25758de10bf73504b01174e2aa9032`.

Follow-up complete page read: 5. This adds a page beyond the previously recorded review.

Lean candidates inspected:

- **rejected-candidate**: [`GRWTSK.RiemannHypothesis.NontrivialZetaZero.reflect`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean#L74-L95), `GRWTSK/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean:74–95`. The exact nontrivial Riemann zeta zero predicate transports under s↦1−s; no off-line exclusion.

Missing bridges:

- The sum over infinitely many Γ translates of the same compact integral needs convergence/fundamental-domain weights; compactness alone does not make that sum finite.
- Finite compact integrals do not by themselves continue an L-function globally. Prove the parameter-dependent analytic continuation.
- Ψ(x)+Ψ(1/x)=0 and the printed an∼a(n−1) do not imply zero location without an exact Mellin/source and exclusion theorem. Monte Carlo tolerance is not proof of equality.
- Prove convergence, parameter-dependent holomorphy and the exact source/zero comparison before applying a symmetry theorem.

<a id="0523b6d449088321-modular-j-density-countercheck"></a>
### Residue Clustering Laws and the Proof of the Generalized Riemann Hypothesis — `0523b6d44908`

Idea: `idea:unpublished-v3:0523b6d449088321:modular-j-density-countercheck`. Outcome: **unresolved**; main claim unresolved.

Current broader-search assessment: **corrective-fragment**, main claim unresolved. [Further paper and upstream Lean evidence](unresolved-idea-broader-search.md#0523b6d449088321-modular-j-density-countercheck).

The clustering law derives a prime-local density from positive f(J(τ)), then claims reflection, boundedness on H and automorphy enforcement.

The later zero-localization discussion invokes functional symmetry and universality, but supplies no valid reflection identity for the printed prime-power density. The maintained zeta reflection theorem cannot repair an incorrect reciprocal-power calculation, a map leaving the upper half-plane, or a pole residue confused with a BSD leading coefficient.

Paper evidence (physical PDF page numbers):

- [p. 8](</Users/think/Desktop/MathematicsLibrary/NumberTheory/0523b6d44908--Residue_Clustering_Laws_and_the_Proof_of_the_Generalized_Riemann_Hypothesis (3).pdf#page=8>): “Theorem 4.2”. Page-text SHA-256 `eb6dd40faebfd8abca5b1da78da40fb38e7f94cf9b04673c53802142d15c7c32`.
- [p. 8](</Users/think/Desktop/MathematicsLibrary/NumberTheory/0523b6d44908--Residue_Clustering_Laws_and_the_Proof_of_the_Generalized_Riemann_Hypothesis (3).pdf#page=8>): “Theorem 4.3”. Page-text SHA-256 `eb6dd40faebfd8abca5b1da78da40fb38e7f94cf9b04673c53802142d15c7c32`.
- [p. 11](</Users/think/Desktop/MathematicsLibrary/NumberTheory/0523b6d44908--Residue_Clustering_Laws_and_the_Proof_of_the_Generalized_Riemann_Hypothesis (3).pdf#page=11>): “Theorem 5.1”. Page-text SHA-256 `1f06a7b8e487e59a5f6d65399fbfac307833e1667158459dc83a474899cd8cc8`.
- [p. 12](</Users/think/Desktop/MathematicsLibrary/NumberTheory/0523b6d44908--Residue_Clustering_Laws_and_the_Proof_of_the_Generalized_Riemann_Hypothesis (3).pdf#page=12>): “Connection to Residue Clustering and GRH”. Page-text SHA-256 `32645ca867aef1c46718d2d03e75d881c8dd501009c034cb2a8659b09a2aaf51`.

Follow-up complete page read: 12. This adds a page beyond the previously recorded review.

Lean candidates inspected:

- **rejected-candidate**: [`GRWTSK.RiemannHypothesis.NontrivialZetaZero.reflect`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean#L74-L95), `GRWTSK/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean:74–95`. The exact nontrivial Riemann zeta zero predicate transports under s↦1−s; no off-line exclusion.

Missing bridges:

- The denominator p^(Re(s)−1/2) changes under reflection, so fixed positive f(J) does not supply the printed equality except special cases.
- Holomorphicity on H does not imply boundedness on the noncompact quotient/cusp; prove actual cusp bounds.
- τ↦1−τ does not preserve H. Construct a valid modular involution/source map and an actual converse theorem, not an automorphy assertion from three modeled density properties.
- Repair the density/involution on its actual domain and construct the completed-source comparison before any zero or BSD conclusion.

<a id="482cdae3e36c3e60-modular-density-and-bsd-residue-gap"></a>
### Residue Clustering and the Proof of the Generalized Riemann Hypothesis — `482cdae3e36c`

Idea: `idea:unpublished-v3:482cdae3e36c3e60:modular-density-and-bsd-residue-gap`. Outcome: **unresolved**; main claim unresolved.

Current broader-search assessment: **corrective-fragment**, main claim unresolved. [Further paper and upstream Lean evidence](unresolved-idea-broader-search.md#482cdae3e36c3e60-modular-density-and-bsd-residue-gap).

The density model asserts modular integral positivity/reflection and then a positive residue of elliptic L(s,E) at1 as support for BSD.

The later zero-localization discussion invokes functional symmetry and universality, but supplies no valid reflection identity for the printed prime-power density. The maintained zeta reflection theorem cannot repair an incorrect reciprocal-power calculation, a map leaving the upper half-plane, or a pole residue confused with a BSD leading coefficient.

Paper evidence (physical PDF page numbers):

- [p. 5](</Users/think/Desktop/MathematicsLibrary/NumberTheory/482cdae3e36c--Residue_Clustering_and_the_Proof_of_the_Generalized_Riemann_Hypothesis (1).pdf#page=5>): “Birch and Swinnerton-Dyer Conjecture”. Page-text SHA-256 `4351999ffdad49cfa196a71a1c1cd38092cc64527759d789ef00f86245a73ccb`.
- [p. 3](</Users/think/Desktop/MathematicsLibrary/NumberTheory/482cdae3e36c--Residue_Clustering_and_the_Proof_of_the_Generalized_Riemann_Hypothesis (1).pdf#page=3>): “Modular Corrections and Symmetry”. Page-text SHA-256 `341d57b75e2aab13aba2535324be303dded54e537a7e0a96ada484c871645a00`.
- [p. 2](</Users/think/Desktop/MathematicsLibrary/NumberTheory/482cdae3e36c--Residue_Clustering_and_the_Proof_of_the_Generalized_Riemann_Hypothesis (1).pdf#page=2>): “The Generalized Riemann Hypothesis (GRH) is one of the most profound and far-reaching”. Page-text SHA-256 `083d9edaab6980e5714817562dc4bd01344631bc263b19afb85426b62d266ffd`.

Follow-up complete page read: 2. This adds a page beyond the previously recorded review.

Lean candidates inspected:

- **rejected-candidate**: [`GRWTSK.RiemannHypothesis.NontrivialZetaZero.reflect`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean#L74-L95), `GRWTSK/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean:74–95`. The exact nontrivial Riemann zeta zero predicate transports under s↦1−s; no off-line exclusion.

Missing bridges:

- Prove real positivity of the complex modular integral and the actual s↦1−s transformation; τ↦1−τ is not an upper-half-plane modular action.
- Separate residue at a pole from leading Taylor coefficient at a central zero. For a holomorphic elliptic L-function the printed positive pole residue is not its BSD leading coefficient.
- Provide a genuine source/zero identity and missing prime-pattern arguments; GRH-style error control alone does not establish twin primes or binary Goldbach.
- Repair the density/involution on its actual domain and construct the completed-source comparison before any zero or BSD conclusion.

<a id="6900e23cd2e098fd-reciprocal-power-reflection-error"></a>
### Residue Clustering, Modular Symmetries, and the Generalized Riemann Hypothesis: Proof and Workflow — `6900e23cd2e0`

Idea: `idea:unpublished-v3:6900e23cd2e098fd:reciprocal-power-reflection-error`. Outcome: **unresolved**; main claim unresolved.

Current broader-search assessment: **corrective-fragment**, main claim unresolved. [Further paper and upstream Lean evidence](unresolved-idea-broader-search.md#6900e23cd2e098fd-reciprocal-power-reflection-error).

The workflow derives reflection by equating reciprocal prime powers and extends modular corrections to exceptional systems and Re(s)>1/2 nonvanishing.

The later zero-localization discussion invokes functional symmetry and universality, but supplies no valid reflection identity for the printed prime-power density. The maintained zeta reflection theorem cannot repair an incorrect reciprocal-power calculation, a map leaving the upper half-plane, or a pole residue confused with a BSD leading coefficient.

Paper evidence (physical PDF page numbers):

- [p. 4](</Users/think/Desktop/MathematicsLibrary/NumberTheory/6900e23cd2e0--Framework (1).pdf#page=4>): “Substituting the Taylor expansion”. Page-text SHA-256 `a5773449911a98032ef118efd6ea5b392bea4a50a204b9809ff28b412883bbe9`.
- [p. 4](</Users/think/Desktop/MathematicsLibrary/NumberTheory/6900e23cd2e0--Framework (1).pdf#page=4>): “Bounds on Clustering Densities”. Page-text SHA-256 `a5773449911a98032ef118efd6ea5b392bea4a50a204b9809ff28b412883bbe9`.
- [p. 9](</Users/think/Desktop/MathematicsLibrary/NumberTheory/6900e23cd2e0--Framework (1).pdf#page=9>): “Spectral Universality and Zero Spacing”. Page-text SHA-256 `7b3300cea13ea1daad486925a644124f0dd13597149d56aab558c721dcfd0d45`.

Follow-up complete page read: 9. This adds a page beyond the previously recorded review.

Lean candidates inspected:

- **rejected-candidate**: [`GRWTSK.RiemannHypothesis.NontrivialZetaZero.reflect`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean#L74-L95), `GRWTSK/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean:74–95`. The exact nontrivial Riemann zeta zero predicate transports under s↦1−s; no off-line exclusion.

Missing bridges:

- 1/p^(σ−1/2) is not 1/p^(1/2−σ) except at σ=1/2. Correct the core reflection calculation.
- A local Taylor approximation does not imply the printed global exponential bound without a quantified remainder/range.
- Construct exceptional modular invariants and the actual nonvanishing criterion. The text explicitly excepts Langlands reciprocity from its proved claims; preserve that premise.
- Repair the density/involution on its actual domain and construct the completed-source comparison before any zero or BSD conclusion.

<a id="47f41bdea32cea56-local-dirichlet-clustering-reflection-gap"></a>
### The Proof of the Generalized Riemann Hypothesis A Modular and Rigorous Approach — `47f41bdea32c`

Idea: `idea:unpublished-v3:47f41bdea32cea56:local-dirichlet-clustering-reflection-gap`. Outcome: **unresolved**; main claim unresolved.

Current broader-search assessment: **conditional-fragment**, main claim unresolved. [Further paper and upstream Lean evidence](unresolved-idea-broader-search.md#47f41bdea32cea56-local-dirichlet-clustering-reflection-gap).

The modular proof assigns ρ(p,χ,s)=Σχ(p^k)p^(−ks) and claims each prime-local series is reflection-symmetric, supported by numerical tolerances.

The additional survey, sheaf or statistical discussion still supplies no deterministic implication from local/limiting spacing data to the location of every zero. The inspected zeta reflection theorem is exact symmetry for a specific nontrivial-zero predicate, not local Euler-factor symmetry or universal automorphic GRH.

Paper evidence (physical PDF page numbers):

- [p. 14](</Users/think/Desktop/MathematicsLibrary/NumberTheory/47f41bdea32c--The_Proof_of_the_Generalized_Riemann_Hypothesis.pdf#page=14>): “Example: Dirichlet L-Functions”. Page-text SHA-256 `93162c23f45f9aa0f129755c67206032a27ac0a26a84d1ff8d3aedb391dc1b09`.
- [p. 14](</Users/think/Desktop/MathematicsLibrary/NumberTheory/47f41bdea32c--The_Proof_of_the_Generalized_Riemann_Hypothesis.pdf#page=14>): “Example: Modular Forms”. Page-text SHA-256 `93162c23f45f9aa0f129755c67206032a27ac0a26a84d1ff8d3aedb391dc1b09`.
- [p. 22](</Users/think/Desktop/MathematicsLibrary/NumberTheory/47f41bdea32c--The_Proof_of_the_Generalized_Riemann_Hypothesis.pdf#page=22>): “Random Matrix Ensembles and Disordered Systems”. Page-text SHA-256 `f386ad2edbdf3a94daaede60926d8a1b68a344289ecc31041dcd6e725c4e8d26`.

Follow-up complete page read: 22. This adds a page beyond the previously recorded review.

Lean candidates inspected:

- **rejected-candidate**: [`GRWTSK.RiemannHypothesis.NontrivialZetaZero.reflect`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean#L74-L95), `GRWTSK/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean:74–95`. The exact nontrivial Riemann zeta zero predicate transports under s↦1−s; no off-line exclusion.

Missing bridges:

- For a principal unramified local factor the geometric series depends on p^(−s) and is not generally invariant under s↦1−s. Prove/correct the density model.
- A global completed functional equation does not transfer separately to every prime-local series. Include all conductor/gamma/dual data.
- Checks below10⁻¹² for finitely many primes cannot establish exact symmetry, continuous/exceptional universality or exhaustive zero alignment.
- Prove the source-specific local/global comparison and an independent deterministic exclusion theorem with all conductor, dual and tail data.

<a id="a26ad58b00222955-arithmetic-residue-formula-scope"></a>
### The Riemann Hypothesis and Its Automorphic Generalizations: Comprehensive Insights into Unified Analytic, Spectral, and Geometric Structures — `a26ad58b0022`

Idea: `idea:unpublished-v3:a26ad58b00222955:arithmetic-residue-formula-scope`. Outcome: **unresolved**; main claim unresolved.

Current broader-search assessment: **conditional-fragment**, main claim unresolved. [Further paper and upstream Lean evidence](unresolved-idea-broader-search.md#a26ad58b00222955-arithmetic-residue-formula-scope).

The synthesis links compactified boundary traces to zero suppression and prints a universal scheme-zeta residue formula using regulator, Picard torsion, Sha and Tamagawa factors.

The obstruction list acknowledges that vanishing and Tamagawa-type residue comparisons remain partial or conjectural. Generic cycle-class transport cannot supply the arithmetic leading term, finiteness premises or the boundary trace identity.

Paper evidence (physical PDF page numbers):

- [p. 15](</Users/think/Desktop/MathematicsLibrary/NumberTheory/a26ad58b0022--The_Riemann_Hypothesis_and_Its_Automorphic_Generalizations__Comprehensive_Insights_into_Unified_Analytic__Spectral__and_Geometric_Structures (3).pdf#page=15>): “Arithmetic Zeta Functions”. Page-text SHA-256 `17661ff7cb8ed763f07f8d3cd8175cbf7f15ef6e315d2b33ff34832c4e07c2f1`.
- [p. 6](</Users/think/Desktop/MathematicsLibrary/NumberTheory/a26ad58b0022--The_Riemann_Hypothesis_and_Its_Automorphic_Generalizations__Comprehensive_Insights_into_Unified_Analytic__Spectral__and_Geometric_Structures (3).pdf#page=6>): “Boundary Conditions and Residue Localization:”. Page-text SHA-256 `da68efb15a2c06936173f684620b32e20223c7507441ee90fdf7091897651b50`.
- [p. 23](</Users/think/Desktop/MathematicsLibrary/NumberTheory/a26ad58b0022--The_Riemann_Hypothesis_and_Its_Automorphic_Generalizations__Comprehensive_Insights_into_Unified_Analytic__Spectral__and_Geometric_Structures (3).pdf#page=23>): “• **Resolution:** Validate using the full formalism of geometric Langlands theory as”. Page-text SHA-256 `14a93666668f525faa1fc4cea7aa16fddf6679e4e3496a12cc65ae61751dfe03`.

Follow-up complete page read: 23. This adds a page beyond the previously recorded review.

Lean candidates inspected:

- **rejected-candidate**: [`GRWTSK.Geometry.Hodge.RationalHodgeTransport.CycleClassEquiv.surjective_iff`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/Geometry/Hodge/RationalHodgeTransport.lean#L73-L75), `GRWTSK/Geometry/Hodge/RationalHodgeTransport.lean:73–75`. Surjectivity transports through supplied exact rational cycle-class equivalences and a commuting square.

Missing bridges:

- A BSD/Tamagawa-shaped leading term is not a general formula for Res₁ Z(X,s). Specify the exact source, rank/order, periods, torsion powers and finiteness assumptions.
- Prove an actual boundary/interior cohomology splitting and trace identity; imposing boundary conditions can change the represented source.
- Residue alignment is not zero exclusion without a proved zero-detecting analytic comparison.
- Specify the exact arithmetic source/order and all leading-term factors, and retain the acknowledged external conjectures.

<a id="e04e2d11c430078f-arithmetic-residue-formula-scope"></a>
### The Riemann Hypothesis and Its Automorphic Generalizations: Comprehensive Insights into Unified Analytic, Spectral, and Geometric Structures — `e04e2d11c430`

Idea: `idea:unpublished-v3:e04e2d11c430078f:arithmetic-residue-formula-scope`. Outcome: **unresolved**; main claim unresolved.

Current broader-search assessment: **conditional-fragment**, main claim unresolved. [Further paper and upstream Lean evidence](unresolved-idea-broader-search.md#e04e2d11c430078f-arithmetic-residue-formula-scope).

The synthesis links compactified boundary traces to zero suppression and prints a universal scheme-zeta residue formula using regulator, Picard torsion, Sha and Tamagawa factors.

The obstruction list acknowledges that vanishing and Tamagawa-type residue comparisons remain partial or conjectural. Generic cycle-class transport cannot supply the arithmetic leading term, finiteness premises or the boundary trace identity.

Paper evidence (physical PDF page numbers):

- [p. 15](</Users/think/Desktop/MathematicsLibrary/NumberTheory/e04e2d11c430--The_Riemann_Hypothesis_and_Its_Automorphic_Generalizations__Comprehensive_Insights_into_Unified_Analytic__Spectral__and_Geometric_Structures (2).pdf#page=15>): “Arithmetic Zeta Functions”. Page-text SHA-256 `17661ff7cb8ed763f07f8d3cd8175cbf7f15ef6e315d2b33ff34832c4e07c2f1`.
- [p. 6](</Users/think/Desktop/MathematicsLibrary/NumberTheory/e04e2d11c430--The_Riemann_Hypothesis_and_Its_Automorphic_Generalizations__Comprehensive_Insights_into_Unified_Analytic__Spectral__and_Geometric_Structures (2).pdf#page=6>): “Boundary Conditions and Residue Localization:”. Page-text SHA-256 `da68efb15a2c06936173f684620b32e20223c7507441ee90fdf7091897651b50`.
- [p. 23](</Users/think/Desktop/MathematicsLibrary/NumberTheory/e04e2d11c430--The_Riemann_Hypothesis_and_Its_Automorphic_Generalizations__Comprehensive_Insights_into_Unified_Analytic__Spectral__and_Geometric_Structures (2).pdf#page=23>): “• **Resolution:** Validate using the full formalism of geometric Langlands theory as”. Page-text SHA-256 `14a93666668f525faa1fc4cea7aa16fddf6679e4e3496a12cc65ae61751dfe03`.

Follow-up complete page read: 23. This adds a page beyond the previously recorded review.

Lean candidates inspected:

- **rejected-candidate**: [`GRWTSK.Geometry.Hodge.RationalHodgeTransport.CycleClassEquiv.surjective_iff`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/Geometry/Hodge/RationalHodgeTransport.lean#L73-L75), `GRWTSK/Geometry/Hodge/RationalHodgeTransport.lean:73–75`. Surjectivity transports through supplied exact rational cycle-class equivalences and a commuting square.

Missing bridges:

- A BSD/Tamagawa-shaped leading term is not a general formula for Res₁ Z(X,s). Specify the exact source, rank/order, periods, torsion powers and finiteness assumptions.
- Prove an actual boundary/interior cohomology splitting and trace identity; imposing boundary conditions can change the represented source.
- Residue alignment is not zero exclusion without a proved zero-detecting analytic comparison.
- Specify the exact arithmetic source/order and all leading-term factors, and retain the acknowledged external conjectures.

<a id="2b7478353ae500b1-conditional-transcendence-and-chaotic-sums"></a>
### Universal Transcendence of Non-Critical Values in Automorphic and Motivic L-Functions — `2b7478353ae5`

Idea: `idea:unpublished-v3:2b7478353ae500b1:conditional-transcendence-and-chaotic-sums`. Outcome: **unresolved**; main claim unresolved.

Current broader-search assessment: **conditional-fragment**, main claim unresolved. [Further paper and pinned Lean evidence](remaining-idea-target-search.md#2b7478353ae500b1-conditional-transcendence-and-chaotic-sums).

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and upstream Lean evidence](unresolved-idea-broader-search.md#2b7478353ae500b1-conditional-transcendence-and-chaotic-sums).

The universal transcendence theorem assumes logarithm independence, RMT predictions and motivic period independence, using dense phases to prevent algebraic cancellation.

The logarithm section uses rational independence to infer transcendence of algebraic-coefficient sums and cites prime-gap smoothing as preserving chaos. These arguments do not supply an infinite-sum transcendence theorem, and no maintained Baker/motivic-independence target was established.

Paper evidence (physical PDF page numbers):

- [p. 15](</Users/think/Desktop/MathematicsLibrary/NumberTheory/2b7478353ae5--Universal_Transcendence_of_Non_Critical_Values_in_Automorphic_and_Motivic__L__Functions (4).pdf#page=15>): “Theorem 5.3”. Page-text SHA-256 `c6168009049cc379dc22dafdb833aca881faf8da4e6f37d924d4910aa9f53515`.
- [p. 24](</Users/think/Desktop/MathematicsLibrary/NumberTheory/2b7478353ae5--Universal_Transcendence_of_Non_Critical_Values_in_Automorphic_and_Motivic__L__Functions (4).pdf#page=24>): “Theorem 8.5”. Page-text SHA-256 `ed98e538993ace6b5031d5d6b9b92540bf31565c7c803802149b94029e8cf066`.
- [p. 12](</Users/think/Desktop/MathematicsLibrary/NumberTheory/2b7478353ae5--Universal_Transcendence_of_Non_Critical_Values_in_Automorphic_and_Motivic__L__Functions (4).pdf#page=12>): “4.2    Logarithmic Independence”. Page-text SHA-256 `d1b6aa4021c60daee81c785d23fbc9ed0fc1191e507c582c210cb6589c003613`.

Follow-up complete page read: 12. This adds a page beyond the previously recorded review.

Lean candidates inspected:

- No concrete maintained declaration established. Negative search findings are limited to this inspection, not a proof that no suitable theorem exists.

Missing bridges:

- Density/quasi-randomness does not imply a sum is transcendental or cannot cancel. Define the infinite sum and prove an actual transcendence theorem with algebraic coefficient hypotheses.
- Logarithm independence must specify linear/algebraic and coefficient fields; modularly dense phases are a different assertion.
- Functional equations relate specified paired values with gamma/conductor factors, not all critical and noncritical values. Preserve the conditional motivic period and analytic-continuation scope.
- Separate finite nonzero algebraic-coefficient logarithmic forms from convergent infinite sums; prove coefficient hypotheses, nonvanishing and the required transcendence result.

<a id="ac7a2ecdc5f9c787-conditional-transcendence-and-chaotic-sums"></a>
### Universal Transcendence of Non-Critical Values in Automorphic and Motivic L-Functions — `ac7a2ecdc5f9`

Idea: `idea:unpublished-v3:ac7a2ecdc5f9c787:conditional-transcendence-and-chaotic-sums`. Outcome: **unresolved**; main claim unresolved.

Current broader-search assessment: **conditional-fragment**, main claim unresolved. [Further paper and pinned Lean evidence](remaining-idea-target-search.md#ac7a2ecdc5f9c787-conditional-transcendence-and-chaotic-sums).

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and upstream Lean evidence](unresolved-idea-broader-search.md#ac7a2ecdc5f9c787-conditional-transcendence-and-chaotic-sums).

The universal transcendence theorem assumes logarithm independence, RMT predictions and motivic period independence, using dense phases to prevent algebraic cancellation.

The logarithm section uses rational independence to infer transcendence of algebraic-coefficient sums and cites prime-gap smoothing as preserving chaos. These arguments do not supply an infinite-sum transcendence theorem, and no maintained Baker/motivic-independence target was established.

Paper evidence (physical PDF page numbers):

- [p. 15](</Users/think/Desktop/MathematicsLibrary/NumberTheory/ac7a2ecdc5f9--Universal_Transcendence_of_Non_Critical_Values_in_Automorphic_and_Motivic__L__Functions (5).pdf#page=15>): “Theorem 5.3”. Page-text SHA-256 `c6168009049cc379dc22dafdb833aca881faf8da4e6f37d924d4910aa9f53515`.
- [p. 24](</Users/think/Desktop/MathematicsLibrary/NumberTheory/ac7a2ecdc5f9--Universal_Transcendence_of_Non_Critical_Values_in_Automorphic_and_Motivic__L__Functions (5).pdf#page=24>): “Theorem 8.5”. Page-text SHA-256 `ed98e538993ace6b5031d5d6b9b92540bf31565c7c803802149b94029e8cf066`.
- [p. 12](</Users/think/Desktop/MathematicsLibrary/NumberTheory/ac7a2ecdc5f9--Universal_Transcendence_of_Non_Critical_Values_in_Automorphic_and_Motivic__L__Functions (5).pdf#page=12>): “4.2    Logarithmic Independence”. Page-text SHA-256 `d1b6aa4021c60daee81c785d23fbc9ed0fc1191e507c582c210cb6589c003613`.

Follow-up complete page read: 12. This adds a page beyond the previously recorded review.

Lean candidates inspected:

- No concrete maintained declaration established. Negative search findings are limited to this inspection, not a proof that no suitable theorem exists.

Missing bridges:

- Density/quasi-randomness does not imply a sum is transcendental or cannot cancel. Define the infinite sum and prove an actual transcendence theorem with algebraic coefficient hypotheses.
- Logarithm independence must specify linear/algebraic and coefficient fields; modularly dense phases are a different assertion.
- Functional equations relate specified paired values with gamma/conductor factors, not all critical and noncritical values. Preserve the conditional motivic period and analytic-continuation scope.
- Separate finite nonzero algebraic-coefficient logarithmic forms from convergent infinite sums; prove coefficient hypotheses, nonvanishing and the required transcendence result.

## Probability and combinatorics — 3 versions

<a id="0f3deff790c3e598-entropy-threshold-zero-free-gap"></a>
### Residue Clustering, Modular Symmetry, and the Generalized Riemann Hypothesis: Techniques and Next Steps — `0f3deff790c3`

Idea: `idea:unpublished-v3:0f3deff790c3e598:entropy-threshold-zero-free-gap`. Outcome: **unresolved**; main claim unresolved.

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and pinned Lean evidence](remaining-idea-target-search.md#0f3deff790c3e598-entropy-threshold-zero-free-gap).

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and upstream Lean evidence](unresolved-idea-broader-search.md#0f3deff790c3e598-entropy-threshold-zero-free-gap).

Shannon entropy is corrected by weighted residue projections; empirical conductor/rank scaling and H<0.1 are used to predict zero-free modular classes.

The methods page subtracts weighted projections directly from the entropy value and reports an empirical H<0.1 threshold. No probability-preserving update or exact implication from this threshold to zero exclusion appears there; no such maintained Lean target was established.

Paper evidence (physical PDF page numbers):

- [p. 1](</Users/think/Desktop/MathematicsLibrary/NumberTheory/0f3deff790c3--Entropy (1).pdf#page=1>): “Entropy Refinement”. Page-text SHA-256 `b22db21a84ab09b40aff301714efb0283fe60f0b94ecdde9d418009085ae1a48`.
- [p. 2](</Users/think/Desktop/MathematicsLibrary/NumberTheory/0f3deff790c3--Entropy (1).pdf#page=2>): “Zero-Free Regions”. Page-text SHA-256 `379fc45e173e2ffa6fc66c426a4831b30fd59ceb5976c8106cfc21b07b306756`.
- [p. 1](</Users/think/Desktop/MathematicsLibrary/NumberTheory/0f3deff790c3--Entropy (1).pdf#page=1>): “Residue Clustering, Modular Symmetry, and the Generalized”. Page-text SHA-256 `b22db21a84ab09b40aff301714efb0283fe60f0b94ecdde9d418009085ae1a48`.

Follow-up complete page read: 1. This selected page was already in the previous review; the short asset or relevant passage was reread, with no claim of new unseen content.

Lean candidates inspected:

- No concrete maintained declaration established. Negative search findings are limited to this inspection, not a proof that no suitable theorem exists.

Missing bridges:

- Define the correction on probabilities and prove it preserves normalization/nonnegativity; subtracting projections from an entropy value need not yield a Shannon entropy.
- State constants and parameter ranges for the two different scaling laws, and provide reproducible data/certified errors.
- Prove threshold implies zero exclusion with exact source domain and all-height/rank coverage. Finite GL11–GL100 checks do not construct an infinite-dimensional limit.
- Prove normalization, nonnegativity, convergence and an all-height source-specific exclusion implication.

<a id="579328ace007be79-entropy-threshold-zero-free-gap"></a>
### Residue Clustering, Modular Symmetry, and the Generalized Riemann Hypothesis: Techniques and Next Steps — `579328ace007`

Idea: `idea:unpublished-v3:579328ace007be79:entropy-threshold-zero-free-gap`. Outcome: **unresolved**; main claim unresolved.

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and pinned Lean evidence](remaining-idea-target-search.md#579328ace007be79-entropy-threshold-zero-free-gap).

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and upstream Lean evidence](unresolved-idea-broader-search.md#579328ace007be79-entropy-threshold-zero-free-gap).

Shannon entropy is corrected by weighted residue projections; empirical conductor/rank scaling and H<0.1 are used to predict zero-free modular classes.

The methods page subtracts weighted projections directly from the entropy value and reports an empirical H<0.1 threshold. No probability-preserving update or exact implication from this threshold to zero exclusion appears there; no such maintained Lean target was established.

Paper evidence (physical PDF page numbers):

- [p. 1](</Users/think/Desktop/MathematicsLibrary/NumberTheory/579328ace007--Entropy (2).pdf#page=1>): “Entropy Refinement”. Page-text SHA-256 `b22db21a84ab09b40aff301714efb0283fe60f0b94ecdde9d418009085ae1a48`.
- [p. 2](</Users/think/Desktop/MathematicsLibrary/NumberTheory/579328ace007--Entropy (2).pdf#page=2>): “Zero-Free Regions”. Page-text SHA-256 `379fc45e173e2ffa6fc66c426a4831b30fd59ceb5976c8106cfc21b07b306756`.
- [p. 1](</Users/think/Desktop/MathematicsLibrary/NumberTheory/579328ace007--Entropy (2).pdf#page=1>): “Residue Clustering, Modular Symmetry, and the Generalized”. Page-text SHA-256 `b22db21a84ab09b40aff301714efb0283fe60f0b94ecdde9d418009085ae1a48`.

Follow-up complete page read: 1. This selected page was already in the previous review; the short asset or relevant passage was reread, with no claim of new unseen content.

Lean candidates inspected:

- No concrete maintained declaration established. Negative search findings are limited to this inspection, not a proof that no suitable theorem exists.

Missing bridges:

- Define the correction on probabilities and prove it preserves normalization/nonnegativity; subtracting projections from an entropy value need not yield a Shannon entropy.
- State constants and parameter ranges for the two different scaling laws, and provide reproducible data/certified errors.
- Prove threshold implies zero exclusion with exact source domain and all-height/rank coverage. Finite GL11–GL100 checks do not construct an infinite-dimensional limit.
- Prove normalization, nonnegativity, convergence and an all-height source-specific exclusion implication.

<a id="7e3e7acb686d4196-short-rmt-proof-upgrade-gap"></a>
### A Unified Theoretical Framework for the Proof of the Riemann Hypothesis and Its Generalizations — `7e3e7acb686d`

Idea: `idea:unpublished-v3:7e3e7acb686d4196:short-rmt-proof-upgrade-gap`. Outcome: **unresolved**; main claim unresolved.

Current broader-search assessment: **repair-candidate**, main claim unresolved. [Further paper and pinned Lean evidence](remaining-idea-target-search.md#7e3e7acb686d4196-short-rmt-proof-upgrade-gap).

Current broader-search assessment: **unresolved**, main claim unresolved. [Further paper and upstream Lean evidence](unresolved-idea-broader-search.md#7e3e7acb686d4196-short-rmt-proof-upgrade-gap).

The five-page version relies on GUE pair-correlation agreement and absence of observed anomalies to infer all zeros align.

The additional survey, sheaf or statistical discussion still supplies no deterministic implication from local/limiting spacing data to the location of every zero. The inspected zeta reflection theorem is exact symmetry for a specific nontrivial-zero predicate, not local Euler-factor symmetry or universal automorphic GRH.

Paper evidence (physical PDF page numbers):

- [p. 4](</Users/think/Desktop/MathematicsLibrary/NumberTheory/7e3e7acb686d--On_the__notion__of_Principle_as_a_chomocological_invariant_ (1).pdf#page=4>): “Critical Line as a Universal Symmetry.”. Page-text SHA-256 `b31c602456977453fa7241a1c4c22ab4d30f19a65c9d059ed695d18cb8f5092e`.
- [p. 3](</Users/think/Desktop/MathematicsLibrary/NumberTheory/7e3e7acb686d--On_the__notion__of_Principle_as_a_chomocological_invariant_ (1).pdf#page=3>): “A UNIFIED THEORETICAL FRAMEWORK FOR THE PROOF OF THE RIEMANN”. Page-text SHA-256 `d72fd852ae2be9f5946bb161814e5346eeb9c4675e5ccbc5f265089e2f2d801a`.

Follow-up complete page read: 3. This adds a page beyond the previously recorded review.

Lean candidates inspected:

- **rejected-candidate**: [`GRWTSK.RiemannHypothesis.NontrivialZetaZero.reflect`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean#L74-L95), `GRWTSK/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean:74–95`. The exact nontrivial Riemann zeta zero predicate transports under s↦1−s; no off-line exclusion.

Missing bridges:

- Prove the deterministic upgrade for the exact source rather than equating finite numerical agreement with universal alignment.
- Preserve conjectural versus proved ranges of pair correlation and family symmetry type; nearest-neighbor/repulsion heuristics do not rule out individual off-line zeros.
- Prove the source-specific local/global comparison and an independent deterministic exclusion theorem with all conductor, dual and tail data.

## Review queue — 3 versions

<a id="85c8288713f3f7fa-placeholder-no-substantive-body"></a>
### _A_Self_Adjoint_Spectral_Operator_for_the_Riemann_Zeta_Zeros__Rigorous_Construction__Determinant_Identity__and_Topological_Invariance (1) — `85c8288713f3`

Idea: `idea:unpublished-v3:85c8288713f3f7fa:placeholder-no-substantive-body`. Outcome: **no-substantive-body**; main claim unresolved.

This distinct PDF version contains an ellipsis abstract, empty contents and a section-generation placeholder, rather than the claimed operator/determinant proof.

This exact asset has no body supplying the requested construction: template/empty-section or abstract-only material remains after inspection. Content from differently hashed, body-bearing versions is not inherited.

Paper evidence (physical PDF page numbers):

- [p. 2](</Users/think/Desktop/MathematicsLibrary/NumberTheory/85c8288713f3--_A_Self_Adjoint_Spectral_Operator_for_the_Riemann_Zeta_Zeros__Rigorous_Construction__Determinant_Identity__and_Topological_Invariance (1).pdf#page=2>): “Genenerte section includes here”. Page-text SHA-256 `3a76756b794114286ee3b62e6e185f4656b48ab47b031c9a8a81ecdc0841a51e`.
- [p. 2](</Users/think/Desktop/MathematicsLibrary/NumberTheory/85c8288713f3--_A_Self_Adjoint_Spectral_Operator_for_the_Riemann_Zeta_Zeros__Rigorous_Construction__Determinant_Identity__and_Topological_Invariance (1).pdf#page=2>): “88                          R.A. JACOB MARTONE”. Page-text SHA-256 `3a76756b794114286ee3b62e6e185f4656b48ab47b031c9a8a81ecdc0841a51e`.

Follow-up complete page read: 2. This selected page was already in the previous review; the short asset or relevant passage was reread, with no claim of new unseen content.

Lean candidates inspected:

- No concrete maintained declaration established. Negative search findings are limited to this inspection, not a proof that no suitable theorem exists.

Missing bridges:

- Obtain an actual body-bearing version before mapping operator, determinant or topological claims. Do not inherit content from a similarly named PDF.
- Template journal/DOI/affiliation and received-date text are printed artifacts, not verified publication or chronology evidence.
- Obtain a body-bearing version and preserve its separate asset identity.

<a id="26516b4beee3b085-clustering-empty-version"></a>
### A Proof of the Generalized Riemann Hypothesis via Residue Clustering Laws — `26516b4beee3`

Idea: `idea:unpublished-v3:26516b4beee3b085:clustering-empty-version`. Outcome: **no-substantive-body**; main claim unresolved.

This version contains an abstract and empty section headings, including empty proof and derivation sections.

This exact asset has no body supplying the requested construction: template/empty-section or abstract-only material remains after inspection. Content from differently hashed, body-bearing versions is not inherited.

Paper evidence (physical PDF page numbers):

- [p. 2](</Users/think/Desktop/MathematicsLibrary/NumberTheory/26516b4beee3--Residue_Clustering_Laws_and_the_Proof_of_the_Generalized_Riemann_Hypothesis (4).pdf#page=2>): “6 Proof of the Generalized Riemann Hypothesis”. Page-text SHA-256 `6a64fdba2782a661c1cedf4d6ad46fec91f3e1dcdd06d52fff147270cf284b3a`.
- [p. 2](</Users/think/Desktop/MathematicsLibrary/NumberTheory/26516b4beee3--Residue_Clustering_Laws_and_the_Proof_of_the_Generalized_Riemann_Hypothesis (4).pdf#page=2>): “2   Background and Preliminary Results”. Page-text SHA-256 `6a64fdba2782a661c1cedf4d6ad46fec91f3e1dcdd06d52fff147270cf284b3a`.

Follow-up complete page read: 2. This selected page was already in the previous review; the short asset or relevant passage was reread, with no claim of new unseen content.

Lean candidates inspected:

- No concrete maintained declaration established. Negative search findings are limited to this inspection, not a proof that no suitable theorem exists.

Missing bridges:

- Do not inherit the 21-page version’s claims or citations into this two-page asset. A body-bearing version is required.
- Obtain a body-bearing version and preserve its separate asset identity.

<a id="917ca3c827b1627b-abstract-only-entropy-version"></a>
### Entropy-Driven Residue Dynamics: A Rigorous Proof of the Riemann Hypothesis and Generalized L-Functions — `917ca3c827b1`

Idea: `idea:unpublished-v3:917ca3c827b1627b:abstract-only-entropy-version`. Outcome: **no-substantive-body**; main claim unresolved.

The single-page asset contains an entropy-PDE proof claim in the abstract and empty contents, with no PDE definition or substantive proof body.

This exact asset has no body supplying the requested construction: template/empty-section or abstract-only material remains after inspection. Content from differently hashed, body-bearing versions is not inherited.

Paper evidence (physical PDF page numbers):

- [p. 1](</Users/think/Desktop/MathematicsLibrary/NumberTheory/917ca3c827b1--RH (4).pdf#page=1>): “specially formulated partial differential equation”. Page-text SHA-256 `b61d6f1641641a326d3d51573073095d47855cad780409ec6122c95819039239`.
- [p. 1](</Users/think/Desktop/MathematicsLibrary/NumberTheory/917ca3c827b1--RH (4).pdf#page=1>): “Entropy-Driven Residue Dynamics: A Rigorous Proof of the”. Page-text SHA-256 `b61d6f1641641a326d3d51573073095d47855cad780409ec6122c95819039239`.

Follow-up complete page read: 1. This selected page was already in the previous review; the short asset or relevant passage was reread, with no claim of new unseen content.

Lean candidates inspected:

- No concrete maintained declaration established. Negative search findings are limited to this inspection, not a proof that no suitable theorem exists.

Missing bridges:

- Obtain a body-bearing version with the actual PDE, entropy estimates and source identity. Do not inherit those from a differently titled entropy draft.
- Obtain a body-bearing version and preserve its separate asset identity.

## Search and evidence limits

The maintained Lean search excluded `GRWTSK/SourceCorpus/**`. Queries covered rational distance and lonely runners; KL/Hecke positivity; motivic Galois and logarithm independence; entropy and variance; exceptional embeddings and cohomology transport; pole/logarithmic principal parts; boundary projectors; and complexity recomposition. Candidate scopes were read from source. A keyword hit was not treated as a mathematical match.

- No main manuscript claim is marked resolved. Conditional fragments cover only the stated subclaim and require the source adapter.
- Repair candidates change or clarify the analytic consumer; they are not established matches for the original claim. Analogy-only and obstruction-only references are not formalizations of the manuscript conclusion.
- Selected complete pages were read, including further body pages where available. Short exhausted assets were reread; placeholder and abstract-only versions inherit no content from other hashes.
- Paper identities, bibliography, paths and historical access/understanding dates are unchanged. New machine access observations remain in the external library, distinct from human reading dates.
- Exact Git source declarations, hashes and ranges were checked. No new compilation or independent kernel audit is claimed; individual source status labels are retained.
- No chronology, intellectual influence, priority or owner understanding is inferred from a correspondence.

## Exact code identities

- [`heatgap`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/LinearAlgebra/FinitePositiveHodgeHeatBounds.lean#L12-L55): Git blob `a24a5e5ccc49eb5021f88c8ec78f0b0b8483b930`; full-file SHA-256 `bd7a1998c0ad0813af64a0b97fab20946e037cc5fd2d2b6cbfd7ef8366610ab9`.
- [`hermitian`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/LinearAlgebra/Matrix/HermitianCounterexamples.lean#L26-L33): Git blob `f099848904afe3e4317cb74da50b5ebb5adf54b4`; full-file SHA-256 `19bc221e98824279b30df1dfd6411be2ccca6c19ddba2d698f46d1fb0cc9f46e`.
- [`hodge`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/Geometry/Hodge/RationalHodgeTransport.lean#L73-L75): Git blob `ce90366d81cf18384db557b2d66b3734b33d6f28`; full-file SHA-256 `02099019703f64f901297197bab29e49b4380f57968f7cc4a7ade0218ae3aa10`.
- [`logpart`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/Analysis/Complex/LogarithmicPrincipalPart.lean#L34-L51): Git blob `a9f568cb2242e69ff5e4b8d34e6505d24992184f`; full-file SHA-256 `3515f8f44b0486f45cc6e244870f4b37cda3e6e124251c47d71efb1350a8ea81`.
- [`multiply`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/Analysis/Complex/FinitePoleSubtraction.lean#L35-L49): Git blob `85fdb021bc9be68e54ffbda693ed70a7bc7943e4`; full-file SHA-256 `3deae0ddf7d2cf6955de83669401dfd80af54784290829d32a5193233940160c`.
- [`onepole`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/Analysis/Complex/FinitePoleSubtraction.lean#L81-L98): Git blob `85fdb021bc9be68e54ffbda693ed70a7bc7943e4`; full-file SHA-256 `3deae0ddf7d2cf6955de83669401dfd80af54784290829d32a5193233940160c`.
- [`reflection`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/NumberTheory/Zeta/Riemann/ZeroSymmetry.lean#L74-L95): Git blob `5f465139ee895a99b79af84ee0866aa5f637bdfa`; full-file SHA-256 `44e1e3452c5e94077ac11fe9397dc420503d5c7c005bc1c1105685b015471076`.
- [`split`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/LinearAlgebra/FilteredProjectorSplit.lean#L64-L69): Git blob `204fffa276903c77cd98f10356e76b5f44e86b2f`; full-file SHA-256 `8a578f68ca3fa6caba836059ead907382f0235f808f9ceee3e86615953a80795`.
- [`subexp`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/Analysis/Asymptotics/PolynomialSubexponential.lean#L55-L64): Git blob `0ad8007b567aa64ccd33243afcf5a232b8f45ffa`; full-file SHA-256 `a0fd4a85568bcfdcd135b7f82c387dd5270192b2fbfd55a8c062748585212a72`.
- [`variance`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/Analysis/FiniteSum/DyadicVariance.lean#L19-L23): Git blob `e154d822f07df79ed7cdf89652476797ae9e4ef1`; full-file SHA-256 `808e83bbf7c2e59761ce7d33a8e7590bb55ea1eac904d6592ebd52cc9a6b908d`.
- [`variational`](https://github.com/grwtsk/math/blob/f66bd00c9ab5cfd83749db3e57889b68d08aa185/GRWTSK/Analysis/InnerProductSpace/VariationalResidual.lean#L49-L58): Git blob `bdafa808c3ecbe931e89378d03da40c0c70d6e82`; full-file SHA-256 `e76398f8db180452181bf7ba9bce09d119a283f77e0b7d66498dedc3734ee4da`.
