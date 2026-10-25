# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.RingBuffer.Variantd6b2c0fed27b3c498d3d412797c9eb9cb3b8574037dadf7b769845c3f82b16ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3a9190154982a84997e9e54e5c9dd30ce326b0f",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variantd6b2c0fed27b3c498d3d412797c9eb9cb3b8574037dadf7b769845c3f82b16ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variantd6b2c0fed27b3c498d3d412797c9eb9cb3b8574037dadf7b769845c3f82b16ef.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variantd6b2c0fed27b3c498d3d412797c9eb9cb3b8574037dadf7b769845c3f82b16ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3a9190154982a84997e9e54e5c9dd30ce326b0f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variantd6b2c0fed27b3c498d3d412797c9eb9cb3b8574037dadf7b769845c3f82b16ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variantd6b2c0fed27b3c498d3d412797c9eb9cb3b8574037dadf7b769845c3f82b16ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Runtime.RingState` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Causal.ObserverFactor` — import line 2; external provider; requires a separately pinned dependency.
- `BitMatrix.Runtime.MatrixRing` — import line 3; external provider; requires a separately pinned dependency.
- `BitMatrix.Runtime.PacketRing` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ringSystem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variantd6b2c0fed27b3c498d3d412797c9eb9cb3b8574037dadf7b769845c3f82b16ef.lean/declarations/ringsystem--279c5e6b0e5beed417ba031f.md) | 32 | `declaration-track:279c5e6b0e5beed417ba031fce2ef0696b812a850fdca0cd2472e0116238df96` |
| 2 | `def` | [fullObservation](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variantd6b2c0fed27b3c498d3d412797c9eb9cb3b8574037dadf7b769845c3f82b16ef.lean/declarations/fullobservation--3c75a7f488f86b620cc8dfa1.md) | 42 | `declaration-track:3c75a7f488f86b620cc8dfa17a10fc1cb5ba9a04416e493b25c75ecb25dc925f` |
| 3 | `theorem` | [fullObservation_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variantd6b2c0fed27b3c498d3d412797c9eb9cb3b8574037dadf7b769845c3f82b16ef.lean/declarations/fullobservation-injective--b3319aa1c189945c430ff7a7.md) | 47 | `result-track:b3319aa1c189945c430ff7a7880f0be1f8d86ad52f0a68e83440da58295bce0e` |
| 4 | `theorem` | [causalEquivalent_eq_of_fullObservation](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variantd6b2c0fed27b3c498d3d412797c9eb9cb3b8574037dadf7b769845c3f82b16ef.lean/declarations/causalequivalent-eq-of-fullobservation--67b9a4e19636f5a23e8dcd93.md) | 55 | `result-track:67b9a4e19636f5a23e8dcd93910dd535c7877b420eb9651bae79e9fb7861f3c2` |
| 5 | `def` | [causalStateEquivRingState](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variantd6b2c0fed27b3c498d3d412797c9eb9cb3b8574037dadf7b769845c3f82b16ef.lean/declarations/causalstateequivringstate--408f4b2e5008d905d225e153.md) | 64 | `declaration-track:408f4b2e5008d905d225e1539942610496a9240cd73cb9744fd2f2cf001b8895` |
| 6 | `inductive` | [RingResolution](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variantd6b2c0fed27b3c498d3d412797c9eb9cb3b8574037dadf7b769845c3f82b16ef.lean/declarations/ringresolution--56d83fc5245bab16c008ddaa.md) | 82 | `declaration-track:56d83fc5245bab16c008ddaaa995a32b81ddb84cdfe5b1c170963c4ecd414d11` |
| 7 | `def` | [RingObservation](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variantd6b2c0fed27b3c498d3d412797c9eb9cb3b8574037dadf7b769845c3f82b16ef.lean/declarations/ringobservation--48fee8afb10cab525ec32279.md) | 88 | `declaration-track:48fee8afb10cab525ec322799ed37f15e0c6438b2f858b0e9c44252108928f0d` |
| 8 | `def` | [observedRingSystem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variantd6b2c0fed27b3c498d3d412797c9eb9cb3b8574037dadf7b769845c3f82b16ef.lean/declarations/observedringsystem--b6ef6ea7935997b04aafad56.md) | 95 | `declaration-track:b6ef6ea7935997b04aafad562f32bdeebe8e3111f39b8fdc5f03b8553c294a34` |
| 9 | `def` | [latestObserverReducer](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variantd6b2c0fed27b3c498d3d412797c9eb9cb3b8574037dadf7b769845c3f82b16ef.lean/declarations/latestobserverreducer--7a7ddde450abc549e78d4148.md) | 107 | `declaration-track:7a7ddde450abc549e78d4148b99976cb5d231566181f1c977c9c858695ffac10` |
| 10 | `def` | [customObservedRingSystem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variantd6b2c0fed27b3c498d3d412797c9eb9cb3b8574037dadf7b769845c3f82b16ef.lean/declarations/customobservedringsystem--2c2ef7d84dd6f1fcedd87b24.md) | 144 | `declaration-track:2c2ef7d84dd6f1fcedd87b248072cfddc58ecb035c34cafc106ead2341055725` |
| 11 | `def` | [retainedStateObserverReducer](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variantd6b2c0fed27b3c498d3d412797c9eb9cb3b8574037dadf7b769845c3f82b16ef.lean/declarations/retainedstateobserverreducer--a2800567d971df0b223a5db2.md) | 160 | `declaration-track:a2800567d971df0b223a5db2fc8fcebc31ffa6733007a00de9783d7c31f5cab7` |
| 12 | `def` | [fixedWindowObservation](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variantd6b2c0fed27b3c498d3d412797c9eb9cb3b8574037dadf7b769845c3f82b16ef.lean/declarations/fixedwindowobservation--5b7ae8c162811889f68fd627.md) | 178 | `declaration-track:5b7ae8c162811889f68fd627fd9265c43855ea104d9600066526eab8bb089c13` |
| 13 | `def` | [latestDecodedSummary](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variantd6b2c0fed27b3c498d3d412797c9eb9cb3b8574037dadf7b769845c3f82b16ef.lean/declarations/latestdecodedsummary--508ecd850012cbaf2da89240.md) | 191 | `declaration-track:508ecd850012cbaf2da89240810c2da90dbe553f121247f326d33d51f9c2b7c6` |
| 14 | `def` | [latestDigestObservation](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variantd6b2c0fed27b3c498d3d412797c9eb9cb3b8574037dadf7b769845c3f82b16ef.lean/declarations/latestdigestobservation--071143bb36b1920ae4c70b6f.md) | 198 | `declaration-track:071143bb36b1920ae4c70b6f6f8213397c8569c3b17493a0b610e87f86b9f2c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
