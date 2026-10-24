# Hecke character candidates: fresh source replay pending

Current source binding: math `355dd3712e4e7a107f5953fd1a895b41e5641523`, Lean 4.33.0, mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`.

**All five target declarations remain SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.** A managed registry-v3 replay has begun fresh dependency compilation; no successful final receipt or target axiom readback exists at this checkpoint. Counts remain four completed optional/corrective obligations, fifteen partial results and seventeen unresolved obligations. All seven manuscript-level claims remain open.

[Structured record](obligation-implementation-progress-v14.json) retains the 36 obligation states, distinct manuscript versions, page anchors and all prior specifications unchanged. [Previous pending pass](obligation-implementation-progress-v13.md).

## Algebra — K1

The pending candidates construct trivial and sign characters, scalar injectivity, nontriviality of the quotient, and uniqueness of two coordinates. Character and scalar-map claims require CommRing R and arbitrary q:R; quotient nontriviality additionally requires Nontrivial R. Coordinate uniqueness requires NoZeroDivisors R and q+1 ≠ 0. Evaluating a·1+c·T=0 at the two characters gives a+cq=0 and a-c=0, hence c(q+1)=0. No coordinate-independence conclusion is claimed at q=-1. These remain proof scripts awaiting verification.

### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis

Local attribution: grwtsk contributors. Unpublished research; publication year, DOI and arXiv remain unestablished. Exact historical PDF version SHA-256 `159cb12b34d5a425a822b19a204ca2dccff897363f8978d15bd17fa166ad9a2d`. PDF p. 2: Hecke convention; p. 3: G2 example. Typed manuscript dates and exact page anchors remain in JSON. Preserved original hashes do not certify redacted attribution displays or establish fresh proof verification.

[Exact source version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/C%20%287%29.pdf); original blob `321ef7c1fa5685faac750558754f8d0e2906fe14`.

- **Unverified source candidate:** [`GRWTSK.Algebra.Hecke.g2TrivialCharacter_generator`](https://github.com/grwtsk/math/blob/355dd3712e4e7a107f5953fd1a895b41e5641523/GRWTSK/Algebra/Hecke/G2Characters.lean#L19); blob `9252f4fd248ba3c69782d0cc50522b5d10dd4b8b`.
- **Unverified source candidate:** [`GRWTSK.Algebra.Hecke.g2SignCharacter_generator`](https://github.com/grwtsk/math/blob/355dd3712e4e7a107f5953fd1a895b41e5641523/GRWTSK/Algebra/Hecke/G2Characters.lean#L23); blob `9252f4fd248ba3c69782d0cc50522b5d10dd4b8b`.
- **Unverified source candidate:** [`GRWTSK.Algebra.Hecke.g2Presented_scalar_injective`](https://github.com/grwtsk/math/blob/355dd3712e4e7a107f5953fd1a895b41e5641523/GRWTSK/Algebra/Hecke/G2Characters.lean#L28); blob `9252f4fd248ba3c69782d0cc50522b5d10dd4b8b`.
- **Unverified source candidate:** [`GRWTSK.Algebra.Hecke.g2Presented_rankOne_coordinates_unique`](https://github.com/grwtsk/math/blob/355dd3712e4e7a107f5953fd1a895b41e5641523/GRWTSK/Algebra/Hecke/G2Characters.lean#L36); blob `9252f4fd248ba3c69782d0cc50522b5d10dd4b8b`.
- **Unverified source candidate:** [`GRWTSK.Algebra.Hecke.g2Presented_zero_ne_one`](https://github.com/grwtsk/math/blob/355dd3712e4e7a107f5953fd1a895b41e5641523/GRWTSK/Algebra/Hecke/G2Characters.lean#L51); blob `9252f4fd248ba3c69782d0cc50522b5d10dd4b8b`.

### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis

Local attribution: grwtsk contributors. Unpublished research; publication year, DOI and arXiv remain unestablished. Exact historical PDF version SHA-256 `553f237f431fc2991860dfb72890a3ebb6d02de0adc14daa7e6af901c5f74a1f`. PDF p. 2: Hecke convention; p. 3: G2 example. Typed manuscript dates and exact page anchors remain in JSON. Preserved original hashes do not certify redacted attribution displays or establish fresh proof verification.

[Exact source version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/C%20%289%29.pdf); original blob `68757e7d6f23427e3487d3166928241025ce0ea6`.

- **Unverified source candidate:** [`GRWTSK.Algebra.Hecke.g2TrivialCharacter_generator`](https://github.com/grwtsk/math/blob/355dd3712e4e7a107f5953fd1a895b41e5641523/GRWTSK/Algebra/Hecke/G2Characters.lean#L19); blob `9252f4fd248ba3c69782d0cc50522b5d10dd4b8b`.
- **Unverified source candidate:** [`GRWTSK.Algebra.Hecke.g2SignCharacter_generator`](https://github.com/grwtsk/math/blob/355dd3712e4e7a107f5953fd1a895b41e5641523/GRWTSK/Algebra/Hecke/G2Characters.lean#L23); blob `9252f4fd248ba3c69782d0cc50522b5d10dd4b8b`.
- **Unverified source candidate:** [`GRWTSK.Algebra.Hecke.g2Presented_scalar_injective`](https://github.com/grwtsk/math/blob/355dd3712e4e7a107f5953fd1a895b41e5641523/GRWTSK/Algebra/Hecke/G2Characters.lean#L28); blob `9252f4fd248ba3c69782d0cc50522b5d10dd4b8b`.
- **Unverified source candidate:** [`GRWTSK.Algebra.Hecke.g2Presented_rankOne_coordinates_unique`](https://github.com/grwtsk/math/blob/355dd3712e4e7a107f5953fd1a895b41e5641523/GRWTSK/Algebra/Hecke/G2Characters.lean#L36); blob `9252f4fd248ba3c69782d0cc50522b5d10dd4b8b`.
- **Unverified source candidate:** [`GRWTSK.Algebra.Hecke.g2Presented_zero_ne_one`](https://github.com/grwtsk/math/blob/355dd3712e4e7a107f5953fd1a895b41e5641523/GRWTSK/Algebra/Hecke/G2Characters.lean#L51); blob `9252f4fd248ba3c69782d0cc50522b5d10dd4b8b`.

## Verification scope

The source-bound managed run requires all 1,303 imported project/upstream modules to compile freshly under trust zero, then all five target declarations to pass strict transitive axiom audits and final source/runtime drift checks. Allowed axioms are propext, Classical.choice and Quot.sound. Installed Lean core remains a pinned trusted input. Dependency progress alone does not accept any target declaration, theorem interface, basis or manuscript claim.

Exact intended replay command:

```text
python3 -B /Users/think/Desktop/noeaaeue/managers/formalization/lean/environment/python/managed_contract_replay.py run --registry /Users/think/Desktop/.noeaaeue-runtime/formalization/literature-bridges-v14/registry.json --output /Users/think/Desktop/.noeaaeue-runtime/formalization/literature-bridges-v14/run-1
```

Operational logs, registry, native ownership and any eventual receipt remain outside this repository at the external path above. No receipt, runner or controller state is committed here. A matching successful receipt is required before promoting these candidates.

## Missing bridges by taxonomy

Algebra: K1 still lacks the twelve-element standard basis, general Coxeter/Laurent construction, semilinear bar, KL basis and recurrence. K2/K4/K5 retain their degree, geometric positivity and analytic-realization gaps. The matrix representation is not proved faithful and does not supply E1 exceptional-group data. Number theory, boundary geometry and recursive-refinement obligations are unchanged; all precise hypotheses and missing suppliers remain in the structured record. Imported mathematics, earlier verified fragments and the five new source candidates retain separate classifications. No historical influence, reading event or understanding date is inferred.
