# Verification target: GRWTSK.NumberTheory.Moebius.CoreShortIntervalIncompatibleBudget

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e4e7b74d345df9fc14d7775735238e326b0e3c2a",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CoreShortIntervalIncompatibleBudget.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalIncompatibleBudget.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalIncompatibleBudget.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e4e7b74d345df9fc14d7775735238e326b0e3c2a`.

Source path: `GRWTSK/NumberTheory/Moebius/CoreShortIntervalIncompatibleBudget.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CoreShortIntervalIncompatibleBudget.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CoreShortIntervalBlockLengthWitness`](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalBlockLengthWitness.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [abs_ambientMobiusShortIntervalSum_le_length](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalIncompatibleBudget.lean/declarations/abs-ambientmobiusshortintervalsum-le-length--f1469e431bbdec646c706acf.md) | 20 | `result-track:f1469e431bbdec646c706acf6369d22d7099b7d5e820d37e3a2e360877a2be88` |
| 2 | `theorem` | [dyadicStartBlock_card](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalIncompatibleBudget.lean/declarations/dyadicstartblock-card--ca4b2ebc1151d5970c636489.md) | 35 | `result-track:ca4b2ebc1151d5970c636489637c6acce2675bdc1efe4958b0498b6b6b065213` |
| 3 | `theorem` | [dyadicStartBlockShortIntervalL1_le](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalIncompatibleBudget.lean/declarations/dyadicstartblockshortintervall1-le--8d5c781209ce0981523c8d40.md) | 43 | `result-track:8d5c781209ce0981523c8d40bf91e8a98a51ab2d43bcfa659b417ce17ced95d5` |
| 4 | `def` | [incompatibleDyadicStartBlockTrivialBudget](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalIncompatibleBudget.lean/declarations/incompatibledyadicstartblocktrivialbudget--f35c9d1779e190839081b485.md) | 60 | `declaration-track:f35c9d1779e190839081b4852950337d749d442a92bda81deea67ad02216b5d1` |
| 5 | `theorem` | [incompatibleDyadicStartBlockL1_le_trivialBudget](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalIncompatibleBudget.lean/declarations/incompatibledyadicstartblockl1-le-trivialbudget--3d4eb9ac64125c5a1b2bc9ee.md) | 66 | `result-track:3d4eb9ac64125c5a1b2bc9ee706ffc10993187033cb93a6f3248f8f0f237959f` |
| 6 | `def` | [endpointStartTrivialBudget](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalIncompatibleBudget.lean/declarations/endpointstarttrivialbudget--4c22c3a6c3134ce1511251bd.md) | 77 | `declaration-track:4c22c3a6c3134ce1511251bdc0e5fc716f493124106902e14023a96ea98b265b` |
| 7 | `theorem` | [ambientEndpointStartCorrection_le_trivialBudget](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalIncompatibleBudget.lean/declarations/ambientendpointstartcorrection-le-trivialbudget--1766f3cbd071b963caaabc15.md) | 81 | `result-track:1766f3cbd071b963caaabc151e9e53291c30b3c34b911f2c4abe4d1f1545375e` |
| 8 | `def` | [incompatibleTerminalTrivialBudget](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalIncompatibleBudget.lean/declarations/incompatibleterminaltrivialbudget--247f5ad97ac6598becf7c21e.md) | 88 | `declaration-track:247f5ad97ac6598becf7c21e146b1ed729d4fa59885bbb748802b0ea3a80653c` |
| 9 | `def` | [incompatibleLongInteriorTrivialBudget](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalIncompatibleBudget.lean/declarations/incompatiblelonginteriortrivialbudget--5de25d0c9fcf9ada5bc4b677.md) | 97 | `declaration-track:5de25d0c9fcf9ada5bc4b677fc678336fa6a682d2f0276f649d5c21bb39cd65b` |
| 10 | `def` | [endpointCorrectionTrivialBudget](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalIncompatibleBudget.lean/declarations/endpointcorrectiontrivialbudget--3a6dc10a800b90df677de811.md) | 105 | `declaration-track:3a6dc10a800b90df677de811d21ba7f1241eeffefa9083891c5ab5c555c6d52a` |
| 11 | `def` | [coreLongIncompatibleTrivialBudgetPacket](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalIncompatibleBudget.lean/declarations/corelongincompatibletrivialbudgetpacket--54b4de21d94167fd96400e90.md) | 118 | `declaration-track:54b4de21d94167fd96400e9061be4cf734aaf370302067d860a84952d9b4a974` |
| 12 | `def` | [coreLongEndpointTrivialBudgetPacket](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalIncompatibleBudget.lean/declarations/corelongendpointtrivialbudgetpacket--0bb26873aa2c9dcb08a78592.md) | 124 | `declaration-track:0bb26873aa2c9dcb08a785925895b860f134c92b63698688e00dd61a3b7b776c` |
| 13 | `theorem` | [coreLongIncompatibleDyadicL1Packet_le_trivialBudget](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalIncompatibleBudget.lean/declarations/corelongincompatibledyadicl1packet-le-trivialbudget--312681d620ad49fd90dd06e1.md) | 129 | `result-track:312681d620ad49fd90dd06e12ecd1fccd56142a39c041bf69c56b6a58b852080` |
| 14 | `theorem` | [coreLongEndpointCorrectionL1Packet_le_trivialBudget](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalIncompatibleBudget.lean/declarations/corelongendpointcorrectionl1packet-le-trivialbudget--7cf78486090538e1f0d96e6c.md) | 159 | `result-track:7cf78486090538e1f0d96e6cecdbfccc658ade04c4180e8d5f6c5624a6565561` |
| 15 | `def` | [SubpolynomialIncompatibleAndEndpointTrivialBudget](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalIncompatibleBudget.lean/declarations/subpolynomialincompatibleandendpointtrivialbudget--3911102d724e1a11866d98a7.md) | 187 | `declaration-track:3911102d724e1a11866d98a7016c5cd1eb256b10b9e2fb1b10aa14bf5ede3f9b` |
| 16 | `def` | [SubpolynomialCompatibleDyadicShortIntervalPacket](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalIncompatibleBudget.lean/declarations/subpolynomialcompatibledyadicshortintervalpacket--41c215c262f1944728e0390a.md) | 196 | `declaration-track:41c215c262f1944728e0390acbb970940749c496ae321a2862f2f0cba8cae23c` |
| 17 | `theorem` | [subpolynomialCoreLongDyadicBlockShortIntervalL1Packet_of_compatible](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalIncompatibleBudget.lean/declarations/subpolynomialcorelongdyadicblockshortintervall1packet-of-compatible--f5f894c6ca4f2437f8ec240b.md) | 204 | `result-track:f5f894c6ca4f2437f8ec240b2e563997c21f656250af5f340f38f747ce739cae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
