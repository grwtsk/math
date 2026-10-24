# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightCanonicalThetaGridRecurrence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8275fc00ee2db9f6379ee6dc61869cc633f825ed",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalThetaGridRecurrence.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalThetaGridRecurrence.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalThetaGridRecurrence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8275fc00ee2db9f6379ee6dc61869cc633f825ed`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalThetaGridRecurrence.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalThetaGridRecurrence.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightUnboundedPrimeJump`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightUnboundedPrimeJump.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.PinnedPrimeWeightRatioSandwich`](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightRatioSandwich.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.NumberTheory.Chebyshev` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Lattice.Fold` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [canonicalThetaGridWindow](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalThetaGridRecurrence.lean/declarations/canonicalthetagridwindow--51b93e6abba54e7afa139918.md) | 50 | `declaration-track:51b93e6abba54e7afa1399186e332cb4fff40641e4c8d9923cbd1be5541def26` |
| 2 | `theorem` | [canonicalThetaGridWindow_nonempty](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalThetaGridRecurrence.lean/declarations/canonicalthetagridwindow-nonempty--04dfd5e05d394c50ea45bf1d.md) | 53 | `result-track:04dfd5e05d394c50ea45bf1dd744ecda8b557f422a40e5cb65d8cfa9434406f5` |
| 3 | `def` | [canonicalThetaGridEnvelope](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalThetaGridRecurrence.lean/declarations/canonicalthetagridenvelope--2ce647e2c1ae3502cefe9d7f.md) | 60 | `declaration-track:2ce647e2c1ae3502cefe9d7fad7d011f81159c0edacc4735276dd7da68c5c747` |
| 4 | `theorem` | [canonicalThetaGridEnvelope_grid_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalThetaGridRecurrence.lean/declarations/canonicalthetagridenvelope-grid-le--fe2760149cef43d68294a1af.md) | 66 | `result-track:fe2760149cef43d68294a1afd41be4e3f4f45b95cd0524479c17eb77c6ae8fc1` |
| 5 | `theorem` | [canonicalThetaGridEnvelope_ge_two](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalThetaGridRecurrence.lean/declarations/canonicalthetagridenvelope-ge-two--e1eeccdaae765a726d928b02.md) | 73 | `result-track:e1eeccdaae765a726d928b0276173ff12097b7967e923782e6a6200d41b714f4` |
| 6 | `theorem` | [canonicalThetaGridEnvelope_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalThetaGridRecurrence.lean/declarations/canonicalthetagridenvelope-nonnegative--0ce74b66ff3e63d13771a0f6.md) | 81 | `result-track:0ce74b66ff3e63d13771a0f67fc8be67bbddb01a1487efef3baaf655834619d9` |
| 7 | `theorem` | [canonicalThetaGridEnvelope_le_of_grid_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalThetaGridRecurrence.lean/declarations/canonicalthetagridenvelope-le-of-grid-bound--19abd618c7cce270d6a7ad03.md) | 88 | `result-track:19abd618c7cce270d6a7ad0312dacd21833fbbc9bcea937e18871e923bb5f7fc` |
| 8 | `theorem` | [canonicalThetaGridEnvelope_controls_real_octave](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalThetaGridRecurrence.lean/declarations/canonicalthetagridenvelope-controls-real-octave--8164a982b29f8b02db76e629.md) | 101 | `result-track:8164a982b29f8b02db76e6295d078254293b7d050774b5734188461f78b4c978` |
| 9 | `def` | [canonicalThetaPsiRootConstant](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalThetaGridRecurrence.lean/declarations/canonicalthetapsirootconstant--93bd9e6d88790253b927806c.md) | 144 | `declaration-track:93bd9e6d88790253b927806c3b36cb940efd38bb513d5c4e68e0dd2b72a2271b` |
| 10 | `theorem` | [canonicalThetaPsiRootConstant_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalThetaGridRecurrence.lean/declarations/canonicalthetapsirootconstant-nonnegative--fc1487830fb3b38b13bd9ff2.md) | 147 | `result-track:fc1487830fb3b38b13bd9ff2b9db505ee970668c6ebdddac55414218f0d6c368` |
| 11 | `theorem` | [psi_sub_theta_le_canonicalThetaPsiRootConstant](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalThetaGridRecurrence.lean/declarations/psi-sub-theta-le-canonicalthetapsirootconstant--7be4bdd19eff226406d48783.md) | 151 | `result-track:7be4bdd19eff226406d487837d12b8a246623b574a73f3f7b956414278a3583f` |
| 12 | `def` | [canonicalThetaGridRootBudget](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalThetaGridRecurrence.lean/declarations/canonicalthetagridrootbudget--0d0a96f10231fa02a5af4e0a.md) | 167 | `declaration-track:0d0a96f10231fa02a5af4e0ae3f95b4fb4076d370b81200c77bbe86ca98d584a` |
| 13 | `theorem` | [canonicalThetaGridRootBudget_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalThetaGridRecurrence.lean/declarations/canonicalthetagridrootbudget-nonnegative--96d571a24cd10dccb92bebe8.md) | 170 | `result-track:96d571a24cd10dccb92bebe8c102c0ba5c903ecec54bfa30c9ae4fea8f123e2e` |
| 14 | `theorem` | [canonicalThetaGrid_sqrt_next_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalThetaGridRecurrence.lean/declarations/canonicalthetagrid-sqrt-next-le--8b69c98b8ca0a7fcd394b0fd.md) | 177 | `result-track:8b69c98b8ca0a7fcd394b0fded33a2a112955e467146d1029a08183a8dd306b9` |
| 15 | `theorem` | [integerPsiCapacity_to_canonicalThetaGridRecurrence](../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedPrimeWeightCanonicalThetaGridRecurrence.lean/declarations/integerpsicapacity-to-canonicalthetagridrecurrence--a974b7a94958d19889391507.md) | 194 | `result-track:a974b7a94958d19889391507bfecfab03cdc731f566298c3a89f44f465707ced` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
