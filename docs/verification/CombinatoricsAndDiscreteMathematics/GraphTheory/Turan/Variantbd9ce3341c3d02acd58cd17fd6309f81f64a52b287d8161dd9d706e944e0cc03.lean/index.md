# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Turan.Variantbd9ce3341c3d02acd58cd17fd6309f81f64a52b287d8161dd9d706e944e0cc03

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "295af5883ccc41255c62461ef2d771e09d8ad4c0",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbd9ce3341c3d02acd58cd17fd6309f81f64a52b287d8161dd9d706e944e0cc03.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbd9ce3341c3d02acd58cd17fd6309f81f64a52b287d8161dd9d706e944e0cc03.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbd9ce3341c3d02acd58cd17fd6309f81f64a52b287d8161dd9d706e944e0cc03.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `295af5883ccc41255c62461ef2d771e09d8ad4c0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbd9ce3341c3d02acd58cd17fd6309f81f64a52b287d8161dd9d706e944e0cc03.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbd9ce3341c3d02acd58cd17fd6309f81f64a52b287d8161dd9d706e944e0cc03.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Clique` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Partition.Equipartition` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsTuranMaximal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbd9ce3341c3d02acd58cd17fd6309f81f64a52b287d8161dd9d706e944e0cc03.lean/declarations/isturanmaximal--662ebee28204be490ad23d5d.md) | 50 | `declaration-track:662ebee28204be490ad23d5dd629e375f896340d3edcf99fa700145c877f3de5` |
| 2 | `lemma` | [IsTuranMaximal.le_iff_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbd9ce3341c3d02acd58cd17fd6309f81f64a52b287d8161dd9d706e944e0cc03.lean/declarations/isturanmaximal-le-iff-eq--ee1101955702329a058e340a.md) | 58 | `result-track:ee1101955702329a058e340a00765f930dcaee6f5ee6b0b14ce42818a2c8882f` |
| 3 | `def` | [turanGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbd9ce3341c3d02acd58cd17fd6309f81f64a52b287d8161dd9d706e944e0cc03.lean/declarations/turangraph--fcab284eba26f571350032f7.md) | 64 | `declaration-track:fcab284eba26f571350032f77646732033fc5d9457886a9416c3bb938e1a96cc` |
| 4 | `instance` | [turanGraph.instDecidableRelAdj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbd9ce3341c3d02acd58cd17fd6309f81f64a52b287d8161dd9d706e944e0cc03.lean/declarations/turangraph-instdecidablereladj--6d0b6dfe5c11c645e51f23a6.md) | 66 | `declaration-track:6d0b6dfe5c11c645e51f23a69c48091a0909b8a082adf5b041da0fafa9e07598` |
| 5 | `lemma` | [turanGraph_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbd9ce3341c3d02acd58cd17fd6309f81f64a52b287d8161dd9d706e944e0cc03.lean/declarations/turangraph-zero--219b8f4b5354eb533b8be1f1.md) | 70 | `result-track:219b8f4b5354eb533b8be1f1bf672ca36cd970c8a5f49eab3eda91bfa746ea17` |
| 6 | `theorem` | [turanGraph_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbd9ce3341c3d02acd58cd17fd6309f81f64a52b287d8161dd9d706e944e0cc03.lean/declarations/turangraph-eq-top--7519de318360f1508b3bf837.md) | 74 | `result-track:7519de318360f1508b3bf8373223fa97ecafe9ded3472e3b1a90a1570072de01` |
| 7 | `theorem` | [turanGraph_cliqueFree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbd9ce3341c3d02acd58cd17fd6309f81f64a52b287d8161dd9d706e944e0cc03.lean/declarations/turangraph-cliquefree--73101dd2fe7e9737bb31dac0.md) | 84 | `result-track:73101dd2fe7e9737bb31dac02c458e07c924fc79ea349eae1ccb8a112b43cad6` |
| 8 | `theorem` | [not_cliqueFree_of_isTuranMaximal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbd9ce3341c3d02acd58cd17fd6309f81f64a52b287d8161dd9d706e944e0cc03.lean/declarations/not-cliquefree-of-isturanmaximal--1415ba3b0e76e1dcc247a730.md) | 97 | `result-track:1415ba3b0e76e1dcc247a7303a2da232e4755a00d286239085ae7a59bfe503fa` |
| 9 | `lemma` | [exists_isTuranMaximal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbd9ce3341c3d02acd58cd17fd6309f81f64a52b287d8161dd9d706e944e0cc03.lean/declarations/exists-isturanmaximal--0d5ccba9ae3e9f184b9f042b.md) | 107 | `result-track:0d5ccba9ae3e9f184b9f042b68be1c444fec438514dc031f8eb3ed691d124e62` |
| 10 | `lemma` | [degree_eq_of_not_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbd9ce3341c3d02acd58cd17fd6309f81f64a52b287d8161dd9d706e944e0cc03.lean/declarations/degree-eq-of-not-adj--ad94827fab536f662a46ab8c.md) | 130 | `result-track:ad94827fab536f662a46ab8ca202f85952e3785a3591fe2a46509c8b23026085` |
| 11 | `lemma` | [not_adj_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbd9ce3341c3d02acd58cd17fd6309f81f64a52b287d8161dd9d706e944e0cc03.lean/declarations/not-adj-trans--08a6752c48e109ee0f099d01.md) | 142 | `result-track:08a6752c48e109ee0f099d01e4791ea9f417a0fc5852414b59a41173c2d11e53` |
| 12 | `theorem` | [equivalence_not_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbd9ce3341c3d02acd58cd17fd6309f81f64a52b287d8161dd9d706e944e0cc03.lean/declarations/equivalence-not-adj--79c1ffbdef816bf26bd664ab.md) | 174 | `result-track:79c1ffbdef816bf26bd664ab28b83831750a40ba1672ce3a342af4a0492cc981` |
| 13 | `def` | [setoid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbd9ce3341c3d02acd58cd17fd6309f81f64a52b287d8161dd9d706e944e0cc03.lean/declarations/setoid--6213bea6ad63bd0452d9cd80.md) | 181 | `declaration-track:6213bea6ad63bd0452d9cd809bc23d927658bd8544b96d4358b313b7c99dd9c2` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbd9ce3341c3d02acd58cd17fd6309f81f64a52b287d8161dd9d706e944e0cc03.lean/declarations/instance--fe31730154fa9719d7942e08.md) | 183 | `declaration-track:fe31730154fa9719d7942e08917bd8cc8d756881c462742197cd0f0cc6546b7a` |
| 15 | `def` | [finpartition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbd9ce3341c3d02acd58cd17fd6309f81f64a52b287d8161dd9d706e944e0cc03.lean/declarations/finpartition--f45afbb82f5bb99a0f87eb7b.md) | 187 | `declaration-track:f45afbb82f5bb99a0f87eb7be14bc4b3a57cf8bf63c0f635e7b2459cda2f8bda` |
| 16 | `lemma` | [not_adj_iff_part_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbd9ce3341c3d02acd58cd17fd6309f81f64a52b287d8161dd9d706e944e0cc03.lean/declarations/not-adj-iff-part-eq--53148e426af522756c3b3c39.md) | 189 | `result-track:53148e426af522756c3b3c39fcda4d41a13c985a2a41467d618a05e8a47cc87b` |
| 17 | `lemma` | [degree_eq_card_sub_part_card](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbd9ce3341c3d02acd58cd17fd6309f81f64a52b287d8161dd9d706e944e0cc03.lean/declarations/degree-eq-card-sub-part-card--d63d1fba5fa77ad83fbc2b10.md) | 197 | `result-track:d63d1fba5fa77ad83fbc2b100cd0e740e117df67b5816eb627f7cd0a718f1c36` |
| 18 | `theorem` | [isEquipartition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbd9ce3341c3d02acd58cd17fd6309f81f64a52b287d8161dd9d706e944e0cc03.lean/declarations/isequipartition--7b1f2ff5d3ae0b8ca5315d81.md) | 210 | `result-track:7b1f2ff5d3ae0b8ca5315d814bb04e98462aa51f6b136724a602b72e31c9d25a` |
| 19 | `lemma` | [card_parts_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbd9ce3341c3d02acd58cd17fd6309f81f64a52b287d8161dd9d706e944e0cc03.lean/declarations/card-parts-le--48ae9d6a459a04d45e9dbbee.md) | 230 | `result-track:48ae9d6a459a04d45e9dbbee78db2f58f64e834d1cef843985e99ab433b1d738` |
| 20 | `theorem` | [card_parts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbd9ce3341c3d02acd58cd17fd6309f81f64a52b287d8161dd9d706e944e0cc03.lean/declarations/card-parts--338dfe5939a4cdcee9f60a3a.md) | 243 | `result-track:338dfe5939a4cdcee9f60a3ab227b5c05e0094f47643fcd69455f180cc5d7339` |
| 21 | `theorem` | [nonempty_iso_turanGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbd9ce3341c3d02acd58cd17fd6309f81f64a52b287d8161dd9d706e944e0cc03.lean/declarations/nonempty-iso-turangraph--a8108ddc9d5f2310f2b9202a.md) | 266 | `result-track:a8108ddc9d5f2310f2b9202ac9916699fcff5eeaa903dfd666102e6e8ab2a1b3` |
| 22 | `theorem` | [isTuranMaximal_of_iso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbd9ce3341c3d02acd58cd17fd6309f81f64a52b287d8161dd9d706e944e0cc03.lean/declarations/isturanmaximal-of-iso--528f551f8e796130c2e49a86.md) | 287 | `result-track:528f551f8e796130c2e49a86798b8ba0120bd5bd4f40eac61fb085a3fa15ba6b` |
| 23 | `theorem` | [IsTuranMaximal.iso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbd9ce3341c3d02acd58cd17fd6309f81f64a52b287d8161dd9d706e944e0cc03.lean/declarations/isturanmaximal-iso--2176766abe7c9bf86d30d0c0.md) | 295 | `result-track:2176766abe7c9bf86d30d0c05d18816b4de4861839f600a1718e49ffcda79754` |
| 24 | `theorem` | [isTuranMaximal_turanGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbd9ce3341c3d02acd58cd17fd6309f81f64a52b287d8161dd9d706e944e0cc03.lean/declarations/isturanmaximal-turangraph--2b2a4a556f6e306761106e86.md) | 300 | `result-track:2b2a4a556f6e306761106e869a45f8f874f2e80e651ee20c085d6945aa498633` |
| 25 | `theorem` | [isTuranMaximal_iff_nonempty_iso_turanGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbd9ce3341c3d02acd58cd17fd6309f81f64a52b287d8161dd9d706e944e0cc03.lean/declarations/isturanmaximal-iff-nonempty-iso-turangraph--685560f2bbbdb8d99ddd7593.md) | 305 | `result-track:685560f2bbbdb8d99ddd7593165d62d4495ee45f5ce72af341f583589420451d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
