# Hecke memory failure and smaller matrix proof candidates

New mathematical source candidate commit `98d270be28e23dd0bbfea74540025db387b472af`; Lean 4.33.0; mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`.

**No new kernel-verified bridge is claimed.** All revised matrix source and the five character candidates remain pending fresh verification. Counts remain four completed optional/corrective obligations, fifteen partial results and seventeen unresolved obligations; all seven manuscript-level claims remain open.

[Structured record](obligation-implementation-progress-v17.json) preserves all 36 prior obligation states, manuscript versions, page anchors, hypotheses and missing suppliers. [Previous record](obligation-implementation-progress-v16.md). The external v17 replay was the failed attempt; the new external attempt is v18.

## Algebra — K1

The previous replay passed 1,221 dependency modules, then aborted in GRWTSK.Algebra.Hecke.G2BraidSixMatrices with Lean memory_exception at the interpreter (exit -6). The overall receipt failed, with zero Hecke target axiom audits and no expected-type consumers. The host was restored and no reservation remained charged at inspection. The exact failed command record was resolved and its digest checked with maintained Noe tooling. Dependency passes are not target acceptance.

**Revised source candidates:** for any commutative ring R and any q:R, both A=ST and A=TS are proposed to satisfy A²=q·A−q²·I. A short algebraic helper then derives A³=−q³·I by distributing scalar multiplication and cancelling the A term. The two cubic theorem statements are unchanged; their proofs now use these degree-two identities instead of expanding cubic entries. The general NormNum umbrella import is removed; integer specializations use simplification and a closed kernel decision on −1 ≠ 1. This is a resource-reduction hypothesis, not a measured or verified memory improvement. No memory budget is raised.

**Character hypotheses retained:** CommRing R and arbitrary q for both character evaluations and scalar injectivity; Nontrivial R additionally for quotient nontriviality; NoZeroDivisors R and q+1 ≠ 0 additionally for coordinate uniqueness. No claim is made at q=-1 for that coordinate argument. No inverse parameter is assumed in the new matrix identities.

### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis

Local attribution: grwtsk contributors; unpublished. Publication date, DOI and arXiv remain unestablished. Exact original PDF version SHA-256 `159cb12b34d5a425a822b19a204ca2dccff897363f8978d15bd17fa166ad9a2d`. PDF p. 2 supplies the Hecke convention; p. 3 supplies the G2 example. Exact historical page anchors/hashes and typed manuscript dates remain in JSON. Original hashes do not certify redacted attribution displays or these edited proof bytes.

[Exact source version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/C%20%287%29.pdf); original blob `321ef7c1fa5685faac750558754f8d0e2906fe14`.

- **Unverified current source:** [`GRWTSK.Algebra.Hecke.g2HeckeS_quadratic`](https://github.com/grwtsk/math/blob/98d270be28e23dd0bbfea74540025db387b472af/GRWTSK/Algebra/Hecke/G2BraidSixMatrices.lean#L19); blob `f79b56b1c37dd53c88a97eab69d69b5126bf7828`.
- **Unverified current source:** [`GRWTSK.Algebra.Hecke.g2HeckeT_quadratic`](https://github.com/grwtsk/math/blob/98d270be28e23dd0bbfea74540025db387b472af/GRWTSK/Algebra/Hecke/G2BraidSixMatrices.lean#L26); blob `f79b56b1c37dd53c88a97eab69d69b5126bf7828`.
- **Unverified current source:** [`GRWTSK.Algebra.Hecke.g2HeckeST_square`](https://github.com/grwtsk/math/blob/98d270be28e23dd0bbfea74540025db387b472af/GRWTSK/Algebra/Hecke/G2BraidSixMatrices.lean#L33); blob `f79b56b1c37dd53c88a97eab69d69b5126bf7828`.
- **Unverified current source:** [`GRWTSK.Algebra.Hecke.g2HeckeTS_square`](https://github.com/grwtsk/math/blob/98d270be28e23dd0bbfea74540025db387b472af/GRWTSK/Algebra/Hecke/G2BraidSixMatrices.lean#L41); blob `f79b56b1c37dd53c88a97eab69d69b5126bf7828`.
- **Unverified current source:** [`GRWTSK.Algebra.Hecke.g2HeckeST_cube`](https://github.com/grwtsk/math/blob/98d270be28e23dd0bbfea74540025db387b472af/GRWTSK/Algebra/Hecke/G2BraidSixMatrices.lean#L61); blob `f79b56b1c37dd53c88a97eab69d69b5126bf7828`.
- **Unverified current source:** [`GRWTSK.Algebra.Hecke.g2HeckeTS_cube`](https://github.com/grwtsk/math/blob/98d270be28e23dd0bbfea74540025db387b472af/GRWTSK/Algebra/Hecke/G2BraidSixMatrices.lean#L66); blob `f79b56b1c37dd53c88a97eab69d69b5126bf7828`.
- **Unverified current source:** [`GRWTSK.Algebra.Hecke.g2Hecke_braid_six`](https://github.com/grwtsk/math/blob/98d270be28e23dd0bbfea74540025db387b472af/GRWTSK/Algebra/Hecke/G2BraidSixMatrices.lean#L71); blob `f79b56b1c37dd53c88a97eab69d69b5126bf7828`.
- **Unverified current source:** [`GRWTSK.Algebra.Hecke.g2Hecke_at_one_involutions`](https://github.com/grwtsk/math/blob/98d270be28e23dd0bbfea74540025db387b472af/GRWTSK/Algebra/Hecke/G2BraidSixMatrices.lean#L78); blob `f79b56b1c37dd53c88a97eab69d69b5126bf7828`.
- **Unverified current source:** [`GRWTSK.Algebra.Hecke.g2Hecke_at_one_sixth_power`](https://github.com/grwtsk/math/blob/98d270be28e23dd0bbfea74540025db387b472af/GRWTSK/Algebra/Hecke/G2BraidSixMatrices.lean#L85); blob `f79b56b1c37dd53c88a97eab69d69b5126bf7828`.
- **Unverified current source:** [`GRWTSK.Algebra.Hecke.g2Hecke_at_one_cube_ne_one`](https://github.com/grwtsk/math/blob/98d270be28e23dd0bbfea74540025db387b472af/GRWTSK/Algebra/Hecke/G2BraidSixMatrices.lean#L92); blob `f79b56b1c37dd53c88a97eab69d69b5126bf7828`.
- **Unverified current source:** [`GRWTSK.Algebra.Hecke.g2TrivialCharacter_generator`](https://github.com/grwtsk/math/blob/98d270be28e23dd0bbfea74540025db387b472af/GRWTSK/Algebra/Hecke/G2Characters.lean#L19); blob `9252f4fd248ba3c69782d0cc50522b5d10dd4b8b`.
- **Unverified current source:** [`GRWTSK.Algebra.Hecke.g2SignCharacter_generator`](https://github.com/grwtsk/math/blob/98d270be28e23dd0bbfea74540025db387b472af/GRWTSK/Algebra/Hecke/G2Characters.lean#L23); blob `9252f4fd248ba3c69782d0cc50522b5d10dd4b8b`.
- **Unverified current source:** [`GRWTSK.Algebra.Hecke.g2Presented_scalar_injective`](https://github.com/grwtsk/math/blob/98d270be28e23dd0bbfea74540025db387b472af/GRWTSK/Algebra/Hecke/G2Characters.lean#L28); blob `9252f4fd248ba3c69782d0cc50522b5d10dd4b8b`.
- **Unverified current source:** [`GRWTSK.Algebra.Hecke.g2Presented_rankOne_coordinates_unique`](https://github.com/grwtsk/math/blob/98d270be28e23dd0bbfea74540025db387b472af/GRWTSK/Algebra/Hecke/G2Characters.lean#L36); blob `9252f4fd248ba3c69782d0cc50522b5d10dd4b8b`.
- **Unverified current source:** [`GRWTSK.Algebra.Hecke.g2Presented_zero_ne_one`](https://github.com/grwtsk/math/blob/98d270be28e23dd0bbfea74540025db387b472af/GRWTSK/Algebra/Hecke/G2Characters.lean#L51); blob `9252f4fd248ba3c69782d0cc50522b5d10dd4b8b`.

### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis

Local attribution: grwtsk contributors; unpublished. Publication date, DOI and arXiv remain unestablished. Exact original PDF version SHA-256 `553f237f431fc2991860dfb72890a3ebb6d02de0adc14daa7e6af901c5f74a1f`. PDF p. 2 supplies the Hecke convention; p. 3 supplies the G2 example. Exact historical page anchors/hashes and typed manuscript dates remain in JSON. Original hashes do not certify redacted attribution displays or these edited proof bytes.

[Exact source version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/C%20%289%29.pdf); original blob `68757e7d6f23427e3487d3166928241025ce0ea6`.

- **Unverified current source:** [`GRWTSK.Algebra.Hecke.g2HeckeS_quadratic`](https://github.com/grwtsk/math/blob/98d270be28e23dd0bbfea74540025db387b472af/GRWTSK/Algebra/Hecke/G2BraidSixMatrices.lean#L19); blob `f79b56b1c37dd53c88a97eab69d69b5126bf7828`.
- **Unverified current source:** [`GRWTSK.Algebra.Hecke.g2HeckeT_quadratic`](https://github.com/grwtsk/math/blob/98d270be28e23dd0bbfea74540025db387b472af/GRWTSK/Algebra/Hecke/G2BraidSixMatrices.lean#L26); blob `f79b56b1c37dd53c88a97eab69d69b5126bf7828`.
- **Unverified current source:** [`GRWTSK.Algebra.Hecke.g2HeckeST_square`](https://github.com/grwtsk/math/blob/98d270be28e23dd0bbfea74540025db387b472af/GRWTSK/Algebra/Hecke/G2BraidSixMatrices.lean#L33); blob `f79b56b1c37dd53c88a97eab69d69b5126bf7828`.
- **Unverified current source:** [`GRWTSK.Algebra.Hecke.g2HeckeTS_square`](https://github.com/grwtsk/math/blob/98d270be28e23dd0bbfea74540025db387b472af/GRWTSK/Algebra/Hecke/G2BraidSixMatrices.lean#L41); blob `f79b56b1c37dd53c88a97eab69d69b5126bf7828`.
- **Unverified current source:** [`GRWTSK.Algebra.Hecke.g2HeckeST_cube`](https://github.com/grwtsk/math/blob/98d270be28e23dd0bbfea74540025db387b472af/GRWTSK/Algebra/Hecke/G2BraidSixMatrices.lean#L61); blob `f79b56b1c37dd53c88a97eab69d69b5126bf7828`.
- **Unverified current source:** [`GRWTSK.Algebra.Hecke.g2HeckeTS_cube`](https://github.com/grwtsk/math/blob/98d270be28e23dd0bbfea74540025db387b472af/GRWTSK/Algebra/Hecke/G2BraidSixMatrices.lean#L66); blob `f79b56b1c37dd53c88a97eab69d69b5126bf7828`.
- **Unverified current source:** [`GRWTSK.Algebra.Hecke.g2Hecke_braid_six`](https://github.com/grwtsk/math/blob/98d270be28e23dd0bbfea74540025db387b472af/GRWTSK/Algebra/Hecke/G2BraidSixMatrices.lean#L71); blob `f79b56b1c37dd53c88a97eab69d69b5126bf7828`.
- **Unverified current source:** [`GRWTSK.Algebra.Hecke.g2Hecke_at_one_involutions`](https://github.com/grwtsk/math/blob/98d270be28e23dd0bbfea74540025db387b472af/GRWTSK/Algebra/Hecke/G2BraidSixMatrices.lean#L78); blob `f79b56b1c37dd53c88a97eab69d69b5126bf7828`.
- **Unverified current source:** [`GRWTSK.Algebra.Hecke.g2Hecke_at_one_sixth_power`](https://github.com/grwtsk/math/blob/98d270be28e23dd0bbfea74540025db387b472af/GRWTSK/Algebra/Hecke/G2BraidSixMatrices.lean#L85); blob `f79b56b1c37dd53c88a97eab69d69b5126bf7828`.
- **Unverified current source:** [`GRWTSK.Algebra.Hecke.g2Hecke_at_one_cube_ne_one`](https://github.com/grwtsk/math/blob/98d270be28e23dd0bbfea74540025db387b472af/GRWTSK/Algebra/Hecke/G2BraidSixMatrices.lean#L92); blob `f79b56b1c37dd53c88a97eab69d69b5126bf7828`.
- **Unverified current source:** [`GRWTSK.Algebra.Hecke.g2TrivialCharacter_generator`](https://github.com/grwtsk/math/blob/98d270be28e23dd0bbfea74540025db387b472af/GRWTSK/Algebra/Hecke/G2Characters.lean#L19); blob `9252f4fd248ba3c69782d0cc50522b5d10dd4b8b`.
- **Unverified current source:** [`GRWTSK.Algebra.Hecke.g2SignCharacter_generator`](https://github.com/grwtsk/math/blob/98d270be28e23dd0bbfea74540025db387b472af/GRWTSK/Algebra/Hecke/G2Characters.lean#L23); blob `9252f4fd248ba3c69782d0cc50522b5d10dd4b8b`.
- **Unverified current source:** [`GRWTSK.Algebra.Hecke.g2Presented_scalar_injective`](https://github.com/grwtsk/math/blob/98d270be28e23dd0bbfea74540025db387b472af/GRWTSK/Algebra/Hecke/G2Characters.lean#L28); blob `9252f4fd248ba3c69782d0cc50522b5d10dd4b8b`.
- **Unverified current source:** [`GRWTSK.Algebra.Hecke.g2Presented_rankOne_coordinates_unique`](https://github.com/grwtsk/math/blob/98d270be28e23dd0bbfea74540025db387b472af/GRWTSK/Algebra/Hecke/G2Characters.lean#L36); blob `9252f4fd248ba3c69782d0cc50522b5d10dd4b8b`.
- **Unverified current source:** [`GRWTSK.Algebra.Hecke.g2Presented_zero_ne_one`](https://github.com/grwtsk/math/blob/98d270be28e23dd0bbfea74540025db387b472af/GRWTSK/Algebra/Hecke/G2Characters.lean#L51); blob `9252f4fd248ba3c69782d0cc50522b5d10dd4b8b`.

## Verification scope

A new managed source-bound replay is running under the unchanged per-child 1024 MiB policy. Its profile selects ten matrix declarations and five character declarations, with seven exact-type checks in two additional consumer modules. Acceptance requires the complete fresh source closure, strict selected axiom audits, consumer success, final drift checks and exact host restoration. Allowed axioms remain propext, Classical.choice and Quot.sound. Installed Lean core remains a pinned trusted boundary. No existing project or upstream compiled cache is accepted as a substitute.

Portable rendering of the new actual command; exact path bindings and records remain in the external v18 evidence directory:

```text
python3 -B "$NOE_ROOT/managers/formalization/lean/environment/python/managed_contract_replay.py" run --registry "$EVIDENCE_ROOT/registry.json" --output "$EVIDENCE_ROOT/run-1"
```

Current candidates must not inherit old verification labels from earlier byte identities. The historic verified references in prior obligation states remain historical. No receipt, mutable controller state or runner is committed here.

## Missing bridges by taxonomy

Algebra K1 still lacks the twelve-element standard basis, general Coxeter/Laurent construction, semilinear bar and KL basis/recurrence. K2/K4/K5 retain degree, geometric positivity and analytic-realization gaps. Matrix faithfulness and E1 exceptional-group data remain open. Number theory, boundary geometry and recursive-refinement obligations are unchanged. These assistant-proposed matrix identities do not certify the printed KL table, any analytic realization, historical influence, reading event or understanding date. All original acceptance conditions remain explicit in the structured record.
