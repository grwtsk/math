# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RuzsaSzemeredi.Variant830b99ddc7fad21cab39c07ca2ac255a574e473cb35eb5b32b8bb4c75d05ac9a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "608f8c39e1dcdfa40615465946ce9ed02039612d",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant830b99ddc7fad21cab39c07ca2ac255a574e473cb35eb5b32b8bb4c75d05ac9a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant830b99ddc7fad21cab39c07ca2ac255a574e473cb35eb5b32b8bb4c75d05ac9a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant830b99ddc7fad21cab39c07ca2ac255a574e473cb35eb5b32b8bb4c75d05ac9a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `608f8c39e1dcdfa40615465946ce9ed02039612d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant830b99ddc7fad21cab39c07ca2ac255a574e473cb35eb5b32b8bb4c75d05ac9a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant830b99ddc7fad21cab39c07ca2ac255a574e473cb35eb5b32b8bb4c75d05ac9a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ruzsaSzemerediNumber](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant830b99ddc7fad21cab39c07ca2ac255a574e473cb35eb5b32b8bb4c75d05ac9a.lean/declarations/ruzsaszemeredinumber--e3a6ef6744e2994ebb37c511.md) | 50 | `declaration-track:e3a6ef6744e2994ebb37c5115898ec52b5e2be6305421e45a2464502c53a5149` |
| 2 | `lemma` | [ruzsaSzemerediNumber_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant830b99ddc7fad21cab39c07ca2ac255a574e473cb35eb5b32b8bb4c75d05ac9a.lean/declarations/ruzsaszemeredinumber-le--56d0e968bcced78b1d054145.md) | 55 | `result-track:56d0e968bcced78b1d054145e0a5797413b0053c29993c10c2c555de232ae013` |
| 3 | `lemma` | [ruzsaSzemerediNumber_spec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant830b99ddc7fad21cab39c07ca2ac255a574e473cb35eb5b32b8bb4c75d05ac9a.lean/declarations/ruzsaszemeredinumber-spec--635ef6b61e0c2ca38788dc8e.md) | 59 | `result-track:635ef6b61e0c2ca38788dc8e6ebbfc1325fda70a28788609003458ba38e03fde` |
| 4 | `lemma` | [SimpleGraph.LocallyLinear.le_ruzsaSzemerediNumber](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant830b99ddc7fad21cab39c07ca2ac255a574e473cb35eb5b32b8bb4c75d05ac9a.lean/declarations/simplegraph-locallylinear-le-ruzsaszemeredinumber--f6999e0f2339e394bdb8533a.md) | 70 | `result-track:f6999e0f2339e394bdb8533a751dc35e420021dd9183851eb7fb90c8290002ac` |
| 5 | `lemma` | [ruzsaSzemerediNumber_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant830b99ddc7fad21cab39c07ca2ac255a574e473cb35eb5b32b8bb4c75d05ac9a.lean/declarations/ruzsaszemeredinumber-mono--40b4dcdc2b55210ef1cc3929.md) | 75 | `result-track:40b4dcdc2b55210ef1cc39299840eeb7afd51bda2e4edf9c9fecb784d5906aee` |
| 6 | `lemma` | [ruzsaSzemerediNumber_congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant830b99ddc7fad21cab39c07ca2ac255a574e473cb35eb5b32b8bb4c75d05ac9a.lean/declarations/ruzsaszemeredinumber-congr--aa763a53a996a4539ff0da87.md) | 83 | `result-track:aa763a53a996a4539ff0da87bf1b8ea964f189e941253e22d3ae0e14ca137748` |
| 7 | `def` | [ruzsaSzemerediNumberNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant830b99ddc7fad21cab39c07ca2ac255a574e473cb35eb5b32b8bb4c75d05ac9a.lean/declarations/ruzsaszemeredinumbernat--30c6258967ff27446f13415c.md) | 91 | `declaration-track:30c6258967ff27446f13415c1a814ff41b2ce906fc5986c1b64bc2fca38b88df` |
| 8 | `lemma` | [ruzsaSzemerediNumberNat_card](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant830b99ddc7fad21cab39c07ca2ac255a574e473cb35eb5b32b8bb4c75d05ac9a.lean/declarations/ruzsaszemeredinumbernat-card--2d67fc570f97347b10afe40c.md) | 94 | `result-track:2d67fc570f97347b10afe40c72a5eb939681cd956cded4a0bf8a7591eeca0ab7` |
| 9 | `lemma` | [ruzsaSzemerediNumberNat_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant830b99ddc7fad21cab39c07ca2ac255a574e473cb35eb5b32b8bb4c75d05ac9a.lean/declarations/ruzsaszemeredinumbernat-mono--0b230bd82b3d7d9e8822bc30.md) | 98 | `result-track:0b230bd82b3d7d9e8822bc30986466466f2ddb18b660f6565ae8a29d3db35135` |
| 10 | `lemma` | [ruzsaSzemerediNumberNat_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant830b99ddc7fad21cab39c07ca2ac255a574e473cb35eb5b32b8bb4c75d05ac9a.lean/declarations/ruzsaszemeredinumbernat-le--5fec266c888eff1d4184cfe3.md) | 101 | `result-track:5fec266c888eff1d4184cfe358e43e4007a1faab6c457a047ea36ed2d277c23a` |
| 11 | `lemma` | [ruzsaSzemerediNumberNat_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant830b99ddc7fad21cab39c07ca2ac255a574e473cb35eb5b32b8bb4c75d05ac9a.lean/declarations/ruzsaszemeredinumbernat-zero--090b16fb30d5c38d62206db4.md) | 104 | `result-track:090b16fb30d5c38d62206db44ceb96dfed306541b8620ea55efce6eb58faf586` |
| 12 | `lemma` | [ruzsaSzemerediNumberNat_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant830b99ddc7fad21cab39c07ca2ac255a574e473cb35eb5b32b8bb4c75d05ac9a.lean/declarations/ruzsaszemeredinumbernat-one--5afbccaa1b4ab4cb740825c2.md) | 107 | `result-track:5afbccaa1b4ab4cb740825c2695d3ffba52605890207ec6543d0a253f6b2d844` |
| 13 | `lemma` | [ruzsaSzemerediNumberNat_two](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant830b99ddc7fad21cab39c07ca2ac255a574e473cb35eb5b32b8bb4c75d05ac9a.lean/declarations/ruzsaszemeredinumbernat-two--a595f5435b8a1d3d83bd9247.md) | 110 | `result-track:a595f5435b8a1d3d83bd9247290f131dc98cf3df509c021198e01195bfd88873` |
| 14 | `def` | [triangleIndices](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant830b99ddc7fad21cab39c07ca2ac255a574e473cb35eb5b32b8bb4c75d05ac9a.lean/declarations/triangleindices--abe86ba22fdddc9352909931.md) | 121 | `declaration-track:abe86ba22fdddc9352909931d9cc27e85d38de37b9fd60f2febd72d8e70f933f` |
| 15 | `lemma` | [mem_triangleIndices](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant830b99ddc7fad21cab39c07ca2ac255a574e473cb35eb5b32b8bb4c75d05ac9a.lean/declarations/mem-triangleindices--953d7cc7d1c3a5e45de92379.md) | 132 | `result-track:953d7cc7d1c3a5e45de923795df41b95a2fa12e13a014d28d0a0c40038ebb44c` |
| 16 | `lemma` | [card_triangleIndices](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant830b99ddc7fad21cab39c07ca2ac255a574e473cb35eb5b32b8bb4c75d05ac9a.lean/declarations/card-triangleindices--d86209039b1528ff81da18bb.md) | 136 | `result-track:d86209039b1528ff81da18bb593bd1297aaa73186e4ccb8f6e3175b2ec3b27cf` |
| 17 | `lemma` | [noAccidental](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant830b99ddc7fad21cab39c07ca2ac255a574e473cb35eb5b32b8bb4c75d05ac9a.lean/declarations/noaccidental--3e2c9dabf4285641dd588fdf.md) | 139 | `result-track:3e2c9dabf4285641dd588fdf9abc1057530891f712397c0a05fd351837f0a5d1` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant830b99ddc7fad21cab39c07ca2ac255a574e473cb35eb5b32b8bb4c75d05ac9a.lean/declarations/instance--926723c63301ae1734efe80e.md) | 150 | `declaration-track:926723c63301ae1734efe80e1b8f7143cc3c3b61ec36ccf17193881743ed3ff8` |
| 19 | `lemma` | [locallyLinear](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant830b99ddc7fad21cab39c07ca2ac255a574e473cb35eb5b32b8bb4c75d05ac9a.lean/declarations/locallylinear--b7c6bb5761a7d476fc376320.md) | 164 | `result-track:b7c6bb5761a7d476fc37632015ec09796fb85406173b8f45ba30cdbc83cb5cf7` |
| 20 | `lemma` | [card_edgeFinset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant830b99ddc7fad21cab39c07ca2ac255a574e473cb35eb5b32b8bb4c75d05ac9a.lean/declarations/card-edgefinset--9bd3e3a41a4d2c9695b67b88.md) | 168 | `result-track:9bd3e3a41a4d2c9695b67b8850a4b44ef0513a3993b008e534df8e9cbbd121ca` |
| 21 | `lemma` | [addRothNumber_le_ruzsaSzemerediNumber](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant830b99ddc7fad21cab39c07ca2ac255a574e473cb35eb5b32b8bb4c75d05ac9a.lean/declarations/addrothnumber-le-ruzsaszemeredinumber--4f49bb33794f1053f3ff455b.md) | 177 | `result-track:4f49bb33794f1053f3ff455bcc929e7f80ce5d7badb39ba4a1345032cb3f23da` |
| 22 | `lemma` | [rothNumberNat_le_ruzsaSzemerediNumberNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant830b99ddc7fad21cab39c07ca2ac255a574e473cb35eb5b32b8bb4c75d05ac9a.lean/declarations/rothnumbernat-le-ruzsaszemeredinumbernat--0fae24aa94149386126204a4.md) | 184 | `result-track:0fae24aa94149386126204a44aabd7bec0a851000c424062d81002b285f4e6db` |
| 23 | `theorem` | [rothNumberNat_le_ruzsaSzemerediNumberNat'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant830b99ddc7fad21cab39c07ca2ac255a574e473cb35eb5b32b8bb4c75d05ac9a.lean/declarations/rothnumbernat-le-ruzsaszemeredinumbernat--216db0be7111cc483f158dc5.md) | 207 | `result-track:216db0be7111cc483f158dc59ba8afdbb966cc38f9acf8864b3c8c15b0cbc223` |
| 24 | `theorem` | [ruzsaSzemerediNumberNat_lower_bound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant830b99ddc7fad21cab39c07ca2ac255a574e473cb35eb5b32b8bb4c75d05ac9a.lean/declarations/ruzsaszemeredinumbernat-lower-bound--5b733f87e1419d6810de6190.md) | 232 | `result-track:5b733f87e1419d6810de61903e1b3f7afe6145a424c69dece12983863d2d0f6b` |
| 25 | `theorem` | [ruzsaSzemerediNumberNat_asymptotic_lower_bound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/RuzsaSzemeredi/Variant830b99ddc7fad21cab39c07ca2ac255a574e473cb35eb5b32b8bb4c75d05ac9a.lean/declarations/ruzsaszemeredinumbernat-asymptotic-lower-bound--0de57f9e7f415d45acaddd68.md) | 248 | `result-track:0de57f9e7f415d45acaddd68b3fea6835fc9421d98e99d7b4aa1bfbf983a6cc8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
