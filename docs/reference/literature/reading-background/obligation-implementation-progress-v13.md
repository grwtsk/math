# Pending braid-six quotient characters and noncollapse

Exact source commit `ba0114942a25ca919af0f233be060d8cb7fb2421`; Lean 4.33.0; mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`.

**SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED for all five new declarations. No new verified bridge is claimed.** Counts remain four completed optional/corrective obligations, fifteen partial results and seventeen unresolved obligations. All seven manuscript-level claims remain open.

[Structured record](obligation-implementation-progress-v13.json) preserves all 36 earlier obligation states unchanged, exact bibliographic metadata, page hashes and distinct versions. New candidates are separate from implemented/verified code references. [Previous verified pass](obligation-implementation-progress-v12.md).

## Algebra: K1 in both distinct KL versions

New source constructs trivial and sign character candidates of the common-parameter braid-six quotient, with generator images q and -1. The proposed scalar retraction proves scalar injectivity; nontrivial coefficients should therefore give a nontrivial quotient. A further candidate separates the unit and either generator when NoZeroDivisors R and q+1 ≠ 0. The proof scripts have not yet been compiled through the managed route.

**Exact hypotheses and intended argument:** both characters and scalar injectivity use CommRing R and arbitrary q:R; quotient nontriviality additionally requires Nontrivial R. The coordinate claim requires NoZeroDivisors R and q+1 ≠ 0: the two evaluations of a·1+c·T=0 yield a+cq=0 and a-c=0, hence c(q+1)=0. No independence claim is made at q=-1, and no inverse parameter is required.

### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis

Owner-designated unpublished research by R.A. Jacob Martone; printed byline `['grwtsk contributors']`. Exact PDF SHA-256 `159cb12b34d5a425a822b19a204ca2dccff897363f8978d15bd17fa166ad9a2d`. Publication date, DOI and arXiv remain unestablished; typed manuscript dates remain in JSON. PDF p. 2 supplies the Hecke convention, p. 3 the G2 example. The candidates are assistant-proposed constructions addressing K1; no printed KL table is certified.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/C%20%287%29.pdf); source blob `321ef7c1fa5685faac750558754f8d0e2906fe14`.

- **Unverified candidate:** [`GRWTSK.Algebra.Hecke.g2TrivialCharacter_generator`](https://github.com/grwtsk/math/blob/ba0114942a25ca919af0f233be060d8cb7fb2421/GRWTSK/Algebra/Hecke/G2Characters.lean#L19); code blob `9252f4fd248ba3c69782d0cc50522b5d10dd4b8b`.
- **Unverified candidate:** [`GRWTSK.Algebra.Hecke.g2SignCharacter_generator`](https://github.com/grwtsk/math/blob/ba0114942a25ca919af0f233be060d8cb7fb2421/GRWTSK/Algebra/Hecke/G2Characters.lean#L23); code blob `9252f4fd248ba3c69782d0cc50522b5d10dd4b8b`.
- **Unverified candidate:** [`GRWTSK.Algebra.Hecke.g2Presented_scalar_injective`](https://github.com/grwtsk/math/blob/ba0114942a25ca919af0f233be060d8cb7fb2421/GRWTSK/Algebra/Hecke/G2Characters.lean#L28); code blob `9252f4fd248ba3c69782d0cc50522b5d10dd4b8b`.
- **Unverified candidate:** [`GRWTSK.Algebra.Hecke.g2Presented_rankOne_coordinates_unique`](https://github.com/grwtsk/math/blob/ba0114942a25ca919af0f233be060d8cb7fb2421/GRWTSK/Algebra/Hecke/G2Characters.lean#L36); code blob `9252f4fd248ba3c69782d0cc50522b5d10dd4b8b`.
- **Unverified candidate:** [`GRWTSK.Algebra.Hecke.g2Presented_zero_ne_one`](https://github.com/grwtsk/math/blob/ba0114942a25ca919af0f233be060d8cb7fb2421/GRWTSK/Algebra/Hecke/G2Characters.lean#L51); code blob `9252f4fd248ba3c69782d0cc50522b5d10dd4b8b`.

### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis

Owner-designated unpublished research by R.A. Jacob Martone; printed byline `['grwtsk contributors']`. Exact PDF SHA-256 `553f237f431fc2991860dfb72890a3ebb6d02de0adc14daa7e6af901c5f74a1f`. Publication date, DOI and arXiv remain unestablished; typed manuscript dates remain in JSON. PDF p. 2 supplies the Hecke convention, p. 3 the G2 example. The candidates are assistant-proposed constructions addressing K1; no printed KL table is certified.

[Exact PDF version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/C%20%289%29.pdf); source blob `68757e7d6f23427e3487d3166928241025ce0ea6`.

- **Unverified candidate:** [`GRWTSK.Algebra.Hecke.g2TrivialCharacter_generator`](https://github.com/grwtsk/math/blob/ba0114942a25ca919af0f233be060d8cb7fb2421/GRWTSK/Algebra/Hecke/G2Characters.lean#L19); code blob `9252f4fd248ba3c69782d0cc50522b5d10dd4b8b`.
- **Unverified candidate:** [`GRWTSK.Algebra.Hecke.g2SignCharacter_generator`](https://github.com/grwtsk/math/blob/ba0114942a25ca919af0f233be060d8cb7fb2421/GRWTSK/Algebra/Hecke/G2Characters.lean#L23); code blob `9252f4fd248ba3c69782d0cc50522b5d10dd4b8b`.
- **Unverified candidate:** [`GRWTSK.Algebra.Hecke.g2Presented_scalar_injective`](https://github.com/grwtsk/math/blob/ba0114942a25ca919af0f233be060d8cb7fb2421/GRWTSK/Algebra/Hecke/G2Characters.lean#L28); code blob `9252f4fd248ba3c69782d0cc50522b5d10dd4b8b`.
- **Unverified candidate:** [`GRWTSK.Algebra.Hecke.g2Presented_rankOne_coordinates_unique`](https://github.com/grwtsk/math/blob/ba0114942a25ca919af0f233be060d8cb7fb2421/GRWTSK/Algebra/Hecke/G2Characters.lean#L36); code blob `9252f4fd248ba3c69782d0cc50522b5d10dd4b8b`.
- **Unverified candidate:** [`GRWTSK.Algebra.Hecke.g2Presented_zero_ne_one`](https://github.com/grwtsk/math/blob/ba0114942a25ca919af0f233be060d8cb7fb2421/GRWTSK/Algebra/Hecke/G2Characters.lean#L51); code blob `9252f4fd248ba3c69782d0cc50522b5d10dd4b8b`.

## Verification limitation

The source-bound managed verifier prepared a registry, but two native-admission attempts stopped at Noe’s shared activation lock before project compilation. No new declaration axiom audit ran, and no native hold was cleared or bypassed. External evidence remains in `/Users/think/Desktop/.noeaaeue-runtime/formalization/literature-bridges-v13`. The existing native replay was left intact. Noe parser/provider/drift regressions passed; these are operational tests, not mathematical verification.

The matrix dependency now imports the specific Ring/NormNum tactics instead of the whole tactic umbrella; theorem statements and proof bodies are unchanged. This changed dependency byte identity also awaits fresh replay. Noe main concurrently advanced to registry v3 with fresh upstream source compilation; the next replay must prepare against that maintained adapter rather than reuse the historical v2 registry.

## Missing bridges by taxonomy

Algebra K1 still needs the twelve-element standard basis, general Coxeter/Laurent construction, semilinear bar, KL basis and recurrence. These unverified coordinate candidates establish none of those acceptance conditions. K2/K4/K5 retain their degree, geometric positivity and analytic-realization gaps; E1 exceptional-group data and matrix faithfulness remain open. Number theory, boundary geometry and recursive-refinement obligations are unchanged. All exact missing specifications remain in the structured record. No reading event, understanding date or historical influence is inferred.
