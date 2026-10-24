# Verification target: GRWTSK.NumberTheory.Moebius.CoreShortIntervalDyadicBlocks

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61d0e9d7086b32a69ae67512dad339327431eacd",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CoreShortIntervalDyadicBlocks.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalDyadicBlocks.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalDyadicBlocks.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61d0e9d7086b32a69ae67512dad339327431eacd`.

Source path: `GRWTSK/NumberTheory/Moebius/CoreShortIntervalDyadicBlocks.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CoreShortIntervalDyadicBlocks.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CoreShortIntervalAmbientWindow`](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalAmbientWindow.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dyadicStartBlock](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalDyadicBlocks.lean/declarations/dyadicstartblock--251557e70396ba83ca6d4515.md) | 20 | `declaration-track:251557e70396ba83ca6d45152058c9b3b58e9c56d6b48af80bec48c686f6adf4` |
| 2 | `def` | [dyadicStartBlockShortIntervalL1](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalDyadicBlocks.lean/declarations/dyadicstartblockshortintervall1--454ce505da05fed450ff74a7.md) | 24 | `declaration-track:454ce505da05fed450ff74a7b3f52ba8d1493daed5a683c50838fe4bf5a24a23` |
| 3 | `def` | [ambientEndpointStartCorrection](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalDyadicBlocks.lean/declarations/ambientendpointstartcorrection--a37456aa34820dc005593382.md) | 30 | `declaration-track:a37456aa34820dc00559338207335824aacaaec1ea3f0b50b3749678d1f091ae` |
| 4 | `def` | [dyadicStartBlockAggregateL1](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalDyadicBlocks.lean/declarations/dyadicstartblockaggregatel1--5bc67b37124007910b40eb56.md) | 36 | `declaration-track:5bc67b37124007910b40eb56501e3a4b536bb9bb6ae32720540557187fe4e898` |
| 5 | `theorem` | [sum_prefix_eq_sum_dyadicStartBlocks](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalDyadicBlocks.lean/declarations/sum-prefix-eq-sum-dyadicstartblocks--a799aa67c476de18f7f6d8c8.md) | 43 | `result-track:a799aa67c476de18f7f6d8c80e64d3a194dba9d2735dce8a9cbb44c6c696a892` |
| 6 | `theorem` | [harmonicAmbientStartWindow_eq_prefix_insert_two](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalDyadicBlocks.lean/declarations/harmonicambientstartwindow-eq-prefix-insert-two--161008f8b0f18a59d9863c1e.md) | 62 | `result-track:161008f8b0f18a59d9863c1edaf75f55dec3a7650ae189e59e8fb647e520c2eb` |
| 7 | `theorem` | [harmonicAmbientShortIntervalL1_eq_dyadicAggregate](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalDyadicBlocks.lean/declarations/harmonicambientshortintervall1-eq-dyadicaggregate--952eddfd0f6ee5f91920ff20.md) | 73 | `result-track:952eddfd0f6ee5f91920ff201f022a539d2482e3a659c4699e96c33c50795df9` |
| 8 | `theorem` | [ambientEndpointStartCorrection_le_two_mul_length](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalDyadicBlocks.lean/declarations/ambientendpointstartcorrection-le-two-mul-length--bfc275dc0617daed5f7b4079.md) | 92 | `result-track:bfc275dc0617daed5f7b40792368888e717d9cc9b178dcbef1bdbbf78f343e32` |
| 9 | `def` | [dyadicBlockTerminalL1Majorant](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalDyadicBlocks.lean/declarations/dyadicblockterminall1majorant--51a86ed72b45b0b7724b8ad9.md) | 125 | `declaration-track:51a86ed72b45b0b7724b8ad947846f7f10cd8f6d8680653d01e09e6cad40d3f0` |
| 10 | `def` | [dyadicBlockLongInteriorL1Majorant](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalDyadicBlocks.lean/declarations/dyadicblocklonginteriorl1majorant--dfaff9116505c6a84d6d497f.md) | 132 | `declaration-track:dfaff9116505c6a84d6d497f7bf6b2d5520eaf40fb8e47bc9828893ba3e3616d` |
| 11 | `def` | [coreLongDepthDyadicBlockL1Majorant](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalDyadicBlocks.lean/declarations/corelongdepthdyadicblockl1majorant--ab9e839fae67d388cfb91cb8.md) | 139 | `declaration-track:ab9e839fae67d388cfb91cb80ee8a961fb29d35023b816c4959b25ea6948720f` |
| 12 | `def` | [coreLongDyadicBlockShortIntervalL1Packet](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalDyadicBlocks.lean/declarations/corelongdyadicblockshortintervall1packet--10f8c70680c44b714bfc4378.md) | 144 | `declaration-track:10f8c70680c44b714bfc4378fa0b07cf77017bd46d64e5bd37ba6b09d8c61abd` |
| 13 | `theorem` | [coreLongAmbientShortIntervalL1Packet_eq_dyadicBlocks](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalDyadicBlocks.lean/declarations/corelongambientshortintervall1packet-eq-dyadicblocks--3c1848fcc564fd0b20a50bd7.md) | 149 | `result-track:3c1848fcc564fd0b20a50bd73f00fb26f60c912ae68542e422f9feddfcf91a95` |
| 14 | `def` | [SubpolynomialCoreLongDyadicBlockShortIntervalL1Packet](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalDyadicBlocks.lean/declarations/subpolynomialcorelongdyadicblockshortintervall1packet--1db68cd100f1bce4a33b8975.md) | 171 | `declaration-track:1db68cd100f1bce4a33b897523d0d35c6ae29af3db6a993446151e1936e7c4d2` |
| 15 | `theorem` | [subpolynomialCoreLongDyadicBlockShortIntervalL1Packet_iff_ambient](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalDyadicBlocks.lean/declarations/subpolynomialcorelongdyadicblockshortintervall1packet-iff-ambient--edd2a397ce45a0720e3e4dc2.md) | 178 | `result-track:edd2a397ce45a0720e3e4dc2781cfa93e5304b72a2f419ff8202868f56c670e0` |
| 16 | `theorem` | [riemannHypothesis_of_subpolynomialCoreLongDyadicBlockShortIntervalL1Packet](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalDyadicBlocks.lean/declarations/riemannhypothesis-of-subpolynomialcorelongdyadicblockshortintervall1pack--5f1f08a88cf0a8855691e0a9.md) | 196 | `result-track:5f1f08a88cf0a8855691e0a9a980a0251ef02178e2f5da9f0e316b12e990ac6b` |
| 17 | `structure` | [DyadicBlockShortIntervalL1Source](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalDyadicBlocks.lean/declarations/dyadicblockshortintervall1source--eade0fe4eac9fb4c7641756e.md) | 204 | `declaration-track:eade0fe4eac9fb4c7641756ea5eab51cf12ce3470e11ab59a17c06ce06d0a697` |
| 18 | `structure` | [DyadicBlockShortIntervalToCoreAdapter](../../../../mathematics/NumberTheory/Moebius/CoreShortIntervalDyadicBlocks.lean/declarations/dyadicblockshortintervaltocoreadapter--1e2ead93c493a726a88a8b2d.md) | 213 | `declaration-track:1e2ead93c493a726a88a8b2dc56cd348e0ef2a9cb5505ae98dfe8e6f3f2d3868` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
