# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ObserverLoop.Variant7b86e5a0a31ad5a6e003374f8146af61617c4355e8529a204eea29978dd9bbda

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17533eb00dd23c8612dc8fe8deb0e7febedb6243",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObserverLoop/Variant7b86e5a0a31ad5a6e003374f8146af61617c4355e8529a204eea29978dd9bbda.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObserverLoop/Variant7b86e5a0a31ad5a6e003374f8146af61617c4355e8529a204eea29978dd9bbda.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObserverLoop/Variant7b86e5a0a31ad5a6e003374f8146af61617c4355e8529a204eea29978dd9bbda.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17533eb00dd23c8612dc8fe8deb0e7febedb6243`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObserverLoop/Variant7b86e5a0a31ad5a6e003374f8146af61617c4355e8529a204eea29978dd9bbda.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObserverLoop/Variant7b86e5a0a31ad5a6e003374f8146af61617c4355e8529a204eea29978dd9bbda.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Causal.QuantizerTower` — import line 6; external provider; requires a separately pinned dependency.
- `FilesystemCodec.Commitment` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [transportSystem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObserverLoop/Variant7b86e5a0a31ad5a6e003374f8146af61617c4355e8529a204eea29978dd9bbda.lean/declarations/transportsystem--476e71191f904fd9aa6dd898.md) | 37 | `declaration-track:476e71191f904fd9aa6dd898d529525cb968d405864cb48032dcd7ff2581b937` |
| 2 | `theorem` | [transportSystem_step_code](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObserverLoop/Variant7b86e5a0a31ad5a6e003374f8146af61617c4355e8529a204eea29978dd9bbda.lean/declarations/transportsystem-step-code--fc3bb1b6bf57e8d584961490.md) | 50 | `result-track:fc3bb1b6bf57e8d5849614906d004912c1671609be8faf80297e809ae151067b` |
| 3 | `theorem` | [transportSystem_observe_code](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObserverLoop/Variant7b86e5a0a31ad5a6e003374f8146af61617c4355e8529a204eea29978dd9bbda.lean/declarations/transportsystem-observe-code--c28481d677774529b6a72ded.md) | 64 | `result-track:c28481d677774529b6a72ded5112ee9c7bf0b2bfd2ebce44681ee9ed281371b5` |
| 4 | `theorem` | [transportSystem_run_code](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObserverLoop/Variant7b86e5a0a31ad5a6e003374f8146af61617c4355e8529a204eea29978dd9bbda.lean/declarations/transportsystem-run-code--1986543a3713860da325ea5b.md) | 78 | `result-track:1986543a3713860da325ea5b74c1614b7eaec3ab951e92372267c5e0c3905cb0` |
| 5 | `theorem` | [transportSystem_run](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObserverLoop/Variant7b86e5a0a31ad5a6e003374f8146af61617c4355e8529a204eea29978dd9bbda.lean/declarations/transportsystem-run--19fc2ff2638e952b623813e0.md) | 96 | `result-track:19fc2ff2638e952b623813e0a5e0d3a4de700c246598742a619bd3abccc0d16a` |
| 6 | `def` | [packetSystem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObserverLoop/Variant7b86e5a0a31ad5a6e003374f8146af61617c4355e8529a204eea29978dd9bbda.lean/declarations/packetsystem--2231d072e9536cee99b2f840.md) | 111 | `declaration-track:2231d072e9536cee99b2f8400fac307a4773937a54fc916c1686ee841c68cf1d` |
| 7 | `theorem` | [transport_causalEquivalent](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObserverLoop/Variant7b86e5a0a31ad5a6e003374f8146af61617c4355e8529a204eea29978dd9bbda.lean/declarations/transport-causalequivalent--052a7aa4b1ada501157c45b9.md) | 121 | `result-track:052a7aa4b1ada501157c45b94b160bfdf873c5d68e86fd39ad43e0135c8b038f` |
| 8 | `def` | [filesystemCausalStateEquivPacketCausalState](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObserverLoop/Variant7b86e5a0a31ad5a6e003374f8146af61617c4355e8529a204eea29978dd9bbda.lean/declarations/filesystemcausalstateequivpacketcausalstate--f6a5a73e7b26f96a63bc913b.md) | 136 | `declaration-track:f6a5a73e7b26f96a63bc913ba23e2b4f7afa1771b67dd0517a7efc2717e6b2c1` |
| 9 | `theorem` | [filesystemCausalStateEquivPacketCausalState_toCausal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObserverLoop/Variant7b86e5a0a31ad5a6e003374f8146af61617c4355e8529a204eea29978dd9bbda.lean/declarations/filesystemcausalstateequivpacketcausalstate-tocausal--221b2ce5d29a907bf0ea5716.md) | 175 | `result-track:221b2ce5d29a907bf0ea5716c19e5109de469b04d8b4b2f0569b9673db942915` |
| 10 | `def` | [fullPacketSystem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObserverLoop/Variant7b86e5a0a31ad5a6e003374f8146af61617c4355e8529a204eea29978dd9bbda.lean/declarations/fullpacketsystem--c949e6f04938cb91c4b00ea3.md) | 191 | `declaration-track:c949e6f04938cb91c4b00ea34e7af9a4c0e3a37098b55708e67b977f23f1cf00` |
| 11 | `def` | [matrixOnlyPacketSystem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObserverLoop/Variant7b86e5a0a31ad5a6e003374f8146af61617c4355e8529a204eea29978dd9bbda.lean/declarations/matrixonlypacketsystem--de9904f6d94a5a2ebcfc0a87.md) | 201 | `declaration-track:de9904f6d94a5a2ebcfc0a87a43848119989b2d0b6e10755e75868222ffd614c` |
| 12 | `theorem` | [identityRun](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObserverLoop/Variant7b86e5a0a31ad5a6e003374f8146af61617c4355e8529a204eea29978dd9bbda.lean/declarations/identityrun--358f366adc6a67bc049b58ba.md) | 210 | `result-track:358f366adc6a67bc049b58ba5c9eac9e673580e5210c3c03f36cc8985405160f` |
| 13 | `theorem` | [fullPacket_causalEquivalent_iff_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObserverLoop/Variant7b86e5a0a31ad5a6e003374f8146af61617c4355e8529a204eea29978dd9bbda.lean/declarations/fullpacket-causalequivalent-iff-eq--1dcb02738dfeb98ac3ff5357.md) | 224 | `result-track:1dcb02738dfeb98ac3ff53573917b874d3c96acef192c046b2216573c6b0085a` |
| 14 | `theorem` | [matrixOnly_causalEquivalent_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ObserverLoop/Variant7b86e5a0a31ad5a6e003374f8146af61617c4355e8529a204eea29978dd9bbda.lean/declarations/matrixonly-causalequivalent-iff--97c0416654ae18bb14f6d7e5.md) | 238 | `result-track:97c0416654ae18bb14f6d7e5b6cf256c566737b947ccad5e21d7358df4d7100d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
