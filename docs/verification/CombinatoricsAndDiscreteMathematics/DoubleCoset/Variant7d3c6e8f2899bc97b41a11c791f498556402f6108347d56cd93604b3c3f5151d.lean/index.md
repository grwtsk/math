# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DoubleCoset.Variant7d3c6e8f2899bc97b41a11c791f498556402f6108347d56cd93604b3c3f5151d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be51245644a7c71975194b4e1f3035026be4d98c",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant7d3c6e8f2899bc97b41a11c791f498556402f6108347d56cd93604b3c3f5151d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant7d3c6e8f2899bc97b41a11c791f498556402f6108347d56cd93604b3c3f5151d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant7d3c6e8f2899bc97b41a11c791f498556402f6108347d56cd93604b3c3f5151d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be51245644a7c71975194b4e1f3035026be4d98c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant7d3c6e8f2899bc97b41a11c791f498556402f6108347d56cd93604b3c3f5151d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant7d3c6e8f2899bc97b41a11c791f498556402f6108347d56cd93604b3c3f5151d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [doubleCoset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant7d3c6e8f2899bc97b41a11c791f498556402f6108347d56cd93604b3c3f5151d.lean/declarations/doublecoset--21befb1535e1864d5891fe2b.md) | 45 | `declaration-track:21befb1535e1864d5891fe2b38e99dedffc887c45d1c398cb3897147351f4fb4` |
| 2 | `lemma` | [doubleCoset_eq_image2](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant7d3c6e8f2899bc97b41a11c791f498556402f6108347d56cd93604b3c3f5151d.lean/declarations/doublecoset-eq-image2--3bf1b64789801dae02dd7ad8.md) | 48 | `result-track:3bf1b64789801dae02dd7ad80d69e0da222147f5991af769fbf5157f9ea489b9` |
| 3 | `lemma` | [mem_doubleCoset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant7d3c6e8f2899bc97b41a11c791f498556402f6108347d56cd93604b3c3f5151d.lean/declarations/mem-doublecoset--83a4af0a69759409e1435132.md) | 52 | `result-track:83a4af0a69759409e14351321de24d1f7f1aeca80ab55d8d65481ab51718b431` |
| 4 | `lemma` | [mem_doubleCoset_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant7d3c6e8f2899bc97b41a11c791f498556402f6108347d56cd93604b3c3f5151d.lean/declarations/mem-doublecoset-self--d0f15c595f305ce1e8b7ace5.md) | 56 | `result-track:d0f15c595f305ce1e8b7ace5d7cd29b6326066e9a7cbd81d680dc62d3fe9b897` |
| 5 | `lemma` | [doubleCoset_eq_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant7d3c6e8f2899bc97b41a11c791f498556402f6108347d56cd93604b3c3f5151d.lean/declarations/doublecoset-eq-of-mem--ab08f736c945c4d5ac8a9401.md) | 59 | `result-track:ab08f736c945c4d5ac8a9401887f42b421a550466f77c21e9472d76306d1802a` |
| 6 | `lemma` | [mem_doubleCoset_of_not_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant7d3c6e8f2899bc97b41a11c791f498556402f6108347d56cd93604b3c3f5151d.lean/declarations/mem-doublecoset-of-not-disjoint--cd5b40e45949278a28ba9881.md) | 66 | `result-track:cd5b40e45949278a28ba98811badb67685d43830e61cc6d2536626b494696c74` |
| 7 | `lemma` | [eq_of_not_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant7d3c6e8f2899bc97b41a11c791f498556402f6108347d56cd93604b3c3f5151d.lean/declarations/eq-of-not-disjoint--aeec0046b7b38a73a960a921.md) | 74 | `result-track:aeec0046b7b38a73a960a921041bd98ce4224d32a93fd54e98d42259fecb2ed3` |
| 8 | `def` | [setoid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant7d3c6e8f2899bc97b41a11c791f498556402f6108347d56cd93604b3c3f5151d.lean/declarations/setoid--0cd43fa36b0ff69fab7154bc.md) | 83 | `declaration-track:0cd43fa36b0ff69fab7154bcab9db4955e7a3193a4fac5519bbf4b8e528ec759` |
| 9 | `def` | [Quotient](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant7d3c6e8f2899bc97b41a11c791f498556402f6108347d56cd93604b3c3f5151d.lean/declarations/quotient--d09eb50dd86e1feced970485.md) | 87 | `declaration-track:d09eb50dd86e1feced970485ab4c0ea5bda7253efc06d142e2e19a77a57c937b` |
| 10 | `lemma` | [rel_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant7d3c6e8f2899bc97b41a11c791f498556402f6108347d56cd93604b3c3f5151d.lean/declarations/rel-iff--ba6e5aa0ce6188bd27ed58ec.md) | 90 | `result-track:ba6e5aa0ce6188bd27ed58ec8db9f0329ae88f763c4994de80c30b97fc73492d` |
| 11 | `lemma` | [bot_rel_eq_leftRel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant7d3c6e8f2899bc97b41a11c791f498556402f6108347d56cd93604b3c3f5151d.lean/declarations/bot-rel-eq-leftrel--b9942200998846ae1918bf9a.md) | 96 | `result-track:b9942200998846ae1918bf9a941f9963f93fc496bef0873d50660ee2d12339b3` |
| 12 | `lemma` | [rel_bot_eq_right_group_rel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant7d3c6e8f2899bc97b41a11c791f498556402f6108347d56cd93604b3c3f5151d.lean/declarations/rel-bot-eq-right-group-rel--d977e05900e1de5f298321ec.md) | 106 | `result-track:d977e05900e1de5f298321ec866e0c82a2b51580940ab67e8621aa75ce071c4b` |
| 13 | `def` | [quotToDoubleCoset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant7d3c6e8f2899bc97b41a11c791f498556402f6108347d56cd93604b3c3f5151d.lean/declarations/quottodoublecoset--eb72ce0c6241ca0db1ddfa34.md) | 119 | `declaration-track:eb72ce0c6241ca0db1ddfa34d1ad71ecb8940dfa2e6a61e76643dea2c55ff9a6` |
| 14 | `abbrev` | [mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant7d3c6e8f2899bc97b41a11c791f498556402f6108347d56cd93604b3c3f5151d.lean/declarations/mk--e03cddb3954db1dbdad9af56.md) | 123 | `declaration-track:e03cddb3954db1dbdad9af563ba92f2048eece30f79beafe265383b8c3eed4d7` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant7d3c6e8f2899bc97b41a11c791f498556402f6108347d56cd93604b3c3f5151d.lean/declarations/instance--bb85fbba0906c377a0bfbd02.md) | 126 | `declaration-track:bb85fbba0906c377a0bfbd0234cb3a876b84e5bd8b1b192fef209abfe15c6f05` |
| 16 | `lemma` | [eq''](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant7d3c6e8f2899bc97b41a11c791f498556402f6108347d56cd93604b3c3f5151d.lean/declarations/eq--4c567633a5cf95cc558e650f.md) | 129 | `result-track:4c567633a5cf95cc558e650f9357705226058626e12e1cb923f785cd871e03a0` |
| 17 | `lemma` | [eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant7d3c6e8f2899bc97b41a11c791f498556402f6108347d56cd93604b3c3f5151d.lean/declarations/eq--ebe24d2084ae05fdfe80596a.md) | 132 | `result-track:ebe24d2084ae05fdfe80596a13185dff72c2e28f8d98499da9b5c0722b24eeb4` |
| 18 | `lemma` | [out_eq'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant7d3c6e8f2899bc97b41a11c791f498556402f6108347d56cd93604b3c3f5151d.lean/declarations/out-eq--4ae289b12b2c22bcf679d114.md) | 137 | `result-track:4ae289b12b2c22bcf679d114f3207307c1d3b2649581608756c8f293b7c034e0` |
| 19 | `lemma` | [mk_out_eq_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant7d3c6e8f2899bc97b41a11c791f498556402f6108347d56cd93604b3c3f5151d.lean/declarations/mk-out-eq-mul--59d58c5ff56d049df38b2c2e.md) | 140 | `result-track:59d58c5ff56d049df38b2c2e797ee6f40b5ac98f9127ef5d2e3a41aa3be84cef` |
| 20 | `lemma` | [mk_eq_of_doubleCoset_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant7d3c6e8f2899bc97b41a11c791f498556402f6108347d56cd93604b3c3f5151d.lean/declarations/mk-eq-of-doublecoset-eq--4d737cc97cd3014c114bb8e5.md) | 144 | `result-track:4d737cc97cd3014c114bb8e5c9c77e40255bcd518f03846c444b5f478efba25c` |
| 21 | `lemma` | [mk_mem_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant7d3c6e8f2899bc97b41a11c791f498556402f6108347d56cd93604b3c3f5151d.lean/declarations/mk-mem-mul--1b58d6e3dec6860c4b2eea20.md) | 150 | `result-track:1b58d6e3dec6860c4b2eea2009faa725e55f7e2a8a6e2b11b3b9c6b41cf4eaed` |
| 22 | `lemma` | [mk_mul_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant7d3c6e8f2899bc97b41a11c791f498556402f6108347d56cd93604b3c3f5151d.lean/declarations/mk-mul-mem--da54c3bed1307a8cccfc6116.md) | 156 | `result-track:da54c3bed1307a8cccfc61169529de98e4389386c5434e3678cb1ec5347eb0c5` |
| 23 | `lemma` | [mem_quotToDoubleCoset_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant7d3c6e8f2899bc97b41a11c791f498556402f6108347d56cd93604b3c3f5151d.lean/declarations/mem-quottodoublecoset-iff--3f6000957dfda6beb61a9650.md) | 162 | `result-track:3f6000957dfda6beb61a96508cd7c904f025a67a85f3fa2f912a1aaf9a58294f` |
| 24 | `lemma` | [disjoint_out](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant7d3c6e8f2899bc97b41a11c791f498556402f6108347d56cd93604b3c3f5151d.lean/declarations/disjoint-out--9127dffa69b06dc8860fdd40.md) | 168 | `result-track:9127dffa69b06dc8860fdd406134bb18261adece58cfd09612f3b1038654de3e` |
| 25 | `lemma` | [iUnion_quotToDoubleCoset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant7d3c6e8f2899bc97b41a11c791f498556402f6108347d56cd93604b3c3f5151d.lean/declarations/iunion-quottodoublecoset--98be21cab78108dfc7a32004.md) | 174 | `result-track:98be21cab78108dfc7a3200460283dd1c11297b066657800934b2612cb3df78c` |
| 26 | `lemma` | [doubleCoset_union_rightCoset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant7d3c6e8f2899bc97b41a11c791f498556402f6108347d56cd93604b3c3f5151d.lean/declarations/doublecoset-union-rightcoset--89e0496bd5cd07953285ba30.md) | 183 | `result-track:89e0496bd5cd07953285ba30921f6ee8f9bbf81ea436a7fb2824c54ae7c2a06e` |
| 27 | `lemma` | [doubleCoset_union_leftCoset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant7d3c6e8f2899bc97b41a11c791f498556402f6108347d56cd93604b3c3f5151d.lean/declarations/doublecoset-union-leftcoset--d516ad006b7814e4b6557c4a.md) | 196 | `result-track:d516ad006b7814e4b6557c4a56552cc4434aef62cfbe8a30f716fede39dab9ea` |
| 28 | `lemma` | [left_bot_eq_left_quot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant7d3c6e8f2899bc97b41a11c791f498556402f6108347d56cd93604b3c3f5151d.lean/declarations/left-bot-eq-left-quot--8e134a48f6475c3dd03e2ed5.md) | 210 | `result-track:8e134a48f6475c3dd03e2ed5e57ab58862c0cee1f9df0bbde778c747ed321f71` |
| 29 | `lemma` | [right_bot_eq_right_quot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant7d3c6e8f2899bc97b41a11c791f498556402f6108347d56cd93604b3c3f5151d.lean/declarations/right-bot-eq-right-quot--a1fa76f522a60e43924e3dd9.md) | 217 | `result-track:a1fa76f522a60e43924e3dd9a42ba2ef7c518f12c7aa1de4732360e0d9c6a388` |
| 30 | `lemma` | [finite_quotient_iff_exists_finset_iUnion_eq_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant7d3c6e8f2899bc97b41a11c791f498556402f6108347d56cd93604b3c3f5151d.lean/declarations/finite-quotient-iff-exists-finset-iunion-eq-univ--d8a948a3533af4811c67f443.md) | 224 | `result-track:d8a948a3533af4811c67f44308b0e82b2a7c997fb890f6d4751d540973a38376` |
| 31 | `lemma` | [iUnion_image_mk_leftRel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant7d3c6e8f2899bc97b41a11c791f498556402f6108347d56cd93604b3c3f5151d.lean/declarations/iunion-image-mk-leftrel--4bc4be77dff7dbe32925df0e.md) | 239 | `result-track:4bc4be77dff7dbe32925df0e8cb8a8856cab59dde33a988318c8d4975c7a84f3` |
| 32 | `lemma` | [iUnion_image_mk_rightRel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant7d3c6e8f2899bc97b41a11c791f498556402f6108347d56cd93604b3c3f5151d.lean/declarations/iunion-image-mk-rightrel--dd4bf7510661ac4c9ad3e96a.md) | 250 | `result-track:dd4bf7510661ac4c9ad3e96a207b0fb15395ed374460422b13e287eed48f0f33` |
| 33 | `lemma` | [iUnion_finset_leftRel_eq_univ_of_leftRel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant7d3c6e8f2899bc97b41a11c791f498556402f6108347d56cd93604b3c3f5151d.lean/declarations/iunion-finset-leftrel-eq-univ-of-leftrel--b89420f0c1c4a0c3f795b47a.md) | 261 | `result-track:b89420f0c1c4a0c3f795b47a464756313c78dd99e6484d01c11cc8548f9b72a1` |
| 34 | `lemma` | [iUnion_finset_rightRel_eq_univ_of_rightRel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant7d3c6e8f2899bc97b41a11c791f498556402f6108347d56cd93604b3c3f5151d.lean/declarations/iunion-finset-rightrel-eq-univ-of-rightrel--be7b12b8403f76322cb20880.md) | 278 | `result-track:be7b12b8403f76322cb2088044c0f4cdc1586102d067ff91e8f3b5e2103db8a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
