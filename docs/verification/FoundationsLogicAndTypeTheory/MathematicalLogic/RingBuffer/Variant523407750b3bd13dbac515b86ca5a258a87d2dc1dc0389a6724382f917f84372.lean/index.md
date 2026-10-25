# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.RingBuffer.Variant523407750b3bd13dbac515b86ca5a258a87d2dc1dc0389a6724382f917f84372

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3387bea87e6397c19313214ddbbf292fca77926d",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variant523407750b3bd13dbac515b86ca5a258a87d2dc1dc0389a6724382f917f84372.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variant523407750b3bd13dbac515b86ca5a258a87d2dc1dc0389a6724382f917f84372.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variant523407750b3bd13dbac515b86ca5a258a87d2dc1dc0389a6724382f917f84372.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3387bea87e6397c19313214ddbbf292fca77926d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variant523407750b3bd13dbac515b86ca5a258a87d2dc1dc0389a6724382f917f84372.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variant523407750b3bd13dbac515b86ca5a258a87d2dc1dc0389a6724382f917f84372.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Runtime.RingState` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.Causal.ObserverFactor` — import line 7; external provider; requires a separately pinned dependency.
- `BinaryMatrix.Runtime.MatrixRing` — import line 8; external provider; requires a separately pinned dependency.
- `BinaryMatrix.Runtime.PacketRing` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ringSystem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variant523407750b3bd13dbac515b86ca5a258a87d2dc1dc0389a6724382f917f84372.lean/declarations/ringsystem--2cf6cfaa95df673d54606aeb.md) | 40 | `declaration-track:2cf6cfaa95df673d54606aeb9407087c077002a3acfa161ababfeca951499f84` |
| 2 | `def` | [fullObservation](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variant523407750b3bd13dbac515b86ca5a258a87d2dc1dc0389a6724382f917f84372.lean/declarations/fullobservation--8dca76194fdfd0fbedc63d8a.md) | 50 | `declaration-track:8dca76194fdfd0fbedc63d8a320bf474603f868641ae829d64862c76e49f1ef0` |
| 3 | `theorem` | [fullObservation_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variant523407750b3bd13dbac515b86ca5a258a87d2dc1dc0389a6724382f917f84372.lean/declarations/fullobservation-injective--99edd88a9e8f214ec0128ef0.md) | 55 | `result-track:99edd88a9e8f214ec0128ef040834651db241f12d8b7a46aa3c17eb2452bb6ec` |
| 4 | `theorem` | [causalEquivalent_eq_of_fullObservation](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variant523407750b3bd13dbac515b86ca5a258a87d2dc1dc0389a6724382f917f84372.lean/declarations/causalequivalent-eq-of-fullobservation--da46331a6c7219677b15f8f6.md) | 63 | `result-track:da46331a6c7219677b15f8f6db96640f570fe958a1ca9c6f2ba19a6aa7e7ba21` |
| 5 | `def` | [causalStateEquivRingState](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variant523407750b3bd13dbac515b86ca5a258a87d2dc1dc0389a6724382f917f84372.lean/declarations/causalstateequivringstate--da3c34674fe7b47d5a5d999d.md) | 72 | `declaration-track:da3c34674fe7b47d5a5d999d48a5f2d0bd5a9563953dcd98dda704a0fec22db2` |
| 6 | `inductive` | [RingResolution](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variant523407750b3bd13dbac515b86ca5a258a87d2dc1dc0389a6724382f917f84372.lean/declarations/ringresolution--4d87839e547c724aa24922d7.md) | 90 | `declaration-track:4d87839e547c724aa24922d736732a322f16c08846ac2edfbc657725ece4e035` |
| 7 | `def` | [RingObservation](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variant523407750b3bd13dbac515b86ca5a258a87d2dc1dc0389a6724382f917f84372.lean/declarations/ringobservation--2cfced9f7a48bab95558bfff.md) | 96 | `declaration-track:2cfced9f7a48bab95558bfff928786d274a2469579c575395f797cb8a101523e` |
| 8 | `def` | [observedRingSystem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variant523407750b3bd13dbac515b86ca5a258a87d2dc1dc0389a6724382f917f84372.lean/declarations/observedringsystem--b8a5e8dc4824b2ea629a00d9.md) | 103 | `declaration-track:b8a5e8dc4824b2ea629a00d91f800bd9df615d80d332b282fc61c9134499e9a5` |
| 9 | `def` | [latestObserverReducer](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variant523407750b3bd13dbac515b86ca5a258a87d2dc1dc0389a6724382f917f84372.lean/declarations/latestobserverreducer--f60821d74521ce6f72cb818b.md) | 115 | `declaration-track:f60821d74521ce6f72cb818b9b7c9aa7764ef232e5099f3168a1915d470516f1` |
| 10 | `def` | [customObservedRingSystem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variant523407750b3bd13dbac515b86ca5a258a87d2dc1dc0389a6724382f917f84372.lean/declarations/customobservedringsystem--edbe939a41d5fd30705609cf.md) | 152 | `declaration-track:edbe939a41d5fd30705609cf310c76f34ac676f7184753aa8138cf6a93dbd1ba` |
| 11 | `def` | [retainedStateObserverReducer](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variant523407750b3bd13dbac515b86ca5a258a87d2dc1dc0389a6724382f917f84372.lean/declarations/retainedstateobserverreducer--13e22e232cbf794d82cd75e3.md) | 168 | `declaration-track:13e22e232cbf794d82cd75e3e6e0a1bcdda5094a2fccd009bd721096e86f5227` |
| 12 | `def` | [fixedWindowObservation](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variant523407750b3bd13dbac515b86ca5a258a87d2dc1dc0389a6724382f917f84372.lean/declarations/fixedwindowobservation--b11b7325cdb3a60cf7ead145.md) | 186 | `declaration-track:b11b7325cdb3a60cf7ead14587b3b28a19068545410502294b9ab47466392f56` |
| 13 | `def` | [latestDecodedSummary](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variant523407750b3bd13dbac515b86ca5a258a87d2dc1dc0389a6724382f917f84372.lean/declarations/latestdecodedsummary--051586b3f36fea9ea4069c10.md) | 199 | `declaration-track:051586b3f36fea9ea4069c10f84ce39756efbd2a7a7b0cec04d1ba038df757cc` |
| 14 | `def` | [latestDigestObservation](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variant523407750b3bd13dbac515b86ca5a258a87d2dc1dc0389a6724382f917f84372.lean/declarations/latestdigestobservation--f008ab29c0af7d7c718c4594.md) | 206 | `declaration-track:f008ab29c0af7d7c718c45948d3165fe80a3998ae574bf5adce35ab7a7cc8900` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
