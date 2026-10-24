# Verification target: GRWTSK.NumberTheory.Moebius.CoreGrowingShiftEndpointFiniteCyclicIntervalBridge

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "83e06ededa83a4e32e767f38cbc054da38dadd23",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicIntervalBridge.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicIntervalBridge.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicIntervalBridge.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `83e06ededa83a4e32e767f38cbc054da38dadd23`.

Source path: `GRWTSK/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicIntervalBridge.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicIntervalBridge.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.CharacterSums.FiniteCyclicInterval`](../../../../mathematics/NumberTheory/CharacterSums/FiniteCyclicInterval.lean/index.md) — import line 15; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.CoreGrowingShiftEndpointFiniteCyclicData`](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicData.lean/index.md) — import line 16; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coreGrowingShiftEndpointFiniteCyclicIntervalSum](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicIntervalBridge.lean/declarations/coregrowingshiftendpointfinitecyclicintervalsum--6b0cc24b2bed1e803f631748.md) | 28 | `declaration-track:6b0cc24b2bed1e803f63174811a26f960ccc34b1deddc61b5c29446f275a0b30` |
| 2 | `theorem` | [coreGrowingShiftEndpointFiniteCyclicNegativePhase_eq_stdAddChar](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicIntervalBridge.lean/declarations/coregrowingshiftendpointfinitecyclicnegativephase-eq-stdaddchar--f3afaa76c0e1f706616d3072.md) | 35 | `result-track:f3afaa76c0e1f706616d3072244d70573d5e70404a50f57f60e2945e36cf16e6` |
| 3 | `theorem` | [coreGrowingShiftEndpointFiniteCyclicInterval_multiplier_identity](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicIntervalBridge.lean/declarations/coregrowingshiftendpointfinitecyclicinterval-multiplier-identity--1738ce0425e1a2683b79a760.md) | 45 | `result-track:1738ce0425e1a2683b79a76076231fbae035a0180a29fab01cf3187dc8715709` |
| 4 | `theorem` | [coreGrowingShiftEndpointFiniteCyclicInterval_norm_le_invMultiplier](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicIntervalBridge.lean/declarations/coregrowingshiftendpointfinitecyclicinterval-norm-le-invmultiplier--bb6f73222490f0b395bfa810.md) | 60 | `result-track:bb6f73222490f0b395bfa81023c54216fbcaf7dd92a7252062129ce9b46aef47` |
| 5 | `theorem` | [coreGrowingShiftEndpointFiniteCyclicInterval_norm_le_distance](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicIntervalBridge.lean/declarations/coregrowingshiftendpointfinitecyclicinterval-norm-le-distance--4007eb25b8e8e6424579323c.md) | 74 | `result-track:4007eb25b8e8e6424579323c161d0e3c542b4b0a0f0d57c8edb0ed3de2098acf` |
| 6 | `theorem` | [coreGrowingShiftEndpointFiniteCyclicInterval_norm_le_cutoff](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicIntervalBridge.lean/declarations/coregrowingshiftendpointfinitecyclicinterval-norm-le-cutoff--5f48ef5ee998de936d92e016.md) | 108 | `result-track:5f48ef5ee998de936d92e016713fe75ab71cda29b4ec9591ad48b0243a79a7b8` |
| 7 | `theorem` | [coreGrowingShiftEndpointFiniteCyclicInterval_zero](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicIntervalBridge.lean/declarations/coregrowingshiftendpointfinitecyclicinterval-zero--9ac8722716987972b9a7196f.md) | 139 | `result-track:9ac8722716987972b9a7196f6ec19fbb5799ae0f78b1f2cd66c3a738d9be2d1c` |
| 8 | `theorem` | [coreGrowingShiftEndpointFiniteCyclicInterval_phaseMatched_obstruction](../../../../mathematics/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicIntervalBridge.lean/declarations/coregrowingshiftendpointfinitecyclicinterval-phasematched-obstruction--971dc928a7715a822b61adc5.md) | 150 | `result-track:971dc928a7715a822b61adc529f9c721c2eaf7000094a67f645448c292db0954` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
