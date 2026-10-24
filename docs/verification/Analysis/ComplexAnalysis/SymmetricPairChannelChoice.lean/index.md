# Verification target: GRWTSK.Analysis.Complex.SymmetricPairChannelChoice

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c40a38ede8c169a01b4cff9700b8586c3140646",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/SymmetricPairChannelChoice.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairChannelChoice.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairChannelChoice.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c40a38ede8c169a01b4cff9700b8586c3140646`.

Source path: `GRWTSK/Analysis/Complex/SymmetricPairChannelChoice.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/SymmetricPairChannelChoice.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.SymmetricPairRational`](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairRational.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Enclosure.excludes_pair_of_channel](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairChannelChoice.lean/declarations/enclosure-excludes-pair-of-channel--954538f716f21ba8403614e9.md) | 23 | `result-track:954538f716f21ba8403614e91fbeb6ca20c0ef932b951af0750b2c541e893754` |
| 2 | `inductive` | [Channel](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairChannelChoice.lean/declarations/channel--2fb1856cbea7125ab8bf941c.md) | 40 | `declaration-track:2fb1856cbea7125ab8bf941c7cccc2685e36b75ac24484193b4900d09f10c66c` |
| 3 | `def` | [Channel.read](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairChannelChoice.lean/declarations/channel-read--5a82f258cc8fa467f97f907e.md) | 45 | `declaration-track:5a82f258cc8fa467f97f907e01ad422e5e5b76b25bfc3edf208751b06c11d2cc` |
| 4 | `lemma` | [Channel.read_zero_of_endpoints](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairChannelChoice.lean/declarations/channel-read-zero-of-endpoints--4cb4d90989f80b395490ebde.md) | 50 | `result-track:4cb4d90989f80b395490ebdeb6b8cea1214a924d1f645a590b621e075bce2292` |
| 5 | `structure` | [Selected](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairChannelChoice.lean/declarations/selected--291df561655e0f173abea987.md) | 58 | `declaration-track:291df561655e0f173abea9874fb3c7330612985930396c08e346d04b148fc024` |
| 6 | `def` | [Pass](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairChannelChoice.lean/declarations/pass--00e14d33db19e8d9863a07a3.md) | 66 | `declaration-track:00e14d33db19e8d9863a07a35fbf6688a499868ab04f87116757226ee3c48785` |
| 7 | `def` | [check](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairChannelChoice.lean/declarations/check--04f8bb85729b53f287ef7be6.md) | 68 | `declaration-track:04f8bb85729b53f287ef7be67d566de96a067b97d434009158d8e3bfc9bc3f98` |
| 8 | `lemma` | [check_iff](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairChannelChoice.lean/declarations/check-iff--20f1b4356015c355066a9cae.md) | 70 | `result-track:20f1b4356015c355066a9caed0b1f2379e379b7be9e7232d7d8063bfb3aa00d1` |
| 9 | `def` | [Valid](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairChannelChoice.lean/declarations/valid--c04944db2d25cc805b67b794.md) | 72 | `declaration-track:c04944db2d25cc805b67b794dd74a8e49abfbbab870b633a80a8e114657f4083` |
| 10 | `lemma` | [radius_lt_center](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairChannelChoice.lean/declarations/radius-lt-center--13f06f60d5dbd9c725b9a2ed.md) | 75 | `result-track:13f06f60d5dbd9c725b9a2ed928b883840b5bcd2482bc4d2d3682560997567c2` |
| 11 | `theorem` | [channel_lower](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairChannelChoice.lean/declarations/channel-lower--089ba7b800bfb90d766292d3.md) | 85 | `result-track:089ba7b800bfb90d766292d3d9f210c3702484bb83a4bb0dffd08ac8a2e4db44` |
| 12 | `theorem` | [sound](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairChannelChoice.lean/declarations/sound--057e47f07611f7ba0b6782ab.md) | 94 | `result-track:057e47f07611f7ba0b6782ab3db15787ca79974832977ebf8b56090465004700` |
| 13 | `def` | [evenSelected](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairChannelChoice.lean/declarations/evenselected--225da88a9ce73768001a8f65.md) | 105 | `declaration-track:225da88a9ce73768001a8f65fba8fdccba44de783a76fd158bf89e30e13ede11` |
| 14 | `def` | [oddSelected](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairChannelChoice.lean/declarations/oddselected--1cfadec9fbf70364f72810a6.md) | 106 | `declaration-track:1cfadec9fbf70364f72810a6830cdb31895ebc55665c7e921241960ee5b293e0` |
| 15 | `def` | [ChannelPass](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairChannelChoice.lean/declarations/channelpass--78f26a6f1d54fc32adabefc6.md) | 110 | `declaration-track:78f26a6f1d54fc32adabefc60805b344a42183c9a1b262b5ec6fa391708b8ca5` |
| 16 | `def` | [channelCheck](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairChannelChoice.lean/declarations/channelcheck--77ca79fcc2fd2c8002331cba.md) | 114 | `declaration-track:77ca79fcc2fd2c8002331cba9a927572f850b421aa6ced403e341d6d41e7b902` |
| 17 | `lemma` | [channelCheck_iff](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairChannelChoice.lean/declarations/channelcheck-iff--12767c949a34ae810f332336.md) | 116 | `result-track:12767c949a34ae810f332336ca057ebd716b199fcd647c34b03047fc0d1b241f` |
| 18 | `def` | [ChannelValid](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairChannelChoice.lean/declarations/channelvalid--4657a8f1af7cd0b665ce7060.md) | 119 | `declaration-track:4657a8f1af7cd0b665ce7060752a361ab8d8447570a06a4a51af65caf048e0d0` |
| 19 | `lemma` | [channelValid_of_valid](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairChannelChoice.lean/declarations/channelvalid-of-valid--15cd939a2a2bcad4f4d6a83e.md) | 122 | `result-track:15cd939a2a2bcad4f4d6a83e0137366e4ef69f99389d311bf02bde9e4bba2d26` |
| 20 | `theorem` | [channel_sound](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairChannelChoice.lean/declarations/channel-sound--2b709da4ecfe73b61421e213.md) | 125 | `result-track:2b709da4ecfe73b61421e2136bdf1d77d99e20aabf337da4d3127513add4ff60` |
| 21 | `theorem` | [check_implies_channelCheck](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairChannelChoice.lean/declarations/check-implies-channelcheck--d2da82d3ad74731af80b4326.md) | 134 | `result-track:d2da82d3ad74731af80b432695675d61fccc3becc75d3ce3e6efb2c58271deca` |
| 22 | `theorem` | [zero_compatible_of_reject](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairChannelChoice.lean/declarations/zero-compatible-of-reject--7d3d9eaef94825433788a94d.md) | 156 | `result-track:7d3d9eaef94825433788a94d794d617c988ecc44b1751d788a5f0f6219a2976b` |
| 23 | `theorem` | [channelCheck_iff_zero_incompatible](../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairChannelChoice.lean/declarations/channelcheck-iff-zero-incompatible--57571e925088bfa2199fea37.md) | 189 | `result-track:57571e925088bfa2199fea37acf75a8254ef68a2894c817d1dd2f1e0d990188d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
