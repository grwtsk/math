# Verification target: GRWTSK.DynamicalSystems.RingObservation.Variantd6b2c0fed27b3c49.LatestEntryObserverFactor

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d689b4feebd3942e4ef0361cae15d5841f27d8ce",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DynamicalSystems/RingObservation/Variantd6b2c0fed27b3c49/LatestEntryObserverFactor.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/RingObservation/Variantd6b2c0fed27b3c49/LatestEntryObserverFactor.lean/index.md) · [Full source](../../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/RingObservation/Variantd6b2c0fed27b3c49/LatestEntryObserverFactor.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d689b4feebd3942e4ef0361cae15d5841f27d8ce`.

Source path: `GRWTSK/DynamicalSystems/RingObservation/Variantd6b2c0fed27b3c49/LatestEntryObserverFactor.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DynamicalSystems/RingObservation/Variantd6b2c0fed27b3c49/LatestEntryObserverFactor.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Runtime.RingState` — import line 19; external provider; requires a separately pinned dependency.
- `DAF.Causal.ObserverFactor` — import line 20; external provider; requires a separately pinned dependency.
- `BitMatrix.Runtime.MatrixRing` — import line 21; external provider; requires a separately pinned dependency.
- `BitMatrix.Runtime.PacketRing` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [RingResolution](../../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/RingObservation/Variantd6b2c0fed27b3c49/LatestEntryObserverFactor.lean/declarations/ringresolution--b63e53dfbb8ff55c83e423c3.md) | 52 | `declaration-track:b63e53dfbb8ff55c83e423c3e055423a0c5e72b281d2bb36772df631daf0d34f` |
| 2 | `def` | [RingObservation](../../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/RingObservation/Variantd6b2c0fed27b3c49/LatestEntryObserverFactor.lean/declarations/ringobservation--362c9def7c82d46488def1e0.md) | 58 | `declaration-track:362c9def7c82d46488def1e0e283f8cb75727533d2ca46d9e7a0ff49759ffdef` |
| 3 | `def` | [observedRingSystem](../../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/RingObservation/Variantd6b2c0fed27b3c49/LatestEntryObserverFactor.lean/declarations/observedringsystem--d93947d4c656db9528bd3d7a.md) | 65 | `declaration-track:d93947d4c656db9528bd3d7a9f566c06ae4f56087b81ba9bf6960123581c1f94` |
| 4 | `def` | [latestObserverReducer](../../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/RingObservation/Variantd6b2c0fed27b3c49/LatestEntryObserverFactor.lean/declarations/latestobserverreducer--bb5bff2e7fae3fe39ee8708c.md) | 77 | `declaration-track:bb5bff2e7fae3fe39ee8708cbf97d1fc09e48fc5e2a2573f7189d5469533c163` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
