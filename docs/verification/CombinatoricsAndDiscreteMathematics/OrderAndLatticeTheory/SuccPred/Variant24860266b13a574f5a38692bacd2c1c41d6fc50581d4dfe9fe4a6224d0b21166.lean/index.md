# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SuccPred.Variant24860266b13a574f5a38692bacd2c1c41d6fc50581d4dfe9fe4a6224d0b21166

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a065a27e2abf243ef84111bf52deafac4c5fb22a",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant24860266b13a574f5a38692bacd2c1c41d6fc50581d4dfe9fe4a6224d0b21166.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant24860266b13a574f5a38692bacd2c1c41d6fc50581d4dfe9fe4a6224d0b21166.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant24860266b13a574f5a38692bacd2c1c41d6fc50581d4dfe9fe4a6224d0b21166.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a065a27e2abf243ef84111bf52deafac4c5fb22a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant24860266b13a574f5a38692bacd2c1c41d6fc50581d4dfe9fe4a6224d0b21166.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant24860266b13a574f5a38692bacd2c1c41d6fc50581d4dfe9fe4a6224d0b21166.lean.json)

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
| 1 | `lemma` | [Ico_succ_left_eq_Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant24860266b13a574f5a38692bacd2c1c41d6fc50581d4dfe9fe4a6224d0b21166.lean/declarations/ico-succ-left-eq-ioo--bf1aa6b88de30b3e518fe8c7.md) | 57 | `result-track:bf1aa6b88de30b3e518fe8c7c9b8b937e48cedaaaf7654b5df544c1a7dd33bc5` |
| 2 | `lemma` | [Icc_succ_left_eq_Ioc_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant24860266b13a574f5a38692bacd2c1c41d6fc50581d4dfe9fe4a6224d0b21166.lean/declarations/icc-succ-left-eq-ioc-of-not-ismax--6f703adec2fc10fdb77b3fb9.md) | 64 | `result-track:6f703adec2fc10fdb77b3fb92c9eb3f13a54e490ee856d51efdee5ec71126dd8` |
| 3 | `lemma` | [Ico_succ_right_eq_Icc_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant24860266b13a574f5a38692bacd2c1c41d6fc50581d4dfe9fe4a6224d0b21166.lean/declarations/ico-succ-right-eq-icc-of-not-ismax--ecee4118307946960e46a7c5.md) | 68 | `result-track:ecee4118307946960e46a7c5cee67ccdb71425e8af3d88234eee97480253702d` |
| 4 | `lemma` | [Ioo_succ_right_eq_Ioc_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant24860266b13a574f5a38692bacd2c1c41d6fc50581d4dfe9fe4a6224d0b21166.lean/declarations/ioo-succ-right-eq-ioc-of-not-ismax--c49e28428c032a3cff35cde4.md) | 72 | `result-track:c49e28428c032a3cff35cde40093696afe8cb2aad5189df57c56c990eafbf937` |
| 5 | `lemma` | [Ico_succ_succ_eq_Ioc_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant24860266b13a574f5a38692bacd2c1c41d6fc50581d4dfe9fe4a6224d0b21166.lean/declarations/ico-succ-succ-eq-ioc-of-not-ismax--aed37181d8f7200aa9494f1c.md) | 76 | `result-track:aed37181d8f7200aa9494f1c022339661df6700b183d808277727a1a829f0d77` |
| 6 | `lemma` | [insert_Icc_succ_left_eq_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant24860266b13a574f5a38692bacd2c1c41d6fc50581d4dfe9fe4a6224d0b21166.lean/declarations/insert-icc-succ-left-eq-icc--eaff2eccfaa1af993aaa5d0e.md) | 83 | `result-track:eaff2eccfaa1af993aaa5d0e7122f1043e5ca62df421c96925dff1df443d5fe1` |
| 7 | `lemma` | [insert_Icc_right_eq_Icc_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant24860266b13a574f5a38692bacd2c1c41d6fc50581d4dfe9fe4a6224d0b21166.lean/declarations/insert-icc-right-eq-icc-succ--234fb43daab0d71b61b3719c.md) | 87 | `result-track:234fb43daab0d71b61b3719c7e0e4eb720fb9914224ee4894b6a16cdf1408120` |
| 8 | `lemma` | [insert_Ico_right_eq_Ico_succ_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant24860266b13a574f5a38692bacd2c1c41d6fc50581d4dfe9fe4a6224d0b21166.lean/declarations/insert-ico-right-eq-ico-succ-of-not-ismax--46c40716a575ead027512f48.md) | 92 | `result-track:46c40716a575ead027512f48e9fa74963081ce4044e3ae7af82ca7119029b507` |
| 9 | `lemma` | [insert_Ico_succ_left_eq_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant24860266b13a574f5a38692bacd2c1c41d6fc50581d4dfe9fe4a6224d0b21166.lean/declarations/insert-ico-succ-left-eq-ico--25046acdf8451a686403d8f3.md) | 97 | `result-track:25046acdf8451a686403d8f358c93f9a83ed158db8c01b6e4bbff3945d17f89f` |
| 10 | `lemma` | [insert_Ioc_right_eq_Ioc_succ_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant24860266b13a574f5a38692bacd2c1c41d6fc50581d4dfe9fe4a6224d0b21166.lean/declarations/insert-ioc-right-eq-ioc-succ-of-not-ismax--9cc1a503a5eadbceecc7820f.md) | 101 | `result-track:9cc1a503a5eadbceecc7820f296bb669ca8c5d7b44bf2100f4b11a7ae46040e7` |
| 11 | `lemma` | [insert_Ioc_succ_left_eq_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant24860266b13a574f5a38692bacd2c1c41d6fc50581d4dfe9fe4a6224d0b21166.lean/declarations/insert-ioc-succ-left-eq-ioc--3e35605b237a7b85fd4cd03d.md) | 106 | `result-track:3e35605b237a7b85fd4cd03d7591d8124fa01a06c9c6cad3a9765980a9ea89de` |
| 12 | `lemma` | [Icc_succ_left_eq_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant24860266b13a574f5a38692bacd2c1c41d6fc50581d4dfe9fe4a6224d0b21166.lean/declarations/icc-succ-left-eq-ioc--7df9cf4b8877ad25a7e6a574.md) | 118 | `result-track:7df9cf4b8877ad25a7e6a57405d8a5241fad4348dc8c66da2490aee2d4444754` |
| 13 | `lemma` | [Ico_succ_right_eq_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant24860266b13a574f5a38692bacd2c1c41d6fc50581d4dfe9fe4a6224d0b21166.lean/declarations/ico-succ-right-eq-icc--8bb2d07b108da632c32455d2.md) | 122 | `result-track:8bb2d07b108da632c32455d25f82861ae96c04e93e359a3b756892a96d5852ca` |
| 14 | `lemma` | [Ioo_succ_right_eq_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant24860266b13a574f5a38692bacd2c1c41d6fc50581d4dfe9fe4a6224d0b21166.lean/declarations/ioo-succ-right-eq-ioc--27b5b6b241c70070b98da7fc.md) | 126 | `result-track:27b5b6b241c70070b98da7fcf0072b80fc8d9f32fd11599661c2d1941d7d6ec7` |
| 15 | `lemma` | [Ico_succ_succ_eq_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant24860266b13a574f5a38692bacd2c1c41d6fc50581d4dfe9fe4a6224d0b21166.lean/declarations/ico-succ-succ-eq-ioc--86fd207e5c118fd110192d59.md) | 130 | `result-track:86fd207e5c118fd110192d59f815afd8218cb489f587d4dfbb6efacdef5881a7` |
| 16 | `lemma` | [insert_Ico_right_eq_Ico_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant24860266b13a574f5a38692bacd2c1c41d6fc50581d4dfe9fe4a6224d0b21166.lean/declarations/insert-ico-right-eq-ico-succ--b3a0eff3c50f7269211608b5.md) | 136 | `result-track:b3a0eff3c50f7269211608b5a61ba314412de7772b33354f37ae047a10c932e9` |
| 17 | `lemma` | [insert_Ioc_right_eq_Ioc_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant24860266b13a574f5a38692bacd2c1c41d6fc50581d4dfe9fe4a6224d0b21166.lean/declarations/insert-ioc-right-eq-ioc-succ--5c658d8e81c3f045552a8c7f.md) | 140 | `result-track:5c658d8e81c3f045552a8c7f271fc546f5205935333050fcf1c0eac2039ec058` |
| 18 | `lemma` | [Icc_succ_pred_eq_Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant24860266b13a574f5a38692bacd2c1c41d6fc50581d4dfe9fe4a6224d0b21166.lean/declarations/icc-succ-pred-eq-ioo--34afe8964225e4c1d3857574.md) | 155 | `result-track:34afe8964225e4c1d38575740ba2c2def5677083b3ba8b58f9b5302c9b3cecd6` |
| 19 | `lemma` | [Iio_succ_eq_Iic_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant24860266b13a574f5a38692bacd2c1c41d6fc50581d4dfe9fe4a6224d0b21166.lean/declarations/iio-succ-eq-iic-of-not-ismax--c9c5823801d859ceb5a219f0.md) | 169 | `result-track:c9c5823801d859ceb5a219f0e77123771eed053d429d2755c30e8003994c3039` |
| 20 | `lemma` | [Ici_succ_eq_Ioi_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant24860266b13a574f5a38692bacd2c1c41d6fc50581d4dfe9fe4a6224d0b21166.lean/declarations/ici-succ-eq-ioi-of-not-ismax--c715e8f6f9aa9460239e6732.md) | 173 | `result-track:c715e8f6f9aa9460239e67329c5afea6756d790a57b491bb2f3c9727cb350c24` |
| 21 | `lemma` | [Iio_succ_eq_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant24860266b13a574f5a38692bacd2c1c41d6fc50581d4dfe9fe4a6224d0b21166.lean/declarations/iio-succ-eq-iic--ae875e3255e22d5e769f1ecc.md) | 179 | `result-track:ae875e3255e22d5e769f1ecc20020591b056918e7ab51169c2131e43722f1474` |
| 22 | `lemma` | [Ici_succ_eq_Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant24860266b13a574f5a38692bacd2c1c41d6fc50581d4dfe9fe4a6224d0b21166.lean/declarations/ici-succ-eq-ioi--74bc022f9b6b4d9a996f9f3b.md) | 182 | `result-track:74bc022f9b6b4d9a996f9f3b674c8cd6e555ab39f4357621b19f51c67d7f5332` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
