# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bedfc7ff7ff4932e5fd1979ccb663071cc3664fc",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bedfc7ff7ff4932e5fd1979ccb663071cc3664fc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean.json)

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
| 1 | `lemma` | [prod_neg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/prod-neg--abf958906c7f44a3b4451d8f.md) | 33 | `result-track:abf958906c7f44a3b4451d8f7b3b4763b1a11de4dc85f8dc4059080e0eb35250` |
| 2 | `lemma` | [natCast_card_filter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/natcast-card-filter--c2876a4734408bb4813ba728.md) | 40 | `result-track:c2876a4734408bb4813ba728f05c80482a289aee834c5be3cfaa66351a786322` |
| 3 | `lemma` | [sum_boole](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/sum-boole--8679d9ca01df38342ec7acec.md) | 44 | `result-track:8679d9ca01df38342ec7acecd8a7da1aabb3273861e895fe740215999c4f77ab` |
| 4 | `lemma` | [card_eq_sum_ite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/card-eq-sum-ite--f3ce4218c1f500634a9c012d.md) | 48 | `result-track:f3ce4218c1f500634a9c012dc36c0d5cdfc21d93f9e3d65f37c3e270873a4198` |
| 5 | `lemma` | [sum_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/sum-mul--5b2bdb3f2a3ce887f55a0b4c.md) | 56 | `result-track:5b2bdb3f2a3ce887f55a0b4c7e1d4eacda0976a370b54baea3ea83a586951e1a` |
| 6 | `lemma` | [mul_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/mul-sum--b7ebe3a52f82ac4eaebf2dcb.md) | 59 | `result-track:b7ebe3a52f82ac4eaebf2dcbc41529ae5c01be141b9edcd23e3fc3585a8c7d29` |
| 7 | `lemma` | [sum_mul_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/sum-mul-sum--cf8373bace8c097acb6b6a13.md) | 62 | `result-track:cf8373bace8c097acb6b6a13bf51454c7bcea6732e65de2baf72da5ea6b8810a` |
| 8 | `lemma` | [_root_.Fintype.sum_mul_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/root-fintype-sum-mul-sum--04f4962500192c7800a4ba37.md) | 66 | `result-track:04f4962500192c7800a4ba372f141564cfc64bad0db90f4fb8ceaeed03c67241` |
| 9 | `lemma` | [_root_.Commute.sum_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/root-commute-sum-right--18ba03f63f5fdca7d39e96c1.md) | 70 | `result-track:18ba03f63f5fdca7d39e96c1f77df67bcb1836fba42e1484189af21468919fd5` |
| 10 | `lemma` | [_root_.Commute.sum_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/root-commute-sum-left--ae6e2fb0c41b207a2a5f5552.md) | 76 | `result-track:ae6e2fb0c41b207a2a5f5552f321891377d2dc0aa2db9e59eb7f70ed8ccf1f0b` |
| 11 | `lemma` | [sum_range_succ_mul_sum_range_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/sum-range-succ-mul-sum-range-succ--b26ec79f97d9fabad478d504.md) | 80 | `result-track:b26ec79f97d9fabad478d504a6e808272f69d27bf1a2e6fa3238dc26bacde211` |
| 12 | `lemma` | [dvd_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/dvd-sum--8ff33b1e56255fe2e946134c.md) | 91 | `result-track:8ff33b1e56255fe2e946134cdc2b8202ff1040ce5dee01c71d868429fcbc6a07` |
| 13 | `lemma` | [sum_mul_boole](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/sum-mul-boole--c66b97d0f7f3bfb850ca8cd7.md) | 99 | `result-track:c66b97d0f7f3bfb850ca8cd7c19a0231168a81659bc460d73ae97b9eafdce957` |
| 14 | `lemma` | [sum_boole_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/sum-boole-mul--81c8bc417afb50808bc83961.md) | 102 | `result-track:81c8bc417afb50808bc839615c1546caeeedf054800854c0ab18a3f720c56fa9` |
| 15 | `theorem` | [prod_add_prod_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/prod-add-prod-eq--3bd6f0d8c3afdd7d410dc4bb.md) | 112 | `result-track:3bd6f0d8c3afdd7d410dc4bbd310542b373f87d6a022d0abc5fa37d9f5bf0b4b` |
| 16 | `lemma` | [prod_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/prod-sum--70a5006c9220a32f863e0e42.md) | 124 | `result-track:70a5006c9220a32f863e0e42d70511e63d45f7b9e5defc7aba33bdd58453263b` |
| 17 | `lemma` | [prod_univ_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/prod-univ-sum--afcbd6ba53a923bb80f6e84f.md) | 157 | `result-track:afcbd6ba53a923bb80f6e84f00548890e410efcce2f5007760097c9a42d55ab0` |
| 18 | `lemma` | [sum_prod_piFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/sum-prod-pifinset--f73e73c695f44ae5a7a73690.md) | 161 | `result-track:f73e73c695f44ae5a7a73690c79960326bd70e5e5dd7bdd5e0d2c2ebc0308891` |
| 19 | `lemma` | [sum_pow'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/sum-pow--a7553eb1fd6bbc2ac1137d52.md) | 165 | `result-track:a7553eb1fd6bbc2ac1137d527041a8f347f68734dab3c5c8ae15f3a7b35eed54` |
| 20 | `theorem` | [prod_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/prod-add--c157575b6ae890da81563141.md) | 171 | `result-track:c157575b6ae890da815631416c92c5467698a80994381579c6215c59b72032f8` |
| 21 | `theorem` | [prod_one_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/prod-one-add--3f1c7e2f51ae23cbc32fa480.md) | 196 | `result-track:3f1c7e2f51ae23cbc32fa480b8d3b6ff21f0cdefcce2c60729f6eb14fb003100` |
| 22 | `theorem` | [prod_add_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/prod-add-one--5c160a5ebae645277dd14095.md) | 200 | `result-track:5c160a5ebae645277dd14095bf4650d8e58fa103ceeab3013baef0f4ba7a9c5b` |
| 23 | `theorem` | [prod_add_ordered](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/prod-add-ordered--1f2f119f6ffbf70c0187098b.md) | 205 | `result-track:1f2f119f6ffbf70c0187098b7cbdd3aeeb5c6dfcf2f952a0c459f926a8da6684` |
| 24 | `theorem` | [prod_one_add_ordered](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/prod-one-add-ordered--74891fee5912a95fa1573ec0.md) | 226 | `result-track:74891fee5912a95fa1573ec05320ae12836bcf9903ac10de4e4f811bbf73a795` |
| 25 | `theorem` | [sum_pow_mul_eq_add_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/sum-pow-mul-eq-add-pow--621e0fd85d62e92d85edfce6.md) | 233 | `result-track:621e0fd85d62e92d85edfce69dcc72680d68c36703c0c37ef512edbce424c43c` |
| 26 | `lemma` | [_root_.Fintype.sum_pow_mul_eq_add_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/root-fintype-sum-pow-mul-eq-add-pow--fe53fc03a02834c9cdf5aa07.md) | 244 | `result-track:fe53fc03a02834c9cdf5aa0737ff7db09984861543c6238e46b98c6847deb494` |
| 27 | `theorem` | [prod_natCast](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/prod-natcast--f1939a60efcf9fa387bc8f28.md) | 249 | `result-track:f1939a60efcf9fa387bc8f28efebdda325f2e0afd9973a3d775542c8a8c93397` |
| 28 | `lemma` | [prod_sub](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/prod-sub--a4691f3e92d01d0174419ccb.md) | 259 | `result-track:a4691f3e92d01d0174419ccb66ca2d610c5adfb59a7ac22346a9612ecdd60a6c` |
| 29 | `lemma` | [prod_sub_ordered](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/prod-sub-ordered--066dd3f4e398f619a02f6d03.md) | 264 | `result-track:066dd3f4e398f619a02f6d03ac4e939735f3cce274af9fa24ae9e57b6d5de068` |
| 30 | `theorem` | [prod_one_sub_ordered](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/prod-one-sub-ordered--24ae384519242768d7faeaba.md) | 274 | `result-track:24ae384519242768d7faeabada965dadb219c0fa831dad78f57e7e26be6c8da4` |
| 31 | `theorem` | [prod_range_natCast_sub](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/prod-range-natcast-sub--42bd6e647db7d99092462446.md) | 279 | `result-track:42bd6e647db7d99092462446b57360e27d2fba48f9b03e0f39ba134066bf8349` |
| 32 | `lemma` | [sum_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/sum-pow--5fec1be4064b8f14ce23661d.md) | 295 | `result-track:5fec1be4064b8f14ce23661d6b3adb3dca582ce2355259fd9b0525ca29656186` |
| 33 | `lemma` | [prod_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/prod-sum--56f8f47602a3df57ac246559.md) | 301 | `result-track:56f8f47602a3df57ac246559e2bb409bbf51da7f45143045d572b00e30a20fda` |
| 34 | `lemma` | [prod_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/prod-add--3cd60dc9c138b2428719c9b9.md) | 304 | `result-track:3cd60dc9c138b2428719c9b9a4faf5102e77eb341ddcf13407951d6033b52ab9` |
| 35 | `lemma` | [sum_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/sum-div--49853ac8248c3fbea41c72b9.md) | 312 | `result-track:49853ac8248c3fbea41c72b9ea3966251be782f7c617a437f6442620de48f468` |
| 36 | `lemma` | [cast_list_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/cast-list-sum--2171df661aab60fde65f9c51.md) | 320 | `result-track:2171df661aab60fde65f9c51b315709ff325eedea369f7ff01d05e63709a85dc` |
| 37 | `lemma` | [cast_list_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/cast-list-prod--ab16b4b22dc98cfbb4d5e819.md) | 324 | `result-track:ab16b4b22dc98cfbb4d5e819899444c17ca60ffaa3f6d273d5ef857df61b2b8c` |
| 38 | `lemma` | [cast_multiset_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/cast-multiset-sum--0fe07d3d88549c30017ea28c.md) | 328 | `result-track:0fe07d3d88549c30017ea28c591cf2218d1e74358629e5a0514c752fdc123973` |
| 39 | `lemma` | [cast_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/cast-multiset-prod--6f0cde9a3fb4edf33d189e1f.md) | 333 | `result-track:6f0cde9a3fb4edf33d189e1fa90172b412562c4783784b101d776b928a27500e` |
| 40 | `lemma` | [cast_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/cast-sum--6e4c37366591f2476e00d4c6.md) | 337 | `result-track:6e4c37366591f2476e00d4c684405427f00184b04309e4b76063698ebcf3b34e` |
| 41 | `lemma` | [cast_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/cast-prod--ad840ea54e6b4fdfaa88bbb8.md) | 342 | `result-track:ad840ea54e6b4fdfaa88bbb86abe52a5463b15f9c370d24851916a3dae9ec5bb` |
| 42 | `lemma` | [sum_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/sum-div--73371ed8dd05a53cf2ad3b35.md) | 351 | `result-track:73371ed8dd05a53cf2ad3b35f7db0542b9590c3743411d5f026d0cecfd2a5c5c` |
| 43 | `lemma` | [cast_list_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/cast-list-sum--e4d8d9d8a80e0a3426ef96e8.md) | 359 | `result-track:e4d8d9d8a80e0a3426ef96e85c9742d58adbd86dd8a258c1bfc8e9cc8cc2114c` |
| 44 | `lemma` | [cast_list_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/cast-list-prod--7d24ca05711e7e6e6e919c89.md) | 363 | `result-track:7d24ca05711e7e6e6e919c890457e7f452400bb1d5f5a34a2c880570b2bd9801` |
| 45 | `lemma` | [cast_multiset_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/cast-multiset-sum--be1fa3f1a13d3435fa80e668.md) | 367 | `result-track:be1fa3f1a13d3435fa80e668fb5e09c56a31076662db39fff017b10b13a5b04a` |
| 46 | `lemma` | [cast_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/cast-multiset-prod--0f6f0ad00652b57cff257b21.md) | 372 | `result-track:0f6f0ad00652b57cff257b21910dff0c3ad6529b36b88b87d6659529704729ea` |
| 47 | `lemma` | [cast_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/cast-sum--48a88f7919fad00ac2e8f149.md) | 377 | `result-track:48a88f7919fad00ac2e8f149839bb6c7d8335eadf819a712dd4ae817080fa13f` |
| 48 | `lemma` | [cast_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant3260deb025880a9c56b258bc0d9c53106aab2452599141b1e1c8f5bb0f589aa3.lean/declarations/cast-prod--e08577a9528d87a4c35829ab.md) | 382 | `result-track:e08577a9528d87a4c35829ab67f7e2a7acd58d65365da6a9b153e8d96cfc28e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
