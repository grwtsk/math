# Verification target: GRWTSK.DynamicalSystems.RingObservation.Variantd6b2c0fed27b3c49.RetainedStateObserverFactor

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1884ebc0c881741eefc7c41be4975c10748c2de7",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DynamicalSystems/RingObservation/Variantd6b2c0fed27b3c49/RetainedStateObserverFactor.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/RingObservation/Variantd6b2c0fed27b3c49/RetainedStateObserverFactor.lean/index.md) · [Full source](../../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/RingObservation/Variantd6b2c0fed27b3c49/RetainedStateObserverFactor.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1884ebc0c881741eefc7c41be4975c10748c2de7`.

Source path: `GRWTSK/DynamicalSystems/RingObservation/Variantd6b2c0fed27b3c49/RetainedStateObserverFactor.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DynamicalSystems/RingObservation/Variantd6b2c0fed27b3c49/RetainedStateObserverFactor.lean.json)

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
| 1 | `def` | [customObservedRingSystem](../../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/RingObservation/Variantd6b2c0fed27b3c49/RetainedStateObserverFactor.lean/declarations/customobservedringsystem--719c09dd9ee55c38620bfcbc.md) | 52 | `declaration-track:719c09dd9ee55c38620bfcbcb192da32d55b23207df0ea2904e99ccf0193b9e4` |
| 2 | `def` | [retainedStateObserverReducer](../../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/RingObservation/Variantd6b2c0fed27b3c49/RetainedStateObserverFactor.lean/declarations/retainedstateobserverreducer--ee818a0e282d455d08b3a367.md) | 68 | `declaration-track:ee818a0e282d455d08b3a3675e3243e9c9aae55d04cdf1dad1a4c4be91ac9fd8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
