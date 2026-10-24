# Verification target: GRWTSK.Analysis.MeasureTheory.BoundedVariation.Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c218867d84e1e39755a96ccd6d0642c52bc5181",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c218867d84e1e39755a96ccd6d0642c52bc5181`.

Source path: `GRWTSK/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.VectorMeasure.AddContent` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.VectorMeasure.Variation.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [stieltjesFunctionRightLim](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/declarations/stieltjesfunctionrightlim--164a3a1c95508b8dffe5f3ce.md) | 53 | `declaration-track:164a3a1c95508b8dffe5f3ce1ecb5092953846bda5b6b1fc7c370b0e77a548c4` |
| 2 | `def` | [measureAux](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/declarations/measureaux--0e4dab5e1615e5eb9a8f551a.md) | 65 | `declaration-track:0e4dab5e1615e5eb9a8f551a9c82a49b53b02aabc402ce0ab27de77bd2f5c692` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/declarations/instance--7faab705f83aad349c7c4e45.md) | 68 | `declaration-track:7faab705f83aad349c7c4e458f0506faa4854e838639e9d19702edf83d2a5ec4` |
| 4 | `lemma` | [exists_vectorMeasure_le_measureAux](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/declarations/exists-vectormeasure-le-measureaux--cbe3e4aeb13003cf6a993b68.md) | 81 | `result-track:cbe3e4aeb13003cf6a993b681f7e19f7ceafc21389e659b86104c65678e923e2` |
| 5 | `def` | [vectorMeasure](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/declarations/vectormeasure--2151fc21dd8b60696334e22c.md) | 119 | `declaration-track:2151fc21dd8b60696334e22ccd095aa3065eea07332604409ff3d3c40553aae8` |
| 6 | `lemma` | [vectorMeasure_Ioc](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/declarations/vectormeasure-ioc--da13a0fc5f5f8c347456a006.md) | 123 | `result-track:da13a0fc5f5f8c347456a0061ca9345cd0852df054699ba713ccea44d3326139` |
| 7 | `lemma` | [vectorMeasure_singleton](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/declarations/vectormeasure-singleton--bf5b578a344aa2806386995a.md) | 139 | `result-track:bf5b578a344aa2806386995a1d3dfdc089c8982aa9d4c72d469109a0ad5a2b93` |
| 8 | `lemma` | [vectorMeasure_Icc](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/declarations/vectormeasure-icc--76350d38e7a95d1a7054c115.md) | 178 | `result-track:76350d38e7a95d1a7054c11599b1503071e74eec25df3b84f2e85e289a777c74` |
| 9 | `theorem` | [vectorMeasure_Ioo](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/declarations/vectormeasure-ioo--b1ac72f9459a68549d641dbe.md) | 185 | `result-track:b1ac72f9459a68549d641dbec92641f8a98ef8133b06b8e59781d17a0bf3d96c` |
| 10 | `theorem` | [vectorMeasure_Ico](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/declarations/vectormeasure-ico--bab298880619ee11436c3838.md) | 192 | `result-track:bab298880619ee11436c3838ef1c016214a49b876cf9cdb6588a0460ea0b779d` |
| 11 | `theorem` | [vectorMeasure_Ici](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/declarations/vectormeasure-ici--9c3baa3595328442e741d865.md) | 200 | `result-track:9c3baa3595328442e741d865a09885e047b9d624578af1388e284f6ece3cee14` |
| 12 | `theorem` | [vectorMeasure_Ioi](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/declarations/vectormeasure-ioi--ab65882c309b1aaca0d24d7d.md) | 228 | `result-track:ab65882c309b1aaca0d24d7d3b81dddfbe14c7d983a46c7edb0d4ec6aa18cf3d` |
| 13 | `theorem` | [vectorMeasure_Iic](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/declarations/vectormeasure-iic--2ab07d8f11d63999c933e395.md) | 235 | `result-track:2ab07d8f11d63999c933e3956b539ed3d17a1994ac38dc540815223a61f3b5b5` |
| 14 | `theorem` | [vectorMeasure_Iio](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/declarations/vectormeasure-iio--da3712ba759dda18bc9dfd15.md) | 263 | `result-track:da3712ba759dda18bc9dfd1536ffe7b8890560fcec715da1d7c883441fc7f763` |
| 15 | `theorem` | [vectorMeasure_univ](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/declarations/vectormeasure-univ--a38d1553c3f6d4c55b963ea6.md) | 270 | `result-track:a38d1553c3f6d4c55b963ea6820a3b66583694d8f564479e3be872b6e37e4717` |
| 16 | `def` | [variationAux](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/declarations/variationaux--e92e1f982033d9bfcdacf725.md) | 282 | `declaration-track:e92e1f982033d9bfcdacf725749fa488d83cbb754359979d1aca8ce4ec350369` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/declarations/instance--45413dd53cac23e9b75d719b.md) | 286 | `declaration-track:45413dd53cac23e9b75d719b5763d1b1344acd845aa7fc4420fdac3b5b777fe2` |
| 18 | `lemma` | [variation_vectorMeasure_le_variationAux](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/declarations/variation-vectormeasure-le-variationaux--b4b2a8ac68d77e491c01dfe2.md) | 294 | `result-track:b4b2a8ac68d77e491c01dfe2108698b4abe3da26219a2bef6f9ead638e1c6f58` |
| 19 | `lemma` | [variationAux_Ioc_le](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/declarations/variationaux-ioc-le--b27e9f931576aa56e7c19143.md) | 305 | `result-track:b27e9f931576aa56e7c19143b8d8f6f24edb1e748fb7f1b616a1dbf24f544582` |
| 20 | `lemma` | [eVariationOn_Ioc_le_variation](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/declarations/evariationon-ioc-le-variation--dcaece2ba24fd72ef8535d6a.md) | 322 | `result-track:dcaece2ba24fd72ef8535d6a5b3d55787b67e77500bc8972f007dce1d258f6d9` |
| 21 | `lemma` | [variationAux_Ioc](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/declarations/variationaux-ioc--5e36e62d4ae6b66d358c16be.md) | 338 | `result-track:5e36e62d4ae6b66d358c16be0c67a7a3ea0de3c514dcfe44f9cf381bb3bd5e14` |
| 22 | `lemma` | [variation_vectorMeasure_Ioc](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/declarations/variation-vectormeasure-ioc--6186b8fa975a36314070a9de.md) | 343 | `result-track:6186b8fa975a36314070a9decc383620cc9a79aff3c25ed7ba1482d87fdadc10` |
| 23 | `lemma` | [variation_vectorMeasure_singleton](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/declarations/variation-vectormeasure-singleton--ee24d44b629f72e72d887a85.md) | 351 | `result-track:ee24d44b629f72e72d887a85419a22dfb8ed6166abdbf73445b9a8673a2f9c02` |
| 24 | `lemma` | [variationAux_singleton](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/declarations/variationaux-singleton--478c94a24873123352744e2a.md) | 355 | `result-track:478c94a24873123352744e2aa6654272535b62912395c3b0d24c1dda064ac62d` |
| 25 | `lemma` | [variationAux_eq_variation_vectorMeasure](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/declarations/variationaux-eq-variation-vectormeasure--93902507cca127bd21e64f50.md) | 375 | `result-track:93902507cca127bd21e64f506cab8cb8cbc81420554ab36f08352be81483c75e` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/declarations/instance--445908addd96cdcf5274fb88.md) | 382 | `declaration-track:445908addd96cdcf5274fb886fb3705875aeb623e4ac0979666e7be2486857e0` |
| 27 | `lemma` | [variation_vectorMeasure_Ioo_right](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/declarations/variation-vectormeasure-ioo-right--e8f156e2e4c0f32542c0ba5f.md) | 386 | `result-track:e8f156e2e4c0f32542c0ba5f77bdae0d1a9dd1c655256bb3323efc7965706fd7` |
| 28 | `lemma` | [variation_vectorMeasure_Ioo_left](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/declarations/variation-vectormeasure-ioo-left--69d4257c5647ac2407172363.md) | 411 | `result-track:69d4257c5647ac24071723637b2f7a7cf98b2d496585cfb219f1f4771ebbc2f7` |
| 29 | `lemma` | [variation_vectorMeasure_Ico](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/declarations/variation-vectormeasure-ico--6b13eecd91d172123dbe8e25.md) | 431 | `result-track:6b13eecd91d172123dbe8e25dd4da80fec3871eb9d1419cefb1ce252d602843b` |
| 30 | `lemma` | [variation_vectorMeasure_Ioi](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/declarations/variation-vectormeasure-ioi--ecf6e898538beff5b21abb5f.md) | 453 | `result-track:ecf6e898538beff5b21abb5f1d181738eb414b23d23e7680bd52709252347348` |
| 31 | `lemma` | [variation_vectorMeasure_Iio](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/declarations/variation-vectormeasure-iio--e31ea980a66f3790e1175804.md) | 484 | `result-track:e31ea980a66f3790e1175804871650f0068f943ff924722f65f1de8e41f5fe98` |
| 32 | `lemma` | [variation_vectorMeasure_Ioo_le](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/declarations/variation-vectormeasure-ioo-le--49e874b17bc29b96ce1ab1e9.md) | 517 | `result-track:49e874b17bc29b96ce1ab1e9352756d0f6a0dc5f07a49821370b9e5a27bb63ca` |
| 33 | `lemma` | [variation_vectorMeasure_Ioc_le](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/declarations/variation-vectormeasure-ioc-le--0f76db13fc4a33853e487d22.md) | 522 | `result-track:0f76db13fc4a33853e487d22f103266a02ed3785307064c6115835c725c2f13c` |
| 34 | `lemma` | [variation_vectorMeasure_Ico_le](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/declarations/variation-vectormeasure-ico-le--64cec71a6cc16ff22ace9b10.md) | 530 | `result-track:64cec71a6cc16ff22ace9b10325ac82ea0ee215aabaf9e75781ec35ba3387271` |
| 35 | `lemma` | [variation_vectorMeasure_Icc_le](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/declarations/variation-vectormeasure-icc-le--b07964d77a17bf20a4596071.md) | 538 | `result-track:b07964d77a17bf20a459607113a70218515aa880523b8048150c1e693a3054dc` |
| 36 | `lemma` | [variation_vectorMeasure_Ioi_le](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/declarations/variation-vectormeasure-ioi-le--8d064cfa397390309cc5e685.md) | 546 | `result-track:8d064cfa397390309cc5e68514fb4dfcb13950fc56a30c25acbaf08b6344a3c8` |
| 37 | `lemma` | [variation_vectorMeasure_Ici_le](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/declarations/variation-vectormeasure-ici-le--ea73645e8863c25698cc99c2.md) | 550 | `result-track:ea73645e8863c25698cc99c23f2482024212ddb95d52b2f500a0dc75383cce6f` |
| 38 | `lemma` | [variation_vectorMeasure_Iio_le](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/declarations/variation-vectormeasure-iio-le--c32ee856bc76c1a97c1fbf9c.md) | 556 | `result-track:c32ee856bc76c1a97c1fbf9cb386aeea4b9900e61a6519f41df94d1902ba5a71` |
| 39 | `lemma` | [variation_vectorMeasure_Iic_le](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/declarations/variation-vectormeasure-iic-le--1f9fa1b530e512823d652b80.md) | 560 | `result-track:1f9fa1b530e512823d652b80b88ce99acbb15f2454b7257f8c966e42facecb94` |
| 40 | `lemma` | [variation_vectorMeasure_univ_le](../../../../../mathematics/Analysis/MeasureTheory/BoundedVariation/Variant5775bdc2af4706a7bfd52cbbf3836ebb57afc3710cf06df7980fcb451dac170b.lean/declarations/variation-vectormeasure-univ-le--d39488ceac57ad4ac370309f.md) | 566 | `result-track:d39488ceac57ad4ac370309fee79944ac881803945131fbd1b7bac97518f2ae5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
