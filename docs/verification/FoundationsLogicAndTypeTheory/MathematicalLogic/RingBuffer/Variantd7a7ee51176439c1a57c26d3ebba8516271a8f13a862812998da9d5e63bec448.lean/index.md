# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.RingBuffer.Variantd7a7ee51176439c1a57c26d3ebba8516271a8f13a862812998da9d5e63bec448

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "998ed102f7714038599787d85e0dec7ced239130",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variantd7a7ee51176439c1a57c26d3ebba8516271a8f13a862812998da9d5e63bec448.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variantd7a7ee51176439c1a57c26d3ebba8516271a8f13a862812998da9d5e63bec448.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variantd7a7ee51176439c1a57c26d3ebba8516271a8f13a862812998da9d5e63bec448.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `998ed102f7714038599787d85e0dec7ced239130`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variantd7a7ee51176439c1a57c26d3ebba8516271a8f13a862812998da9d5e63bec448.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variantd7a7ee51176439c1a57c26d3ebba8516271a8f13a862812998da9d5e63bec448.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Runtime.RingState` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.Causal.ObserverFactor` — import line 7; external provider; requires a separately pinned dependency.
- `BitMatrix.Runtime.MatrixRing` — import line 8; external provider; requires a separately pinned dependency.
- `BitMatrix.Runtime.PacketRing` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ringSystem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variantd7a7ee51176439c1a57c26d3ebba8516271a8f13a862812998da9d5e63bec448.lean/declarations/ringsystem--9b7967dcbda970ff4ab77188.md) | 40 | `declaration-track:9b7967dcbda970ff4ab7718883ba995ed121bc3c41f2d21a1b6762815ba83242` |
| 2 | `def` | [fullObservation](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variantd7a7ee51176439c1a57c26d3ebba8516271a8f13a862812998da9d5e63bec448.lean/declarations/fullobservation--43fa67bcc385a5558e24ec37.md) | 50 | `declaration-track:43fa67bcc385a5558e24ec37b07d27fa5d7b9565d6f145ec521141005bcb37fd` |
| 3 | `theorem` | [fullObservation_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variantd7a7ee51176439c1a57c26d3ebba8516271a8f13a862812998da9d5e63bec448.lean/declarations/fullobservation-injective--e7e7a95f654f05ca080db484.md) | 55 | `result-track:e7e7a95f654f05ca080db484fbe07626c1618eaf16c891f9ac46f6c5ee925810` |
| 4 | `theorem` | [causalEquivalent_eq_of_fullObservation](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variantd7a7ee51176439c1a57c26d3ebba8516271a8f13a862812998da9d5e63bec448.lean/declarations/causalequivalent-eq-of-fullobservation--1181194d4af4a307473aaf04.md) | 63 | `result-track:1181194d4af4a307473aaf0425de2f0e2364b5836af08b93af76b1bcffe06340` |
| 5 | `def` | [causalStateEquivRingState](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variantd7a7ee51176439c1a57c26d3ebba8516271a8f13a862812998da9d5e63bec448.lean/declarations/causalstateequivringstate--86f09d2e4d472507b46adb7a.md) | 72 | `declaration-track:86f09d2e4d472507b46adb7a81b212418f021f825e72c3677d7141011d31c5c0` |
| 6 | `inductive` | [RingResolution](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variantd7a7ee51176439c1a57c26d3ebba8516271a8f13a862812998da9d5e63bec448.lean/declarations/ringresolution--21f68e411e0d9420cbf6ca2e.md) | 90 | `declaration-track:21f68e411e0d9420cbf6ca2e42bb11d5f1aa28963d6d6099343e18a7de97a4d5` |
| 7 | `def` | [RingObservation](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variantd7a7ee51176439c1a57c26d3ebba8516271a8f13a862812998da9d5e63bec448.lean/declarations/ringobservation--a74df1c3349376971caabff7.md) | 96 | `declaration-track:a74df1c3349376971caabff7b993af916d2a6ffeefdcb5995cbcef20c50f4041` |
| 8 | `def` | [observedRingSystem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variantd7a7ee51176439c1a57c26d3ebba8516271a8f13a862812998da9d5e63bec448.lean/declarations/observedringsystem--ee81464ea4ce03709920d2c1.md) | 103 | `declaration-track:ee81464ea4ce03709920d2c1f4b5fcd727ed8e1d5c82b0de8d7135596a1d7ecc` |
| 9 | `def` | [latestObserverReducer](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variantd7a7ee51176439c1a57c26d3ebba8516271a8f13a862812998da9d5e63bec448.lean/declarations/latestobserverreducer--75ea0c35f4f8b678fd596f68.md) | 115 | `declaration-track:75ea0c35f4f8b678fd596f686488c3853497eac2b880075f062b1323835dc95c` |
| 10 | `def` | [customObservedRingSystem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variantd7a7ee51176439c1a57c26d3ebba8516271a8f13a862812998da9d5e63bec448.lean/declarations/customobservedringsystem--c6e044a922890ac250a869b3.md) | 152 | `declaration-track:c6e044a922890ac250a869b3c8371e97d06b70fc19e971309819bb4fa3bb734b` |
| 11 | `def` | [retainedStateObserverReducer](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variantd7a7ee51176439c1a57c26d3ebba8516271a8f13a862812998da9d5e63bec448.lean/declarations/retainedstateobserverreducer--fcae867eaeaed95fcd4b6363.md) | 168 | `declaration-track:fcae867eaeaed95fcd4b6363d8fdc9af463326f6dc13fa9461e32208875ab9fa` |
| 12 | `def` | [fixedWindowObservation](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variantd7a7ee51176439c1a57c26d3ebba8516271a8f13a862812998da9d5e63bec448.lean/declarations/fixedwindowobservation--fb529d37615ceb32e6c24e4e.md) | 186 | `declaration-track:fb529d37615ceb32e6c24e4eb8b9b555d61e0b724e4ad9c1bdcc0489e010e590` |
| 13 | `def` | [latestDecodedSummary](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variantd7a7ee51176439c1a57c26d3ebba8516271a8f13a862812998da9d5e63bec448.lean/declarations/latestdecodedsummary--618c47db79386afa2a792c3c.md) | 199 | `declaration-track:618c47db79386afa2a792c3ce8b6b698b184ecf26674fd6b89c93d827f2df6e2` |
| 14 | `def` | [latestDigestObservation](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variantd7a7ee51176439c1a57c26d3ebba8516271a8f13a862812998da9d5e63bec448.lean/declarations/latestdigestobservation--e1965ec38cda149b4f721f62.md) | 206 | `declaration-track:e1965ec38cda149b4f721f62b74fdbc17ebdc11377320d647b9c55041e44c653` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
