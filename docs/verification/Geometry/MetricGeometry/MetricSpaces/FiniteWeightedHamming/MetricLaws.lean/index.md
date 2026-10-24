# Verification target: GRWTSK.Geometry.MetricGeometry.MetricSpaces.FiniteWeightedHamming.MetricLaws

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77451a827bf573047beea807d94f07afb69ed1ad",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/MetricGeometry/MetricSpaces/FiniteWeightedHamming/MetricLaws.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Geometry/MetricGeometry/MetricSpaces/FiniteWeightedHamming/MetricLaws.lean/index.md) · [Full source](../../../../../../mathematics/Geometry/MetricGeometry/MetricSpaces/FiniteWeightedHamming/MetricLaws.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77451a827bf573047beea807d94f07afb69ed1ad`.

Source path: `GRWTSK/Geometry/MetricGeometry/MetricSpaces/FiniteWeightedHamming/MetricLaws.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/MetricGeometry/MetricSpaces/FiniteWeightedHamming/MetricLaws.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Geometry.MetricGeometry.MetricSpaces.FiniteWeightedHamming.Bitfield`](../../../../../../mathematics/Geometry/MetricGeometry/MetricSpaces/FiniteWeightedHamming/Bitfield.lean/index.md) — import line 20; pinned internal source present.
- `Mathlib.Data.Real.Basic` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Basic` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 25; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PositiveWeights](../../../../../../mathematics/Geometry/MetricGeometry/MetricSpaces/FiniteWeightedHamming/MetricLaws.lean/declarations/positiveweights--b8617b0d573c52040cc00f54.md) | 39 | `declaration-track:b8617b0d573c52040cc00f545c05c331cb702928ffa59b06a3e41e50f1b5621a` |
| 2 | `def` | [weightedHamming](../../../../../../mathematics/Geometry/MetricGeometry/MetricSpaces/FiniteWeightedHamming/MetricLaws.lean/declarations/weightedhamming--424f906f50925371f4383904.md) | 43 | `declaration-track:424f906f50925371f43839046d3c8208c0c00b5a91b73f13897bdbb1084c3d94` |
| 3 | `theorem` | [weightedHamming_nonnegative](../../../../../../mathematics/Geometry/MetricGeometry/MetricSpaces/FiniteWeightedHamming/MetricLaws.lean/declarations/weightedhamming-nonnegative--7a4ce5e71c37fbab0e92834f.md) | 52 | `result-track:7a4ce5e71c37fbab0e92834f4a5843d57019a6372e099bc5d05322d3830bddeb` |
| 4 | `theorem` | [weightedHamming_self](../../../../../../mathematics/Geometry/MetricGeometry/MetricSpaces/FiniteWeightedHamming/MetricLaws.lean/declarations/weightedhamming-self--e1a9784a94385254234aaede.md) | 64 | `result-track:e1a9784a94385254234aaede1f450cb9805029e9e313d2e979fdb48ae35bad49` |
| 5 | `theorem` | [weightedHamming_symmetric](../../../../../../mathematics/Geometry/MetricGeometry/MetricSpaces/FiniteWeightedHamming/MetricLaws.lean/declarations/weightedhamming-symmetric--86526c608f778dc70a4531c4.md) | 71 | `result-track:86526c608f778dc70a4531c49a052e6bb28d264ebdb793409568db3e3b22b2b0` |
| 6 | `theorem` | [weightedHamming_triangle](../../../../../../mathematics/Geometry/MetricGeometry/MetricSpaces/FiniteWeightedHamming/MetricLaws.lean/declarations/weightedhamming-triangle--60961003a2b6fd2bac2f3426.md) | 85 | `result-track:60961003a2b6fd2bac2f3426b1a0b629ce5f156e5ea031d6ae8bfddbcbcc9307` |
| 7 | `theorem` | [weightedHamming_separates](../../../../../../mathematics/Geometry/MetricGeometry/MetricSpaces/FiniteWeightedHamming/MetricLaws.lean/declarations/weightedhamming-separates--f44865fd6b9f10999b3ff8ae.md) | 103 | `result-track:f44865fd6b9f10999b3ff8ae8eee02d077358421d44690bd949c73f85f0e35d3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
