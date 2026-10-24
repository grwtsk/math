# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ObserverLoop.Variant3eb2b187c897e5551ff1d47fb95ed4ed8ab31bed55cd099e89834094ba09eb23

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8f30f4415215734f5dd432b177b076c0f3614db4",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObserverLoop/Variant3eb2b187c897e5551ff1d47fb95ed4ed8ab31bed55cd099e89834094ba09eb23.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObserverLoop/Variant3eb2b187c897e5551ff1d47fb95ed4ed8ab31bed55cd099e89834094ba09eb23.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObserverLoop/Variant3eb2b187c897e5551ff1d47fb95ed4ed8ab31bed55cd099e89834094ba09eb23.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8f30f4415215734f5dd432b177b076c0f3614db4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObserverLoop/Variant3eb2b187c897e5551ff1d47fb95ed4ed8ab31bed55cd099e89834094ba09eb23.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObserverLoop/Variant3eb2b187c897e5551ff1d47fb95ed4ed8ab31bed55cd099e89834094ba09eb23.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Causal.QuantizerTower` — import line 1; external provider; requires a separately pinned dependency.
- `FilesystemCodec.Commitment` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [transportSystem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObserverLoop/Variant3eb2b187c897e5551ff1d47fb95ed4ed8ab31bed55cd099e89834094ba09eb23.lean/declarations/transportsystem--ab94c56151e7d61c6708a4bd.md) | 29 | `declaration-track:ab94c56151e7d61c6708a4bd58a66c83d3746961ad28914a6f74a2249d609af5` |
| 2 | `theorem` | [transportSystem_step_code](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObserverLoop/Variant3eb2b187c897e5551ff1d47fb95ed4ed8ab31bed55cd099e89834094ba09eb23.lean/declarations/transportsystem-step-code--107b0420413771f3ffbb86dc.md) | 42 | `result-track:107b0420413771f3ffbb86dc9ee726a06cbe4223a9708559fdc391bb095f83bc` |
| 3 | `theorem` | [transportSystem_observe_code](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObserverLoop/Variant3eb2b187c897e5551ff1d47fb95ed4ed8ab31bed55cd099e89834094ba09eb23.lean/declarations/transportsystem-observe-code--a222e73e218d84954c4a4a48.md) | 56 | `result-track:a222e73e218d84954c4a4a489e1f7acc1b018d434ef74cd11213caff75644336` |
| 4 | `theorem` | [transportSystem_run_code](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObserverLoop/Variant3eb2b187c897e5551ff1d47fb95ed4ed8ab31bed55cd099e89834094ba09eb23.lean/declarations/transportsystem-run-code--c6f4925a497320d6f78e53cb.md) | 70 | `result-track:c6f4925a497320d6f78e53cb7a25624b1d7bfe34e2fc4490a5858adc6db89c77` |
| 5 | `theorem` | [transportSystem_run](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObserverLoop/Variant3eb2b187c897e5551ff1d47fb95ed4ed8ab31bed55cd099e89834094ba09eb23.lean/declarations/transportsystem-run--da009d67d5ead3c1e77f8745.md) | 88 | `result-track:da009d67d5ead3c1e77f87450408d9d223a29f32ee15b709502974a079f31c77` |
| 6 | `def` | [packetSystem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObserverLoop/Variant3eb2b187c897e5551ff1d47fb95ed4ed8ab31bed55cd099e89834094ba09eb23.lean/declarations/packetsystem--d9998bc4259aec88b8d912d4.md) | 103 | `declaration-track:d9998bc4259aec88b8d912d499797696d359b69f93b343e140884e84e6501ce9` |
| 7 | `theorem` | [transport_causalEquivalent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObserverLoop/Variant3eb2b187c897e5551ff1d47fb95ed4ed8ab31bed55cd099e89834094ba09eb23.lean/declarations/transport-causalequivalent--bc470b19f37eea5e205528ec.md) | 113 | `result-track:bc470b19f37eea5e205528ec2b3c8469318b6d594a6a2dcf4fc38e5d70a99098` |
| 8 | `def` | [filesystemCausalStateEquivPacketCausalState](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObserverLoop/Variant3eb2b187c897e5551ff1d47fb95ed4ed8ab31bed55cd099e89834094ba09eb23.lean/declarations/filesystemcausalstateequivpacketcausalstate--e41ec0c201378c660ae50817.md) | 128 | `declaration-track:e41ec0c201378c660ae5081770baa734d90ae95e427ae65d719eca15884c99de` |
| 9 | `theorem` | [filesystemCausalStateEquivPacketCausalState_toCausal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObserverLoop/Variant3eb2b187c897e5551ff1d47fb95ed4ed8ab31bed55cd099e89834094ba09eb23.lean/declarations/filesystemcausalstateequivpacketcausalstate-tocausal--199c1df1013bbad3dd48061d.md) | 167 | `result-track:199c1df1013bbad3dd48061d3f3c7b777483667fbe998a2c90f52d1f88b745d7` |
| 10 | `def` | [fullPacketSystem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObserverLoop/Variant3eb2b187c897e5551ff1d47fb95ed4ed8ab31bed55cd099e89834094ba09eb23.lean/declarations/fullpacketsystem--d4f6e6385fdb3939efdeb0df.md) | 183 | `declaration-track:d4f6e6385fdb3939efdeb0df99c2e8ef70fe8be82a85f452640696508c516ced` |
| 11 | `def` | [matrixOnlyPacketSystem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObserverLoop/Variant3eb2b187c897e5551ff1d47fb95ed4ed8ab31bed55cd099e89834094ba09eb23.lean/declarations/matrixonlypacketsystem--bdecf13993e1646663036039.md) | 193 | `declaration-track:bdecf13993e16466630360396006813ba416a85567f24f0a62e90fd02e0c7c15` |
| 12 | `theorem` | [identityRun](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObserverLoop/Variant3eb2b187c897e5551ff1d47fb95ed4ed8ab31bed55cd099e89834094ba09eb23.lean/declarations/identityrun--dabe2a8bc58acd90e8905f8b.md) | 202 | `result-track:dabe2a8bc58acd90e8905f8bf935362a2c9fcdedb1eda0cfae633ee9272389c8` |
| 13 | `theorem` | [fullPacket_causalEquivalent_iff_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObserverLoop/Variant3eb2b187c897e5551ff1d47fb95ed4ed8ab31bed55cd099e89834094ba09eb23.lean/declarations/fullpacket-causalequivalent-iff-eq--ef2ae2de193730d3520ad87b.md) | 216 | `result-track:ef2ae2de193730d3520ad87b4707cddf4274d9af01ebf68d7e77e2ca3aa02cbd` |
| 14 | `theorem` | [matrixOnly_causalEquivalent_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObserverLoop/Variant3eb2b187c897e5551ff1d47fb95ed4ed8ab31bed55cd099e89834094ba09eb23.lean/declarations/matrixonly-causalequivalent-iff--f19b18aae226b7ac4f0572b7.md) | 230 | `result-track:f19b18aae226b7ac4f0572b7dd87176c0729c321da20bd1971a30ed022f53730` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
