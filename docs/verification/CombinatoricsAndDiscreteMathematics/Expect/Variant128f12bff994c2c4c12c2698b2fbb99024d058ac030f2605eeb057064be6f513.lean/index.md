# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Expect.Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b26328990257b1736db4a208c2d3b96c78fea226",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b26328990257b1736db4a208c2d3b96c78fea226`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Rat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.GroupWithZero.Action` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Pi` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Pi` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Density` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Finset.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Finset.expect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/finset-expect--9fa6eb19389c43ff00f62573.md) | 55 | `declaration-track:9fa6eb19389c43ff00f62573963af78800e11f04b79e38b0d48fc71f11f97471` |
| 2 | `syntax` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/syntax--32f2403896c406097bd2f7fd.md) | 72 | `declaration-track:32f2403896c406097bd2f7fd8bca2e7074b100d7f4a00a407b8f77d36d60d216` |
| 3 | `macro_rules` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/macro-rules--1ff99b4cbad66069391fc8ce.md) | 74 | `declaration-track:1ff99b4cbad66069391fc8cef836ab836bb067735b87adedc4bdece73dc712cf` |
| 4 | `def` | [delabFinsetExpect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/delabfinsetexpect--d7c10f1e5213cc5b33898d56.md) | 88 | `declaration-track:d7c10f1e5213cc5b33898d567b137e9f6d27ea7a2e3b352f2c25b1980d47cf11` |
| 5 | `lemma` | [expect_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-univ--719ae6141574532d5c23d850.md) | 116 | `result-track:719ae6141574532d5c23d85011be52d9facad6bd8381e38420fd7297347a6b42` |
| 6 | `lemma` | [expect_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-empty--8eb2dbc871942877d2a8d98e.md) | 119 | `result-track:8eb2dbc871942877d2a8d98e733190dcb8dff7da03011a859902789705bcd1eb` |
| 7 | `lemma` | [expect_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-singleton--80fbb006a17026ed3e3d08f3.md) | 120 | `result-track:80fbb006a17026ed3e3d08f34841f13f57542f52c2e46e9f77528934e37a4be7` |
| 8 | `lemma` | [expect_const_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-const-zero--f7b841a8a2f23967f0770396.md) | 121 | `result-track:f7b841a8a2f23967f0770396f9945174ea671844b6814a7f6371ea0f35be7c8b` |
| 9 | `lemma` | [expect_congr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-congr--dd6989e9351a5890a62cf5b8.md) | 124 | `result-track:dd6989e9351a5890a62cf5b8553bfab223065704ffe4151cfc0d5c88410f46f6` |
| 10 | `lemma` | [expectWith_congr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expectwith-congr--a350b7a7b58a0ea0cf484522.md) | 127 | `result-track:a350b7a7b58a0ea0cf48452238ec7f3da00e8d07bbd8d104d950ce03d024ec0a` |
| 11 | `lemma` | [expect_sum_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-sum-comm--926cef46718f24281732772e.md) | 131 | `result-track:926cef46718f24281732772e9056a0a93ff8836675c41c8bd03bec68ee134b1f` |
| 12 | `lemma` | [expect_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-comm--e460946a27f896cd6f097473.md) | 135 | `result-track:e460946a27f896cd6f097473178db2acf3b8f9ea112fa0cdeb2449218b2b9cc0` |
| 13 | `lemma` | [expect_eq_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-eq-zero--a4fec655989680226d9e1bac.md) | 139 | `result-track:a4fec655989680226d9e1bacd0319d23ed450734f4a6283d849995c37ae5eb79` |
| 14 | `lemma` | [exists_ne_zero_of_expect_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/exists-ne-zero-of-expect-ne-zero--79010f1b1aca9ef1a89bacf2.md) | 142 | `result-track:79010f1b1aca9ef1a89bacf2cfa582ce25df4858835016aeabc627cddd2fccfa` |
| 15 | `lemma` | [expect_add_distrib](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-add-distrib--786b60e0567763715fb59f0a.md) | 145 | `result-track:786b60e0567763715fb59f0ab8adaa2e1afb36f16c614467ea0efc417ba11593` |
| 16 | `lemma` | [expect_add_expect_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-add-expect-comm--2e8e49e7173c5f86309b00c3.md) | 149 | `result-track:2e8e49e7173c5f86309b00c3add69adba279067ee662332ac810dd66afb425c5` |
| 17 | `lemma` | [expect_eq_single_of_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-eq-single-of-mem--7e257d84cfc415d257aeeb18.md) | 154 | `result-track:7e257d84cfc415d257aeeb18d6bccce1936c9cc58148130a77e385fbe458459f` |
| 18 | `lemma` | [expect_ite_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-ite-zero--123d3f71834cdb14d48dd5f4.md) | 157 | `result-track:123d3f71834cdb14d48dd5f441f061154d7b6f939db1fa067e70a8beb23491ff` |
| 19 | `lemma` | [expect_ite_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-ite-mem--4d7fa83c95699b4ecaaae606.md) | 165 | `result-track:4d7fa83c95699b4ecaaae606fcf8bd8330045f3fc643a850ff429c22db64a1fd` |
| 20 | `lemma` | [expect_dite_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-dite-eq--87d4e564011a54894046df02.md) | 171 | `result-track:87d4e564011a54894046df029e1d406d0b35a6f968fac21d4424b39f438ec66b` |
| 21 | `lemma` | [expect_dite_eq'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-dite-eq--985dea6968fec78d78eb676f.md) | 175 | `result-track:985dea6968fec78d78eb676f8aefcd238746fd19cfa3b8b2e7a32920d7844879` |
| 22 | `lemma` | [expect_ite_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-ite-eq--559dc5ae12031bd78bf9b1cc.md) | 179 | `result-track:559dc5ae12031bd78bf9b1cc11bcdc35621e01fa165d9ebf75556807a3033700` |
| 23 | `lemma` | [expect_ite_eq'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-ite-eq--0c0a07a5542cddb949300fd5.md) | 183 | `result-track:0c0a07a5542cddb949300fd52bea9a845bfac96b1fd91d3b439993dd47a868ea` |
| 24 | `lemma` | [expect_bij](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-bij--6d34299afbf0d43d863f6551.md) | 199 | `result-track:6d34299afbf0d43d863f655157f4ba08fd4ce29ee2b2911d9a9e2875f1e42642` |
| 25 | `lemma` | [expect_bij'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-bij--2d3390f74cfdb4e773e8f1e1.md) | 211 | `result-track:2d3390f74cfdb4e773e8f1e10d5739af87381feb375fce84f45b594cff02443f` |
| 26 | `lemma` | [expect_nbij](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-nbij--391c4e6277dc46068303f714.md) | 224 | `result-track:391c4e6277dc46068303f714ef6465f7d3d3055bba85ae8ce5e4fb2846c852d4` |
| 27 | `lemma` | [expect_nbij'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-nbij--d913f6e09a1e1fbc7d6911f5.md) | 239 | `result-track:d913f6e09a1e1fbc7d6911f5262e418a4c2b3d58088f9375e297d9089d78f63e` |
| 28 | `lemma` | [expect_equiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-equiv--528ce9e0bbbaa6ca748e2835.md) | 247 | `result-track:528ce9e0bbbaa6ca748e2835761d197dabb14c7cec3ccfb7f84cc9f5bab73224` |
| 29 | `lemma` | [expect_product](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-product--7b8e6c1de8f96048dd2fc16f.md) | 253 | `result-track:7b8e6c1de8f96048dd2fc16f8b9a364509693571d35f43d0ddb63c90dcd1462d` |
| 30 | `lemma` | [expect_product'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-product--81cd9517b4fd794ce2a8a91c.md) | 260 | `result-track:81cd9517b4fd794ce2a8a91c734f32a27b60fe4ea3702e4487d18ee98cdb48f0` |
| 31 | `lemma` | [expect_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-image--1e59e6cfb027b4aa60ebc81f.md) | 265 | `result-track:1e59e6cfb027b4aa60ebc81fce68d28d930aa4bcbea47b8be3b66a9a3cf17d30` |
| 32 | `lemma` | [expect_inv_index](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-inv-index--bf8d2f170fdd6953870bf80e.md) | 271 | `result-track:bf8d2f170fdd6953870bf80eac0c4b4af5f0826684b44d3a43e13b7571a9b69f` |
| 33 | `lemma` | [expect_neg_index](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-neg-index--5a1a97a5c9338daf457f181f.md) | 274 | `result-track:5a1a97a5c9338daf457f181f5d727b16bc6b4b008f7e9a0f4f90f53cf425f2d2` |
| 34 | `lemma` | [_root_.map_expect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/root-map-expect--6ef8890cc0265f5835652675.md) | 277 | `result-track:6ef8890cc0265f5835652675da584c7844b38b8284ef276ef3a0465276e6d9c6` |
| 35 | `lemma` | [card_smul_expect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/card-smul-expect--401ddc4be562e6c99c18e60f.md) | 282 | `result-track:401ddc4be562e6c99c18e60faabab421197d750c0462b7c33794d6cf2de172a9` |
| 36 | `lemma` | [_root_.Fintype.card_smul_expect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/root-fintype-card-smul-expect--d95ea7f0d1b54d043e56b97c.md) | 288 | `result-track:d95ea7f0d1b54d043e56b97c0ab6028e96280e93b640c7f282705d35cc1f1294` |
| 37 | `lemma` | [expect_const](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-const--af74e0d29eba2c73976612b0.md) | 291 | `result-track:af74e0d29eba2c73976612b03507c89d147cd20a60ea3f6cf98b57f997461ac2` |
| 38 | `lemma` | [smul_expect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/smul-expect--4e5dbeb06be4950cc35e793c.md) | 295 | `result-track:4e5dbeb06be4950cc35e793c8018de4ce1dd53a6eb8983b66165c9119dfcc3a9` |
| 39 | `lemma` | [expect_sub_distrib](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-sub-distrib--e8f8903f56e231830ebb9cc2.md) | 304 | `result-track:e8f8903f56e231830ebb9cc25796b0af51943e3b765c14de1323653f4b2179ea` |
| 40 | `lemma` | [expect_neg_distrib](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-neg-distrib--b5aa68ef06298d92a54187e6.md) | 309 | `result-track:b5aa68ef06298d92a54187e6c83311067dc82e888f6cf448500d31b35f4e3b8a` |
| 41 | `lemma` | [card_mul_expect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/card-mul-expect--47a43a4dab67d83f0e0c6960.md) | 317 | `result-track:47a43a4dab67d83f0e0c69607ebc693d5d5feaef09346100fe141e6ba048db74` |
| 42 | `lemma` | [_root_.Fintype.card_mul_expect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/root-fintype-card-mul-expect--99dca116ec2c9d64b0f62e05.md) | 320 | `result-track:99dca116ec2c9d64b0f62e05b4e56752da4de8aefce1149a067fa478ec44ff4a` |
| 43 | `lemma` | [expect_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-mul--bdf9525be7152f7ac86c61e0.md) | 323 | `result-track:bdf9525be7152f7ac86c61e063ea1f40b3dd31825d4700a2c0f03e8364d9fabd` |
| 44 | `lemma` | [mul_expect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/mul-expect--6c56d40616bebb12ccfad868.md) | 326 | `result-track:6c56d40616bebb12ccfad868c1e1dd9f9f48cb4530a0eb80fdb09169bcc0bd32` |
| 45 | `lemma` | [expect_mul_expect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-mul-expect--a16839113d6a5c9f00edea50.md) | 329 | `result-track:a16839113d6a5c9f00edea506076b61c1c7e503ca48b096424118681ea0509be` |
| 46 | `lemma` | [expect_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-pow--bbcfab5a4f8d1dafc3db416f.md) | 339 | `result-track:bbcfab5a4f8d1dafc3db416f500f3dc7a6891001ea1bb5263210e951830f0f85` |
| 47 | `lemma` | [expect_boole_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-boole-mul--b09cc4a0ef430c274e3705c2.md) | 349 | `result-track:b09cc4a0ef430c274e3705c2fbd43a20c3debe4ddd720db6808e7c5a32ce20ad` |
| 48 | `lemma` | [expect_boole_mul'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-boole-mul--a03842676eb295a83ae48977.md) | 355 | `result-track:a03842676eb295a83ae489776ce256c10226c28023244e12e788ea23c433d99b` |
| 49 | `lemma` | [expect_eq_sum_div_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-eq-sum-div-card--974f94a96d39991d33d13763.md) | 359 | `result-track:974f94a96d39991d33d137634d2c3795e6ffd959874a7dd3ec85532d37e16040` |
| 50 | `lemma` | [_root_.Fintype.expect_eq_sum_div_card](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/root-fintype-expect-eq-sum-div-card--577ebe384294909804973ac1.md) | 363 | `result-track:577ebe384294909804973ac1c41e7acdb11aeed7453e0077b4eec75c51cfdc38` |
| 51 | `lemma` | [expect_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-div--a0f9e348c5aa59a08606c823.md) | 366 | `result-track:a0f9e348c5aa59a08606c823766f1d424d865ee5ac5df7bad63afa224989ec22` |
| 52 | `lemma` | [expect_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-apply--21f6293370ed5091348b81c9.md) | 371 | `result-track:21f6293370ed5091348b81c98ab570592734882cd21025cfdff4949634acd63d` |
| 53 | `lemma` | [coe_expect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/coe-expect--2c5f511c98eb0ca2a95804db.md) | 381 | `result-track:2c5f511c98eb0ca2a95804db549a3f0fa07ec80c5b82f388cb59afa841db2026` |
| 54 | `lemma` | [expect_bijective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-bijective--2ecfbb815f9a3b5f72a3084d.md) | 396 | `result-track:2ecfbb815f9a3b5f72a3084d42063d892280385b013db30ced3a02b43312149f` |
| 55 | `lemma` | [expect_equiv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-equiv--c8bb3b6a691ac0e70f5938a1.md) | 405 | `result-track:c8bb3b6a691ac0e70f5938a1efc762d264c1d59843e65b3535aaaa4712f457d3` |
| 56 | `lemma` | [expect_const](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-const--98acf3b464125a248bcdbc3a.md) | 408 | `result-track:98acf3b464125a248bcdbc3a75924c4324c179c850c4dc9dafb8993227a83fb0` |
| 57 | `lemma` | [expect_ite_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-ite-zero--d2e33ecf3393c27a1d0e1f55.md) | 410 | `result-track:d2e33ecf3393c27a1d0e1f55bfbc37a29f24c99ca0e2117be53aa92b919a1687` |
| 58 | `lemma` | [expect_ite_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-ite-mem--cb5b6becd81b7b83d7ebccc4.md) | 416 | `result-track:cb5b6becd81b7b83d7ebccc4a10df69b0b72be9902df760743e26cac75d7ac71` |
| 59 | `lemma` | [expect_dite_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-dite-eq--c824ccbe5512d0746331d58b.md) | 420 | `result-track:c824ccbe5512d0746331d58b7f383b6e5455050ccc7e554bead4ff8ac4de8e09` |
| 60 | `lemma` | [expect_dite_eq'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-dite-eq--b465ce3fb2e135fcffd8f024.md) | 423 | `result-track:b465ce3fb2e135fcffd8f024c20673a831557905da7c2d38d42220cb4bc77130` |
| 61 | `lemma` | [expect_ite_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-ite-eq--0151003c96f99b526de81348.md) | 426 | `result-track:0151003c96f99b526de813481fc6650e2cdcdcd27e63af38fecf640e9fb245b0` |
| 62 | `lemma` | [expect_ite_eq'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-ite-eq--b09e88c1d6cf1b7a131cebf9.md) | 429 | `result-track:b09e88c1d6cf1b7a131cebf9191ce43cc9ac41f44de53a77d8443e141378ac91` |
| 63 | `lemma` | [expect_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-one--bee48937b166460894ba1a7c.md) | 437 | `result-track:bee48937b166460894ba1a7cb5dafd09ac180dd1e596ddce5103aeaf2e20c49e` |
| 64 | `lemma` | [expect_mul_expect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Expect/Variant128f12bff994c2c4c12c2698b2fbb99024d058ac030f2605eeb057064be6f513.lean/declarations/expect-mul-expect--6f416527d54ab9d7c1a52ef8.md) | 439 | `result-track:6f416527d54ab9d7c1a52ef86ff815579d6d2e91cc29ec9a1942ddf2b77cc493` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
