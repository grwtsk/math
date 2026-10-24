# Verification target: GRWTSK.NumberTheory.Moebius.DyadicSignedAbelShiftPacket

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb7875864a27596de835ed5c87df8cbc801b8f1c",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/DyadicSignedAbelShiftPacket.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/DyadicSignedAbelShiftPacket.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/DyadicSignedAbelShiftPacket.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb7875864a27596de835ed5c87df8cbc801b8f1c`.

Source path: `GRWTSK/NumberTheory/Moebius/DyadicSignedAbelShiftPacket.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/DyadicSignedAbelShiftPacket.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.TwoPointCarlesonEnergy`](../../../../mathematics/NumberTheory/Moebius/TwoPointCarlesonEnergy.lean/index.md) — import line 11; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dyadicMertensShiftWeightDrop](../../../../mathematics/NumberTheory/Moebius/DyadicSignedAbelShiftPacket.lean/declarations/dyadicmertensshiftweightdrop--b3c416e21ff7dff82a24c898.md) | 48 | `declaration-track:b3c416e21ff7dff82a24c89823be45e947f24ff3923acb07c7749838a30cecc9` |
| 2 | `def` | [weightedMertensDyadicShiftAbelContribution](../../../../mathematics/NumberTheory/Moebius/DyadicSignedAbelShiftPacket.lean/declarations/weightedmertensdyadicshiftabelcontribution--dbc8d5ee64c59285a073db5b.md) | 53 | `declaration-track:dbc8d5ee64c59285a073db5b254a8b24ae9a3677c4a7a44435e87a178228d7b3` |
| 3 | `def` | [weightedMertensDyadicSignedAbelPacket](../../../../mathematics/NumberTheory/Moebius/DyadicSignedAbelShiftPacket.lean/declarations/weightedmertensdyadicsignedabelpacket--b99ec379ed5cea9c90d5ca95.md) | 60 | `declaration-track:b99ec379ed5cea9c90d5ca950a89aaafe02891ceed55363cb9ddab84ef429802` |
| 4 | `theorem` | [finiteAbelPrefixIdentity](../../../../mathematics/NumberTheory/Moebius/DyadicSignedAbelShiftPacket.lean/declarations/finiteabelprefixidentity--e63f4ae9895fdb5bb18ac42f.md) | 66 | `result-track:e63f4ae9895fdb5bb18ac42f9282a17ad5854347ea191b0433484c96b96286a6` |
| 5 | `theorem` | [finiteWeightDropTelescope](../../../../mathematics/NumberTheory/Moebius/DyadicSignedAbelShiftPacket.lean/declarations/finiteweightdroptelescope--9e254d1dce6b2d266e225464.md) | 81 | `result-track:9e254d1dce6b2d266e2254645aa089c0d646c0f3601486dcb0a1bf4503a786fd` |
| 6 | `theorem` | [dyadicMertensShiftWeightDrop_nonneg](../../../../mathematics/NumberTheory/Moebius/DyadicSignedAbelShiftPacket.lean/declarations/dyadicmertensshiftweightdrop-nonneg--ada711c52ba7a0ee37614982.md) | 93 | `result-track:ada711c52ba7a0ee376149827cbc5f93145e71a8d7059909e42182b75f154e35` |
| 7 | `theorem` | [dyadicMertensShiftWeight_at_cutoff](../../../../mathematics/NumberTheory/Moebius/DyadicSignedAbelShiftPacket.lean/declarations/dyadicmertensshiftweight-at-cutoff--60b87e87c050c898b8c98e77.md) | 105 | `result-track:60b87e87c050c898b8c98e77b214b6d333b11ad067045ad85e6512d1b79c5139` |
| 8 | `theorem` | [sum_dyadicMertensShiftWeightDrop](../../../../mathematics/NumberTheory/Moebius/DyadicSignedAbelShiftPacket.lean/declarations/sum-dyadicmertensshiftweightdrop--e03bb9d998a7300bdf6e552d.md) | 115 | `result-track:e03bb9d998a7300bdf6e552d7f74a062ce475b7c28523d3f1b4c667cc9a1e2fa` |
| 9 | `theorem` | [dyadicMertensShiftInitialWeight_nonneg](../../../../mathematics/NumberTheory/Moebius/DyadicSignedAbelShiftPacket.lean/declarations/dyadicmertensshiftinitialweight-nonneg--2ebc90cea0959abd84849c66.md) | 139 | `result-track:2ebc90cea0959abd84849c66b20ac2a212659956e3e4dac99b47e4caa25e1fb6` |
| 10 | `theorem` | [dyadicMertensShiftInitialWeight_le_right_inv](../../../../mathematics/NumberTheory/Moebius/DyadicSignedAbelShiftPacket.lean/declarations/dyadicmertensshiftinitialweight-le-right-inv--b34a6ee6452d7a28d2aa9b09.md) | 146 | `result-track:b34a6ee6452d7a28d2aa9b097276447e516e57daf695fdae19fdc1728c8344d6` |
| 11 | `theorem` | [sum_dyadicMertensShiftWeightDrop_bounds](../../../../mathematics/NumberTheory/Moebius/DyadicSignedAbelShiftPacket.lean/declarations/sum-dyadicmertensshiftweightdrop-bounds--b38d1556946c98fea54e2f98.md) | 155 | `result-track:b38d1556946c98fea54e2f9806c9854ad657d030199db5a58448877e7cc947dc` |
| 12 | `theorem` | [weightedMertensDyadicShiftContribution_eq_abel](../../../../mathematics/NumberTheory/Moebius/DyadicSignedAbelShiftPacket.lean/declarations/weightedmertensdyadicshiftcontribution-eq-abel--fbe5c68c083e183ee65cef19.md) | 168 | `result-track:fbe5c68c083e183ee65cef19192d47b1260de02ef39a94b30c9d75f7d85d5604` |
| 13 | `theorem` | [weightedMertensDyadicShiftPacket_eq_signedAbelPacket](../../../../mathematics/NumberTheory/Moebius/DyadicSignedAbelShiftPacket.lean/declarations/weightedmertensdyadicshiftpacket-eq-signedabelpacket--1cf802e1712603d9e8e93396.md) | 193 | `result-track:1cf802e1712603d9e8e9339661a14fabdd025f89b50014faa7b1297ac8876a53` |
| 14 | `def` | [SubpolynomialDyadicSignedAbelShiftPacket](../../../../mathematics/NumberTheory/Moebius/DyadicSignedAbelShiftPacket.lean/declarations/subpolynomialdyadicsignedabelshiftpacket--e71240f1a603ebecf757d81f.md) | 206 | `declaration-track:e71240f1a603ebecf757d81f89cbf7bcd277cdfde42726fb38b152e4a4aeeb06` |
| 15 | `theorem` | [subpolynomialDyadicSignedAbelShiftPacket_iff_shiftPacket](../../../../mathematics/NumberTheory/Moebius/DyadicSignedAbelShiftPacket.lean/declarations/subpolynomialdyadicsignedabelshiftpacket-iff-shiftpacket--565b0a74c3b964a243509b89.md) | 214 | `result-track:565b0a74c3b964a243509b89e7cb28a2ab943afc063a93a3dc16076163e77a47` |
| 16 | `theorem` | [subpolynomialDyadicMertensShiftPacket_of_signedAbel](../../../../mathematics/NumberTheory/Moebius/DyadicSignedAbelShiftPacket.lean/declarations/subpolynomialdyadicmertensshiftpacket-of-signedabel--1a26a41e418ff2eb6365a6bd.md) | 233 | `result-track:1a26a41e418ff2eb6365a6bd4e8d5352dc935eebb044e345af68b999ec49159b` |
| 17 | `theorem` | [subpolynomialDyadicSignedAbelShiftPacket_of_shiftPacket](../../../../mathematics/NumberTheory/Moebius/DyadicSignedAbelShiftPacket.lean/declarations/subpolynomialdyadicsignedabelshiftpacket-of-shiftpacket--4e2664d5a5b1cdb7e61e5654.md) | 240 | `result-track:4e2664d5a5b1cdb7e61e56546ac20838af74136ad3f90159b68cda2ea4a13daa` |
| 18 | `theorem` | [riemannHypothesis_of_subpolynomialDyadicSignedAbelShiftPacket](../../../../mathematics/NumberTheory/Moebius/DyadicSignedAbelShiftPacket.lean/declarations/riemannhypothesis-of-subpolynomialdyadicsignedabelshiftpacket--166296d3853b9084a5c77b9f.md) | 247 | `result-track:166296d3853b9084a5c77b9f0b8f4260dfdfb01b687225ac7d4a1f65e692c68f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
