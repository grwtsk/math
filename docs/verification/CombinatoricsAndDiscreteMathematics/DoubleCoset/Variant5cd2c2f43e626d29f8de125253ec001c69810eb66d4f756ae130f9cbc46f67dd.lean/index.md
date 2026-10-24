# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DoubleCoset.Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ef8107a8cbaa3d9186ecbd0d8e599a183911249",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ef8107a8cbaa3d9186ecbd0d8e599a183911249`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean.json)

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
| 1 | `def` | [doubleCoset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean/declarations/doublecoset--bbfedf63100d17368ce07052.md) | 37 | `declaration-track:bbfedf63100d17368ce07052ca28fa31f5e047a528537ce11de369be8a6f600a` |
| 2 | `lemma` | [doubleCoset_eq_image2](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean/declarations/doublecoset-eq-image2--dd4539cadb6fa5d9d5f96681.md) | 40 | `result-track:dd4539cadb6fa5d9d5f966819652979c2846a3d272cd30782c98d6298ad1ec98` |
| 3 | `lemma` | [mem_doubleCoset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean/declarations/mem-doublecoset--c9a08cb7f3a3ca37ff999ba2.md) | 44 | `result-track:c9a08cb7f3a3ca37ff999ba2a48a1c3d9554f37c72fde0a6f9939b659dc21a14` |
| 4 | `lemma` | [mem_doubleCoset_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean/declarations/mem-doublecoset-self--0a95478c8b87854b87c9eb71.md) | 48 | `result-track:0a95478c8b87854b87c9eb713b964142869f1300dacbcfa53b2c7dac4483df1a` |
| 5 | `lemma` | [doubleCoset_eq_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean/declarations/doublecoset-eq-of-mem--e9897a5cd1cec2e6f2e9a815.md) | 51 | `result-track:e9897a5cd1cec2e6f2e9a8153bb6c00f388b9d29dbeb80a258810fe9d4771a09` |
| 6 | `lemma` | [mem_doubleCoset_of_not_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean/declarations/mem-doublecoset-of-not-disjoint--5f519a4808ef2358835c272d.md) | 58 | `result-track:5f519a4808ef2358835c272d41a27cf309d73b8be0d7ac4dfb6947c8ca684d65` |
| 7 | `lemma` | [eq_of_not_disjoint](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean/declarations/eq-of-not-disjoint--ecf5ceee02d170e92b31f2ae.md) | 66 | `result-track:ecf5ceee02d170e92b31f2aea586dad54e9fa0fa05d7234b336a6ec10c7bbd9d` |
| 8 | `def` | [setoid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean/declarations/setoid--d029759ce7705b7372811818.md) | 75 | `declaration-track:d029759ce7705b737281181873ac4279a40030ee3a05e410029e86cab460d163` |
| 9 | `def` | [Quotient](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean/declarations/quotient--6089e9a265a19c0a49be6dcc.md) | 79 | `declaration-track:6089e9a265a19c0a49be6dcc71617206c1899656ae51e1d3920263352e4763b5` |
| 10 | `lemma` | [rel_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean/declarations/rel-iff--59bac61a924de348ab858ae5.md) | 82 | `result-track:59bac61a924de348ab858ae58e0c57d3ad94ebe706af83692d63f03a634cf547` |
| 11 | `lemma` | [bot_rel_eq_leftRel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean/declarations/bot-rel-eq-leftrel--005169db95415c2db9fee39d.md) | 88 | `result-track:005169db95415c2db9fee39de3c946a29d4cdb613cca0a7b94aa2e005b1f8656` |
| 12 | `lemma` | [rel_bot_eq_right_group_rel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean/declarations/rel-bot-eq-right-group-rel--01d215e9788fdbafb485d723.md) | 98 | `result-track:01d215e9788fdbafb485d7230b1483bed697f92001ab0f1f2981f11366f3afd3` |
| 13 | `def` | [quotToDoubleCoset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean/declarations/quottodoublecoset--cd40fd45f457d7b03c87f7c5.md) | 111 | `declaration-track:cd40fd45f457d7b03c87f7c59f77599aee00ebbdf24b86b367175830820a57c3` |
| 14 | `abbrev` | [mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean/declarations/mk--9791da92c4055e273a01af40.md) | 115 | `declaration-track:9791da92c4055e273a01af401d809f4813b111b7eb4c4e58632ad6320582e48c` |
| 15 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean/declarations/instance--c56f4ea91405b98d62410583.md) | 118 | `declaration-track:c56f4ea91405b98d624105836d27a0ac0a67ccbdd795de72350485c8e457134d` |
| 16 | `lemma` | [eq''](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean/declarations/eq--d0d22797b570b0c9c50c482a.md) | 121 | `result-track:d0d22797b570b0c9c50c482a3c8f88c66a17efb5d4ae1ff4f0fd6b6fd8042ba6` |
| 17 | `lemma` | [eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean/declarations/eq--04add5273efe4d877549b519.md) | 124 | `result-track:04add5273efe4d877549b519080092fc4c7213acd5ca4d25d2964d4296f13079` |
| 18 | `lemma` | [out_eq'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean/declarations/out-eq--8ef3b6bf4717680efda801d9.md) | 129 | `result-track:8ef3b6bf4717680efda801d9cc7d7b3750e707dcdedaef201be2683e9e758a9a` |
| 19 | `lemma` | [mk_out_eq_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean/declarations/mk-out-eq-mul--f1f007be7fe5a7f31a5c9ed9.md) | 132 | `result-track:f1f007be7fe5a7f31a5c9ed91fad70dd744e11724e3c6f2aa37dd173a1dbfb6e` |
| 20 | `lemma` | [mk_eq_of_doubleCoset_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean/declarations/mk-eq-of-doublecoset-eq--00e720e4947fece3406f882e.md) | 136 | `result-track:00e720e4947fece3406f882e2924c4e703fb5810d35434871945440dc6d87545` |
| 21 | `lemma` | [mk_mem_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean/declarations/mk-mem-mul--673404a40aa0d41027af895a.md) | 142 | `result-track:673404a40aa0d41027af895a902e5e61849f69058f69f7f0035cbaab06fd76e1` |
| 22 | `lemma` | [mk_mul_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean/declarations/mk-mul-mem--45c23c86db98869ac12ee6e1.md) | 148 | `result-track:45c23c86db98869ac12ee6e1c050ee585164dfa3e2f79382dfb56abd81c33010` |
| 23 | `lemma` | [mem_quotToDoubleCoset_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean/declarations/mem-quottodoublecoset-iff--96e37a76c110f9150a9376b2.md) | 154 | `result-track:96e37a76c110f9150a9376b27d87d4846444e4a29f80f8ed575df3e5ade6c6b7` |
| 24 | `lemma` | [disjoint_out](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean/declarations/disjoint-out--188002f4a5609466bf2733d3.md) | 160 | `result-track:188002f4a5609466bf2733d3881d970dba6e825e203ef582109d7dfc7999febc` |
| 25 | `lemma` | [iUnion_quotToDoubleCoset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean/declarations/iunion-quottodoublecoset--5797d469864cc81857c5c641.md) | 166 | `result-track:5797d469864cc81857c5c6418ede81a0c6b990ecd3c93b323fd1441609e2d408` |
| 26 | `lemma` | [doubleCoset_union_rightCoset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean/declarations/doublecoset-union-rightcoset--e9cf3effc41ec6dfd0d6f33b.md) | 175 | `result-track:e9cf3effc41ec6dfd0d6f33bf0231ddcc733be3ff5fd964d16619bade33bcbca` |
| 27 | `lemma` | [doubleCoset_union_leftCoset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean/declarations/doublecoset-union-leftcoset--a69a9344a7efcb3d93446559.md) | 188 | `result-track:a69a9344a7efcb3d9344655912fa485202e5d3daede2864c0993cf454e482321` |
| 28 | `lemma` | [left_bot_eq_left_quot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean/declarations/left-bot-eq-left-quot--4eaa9d7bb45b7d7c937d471b.md) | 202 | `result-track:4eaa9d7bb45b7d7c937d471bab5dd1a642a2a501f00345d8900146fc9e731702` |
| 29 | `lemma` | [right_bot_eq_right_quot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean/declarations/right-bot-eq-right-quot--cdb99a1f1a2489f898e69b19.md) | 209 | `result-track:cdb99a1f1a2489f898e69b199ea10af3ad361337ae798e2b888c42cfba8294df` |
| 30 | `lemma` | [finite_quotient_iff_exists_finset_iUnion_eq_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean/declarations/finite-quotient-iff-exists-finset-iunion-eq-univ--bc2773587f3d56690c4cc2e4.md) | 216 | `result-track:bc2773587f3d56690c4cc2e44900550d2949e116c973b2cdeabe7f42639e16de` |
| 31 | `lemma` | [iUnion_image_mk_leftRel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean/declarations/iunion-image-mk-leftrel--a7566d160202ce855b4bd2be.md) | 231 | `result-track:a7566d160202ce855b4bd2beaa8b9f19505d93b85091274b95f322f09c221eac` |
| 32 | `lemma` | [iUnion_image_mk_rightRel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean/declarations/iunion-image-mk-rightrel--43224f33ec75282ab9a1cdf8.md) | 242 | `result-track:43224f33ec75282ab9a1cdf87e59f8ed0a72ef2bba623367218802d5fcd310bc` |
| 33 | `lemma` | [iUnion_finset_leftRel_eq_univ_of_leftRel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean/declarations/iunion-finset-leftrel-eq-univ-of-leftrel--97b8e12ad295ea055f7b2e74.md) | 253 | `result-track:97b8e12ad295ea055f7b2e748ea54fdaaa22341e3cc1003595451fd6978a43dc` |
| 34 | `lemma` | [iUnion_finset_rightRel_eq_univ_of_rightRel](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DoubleCoset/Variant5cd2c2f43e626d29f8de125253ec001c69810eb66d4f756ae130f9cbc46f67dd.lean/declarations/iunion-finset-rightrel-eq-univ-of-rightrel--25f124b592dd41de2c818fbd.md) | 270 | `result-track:25f124b592dd41de2c818fbda6b8b5a44dee462d9cff27b5ea509671ca353c64` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
