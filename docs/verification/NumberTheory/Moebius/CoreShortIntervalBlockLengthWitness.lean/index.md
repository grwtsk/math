# Verification target: GRWTSK.NumberTheory.Moebius.CoreShortIntervalBlockLengthWitness

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d0d72a373b496c47c1725f47a4d7e44bc0c6c89",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CoreShortIntervalBlockLengthWitness.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalBlockLengthWitness.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalBlockLengthWitness.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d0d72a373b496c47c1725f47a4d7e44bc0c6c89`.

Source path: `GRWTSK/NumberTheory/Moebius/CoreShortIntervalBlockLengthWitness.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CoreShortIntervalBlockLengthWitness.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CoreShortIntervalDyadicBlocks`](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalDyadicBlocks.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [compatibleDyadicStartBlockL1](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalBlockLengthWitness.lean/declarations/compatibledyadicstartblockl1--26f2b2f9102f732f33353c8d.md) | 21 | `declaration-track:26f2b2f9102f732f33353c8d0fa288cfd6a21189f9d83e84528ff510389a6073` |
| 2 | `def` | [incompatibleDyadicStartBlockL1](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalBlockLengthWitness.lean/declarations/incompatibledyadicstartblockl1--4904616668179d3410b68fd3.md) | 28 | `declaration-track:4904616668179d3410b68fd32ed86f560a0615b0722beaae60475636957c7de9` |
| 3 | `theorem` | [dyadicStartBlockAggregateL1_eq_compatible_add_incompatible](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalBlockLengthWitness.lean/declarations/dyadicstartblockaggregatel1-eq-compatible-add-incompatible--1bb52a2ae2d68a554fd195a9.md) | 35 | `result-track:1bb52a2ae2d68a554fd195a90cc2015f452d4e0945860d594be4ddb8bd80d41d` |
| 4 | `def` | [compatibleDyadicBlockTerminalL1Majorant](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalBlockLengthWitness.lean/declarations/compatibledyadicblockterminall1majorant--d4b7cf52063c162a293cb13c.md) | 50 | `declaration-track:d4b7cf52063c162a293cb13c014e983d56b5c0496f64dc59b658b63f846fdba2` |
| 5 | `def` | [incompatibleDyadicBlockTerminalL1Majorant](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalBlockLengthWitness.lean/declarations/incompatibledyadicblockterminall1majorant--fef0140fed9bb2ea9390677d.md) | 57 | `declaration-track:fef0140fed9bb2ea9390677d326c8d6bcc721baa83f24de3a209147b7ce34047` |
| 6 | `def` | [compatibleDyadicBlockLongInteriorL1Majorant](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalBlockLengthWitness.lean/declarations/compatibledyadicblocklonginteriorl1majorant--0effa070f192da71bee6406f.md) | 64 | `declaration-track:0effa070f192da71bee6406fce20e6ddc1a946e0e37f504bac973c9042d4c50d` |
| 7 | `def` | [incompatibleDyadicBlockLongInteriorL1Majorant](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalBlockLengthWitness.lean/declarations/incompatibledyadicblocklonginteriorl1majorant--ec672d4fe0bbc0e1018f5ed1.md) | 72 | `declaration-track:ec672d4fe0bbc0e1018f5ed18af6e9e553b89eb9b55a871d368af3dfca377d52` |
| 8 | `def` | [coreLongDepthCompatibleDyadicL1](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalBlockLengthWitness.lean/declarations/corelongdepthcompatibledyadicl1--cd73e88acab2c85aac4b0d33.md) | 80 | `declaration-track:cd73e88acab2c85aac4b0d339e38b54c4f3920dbbf0c84aaf002f38bec1795f7` |
| 9 | `def` | [coreLongDepthIncompatibleDyadicL1](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalBlockLengthWitness.lean/declarations/corelongdepthincompatibledyadicl1--a6d0b92a64d6d23ca85b2643.md) | 86 | `declaration-track:a6d0b92a64d6d23ca85b2643f8322179396a9c9b0622c3dfef90e104fc43cce7` |
| 10 | `def` | [coreLongDepthEndpointCorrectionL1](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalBlockLengthWitness.lean/declarations/corelongdepthendpointcorrectionl1--59e04fdaa830f59822a4efbe.md) | 92 | `declaration-track:59e04fdaa830f59822a4efbe6f100221dc0cd33827c2626694836f22efd497eb` |
| 11 | `theorem` | [coreLongDepthDyadicBlockL1Majorant_eq_threeWay](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalBlockLengthWitness.lean/declarations/corelongdepthdyadicblockl1majorant-eq-threeway--41969d12593c5f24426198dd.md) | 105 | `result-track:41969d12593c5f24426198dd72f03d6ed26bc7edff5e97a6857f9bb58b955ad0` |
| 12 | `def` | [coreLongCompatibleDyadicL1Packet](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalBlockLengthWitness.lean/declarations/corelongcompatibledyadicl1packet--7fdfba577c14a63f04a5b701.md) | 151 | `declaration-track:7fdfba577c14a63f04a5b7010d651e2d0cccccf105f6cad14c87a6d9919c5853` |
| 13 | `def` | [coreLongIncompatibleDyadicL1Packet](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalBlockLengthWitness.lean/declarations/corelongincompatibledyadicl1packet--014c0f2e2f2154500edd7675.md) | 156 | `declaration-track:014c0f2e2f2154500edd767511d0f37d42fd153fe124615e9f5029df831a70c2` |
| 14 | `def` | [coreLongEndpointCorrectionL1Packet](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalBlockLengthWitness.lean/declarations/corelongendpointcorrectionl1packet--3ef4818bd6caffaa65ceb016.md) | 161 | `declaration-track:3ef4818bd6caffaa65ceb0160941ff3d9b343cef05024e76b286d1910e02f431` |
| 15 | `theorem` | [coreLongDyadicBlockShortIntervalL1Packet_eq_threeWay](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalBlockLengthWitness.lean/declarations/corelongdyadicblockshortintervall1packet-eq-threeway--691b575e253db5e9a9fba4be.md) | 166 | `result-track:691b575e253db5e9a9fba4beb4040cc9c44fc0117cfaa3ac7d0df381ff07b161` |
| 16 | `structure` | [CompatibleDyadicShortIntervalScope](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalBlockLengthWitness.lean/declarations/compatibledyadicshortintervalscope--4b9da16a61b7fe0467d8d78c.md) | 183 | `declaration-track:4b9da16a61b7fe0467d8d78c6053aacfe24be08a2530033c7cd78a2394f0aade` |
| 17 | `structure` | [CompatibleDyadicToCoreAdapter](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalBlockLengthWitness.lean/declarations/compatibledyadictocoreadapter--364084716efd5fc18a400093.md) | 191 | `declaration-track:364084716efd5fc18a400093662c356a7d43da608eb443f357eb99d516efc169` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
