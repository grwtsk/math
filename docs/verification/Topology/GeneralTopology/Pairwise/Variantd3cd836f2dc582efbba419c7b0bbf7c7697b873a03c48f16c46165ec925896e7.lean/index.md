# Verification target: GRWTSK.Topology.GeneralTopology.Pairwise.Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4127590d32d7e175d2235600f401a801d5959bd",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4127590d32d7e175d2235600f401a801d5959bd`.

Source path: `GRWTSK/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Count` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Lex` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Pairwise` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Relation` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rel_of_pairwise_cons](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/rel-of-pairwise-cons--ba03399d452db5882b134da7.md) | 45 | `result-track:ba03399d452db5882b134da7f66283df7bccb5b6698390dfa666b16b404b56d4` |
| 2 | `theorem` | [Pairwise.of_cons](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/pairwise-of-cons--54474c153c9ccaed362af7a1.md) | 49 | `result-track:54474c153c9ccaed362af7a1cf72b7c2fdd5d450c03c37a8b38ee232779e0252` |
| 3 | `theorem` | [Pairwise.tail](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/pairwise-tail--34aa125a66573816f464df2e.md) | 53 | `result-track:34aa125a66573816f464df2e5f777c0e04ac0610a55ea39c09fe2f687f0446ea` |
| 4 | `theorem` | [Pairwise.drop](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/pairwise-drop--cf3205df71647420bdeb334d.md) | 58 | `result-track:cf3205df71647420bdeb334d74c1a6b3f00fcb92c570bf111d2a119cf5e73960` |
| 5 | `theorem` | [Pairwise.imp_of_mem](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/pairwise-imp-of-mem--9e128decef09dea06b7ae047.md) | 64 | `result-track:9e128decef09dea06b7ae047934037cdf41361532bd967d6fedab9e7699103ef` |
| 6 | `theorem` | [pairwise_and_iff](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/pairwise-and-iff--ed9611adf8451f7bb9563d1c.md) | 76 | `result-track:ed9611adf8451f7bb9563d1c0de64e9010472838a4d6c93a02c73d9ea69350f3` |
| 7 | `theorem` | [Pairwise.and](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/pairwise-and--af4511b4e747cf7d56a49b7e.md) | 82 | `result-track:af4511b4e747cf7d56a49b7eb074eb84690b5ebe0e486e501ec3fa8de1261a53` |
| 8 | `theorem` | [Pairwise.imp₂](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/pairwise-imp--336a6e5052b6cea6a942935a.md) | 87 | `result-track:336a6e5052b6cea6a942935a5a580fad353bb798572ae7dfbb4ab7e4c7b308ca` |
| 9 | `theorem` | [Pairwise.iff_of_mem](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/pairwise-iff-of-mem--04cc9e96f41a4fe3f95c9584.md) | 92 | `result-track:04cc9e96f41a4fe3f95c9584635a82453a29f1be6eb8b33afe85811a7657c511` |
| 10 | `theorem` | [Pairwise.iff](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/pairwise-iff--db4ead2044e988293956e171.md) | 98 | `result-track:db4ead2044e988293956e17126e4f9fa1058de7bdf0ef689a9f5601f1469132b` |
| 11 | `theorem` | [pairwise_of_forall](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/pairwise-of-forall--a5d082baadc56740258d0f6a.md) | 103 | `result-track:a5d082baadc56740258d0f6a691e0e1d50f6ef0923992b2ca484a70ade947ee9` |
| 12 | `theorem` | [Pairwise.and_mem](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/pairwise-and-mem--922fa53511cda303843039e5.md) | 107 | `result-track:922fa53511cda303843039e5d3c38caad9c249941b485ab0597a7f8307d0dcc1` |
| 13 | `theorem` | [Pairwise.imp_mem](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/pairwise-imp-mem--36a4702b923ad606dc8f0db9.md) | 113 | `result-track:36a4702b923ad606dc8f0db9d3005fee99a0ce6cd904c096da8a9f925b689876` |
| 14 | `theorem` | [Pairwise.forall_of_forall_of_flip](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/pairwise-forall-of-forall-of-flip--36308d651e5af11082eb80bf.md) | 122 | `result-track:36308d651e5af11082eb80bf4885ef5f4cc9a3631ce62171fe5027b7583299e9` |
| 15 | `theorem` | [Pairwise.forall_of_forall](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/pairwise-forall-of-forall--3bf2afb954d193d5d04a29e0.md) | 135 | `result-track:3bf2afb954d193d5d04a29e03471babbf274992315360cbca1638cc87f6cd492` |
| 16 | `theorem` | [Pairwise.forall](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/pairwise-forall--dfc899fd20eab908bf4a7515.md) | 140 | `result-track:dfc899fd20eab908bf4a75154036d07511a6e0c2b2d7d2239a7a2e5132e2351d` |
| 17 | `theorem` | [Pairwise.set_pairwise](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/pairwise-set-pairwise--ae291e849fd53007e062157e.md) | 148 | `result-track:ae291e849fd53007e062157e3898e0954fdfe5a7deada2f59e2950ec859b7d56` |
| 18 | `theorem` | [pairwise_singleton](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/pairwise-singleton--3df18803898e5eeebcf83a8e.md) | 152 | `result-track:3df18803898e5eeebcf83a8e0a625d00372c261ce61db9c3d83b96fdbf787e6b` |
| 19 | `theorem` | [pairwise_pair](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/pairwise-pair--18664f77e05589ceefba7f76.md) | 156 | `result-track:18664f77e05589ceefba7f7622382f072992ca66e222b998ac8e241db0a05d4d` |
| 20 | `theorem` | [pairwise_append_comm](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/pairwise-append-comm--996ab7283046d9e931f8ff19.md) | 163 | `result-track:996ab7283046d9e931f8ff19a2c6daf74633ec848a06246ada86728114fa5a20` |
| 21 | `theorem` | [pairwise_middle](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/pairwise-middle--72a65cd063a54510c1d1dc71.md) | 170 | `result-track:72a65cd063a54510c1d1dc71da887b6669cd1654d5502773b7ab16f21ec940dd` |
| 22 | `theorem` | [pairwise_map'](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/pairwise-map--4a16cedd6d73395898aa8ac9.md) | 178 | `result-track:4a16cedd6d73395898aa8ac980ecb44abea81f5ab01e1a505de5e4873f9d7b61` |
| 23 | `theorem` | [Pairwise.of_map](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/pairwise-of-map--4ea9a76304fea68b8215c9e3.md) | 186 | `result-track:4ea9a76304fea68b8215c9e3af40f7e6b22cfecbad720ca9b641f1251082a454` |
| 24 | `theorem` | [Pairwise.map](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/pairwise-map--71dc0445179d740152be97e2.md) | 191 | `result-track:71dc0445179d740152be97e27ba0f524b87715ecd7a516a07b408d04ccd1491d` |
| 25 | `theorem` | [pairwise_filterMap](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/pairwise-filtermap--f462246537dbc61a7dee0a97.md) | 196 | `result-track:f462246537dbc61a7dee0a97d1028b44add5446faf295d3b31f2c5ebab1500b6` |
| 26 | `theorem` | [Pairwise.filter_map](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/pairwise-filter-map--b8f60ae38ff58399078adcb5.md) | 212 | `result-track:b8f60ae38ff58399078adcb5a3a4a7653c115499718e5750fdfc0938d6f6e7fa` |
| 27 | `theorem` | [pairwise_filter](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/pairwise-filter--1caee8df96bb258b7b0bd112.md) | 218 | `result-track:1caee8df96bb258b7b0bd112f7035955f7cd59adda68e00d9fb6a37d91c20737` |
| 28 | `theorem` | [Pairwise.filter](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/pairwise-filter--c81541bf26d3ef8db7c31387.md) | 226 | `result-track:c81541bf26d3ef8db7c3138780feba4974b299981ad7b9158e57dd68165c4b65` |
| 29 | `theorem` | [pairwise_pmap](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/pairwise-pmap--508aebf41a1f42c954b27bc1.md) | 230 | `result-track:508aebf41a1f42c954b27bc14b6178e43574fd5dadb2171e230df796c84fd0bf` |
| 30 | `theorem` | [Pairwise.pmap](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/pairwise-pmap--2027fae1179672fc47b2aa13.md) | 242 | `result-track:2027fae1179672fc47b2aa13c299827b4a8bfc222a9ea0adc164a65499dce305` |
| 31 | `theorem` | [pairwise_join](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/pairwise-join--ceda1a10b285d4607294689b.md) | 250 | `result-track:ceda1a10b285d4607294689b2a003f1e5f2ebebd83b46f6afb68d41bf54bd2c7` |
| 32 | `theorem` | [pairwise_bind](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/pairwise-bind--3e4cc3156b3a949a6574361d.md) | 264 | `result-track:3e4cc3156b3a949a6574361d26e0f6bc7914f20da2bdd0f4cfc0cf3eb6d5fc28` |
| 33 | `theorem` | [pairwise_of_reflexive_on_dupl_of_forall_ne](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/pairwise-of-reflexive-on-dupl-of-forall-ne--11f48bfe820e0ee79ecf6472.md) | 272 | `result-track:11f48bfe820e0ee79ecf64724dc914ca3ddaafdaa761f020a3ebc8862b61d8ac` |
| 34 | `theorem` | [pairwise_of_forall_mem_list](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/pairwise-of-forall-mem-list--0f6ca1a620567b4459e28475.md) | 295 | `result-track:0f6ca1a620567b4459e284756ad88f4335ccc0186bd11b7d9fdd29c877bf2f5e` |
| 35 | `theorem` | [pairwise_of_reflexive_of_forall_ne](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/pairwise-of-reflexive-of-forall-ne--bb85cfb9b6e41495113c92e0.md) | 304 | `result-track:bb85cfb9b6e41495113c92e0fbfeba86b9979962baa761cf5bea37b12f7a8481` |
| 36 | `theorem` | [pairwise_iff_get](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/pairwise-iff-get--e62782ec67df8f0b5700daf0.md) | 309 | `result-track:e62782ec67df8f0b5700daf096deb8a5196567e7cd3da169deb9b88f15e8fedd` |
| 37 | `theorem` | [pairwise_iff_nthLe](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/pairwise-iff-nthle--0c81e848349f18fbbaf96d8c.md) | 333 | `result-track:0c81e848349f18fbbaf96d8c2c2c2305adc6f047260054f8fa45d6bf03ed9185` |
| 38 | `theorem` | [pairwise_replicate](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/pairwise-replicate--ef704be801dab659b9d7f602.md) | 340 | `result-track:ef704be801dab659b9d7f602d65862e68c5ec1666629b63a4c4fa165705bfdec` |
| 39 | `theorem` | [pwFilter_nil](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/pwfilter-nil--ffafc0413322a8a66fae224b.md) | 353 | `result-track:ffafc0413322a8a66fae224bd3de8a4f062362a1458e6059da42d2574f05920a` |
| 40 | `theorem` | [pwFilter_cons_of_pos](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/pwfilter-cons-of-pos--c978c6ead4815293b149bbc8.md) | 358 | `result-track:c978c6ead4815293b149bbc885ce06c9c68c4353305ff321491562d6b5d3b676` |
| 41 | `theorem` | [pwFilter_cons_of_neg](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/pwfilter-cons-of-neg--c39842c29d29905a9773de77.md) | 364 | `result-track:c39842c29d29905a9773de77c36794f17b233b33330d5bd01a9c8dbcbbd90933` |
| 42 | `theorem` | [pwFilter_map](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/pwfilter-map--e7d6ae313f6b5601cdcad174.md) | 369 | `result-track:e7d6ae313f6b5601cdcad174c7f998e46035a7a3deb176851b51b36589d92763` |
| 43 | `theorem` | [pwFilter_sublist](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/pwfilter-sublist--192d0aeedc9623e8d4b4602a.md) | 388 | `result-track:192d0aeedc9623e8d4b4602a33c722ab55f945f6fc672629fb42dda12fb8ba81` |
| 44 | `theorem` | [pwFilter_subset](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/pwfilter-subset--fd1ac6cda2c37155e68f891c.md) | 398 | `result-track:fd1ac6cda2c37155e68f891cf4cacae737e1db52fe961cd06f971e501e7ba176` |
| 45 | `theorem` | [pairwise_pwFilter](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/pairwise-pwfilter--ed5477aa854f0c0ff4cb6643.md) | 402 | `result-track:ed5477aa854f0c0ff4cb6643eb35d5be9bf33ee1e8ec21d74862db3b52ce4d53` |
| 46 | `theorem` | [pwFilter_eq_self](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/pwfilter-eq-self--fe691de8550ed3e62e7377a3.md) | 412 | `result-track:fe691de8550ed3e62e7377a3207a8c9afad3c1564e073b6d4791fa5a97ae99b2` |
| 47 | `theorem` | [pwFilter_idempotent](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/pwfilter-idempotent--55c39225418261d4a044a9bc.md) | 426 | `result-track:55c39225418261d4a044a9bc1373a2a4e43fd7adc8c0032616782309546b125a` |
| 48 | `theorem` | [forall_mem_pwFilter](../../../../../mathematics/Topology/GeneralTopology/Pairwise/Variantd3cd836f2dc582efbba419c7b0bbf7c7697b873a03c48f16c46165ec925896e7.lean/declarations/forall-mem-pwfilter--ff1a8f8845654a11ec7a109c.md) | 430 | `result-track:ff1a8f8845654a11ec7a109c12396d2c31f3bbc6114957fe5c6a99cfc00bccd5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
