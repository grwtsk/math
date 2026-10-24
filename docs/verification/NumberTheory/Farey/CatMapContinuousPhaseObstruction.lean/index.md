# Verification target: GRWTSK.NumberTheory.Farey.CatMapContinuousPhaseObstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b80d1961aaf5d63cdb2922e9bc72097bea3012d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Farey/CatMapContinuousPhaseObstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Farey/CatMapContinuousPhaseObstruction.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Farey/CatMapContinuousPhaseObstruction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b80d1961aaf5d63cdb2922e9bc72097bea3012d`.

Source path: `GRWTSK/NumberTheory/Farey/CatMapContinuousPhaseObstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Farey/CatMapContinuousPhaseObstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Farey.CatMapArithmeticBridge`](../../../../mathematics/NumberTheory/Farey/CatMapArithmeticBridge.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib.Topology.Instances.Complex` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HasOddLocalReturns](../../../../mathematics/NumberTheory/Farey/CatMapContinuousPhaseObstruction.lean/declarations/hasoddlocalreturns--456b5c23da7b6f4bac0a23e7.md) | 46 | `declaration-track:456b5c23da7b6f4bac0a23e74fdcf41f3c6d2c0e528272e98044ebee68e6265c` |
| 2 | `def` | [EventualOpenMixing](../../../../mathematics/NumberTheory/Farey/CatMapContinuousPhaseObstruction.lean/declarations/eventualopenmixing--098b8f7cf234b76f29d35dfe.md) | 52 | `declaration-track:098b8f7cf234b76f29d35dfef058b1c3af217efb734f75cd33d1dd60eefab602` |
| 3 | `theorem` | [oddLocalReturns_of_eventualOpenMixing](../../../../mathematics/NumberTheory/Farey/CatMapContinuousPhaseObstruction.lean/declarations/oddlocalreturns-of-eventualopenmixing--3112457f97bddf7590b2ff25.md) | 58 | `result-track:3112457f97bddf7590b2ff257d6c19b198955f29a7a5428b39d9ec928f34232b` |
| 4 | `theorem` | [signEigen_iterate](../../../../mathematics/NumberTheory/Farey/CatMapContinuousPhaseObstruction.lean/declarations/signeigen-iterate--6992aac1c12834c3df9fdf33.md) | 68 | `result-track:6992aac1c12834c3df9fdf334c610a9be2921a35ee918ca713acd30e20de4ba0` |
| 5 | `theorem` | [signEigen_odd](../../../../mathematics/NumberTheory/Farey/CatMapContinuousPhaseObstruction.lean/declarations/signeigen-odd--9dd2ad70a6b51d287ed98e6c.md) | 79 | `result-track:9dd2ad70a6b51d287ed98e6c43f0b3c5236e91ddecbb573539b31564f6e151d1` |
| 6 | `theorem` | [no_continuous_signEigen_of_oddLocalReturns](../../../../mathematics/NumberTheory/Farey/CatMapContinuousPhaseObstruction.lean/declarations/no-continuous-signeigen-of-oddlocalreturns--3408a456e9aae28c23dc73e7.md) | 89 | `result-track:3408a456e9aae28c23dc73e74ab13df33af5f5820d3d305dae467cc8bd83034b` |
| 7 | `theorem` | [torsion_witness_positive](../../../../mathematics/NumberTheory/Farey/CatMapContinuousPhaseObstruction.lean/declarations/torsion-witness-positive--e596942a8bc6380eec26b818.md) | 107 | `result-track:e596942a8bc6380eec26b818f35901863d22aa27b30425ee7214238066b7dac5` |
| 8 | `theorem` | [no_continuous_cat_phase_extension_of_oddLocalReturns](../../../../mathematics/NumberTheory/Farey/CatMapContinuousPhaseObstruction.lean/declarations/no-continuous-cat-phase-extension-of-oddlocalreturns--5bce2e99106c8a24f416bafc.md) | 116 | `result-track:5bce2e99106c8a24f416bafce837c1a038e18d15866a5d734142d3e90c7c7226` |
| 9 | `theorem` | [no_continuous_cat_phase_extension_of_eventualOpenMixing](../../../../mathematics/NumberTheory/Farey/CatMapContinuousPhaseObstruction.lean/declarations/no-continuous-cat-phase-extension-of-eventualopenmixing--544e04e50f063cb1786c2814.md) | 133 | `result-track:544e04e50f063cb1786c281456f6f6b0f80ac6e49e9bc05569e5c804dfe203ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
