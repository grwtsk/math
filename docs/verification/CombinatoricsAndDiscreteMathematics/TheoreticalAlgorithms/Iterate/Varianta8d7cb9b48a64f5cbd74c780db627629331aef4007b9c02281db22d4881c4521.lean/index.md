# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Iterate.Varianta8d7cb9b48a64f5cbd74c780db627629331aef4007b9c02281db22d4881c4521

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85d5a8213f0a1a95497c6f6ef9f8b507c484d79d",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta8d7cb9b48a64f5cbd74c780db627629331aef4007b9c02281db22d4881c4521.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta8d7cb9b48a64f5cbd74c780db627629331aef4007b9c02281db22d4881c4521.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta8d7cb9b48a64f5cbd74c780db627629331aef4007b9c02281db22d4881c4521.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85d5a8213f0a1a95497c6f6ef9f8b507c484d79d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta8d7cb9b48a64f5cbd74c780db627629331aef4007b9c02281db22d4881c4521.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta8d7cb9b48a64f5cbd74c780db627629331aef4007b9c02281db22d4881c4521.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.Conjugate` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [iterate_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta8d7cb9b48a64f5cbd74c780db627629331aef4007b9c02281db22d4881c4521.lean/declarations/iterate-zero--2463fdbb12c0b5c44964b653.md) | 44 | `result-track:2463fdbb12c0b5c44964b653bff8e3a3b1599cb3f98c7b55ecb6895fab89f318` |
| 2 | `theorem` | [iterate_zero_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta8d7cb9b48a64f5cbd74c780db627629331aef4007b9c02281db22d4881c4521.lean/declarations/iterate-zero-apply--56f69c5d0700788494974d2b.md) | 48 | `result-track:56f69c5d0700788494974d2b70f1135b81475cfe3e0e046cf4247791a744fb4d` |
| 3 | `theorem` | [iterate_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta8d7cb9b48a64f5cbd74c780db627629331aef4007b9c02281db22d4881c4521.lean/declarations/iterate-succ--ae5f0f67186637df2bd6f92a.md) | 53 | `result-track:ae5f0f67186637df2bd6f92ab5237de1a4c7c24658fd8e5a9d9c3e87ab62cf45` |
| 4 | `theorem` | [iterate_succ_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta8d7cb9b48a64f5cbd74c780db627629331aef4007b9c02281db22d4881c4521.lean/declarations/iterate-succ-apply--c22bb301ba9d854d9f93ec79.md) | 57 | `result-track:c22bb301ba9d854d9f93ec7978f07e0e15db94f47d467eb68e35bfbdb63bd286` |
| 5 | `theorem` | [iterate_id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta8d7cb9b48a64f5cbd74c780db627629331aef4007b9c02281db22d4881c4521.lean/declarations/iterate-id--d003d3ac7dc4abc538d74e34.md) | 62 | `result-track:d003d3ac7dc4abc538d74e344dfa76571b9c3831183aa26c70f7673939c41a05` |
| 6 | `theorem` | [iterate_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta8d7cb9b48a64f5cbd74c780db627629331aef4007b9c02281db22d4881c4521.lean/declarations/iterate-add--2f0542768e61e4c63e8b78c9.md) | 66 | `result-track:2f0542768e61e4c63e8b78c9cc6e775867229cfb488519c60062b9acf56bd3a3` |
| 7 | `theorem` | [iterate_add_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta8d7cb9b48a64f5cbd74c780db627629331aef4007b9c02281db22d4881c4521.lean/declarations/iterate-add-apply--6eb4428deacd03a8d4d65ecf.md) | 71 | `result-track:6eb4428deacd03a8d4d65ecfae45e755fe32be0aef9de2241610c74d0c43631a` |
| 8 | `theorem` | [iterate_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta8d7cb9b48a64f5cbd74c780db627629331aef4007b9c02281db22d4881c4521.lean/declarations/iterate-one--007c0f37ae09f1b7f38e473e.md) | 77 | `result-track:007c0f37ae09f1b7f38e473e46a1dd47016a091da99e808a349049bbea1a4369` |
| 9 | `theorem` | [iterate_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta8d7cb9b48a64f5cbd74c780db627629331aef4007b9c02281db22d4881c4521.lean/declarations/iterate-mul--ef0afd19d8a6553aff19cf0c.md) | 81 | `result-track:ef0afd19d8a6553aff19cf0ceb115cf949588d6b7e89f8cbcf500c60357ad7a3` |
| 10 | `theorem` | [iterate_fixed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta8d7cb9b48a64f5cbd74c780db627629331aef4007b9c02281db22d4881c4521.lean/declarations/iterate-fixed--2da50087a80ad2ed78c39751.md) | 88 | `result-track:2da50087a80ad2ed78c397513a7a15b6aab68f653db16b656a0536f2a95b6df9` |
| 11 | `theorem` | [Injective.iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta8d7cb9b48a64f5cbd74c780db627629331aef4007b9c02281db22d4881c4521.lean/declarations/injective-iterate--4865add613e5b73f209dbc61.md) | 92 | `result-track:4865add613e5b73f209dbc614c596a7c2767416f1d83017b00738e6eb66df523` |
| 12 | `theorem` | [Surjective.iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta8d7cb9b48a64f5cbd74c780db627629331aef4007b9c02281db22d4881c4521.lean/declarations/surjective-iterate--2294cae20a1b3ceba8f1bdc4.md) | 96 | `result-track:2294cae20a1b3ceba8f1bdc4486ed59b49c9e49d67734336fe6800b4b9d28267` |
| 13 | `theorem` | [Bijective.iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta8d7cb9b48a64f5cbd74c780db627629331aef4007b9c02281db22d4881c4521.lean/declarations/bijective-iterate--d8922f324a00c91db8556494.md) | 100 | `result-track:d8922f324a00c91db85564945b649d2d565b8d5b29419c770f40c33cf33433f0` |
| 14 | `theorem` | [iterate_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta8d7cb9b48a64f5cbd74c780db627629331aef4007b9c02281db22d4881c4521.lean/declarations/iterate-right--5d4bf76da75df537bad80b56.md) | 106 | `result-track:5d4bf76da75df537bad80b5632cb5984a7ba2a4da5c6b8d8bb4a0a92b2c42dd7` |
| 15 | `theorem` | [iterate_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta8d7cb9b48a64f5cbd74c780db627629331aef4007b9c02281db22d4881c4521.lean/declarations/iterate-left--e8b2016c860d906804225b88.md) | 111 | `result-track:e8b2016c860d906804225b88c04784521a0f40619a6aba26cf5954f0083dfd0d` |
| 16 | `theorem` | [iterate_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta8d7cb9b48a64f5cbd74c780db627629331aef4007b9c02281db22d4881c4521.lean/declarations/iterate-right--5796e95524e511ab83c24993.md) | 126 | `result-track:5796e95524e511ab83c2499320e793ea52c47526507e52fd48a74484c0a5bf33` |
| 17 | `theorem` | [iterate_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta8d7cb9b48a64f5cbd74c780db627629331aef4007b9c02281db22d4881c4521.lean/declarations/iterate-left--df8fcfcac39f65c592170d07.md) | 130 | `result-track:df8fcfcac39f65c592170d076f72ef4d15eafcfd953b171031c1461d1295c129` |
| 18 | `theorem` | [iterate_iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta8d7cb9b48a64f5cbd74c780db627629331aef4007b9c02281db22d4881c4521.lean/declarations/iterate-iterate--c89fc54ff7038b0d85ff71b5.md) | 134 | `result-track:c89fc54ff7038b0d85ff71b5c389381b147b5305bf6ab58806e2a2d6019fede6` |
| 19 | `theorem` | [iterate_eq_of_map_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta8d7cb9b48a64f5cbd74c780db627629331aef4007b9c02281db22d4881c4521.lean/declarations/iterate-eq-of-map-eq--b75642e49a6ee9b527495b6f.md) | 138 | `result-track:b75642e49a6ee9b527495b6feebe852940d365bccaef3440c4dc527fe989f94e` |
| 20 | `theorem` | [comp_iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta8d7cb9b48a64f5cbd74c780db627629331aef4007b9c02281db22d4881c4521.lean/declarations/comp-iterate--d0f0ca440cf4c90337731a53.md) | 144 | `result-track:d0f0ca440cf4c90337731a5375640823a4428a7ae4a896aee9ff1c8d55a87436` |
| 21 | `theorem` | [iterate_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta8d7cb9b48a64f5cbd74c780db627629331aef4007b9c02281db22d4881c4521.lean/declarations/iterate-self--f643dffe1be10ba3d821fc80.md) | 153 | `result-track:f643dffe1be10ba3d821fc80f909df6f7f066ee684ec736d898170c73aac2662` |
| 22 | `theorem` | [self_iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta8d7cb9b48a64f5cbd74c780db627629331aef4007b9c02281db22d4881c4521.lean/declarations/self-iterate--cc700f28e5ed301cefec3f8d.md) | 157 | `result-track:cc700f28e5ed301cefec3f8daadb41b51f54bc11df9004d70e47ffb5b71f7c3c` |
| 23 | `theorem` | [iterate_iterate_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta8d7cb9b48a64f5cbd74c780db627629331aef4007b9c02281db22d4881c4521.lean/declarations/iterate-iterate-self--0efc035f9f5f980a27a632fc.md) | 161 | `result-track:0efc035f9f5f980a27a632fc6439a0c979e828bf883a6e6cb3ee09069452cc52` |
| 24 | `theorem` | [Semiconj₂.iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta8d7cb9b48a64f5cbd74c780db627629331aef4007b9c02281db22d4881c4521.lean/declarations/semiconj-iterate--5dc5e274b9027264460cc562.md) | 167 | `result-track:5dc5e274b9027264460cc562720c2b6553d02a821060d256626a67d75328e141` |
| 25 | `theorem` | [iterate_succ'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta8d7cb9b48a64f5cbd74c780db627629331aef4007b9c02281db22d4881c4521.lean/declarations/iterate-succ--e37121cb0fefd20ce42bd324.md) | 174 | `result-track:e37121cb0fefd20ce42bd324601015f3310e66de4d4974d3441e0840fecf2de3` |
| 26 | `theorem` | [iterate_succ_apply'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta8d7cb9b48a64f5cbd74c780db627629331aef4007b9c02281db22d4881c4521.lean/declarations/iterate-succ-apply--1befec8d1c3beac32cfbfdf5.md) | 178 | `result-track:1befec8d1c3beac32cfbfdf58501e790b9320202469c756df7921ecb17e953a8` |
| 27 | `theorem` | [iterate_pred_comp_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta8d7cb9b48a64f5cbd74c780db627629331aef4007b9c02281db22d4881c4521.lean/declarations/iterate-pred-comp-of-pos--2e65249571f5cb544886c649.md) | 183 | `result-track:2e65249571f5cb544886c649160c22aee00c5bf05154ba21ca3f1fdaf8efa84d` |
| 28 | `theorem` | [comp_iterate_pred_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta8d7cb9b48a64f5cbd74c780db627629331aef4007b9c02281db22d4881c4521.lean/declarations/comp-iterate-pred-of-pos--0175fa46bba4117f992a3641.md) | 187 | `result-track:0175fa46bba4117f992a364118d2fe70c2e317a233594db38bd9b61b4beff641` |
| 29 | `def` | [Iterate.rec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta8d7cb9b48a64f5cbd74c780db627629331aef4007b9c02281db22d4881c4521.lean/declarations/iterate-rec--1fb52d64f275ce9ad814e1ad.md) | 192 | `declaration-track:1fb52d64f275ce9ad814e1ad00ac025ba4925fb206b740850a44c21c76e4f33d` |
| 30 | `theorem` | [Iterate.rec_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta8d7cb9b48a64f5cbd74c780db627629331aef4007b9c02281db22d4881c4521.lean/declarations/iterate-rec-zero--d4c4374b572fdbddcf1d38b8.md) | 199 | `result-track:d4c4374b572fdbddcf1d38b8b109b158ae2a3ff2b15b98cc749e8d06241cdb66` |
| 31 | `theorem` | [LeftInverse.iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta8d7cb9b48a64f5cbd74c780db627629331aef4007b9c02281db22d4881c4521.lean/declarations/leftinverse-iterate--95439941b00c581f521cad74.md) | 206 | `result-track:95439941b00c581f521cad74f26590c459551ac06d2ac276572d7619a602b817` |
| 32 | `theorem` | [RightInverse.iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta8d7cb9b48a64f5cbd74c780db627629331aef4007b9c02281db22d4881c4521.lean/declarations/rightinverse-iterate--1a63df2f1d143bfbbbfc6026.md) | 213 | `result-track:1a63df2f1d143bfbbbfc6026aabca8ed75dc07b629c510c60bb1ddf68e3b08fd` |
| 33 | `theorem` | [iterate_comm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta8d7cb9b48a64f5cbd74c780db627629331aef4007b9c02281db22d4881c4521.lean/declarations/iterate-comm--0d5ca1790c703ed9278f1072.md) | 218 | `result-track:0d5ca1790c703ed9278f10721b664713196f8801b7789cbd13dd3e8da772ab20` |
| 34 | `theorem` | [iterate_commute](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta8d7cb9b48a64f5cbd74c780db627629331aef4007b9c02281db22d4881c4521.lean/declarations/iterate-commute--adc972ce80326d2f8c181f86.md) | 222 | `result-track:adc972ce80326d2f8c181f8654a72709d669c7acbf034decbb23c2e956f0f627` |
| 35 | `lemma` | [iterate_add_eq_iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta8d7cb9b48a64f5cbd74c780db627629331aef4007b9c02281db22d4881c4521.lean/declarations/iterate-add-eq-iterate--15df496e05c4bc7429f437ac.md) | 226 | `result-track:15df496e05c4bc7429f437aca034d89da469e8350ab11eabb80641fdc0158389` |
| 36 | `lemma` | [iterate_cancel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta8d7cb9b48a64f5cbd74c780db627629331aef4007b9c02281db22d4881c4521.lean/declarations/iterate-cancel--f4c4b6b443dfb86e23648cf6.md) | 233 | `result-track:f4c4b6b443dfb86e23648cf6bd58d2e6b67c670fd8bcf07d87e864003821ce12` |
| 37 | `theorem` | [foldl_const](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta8d7cb9b48a64f5cbd74c780db627629331aef4007b9c02281db22d4881c4521.lean/declarations/foldl-const--db6789c31c2b7bd331907516.md) | 245 | `result-track:db6789c31c2b7bd3319075169d772f1173f4acf598f5eeb3f2a1788f8c4670be` |
| 38 | `theorem` | [foldr_const](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterate/Varianta8d7cb9b48a64f5cbd74c780db627629331aef4007b9c02281db22d4881c4521.lean/declarations/foldr-const--d27ff6e80d44f5edc5f780b8.md) | 252 | `result-track:d27ff6e80d44f5edc5f780b8dca376bc8b2a9c4d175220e6de4db2f358a314b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
