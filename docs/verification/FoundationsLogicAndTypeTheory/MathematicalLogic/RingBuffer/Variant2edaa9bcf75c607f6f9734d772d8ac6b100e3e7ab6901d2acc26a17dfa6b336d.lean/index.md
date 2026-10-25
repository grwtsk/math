# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.RingBuffer.Variant2edaa9bcf75c607f6f9734d772d8ac6b100e3e7ab6901d2acc26a17dfa6b336d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e0cbbd823beda0199af456cda83851e8ef3e4c9b",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variant2edaa9bcf75c607f6f9734d772d8ac6b100e3e7ab6901d2acc26a17dfa6b336d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variant2edaa9bcf75c607f6f9734d772d8ac6b100e3e7ab6901d2acc26a17dfa6b336d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variant2edaa9bcf75c607f6f9734d772d8ac6b100e3e7ab6901d2acc26a17dfa6b336d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e0cbbd823beda0199af456cda83851e8ef3e4c9b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variant2edaa9bcf75c607f6f9734d772d8ac6b100e3e7ab6901d2acc26a17dfa6b336d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variant2edaa9bcf75c607f6f9734d772d8ac6b100e3e7ab6901d2acc26a17dfa6b336d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Runtime.RingState` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Causal.ObserverFactor` — import line 2; external provider; requires a separately pinned dependency.
- `BinaryMatrix.Runtime.MatrixRing` — import line 3; external provider; requires a separately pinned dependency.
- `BinaryMatrix.Runtime.PacketRing` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ringSystem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variant2edaa9bcf75c607f6f9734d772d8ac6b100e3e7ab6901d2acc26a17dfa6b336d.lean/declarations/ringsystem--a185a908eb206d36c3b45525.md) | 32 | `declaration-track:a185a908eb206d36c3b455253eaee3a6b9a9b490f77b0e6d4e99fbf4ba783cf3` |
| 2 | `def` | [fullObservation](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variant2edaa9bcf75c607f6f9734d772d8ac6b100e3e7ab6901d2acc26a17dfa6b336d.lean/declarations/fullobservation--8c2a89ecf641472eeb536a20.md) | 42 | `declaration-track:8c2a89ecf641472eeb536a20553e2bfafcfc987cf32530077efb3591e2008d92` |
| 3 | `theorem` | [fullObservation_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variant2edaa9bcf75c607f6f9734d772d8ac6b100e3e7ab6901d2acc26a17dfa6b336d.lean/declarations/fullobservation-injective--193341e2c9127b57013cf965.md) | 47 | `result-track:193341e2c9127b57013cf9654bb924657862ee856d399798c73060530d304636` |
| 4 | `theorem` | [causalEquivalent_eq_of_fullObservation](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variant2edaa9bcf75c607f6f9734d772d8ac6b100e3e7ab6901d2acc26a17dfa6b336d.lean/declarations/causalequivalent-eq-of-fullobservation--9318423331642235e67070dd.md) | 55 | `result-track:9318423331642235e67070dd12efa0cdb310223b1ba265cc9b7c1c3d6e56df21` |
| 5 | `def` | [causalStateEquivRingState](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variant2edaa9bcf75c607f6f9734d772d8ac6b100e3e7ab6901d2acc26a17dfa6b336d.lean/declarations/causalstateequivringstate--98407557a1bbf61182d60594.md) | 64 | `declaration-track:98407557a1bbf61182d605946d139ad0c805363ea87f5189f8e8e72785deee2f` |
| 6 | `inductive` | [RingResolution](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variant2edaa9bcf75c607f6f9734d772d8ac6b100e3e7ab6901d2acc26a17dfa6b336d.lean/declarations/ringresolution--94805598f3e4738de226cb9f.md) | 82 | `declaration-track:94805598f3e4738de226cb9f36831678f2f5bebe42a7a032ff451cd832f22ca3` |
| 7 | `def` | [RingObservation](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variant2edaa9bcf75c607f6f9734d772d8ac6b100e3e7ab6901d2acc26a17dfa6b336d.lean/declarations/ringobservation--f8148ec96e11b366d305258e.md) | 88 | `declaration-track:f8148ec96e11b366d305258e540c93d29a92806fef25b543b620d9a798b4cac3` |
| 8 | `def` | [observedRingSystem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variant2edaa9bcf75c607f6f9734d772d8ac6b100e3e7ab6901d2acc26a17dfa6b336d.lean/declarations/observedringsystem--cad06a75b8d9d5bd5d2cac33.md) | 95 | `declaration-track:cad06a75b8d9d5bd5d2cac33f96cb9335709521c0aea81a786f4e14453fd5978` |
| 9 | `def` | [latestObserverReducer](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variant2edaa9bcf75c607f6f9734d772d8ac6b100e3e7ab6901d2acc26a17dfa6b336d.lean/declarations/latestobserverreducer--81ddb9510e600eb3b7028509.md) | 107 | `declaration-track:81ddb9510e600eb3b7028509dc1c5b51a48fdaf711dde696b43e97393a08bd9f` |
| 10 | `def` | [customObservedRingSystem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variant2edaa9bcf75c607f6f9734d772d8ac6b100e3e7ab6901d2acc26a17dfa6b336d.lean/declarations/customobservedringsystem--10e9ddb1eb02ffcb9ac72471.md) | 144 | `declaration-track:10e9ddb1eb02ffcb9ac72471c4efde46972b804eff075112887999b43f2e19b4` |
| 11 | `def` | [retainedStateObserverReducer](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variant2edaa9bcf75c607f6f9734d772d8ac6b100e3e7ab6901d2acc26a17dfa6b336d.lean/declarations/retainedstateobserverreducer--4743b2a64859505b6b179334.md) | 160 | `declaration-track:4743b2a64859505b6b17933448483abebce68af27999fb943b4391603c72eaa5` |
| 12 | `def` | [fixedWindowObservation](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variant2edaa9bcf75c607f6f9734d772d8ac6b100e3e7ab6901d2acc26a17dfa6b336d.lean/declarations/fixedwindowobservation--af4d6931b9bcf9b4b3d585a4.md) | 178 | `declaration-track:af4d6931b9bcf9b4b3d585a4590c299bac763d9a9920541f2b9cd10b3cb9ea52` |
| 13 | `def` | [latestDecodedSummary](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variant2edaa9bcf75c607f6f9734d772d8ac6b100e3e7ab6901d2acc26a17dfa6b336d.lean/declarations/latestdecodedsummary--e5154c74d55feca1f5935a11.md) | 191 | `declaration-track:e5154c74d55feca1f5935a115d444349b4e5bb8b4ee7a2b531128fe16e9f0f4e` |
| 14 | `def` | [latestDigestObservation](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/RingBuffer/Variant2edaa9bcf75c607f6f9734d772d8ac6b100e3e7ab6901d2acc26a17dfa6b336d.lean/declarations/latestdigestobservation--e281478bfd37054115c101dd.md) | 198 | `declaration-track:e281478bfd37054115c101dde96fca87935f654e45dd5b68b98f6f7afe6020bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
