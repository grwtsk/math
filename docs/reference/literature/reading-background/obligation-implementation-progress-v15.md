# Hecke character replay: dependency failure and source-asset repair

Current math source binding `a631c3ab52379eacf4c4fced9111fadd983b37ae`; Lean 4.33.0; mathlib `db584cd6d46c92f209a44c0f1c829460d327499d`.

**Five target candidates remain SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.** Counts remain four completed optional/corrective obligations, fifteen partial results and seventeen unresolved obligations. All seven manuscript-level claims remain open.

[Structured record](obligation-implementation-progress-v15.json) preserves all 36 obligation states, exact paper versions, page hashes, hypotheses and remaining suppliers. [Previous replay checkpoint](obligation-implementation-progress-v14.md).

## Algebra — K1

The five pending source candidates are trivial/sign character evaluations, scalar-map injectivity, quotient nontriviality and two-coordinate uniqueness. Character and scalar claims require CommRing R and arbitrary q:R. Quotient nontriviality additionally requires Nontrivial R. Coordinate uniqueness additionally requires NoZeroDivisors R and q+1 ≠ 0: the two character evaluations give a+cq=0 and a-c=0, forcing c(q+1)=0. No coordinate claim is made at q=-1. No newly checked bridge is asserted.

### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis

Local attribution: grwtsk contributors. Unpublished research; publication year, DOI and arXiv unestablished. Exact original PDF version SHA-256 `159cb12b34d5a425a822b19a204ca2dccff897363f8978d15bd17fa166ad9a2d`. PDF p. 2 supplies the Hecke convention; p. 3 supplies the G2 example. Typed manuscript dates and source/page hashes are preserved in JSON. Original identities do not certify redacted attribution displays or fresh proof acceptance.

[Exact source version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/C%20%287%29.pdf); original blob `321ef7c1fa5685faac750558754f8d0e2906fe14`.

- **Unverified source candidate:** [`GRWTSK.Algebra.Hecke.g2TrivialCharacter_generator`](https://github.com/grwtsk/math/blob/a631c3ab52379eacf4c4fced9111fadd983b37ae/GRWTSK/Algebra/Hecke/G2Characters.lean#L19); blob `9252f4fd248ba3c69782d0cc50522b5d10dd4b8b`.
- **Unverified source candidate:** [`GRWTSK.Algebra.Hecke.g2SignCharacter_generator`](https://github.com/grwtsk/math/blob/a631c3ab52379eacf4c4fced9111fadd983b37ae/GRWTSK/Algebra/Hecke/G2Characters.lean#L23); blob `9252f4fd248ba3c69782d0cc50522b5d10dd4b8b`.
- **Unverified source candidate:** [`GRWTSK.Algebra.Hecke.g2Presented_scalar_injective`](https://github.com/grwtsk/math/blob/a631c3ab52379eacf4c4fced9111fadd983b37ae/GRWTSK/Algebra/Hecke/G2Characters.lean#L28); blob `9252f4fd248ba3c69782d0cc50522b5d10dd4b8b`.
- **Unverified source candidate:** [`GRWTSK.Algebra.Hecke.g2Presented_rankOne_coordinates_unique`](https://github.com/grwtsk/math/blob/a631c3ab52379eacf4c4fced9111fadd983b37ae/GRWTSK/Algebra/Hecke/G2Characters.lean#L36); blob `9252f4fd248ba3c69782d0cc50522b5d10dd4b8b`.
- **Unverified source candidate:** [`GRWTSK.Algebra.Hecke.g2Presented_zero_ne_one`](https://github.com/grwtsk/math/blob/a631c3ab52379eacf4c4fced9111fadd983b37ae/GRWTSK/Algebra/Hecke/G2Characters.lean#L51); blob `9252f4fd248ba3c69782d0cc50522b5d10dd4b8b`.

### Kazhdan-Lusztig Polynomials and the Generalized Riemann Hypothesis

Local attribution: grwtsk contributors. Unpublished research; publication year, DOI and arXiv unestablished. Exact original PDF version SHA-256 `553f237f431fc2991860dfb72890a3ebb6d02de0adc14daa7e6af901c5f74a1f`. PDF p. 2 supplies the Hecke convention; p. 3 supplies the G2 example. Typed manuscript dates and source/page hashes are preserved in JSON. Original identities do not certify redacted attribution displays or fresh proof acceptance.

[Exact source version](https://github.com/grwtsk/spectral-proof-of-RH/blob/aab35df4b766ce864e95b4505e3a2c7ddc43d158/docs/graveyard/C%20%289%29.pdf); original blob `68757e7d6f23427e3487d3166928241025ce0ea6`.

- **Unverified source candidate:** [`GRWTSK.Algebra.Hecke.g2TrivialCharacter_generator`](https://github.com/grwtsk/math/blob/a631c3ab52379eacf4c4fced9111fadd983b37ae/GRWTSK/Algebra/Hecke/G2Characters.lean#L19); blob `9252f4fd248ba3c69782d0cc50522b5d10dd4b8b`.
- **Unverified source candidate:** [`GRWTSK.Algebra.Hecke.g2SignCharacter_generator`](https://github.com/grwtsk/math/blob/a631c3ab52379eacf4c4fced9111fadd983b37ae/GRWTSK/Algebra/Hecke/G2Characters.lean#L23); blob `9252f4fd248ba3c69782d0cc50522b5d10dd4b8b`.
- **Unverified source candidate:** [`GRWTSK.Algebra.Hecke.g2Presented_scalar_injective`](https://github.com/grwtsk/math/blob/a631c3ab52379eacf4c4fced9111fadd983b37ae/GRWTSK/Algebra/Hecke/G2Characters.lean#L28); blob `9252f4fd248ba3c69782d0cc50522b5d10dd4b8b`.
- **Unverified source candidate:** [`GRWTSK.Algebra.Hecke.g2Presented_rankOne_coordinates_unique`](https://github.com/grwtsk/math/blob/a631c3ab52379eacf4c4fced9111fadd983b37ae/GRWTSK/Algebra/Hecke/G2Characters.lean#L36); blob `9252f4fd248ba3c69782d0cc50522b5d10dd4b8b`.
- **Unverified source candidate:** [`GRWTSK.Algebra.Hecke.g2Presented_zero_ne_one`](https://github.com/grwtsk/math/blob/a631c3ab52379eacf4c4fced9111fadd983b37ae/GRWTSK/Algebra/Hecke/G2Characters.lean#L51); blob `9252f4fd248ba3c69782d0cc50522b5d10dd4b8b`.

## Actual verification limitation

The prior source-bound replay passed 393 dependency modules, then failed in ProofWidgets.Component.Basic because include_str could not find widget/js/interactiveExpr.js in the fresh source tree. No Hecke target compiled or produced an axiom audit. The failed receipt reports passed=false and exact host restoration; its external location and digest are in JSON. Partial dependency completion is not acceptance of any manuscript claim or new target.

Noe source `5c64676d9829f741b257e7ce81bc50bf3c25ad1c` adds a closed supplier for 27 tracked ProofWidgets JS/DSL/STY inputs from pinned Git blobs, with SHA-256/length binding, bounded safe paths, size limits and collision/drift rejection. All 28 managed replay regressions pass. This fixes the materialization contract in source; native qualification of the repair remains pending in the new full replay. No installed compiled package proofs are reused, and no arbitrary metaprogram IO discovery or widget build equivalence is claimed.

Current replay command:

```text
python3 -B /Users/think/Desktop/noeaaeue/managers/formalization/lean/environment/python/managed_contract_replay.py run --registry /Users/think/Desktop/.noeaaeue-runtime/formalization/literature-bridges-v15/registry.json --output /Users/think/Desktop/.noeaaeue-runtime/formalization/literature-bridges-v15/run-1
```

The new replay has native admission and began dependency compilation. Final acceptance requires all 1,303 modules, all five selected strict axiom audits (allowed: propext, Classical.choice, Quot.sound), and final drift checks. Installed Lean core remains a pinned trusted boundary. Operational state and receipts remain outside math. No success or axiom list is inferred from progress.

## Missing bridges by taxonomy

Algebra K1 still lacks the twelve-element standard basis, general Coxeter/Laurent construction, semilinear bar and KL basis/recurrence. K2/K4/K5 retain degree, geometry/positivity and analytic-realization gaps. Matrix faithfulness and E1 exceptional-group data remain open. Number theory, boundary geometry and recursive-refinement obligations are unchanged. These assistant-proposed source candidates do not certify a printed KL table or establish historical influence, reading or understanding dates. Imported mathematics, previous verified fragments, conditional interfaces, finite evidence and source candidates retain their separate classifications.
