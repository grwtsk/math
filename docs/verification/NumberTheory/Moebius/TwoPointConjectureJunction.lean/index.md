# Verification target: GRWTSK.NumberTheory.Moebius.TwoPointConjectureJunction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c2a421b62915ddf0151fc3dd744570dd7b0eaa7",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/TwoPointConjectureJunction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/TwoPointConjectureJunction.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/TwoPointConjectureJunction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c2a421b62915ddf0151fc3dd744570dd7b0eaa7`.

Source path: `GRWTSK/NumberTheory/Moebius/TwoPointConjectureJunction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/TwoPointConjectureJunction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.FiniteSum.DyadicBlockSquareMaximal`](../../../../mathematics/Analysis/FiniteSums/DyadicBlockSquareMaximal.lean/index.md) — import line 11; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.DyadicMaximalMertensTwoPointEnergy`](../../../../mathematics/NumberTheory/Moebius/DyadicMaximalMertensTwoPointEnergy.lean/index.md) — import line 12; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [twoPointSequence](../../../../mathematics/NumberTheory/Moebius/TwoPointConjectureJunction.lean/declarations/twopointsequence--82a374797dd861c0b803600c.md) | 47 | `declaration-track:82a374797dd861c0b803600c17b6c065a99b6b82022ed49c8f54c38ce1c9a7ea` |
| 2 | `def` | [twoPointPrefix](../../../../mathematics/NumberTheory/Moebius/TwoPointConjectureJunction.lean/declarations/twopointprefix--8f89a5d808e7604f2827a880.md) | 51 | `declaration-track:8f89a5d808e7604f2827a8804d27c6a6ef6006bfaa740dcd16f85d386e79e562` |
| 3 | `def` | [dyadicTwoPointCutoff](../../../../mathematics/NumberTheory/Moebius/TwoPointConjectureJunction.lean/declarations/dyadictwopointcutoff--c66a8af78a62d36958fffdfa.md) | 55 | `declaration-track:c66a8af78a62d36958fffdfa90fd41963c1e53cdac6dd4e2f18320df9a6ad03e` |
| 4 | `def` | [paddedTwoPointSequence](../../../../mathematics/NumberTheory/Moebius/TwoPointConjectureJunction.lean/declarations/paddedtwopointsequence--974e9ac4bc450107430d548f.md) | 63 | `declaration-track:974e9ac4bc450107430d548ffa6f7a1e2ea2687bbceff57c39d8ba6ff7ff836a` |
| 5 | `def` | [twoPointTreeEnergy](../../../../mathematics/NumberTheory/Moebius/TwoPointConjectureJunction.lean/declarations/twopointtreeenergy--1fad3b921e60953bef1687e1.md) | 71 | `declaration-track:1fad3b921e60953bef1687e18735980afcb41c861cc72b07287b969945328d23` |
| 6 | `def` | [twoPointTreeEnergySum](../../../../mathematics/NumberTheory/Moebius/TwoPointConjectureJunction.lean/declarations/twopointtreeenergysum--a4c6292f5690fb99243e6e49.md) | 77 | `declaration-track:a4c6292f5690fb99243e6e49d55a38be0edbad0a29de9ee89abc48207ff2fb95` |
| 7 | `def` | [twoPointDyadicPrefixMaximum](../../../../mathematics/NumberTheory/Moebius/TwoPointConjectureJunction.lean/declarations/twopointdyadicprefixmaximum--efdad6fb0dcbb20c5b136319.md) | 82 | `declaration-track:efdad6fb0dcbb20c5b13631903020fa9af0f61ec50579a791e100dd4e7bad095` |
| 8 | `def` | [FixedShiftTerminalCancellation](../../../../mathematics/NumberTheory/Moebius/TwoPointConjectureJunction.lean/declarations/fixedshiftterminalcancellation--7d396452f40a83bf59de31e0.md) | 92 | `declaration-track:7d396452f40a83bf59de31e0cc842c4e89a3bc448b6014ab880f601b6e71738b` |
| 9 | `def` | [GrowingShiftDyadicTerminalCancellation](../../../../mathematics/NumberTheory/Moebius/TwoPointConjectureJunction.lean/declarations/growingshiftdyadicterminalcancellation--8e199945048a38fd9e769a11.md) | 102 | `declaration-track:8e199945048a38fd9e769a116392be1d839722f82cc07c3ce1023f6deb29368b` |
| 10 | `def` | [SubpolynomialDyadicTwoPointTreeEnergyWithDepthCost](../../../../mathematics/NumberTheory/Moebius/TwoPointConjectureJunction.lean/declarations/subpolynomialdyadictwopointtreeenergywithdepthcost--bf267e5d7311dbe5410c8098.md) | 113 | `declaration-track:bf267e5d7311dbe5410c8098e57ed5f83c60f9e17d9d5206de27f613d34902e8` |
| 11 | `def` | [SubpolynomialDyadicMertensTwoPointTreeEnergyWithDepthCost](../../../../mathematics/NumberTheory/Moebius/TwoPointConjectureJunction.lean/declarations/subpolynomialdyadicmertenstwopointtreeenergywithdepthcost--a54e6a18cd7a10bf656f2df3.md) | 121 | `declaration-track:a54e6a18cd7a10bf656f2df36eb25e1633ee83e74218cef581c231e47430f840` |
| 12 | `structure` | [ToMertensTreeEnergyAdapter](../../../../mathematics/NumberTheory/Moebius/TwoPointConjectureJunction.lean/declarations/tomertenstreeenergyadapter--296edf21eadc695e3bb27314.md) | 130 | `declaration-track:296edf21eadc695e3bb273146712d78ee222a7b95675db8310817167931ade1c` |
| 13 | `abbrev` | [HigherOrderChowlaAdapter](../../../../mathematics/NumberTheory/Moebius/TwoPointConjectureJunction.lean/declarations/higherorderchowlaadapter--ed7165e9e93fb9b1af0014b1.md) | 136 | `declaration-track:ed7165e9e93fb9b1af0014b13e4719051b07624db1c547989e4918a4f655512d` |
| 14 | `abbrev` | [CorrectedElliottAdapter](../../../../mathematics/NumberTheory/Moebius/TwoPointConjectureJunction.lean/declarations/correctedelliottadapter--da5551599613cfaf7dcf61d6.md) | 140 | `declaration-track:da5551599613cfaf7dcf61d6122a1e03fa19f0b7042e3b87dbe81443f1c98324` |
| 15 | `abbrev` | [SarnakDisjointnessAdapter](../../../../mathematics/NumberTheory/Moebius/TwoPointConjectureJunction.lean/declarations/sarnakdisjointnessadapter--fb47c02ee49ee1ede6b45f3a.md) | 146 | `declaration-track:fb47c02ee49ee1ede6b45f3a6f11b926fa94f9d6eb15146edd7d949b9a3061b2` |
| 16 | `abbrev` | [WeakMertensAdapter](../../../../mathematics/NumberTheory/Moebius/TwoPointConjectureJunction.lean/declarations/weakmertensadapter--cd902d940ae2ee79dd9a24fb.md) | 150 | `declaration-track:cd902d940ae2ee79dd9a24fb8f0eb4ae88740f922f74c5e801646adb0e7e8bce` |
| 17 | `abbrev` | [GonekHejhalAdapter](../../../../mathematics/NumberTheory/Moebius/TwoPointConjectureJunction.lean/declarations/gonekhejhaladapter--0fdc72803303c9284c14fd4e.md) | 154 | `declaration-track:0fdc72803303c9284c14fd4e074197e00ffad30c5f2ef15ebfc1887e4c2aeca0` |
| 18 | `theorem` | [twoPointPrefix_moebius](../../../../mathematics/NumberTheory/Moebius/TwoPointConjectureJunction.lean/declarations/twopointprefix-moebius--003b9dc918314771018db335.md) | 157 | `result-track:003b9dc918314771018db33583e278a1d786b5cd55e7c0d5a3e29a9b3d82252c` |
| 19 | `theorem` | [finitePrefixSum_padded_eq_twoPointPrefix](../../../../mathematics/NumberTheory/Moebius/TwoPointConjectureJunction.lean/declarations/finiteprefixsum-padded-eq-twopointprefix--72e8fee10204859ac728c57d.md) | 165 | `result-track:72e8fee10204859ac728c57d3b7c80c74636446af399da29413ef4e4c88c1af8` |
| 20 | `theorem` | [finitePrefixSum_padded_moebius_eq_mertens](../../../../mathematics/NumberTheory/Moebius/TwoPointConjectureJunction.lean/declarations/finiteprefixsum-padded-moebius-eq-mertens--8840421ec0e1fce380929be9.md) | 177 | `result-track:8840421ec0e1fce380929be9ff8ac6bb4cf32737dc1d34a7d8bc61e51687c33d` |
| 21 | `theorem` | [twoPointDyadicPrefixMaximum_nonneg](../../../../mathematics/NumberTheory/Moebius/TwoPointConjectureJunction.lean/declarations/twopointdyadicprefixmaximum-nonneg--f120bb53b2f04851983e73da.md) | 187 | `result-track:f120bb53b2f04851983e73da09cf4fb90caba300ff4071e528493738aff769aa` |
| 22 | `theorem` | [mertensTwoPointPrefixMax_le_twoPointDyadicPrefixMaximum](../../../../mathematics/NumberTheory/Moebius/TwoPointConjectureJunction.lean/declarations/mertenstwopointprefixmax-le-twopointdyadicprefixmaximum--e115a49b83b5831bbca748bb.md) | 199 | `result-track:e115a49b83b5831bbca748bb90dbfc39e737791e82521fc6d4493b82e47beda7` |
| 23 | `theorem` | [mertensTwoPointPrefixMax_sq_le_twoPointTreeEnergy](../../../../mathematics/NumberTheory/Moebius/TwoPointConjectureJunction.lean/declarations/mertenstwopointprefixmax-sq-le-twopointtreeenergy--09a37b5724d571e54a4bc1cd.md) | 226 | `result-track:09a37b5724d571e54a4bc1cdad0dcdb4b193c8ee304206e38e768e73ff0a4f73` |
| 24 | `theorem` | [mertensTwoPointMaximalQuadraticEnergy_le_treeEnergySum](../../../../mathematics/NumberTheory/Moebius/TwoPointConjectureJunction.lean/declarations/mertenstwopointmaximalquadraticenergy-le-treeenergysum--cb2f885ca8acddacc72a02eb.md) | 259 | `result-track:cb2f885ca8acddacc72a02eb3cf234305dc8a1e4424b0b405344cf11ca453ef5` |
| 25 | `theorem` | [subpolynomialDyadicMaximalMertensTwoPointEnergy_of_treeEnergy](../../../../mathematics/NumberTheory/Moebius/TwoPointConjectureJunction.lean/declarations/subpolynomialdyadicmaximalmertenstwopointenergy-of-treeenergy--51123d23c8ed097807efaa07.md) | 281 | `result-track:51123d23c8ed097807efaa071bb15fb1b66b897221dccd0a43310915b61e1dfc` |
| 26 | `theorem` | [riemannHypothesis_of_mertensTwoPointTreeEnergy](../../../../mathematics/NumberTheory/Moebius/TwoPointConjectureJunction.lean/declarations/riemannhypothesis-of-mertenstwopointtreeenergy--6bc9be819a0ad885913c98a2.md) | 295 | `result-track:6bc9be819a0ad885913c98a2bf710b1a5dd7119f25cf1baaaf0a8a5655b8ca22` |
| 27 | `theorem` | [riemannHypothesis_of_adapter](../../../../mathematics/NumberTheory/Moebius/TwoPointConjectureJunction.lean/declarations/riemannhypothesis-of-adapter--d5e3cee854ee4e64f9679440.md) | 305 | `result-track:d5e3cee854ee4e64f9679440855ca6b68c5fa4cc662ac0f5b8d08c01a77a7a04` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
