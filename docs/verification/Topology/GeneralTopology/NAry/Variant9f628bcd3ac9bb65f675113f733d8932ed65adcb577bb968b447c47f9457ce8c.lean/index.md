# Verification target: GRWTSK.Topology.GeneralTopology.NAry.Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be8f8ccd316f36d06e7f650cfcde99f5e7fa500d",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be8f8ccd316f36d06e7f650cfcde99f5e7fa500d`.

Source path: `GRWTSK/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Prod` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [map₂](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/map--919a2184fd70cc8c57595d6f.md) | 45 | `declaration-track:919a2184fd70cc8c57595d6f202d32e8de6c469080fd1e5ffe60235b6067bc49` |
| 2 | `theorem` | [mem_map₂_iff](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/mem-map-iff--0114098e8537122e6ef4eff6.md) | 50 | `result-track:0114098e8537122e6ef4eff62d1ddcca5a493f82633ccd6852d988b7925f84ca` |
| 3 | `theorem` | [image2_mem_map₂](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/image2-mem-map--adf1b121606991196ce345bd.md) | 53 | `result-track:adf1b121606991196ce345bd2da96d929916c174929fcfe1f223376be62f38b8` |
| 4 | `theorem` | [map_prod_eq_map₂](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/map-prod-eq-map--909519439e2c618d82b188a9.md) | 56 | `result-track:909519439e2c618d82b188a9313b404d731453733e884c8562a0e83d31feac9d` |
| 5 | `theorem` | [map_prod_eq_map₂'](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/map-prod-eq-map--86d6963268436a5d129e82d5.md) | 60 | `result-track:86d6963268436a5d129e82d5bac98c7e3fc68b559179bfd2554a51aa71177898` |
| 6 | `theorem` | [map₂_mk_eq_prod](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/map-mk-eq-prod--8dca21e487ff5a5b9bf6f771.md) | 65 | `result-track:8dca21e487ff5a5b9bf6f771f687fc3f012c2778d6bd0caeea7d9f9a0ebcc9d4` |
| 7 | `theorem` | [map₂_mono](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/map-mono--c85826c03fb21be7ac12fff3.md) | 72 | `result-track:c85826c03fb21be7ac12fff31ad94212ccee750c0bb2fa5c042673b4a6130f3c` |
| 8 | `theorem` | [map₂_mono_left](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/map-mono-left--eb227dde2ac2ff93253e995d.md) | 76 | `result-track:eb227dde2ac2ff93253e995d711975a3aec117bee636bb4bed269b25a372947d` |
| 9 | `theorem` | [map₂_mono_right](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/map-mono-right--a6e1d88f8377ffc82c24d786.md) | 80 | `result-track:a6e1d88f8377ffc82c24d7866bc1146f750b8c3a4f425155c30b74be58df192b` |
| 10 | `theorem` | [le_map₂_iff](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/le-map-iff--40516b25416c5da0411ef22b.md) | 84 | `result-track:40516b25416c5da0411ef22bad96dbdfe21e97207a15cf29dfc034b068dd5034` |
| 11 | `theorem` | [map₂_eq_bot_iff](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/map-eq-bot-iff--398ab7aa6d725ac7575f3a06.md) | 90 | `result-track:398ab7aa6d725ac7575f3a065eacd60b9b92e926e1348622731ae65f1e21d378` |
| 12 | `theorem` | [map₂_bot_left](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/map-bot-left--cdb8d37d7e99f347253259c7.md) | 93 | `result-track:cdb8d37d7e99f347253259c7a6d3ed754b7640ba887a755199eb66aee02d5553` |
| 13 | `theorem` | [map₂_bot_right](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/map-bot-right--bfd2e41be49ecaa280218456.md) | 96 | `result-track:bfd2e41be49ecaa2802184562ffa3a6c7f876a67332c4639b279bf265facd2bd` |
| 14 | `theorem` | [map₂_neBot_iff](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/map-nebot-iff--eeaa4ffa1cfd73e946fc9a02.md) | 99 | `result-track:eeaa4ffa1cfd73e946fc9a021a0bd4974760b7595622d6df47470d8098a0e6ce` |
| 15 | `theorem` | [NeBot.map₂](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/nebot-map--0af0cbb51ab5535bd167338e.md) | 101 | `result-track:0af0cbb51ab5535bd167338e26d37f48af68572c361d4ab9dfdf40e3faa0e4a4` |
| 16 | `instance` | [map₂.neBot](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/map-nebot--6737b00a9d71c7bd7b1746d3.md) | 104 | `declaration-track:6737b00a9d71c7bd7b1746d305b8dc873413220829380e80cc4516d5c871e8f9` |
| 17 | `theorem` | [NeBot.of_map₂_left](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/nebot-of-map-left--d43a354b2d6feb595882ff59.md) | 106 | `result-track:d43a354b2d6feb595882ff591b466ec36d05213b089c23478a05c1ad72cd65df` |
| 18 | `theorem` | [NeBot.of_map₂_right](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/nebot-of-map-right--ee7eaa64126d1d81582b8097.md) | 109 | `result-track:ee7eaa64126d1d81582b80972b4d05d9b13a41366291ad4822d7f2855ed80f60` |
| 19 | `theorem` | [map₂_sup_left](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/map-sup-left--a56dd28d2dd7e751eb5fa22e.md) | 112 | `result-track:a56dd28d2dd7e751eb5fa22e243258b64ffd236698d9965a14c2d05bbcdc2ba0` |
| 20 | `theorem` | [map₂_sup_right](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/map-sup-right--85e22f54b4666892e5f0a9b2.md) | 115 | `result-track:85e22f54b4666892e5f0a9b210e8b373c1c2d3873c96381346263970f6e63cad` |
| 21 | `theorem` | [map₂_inf_subset_left](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/map-inf-subset-left--f6f0c36e7180a62f45b84abd.md) | 118 | `result-track:f6f0c36e7180a62f45b84abdd8c8240a7d163d9815d86c6f84d8ba5e8f812d19` |
| 22 | `theorem` | [map₂_inf_subset_right](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/map-inf-subset-right--33efd2f8b3c9e891ec2109cc.md) | 121 | `result-track:33efd2f8b3c9e891ec2109cc4f763d1f4a7600429900ef04a8230dd1578399c0` |
| 23 | `theorem` | [map₂_pure_left](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/map-pure-left--ac1a045a591dc959970c4fa6.md) | 125 | `result-track:ac1a045a591dc959970c4fa6fbf1d5b628a4b6ee5cd8bb0ddf79f1c6d2334bc3` |
| 24 | `theorem` | [map₂_pure_right](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/map-pure-right--3324b6aec160100930df1bad.md) | 129 | `result-track:3324b6aec160100930df1bad639250f17288423421ee536685adc39e964ec591` |
| 25 | `theorem` | [map₂_pure](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/map-pure--38adf5f70a5d9dd52d95e3dd.md) | 132 | `result-track:38adf5f70a5d9dd52d95e3ddbb3c877f92057d0a6725f42580d978dc06e96b5e` |
| 26 | `theorem` | [map₂_swap](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/map-swap--d8a34f9fcb1dcf8434d05bf9.md) | 134 | `result-track:d8a34f9fcb1dcf8434d05bf948bf697f9ef8ec62c1464757f22e49ec102ba7b3` |
| 27 | `theorem` | [map₂_left](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/map-left--c2f2de1e7c8a25e3381277a6.md) | 139 | `result-track:c2f2de1e7c8a25e3381277a65e4e0e27322e9f563831aae2ad9a15c500c6ea11` |
| 28 | `theorem` | [map₂_right](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/map-right--92108470f6ad9f0c7ce6b958.md) | 143 | `result-track:92108470f6ad9f0c7ce6b9581ebd00e8b900370acbc072ded3246542b2024f1e` |
| 29 | `theorem` | [map_map₂](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/map-map--2c1ca56df05cedfa2b209c54.md) | 145 | `result-track:2c1ca56df05cedfa2b209c5419f8b739d62aa48c6a09c477c29fbaf52ee709d8` |
| 30 | `theorem` | [map₂_map_left](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/map-map-left--ecee7914831203a075270da2.md) | 149 | `result-track:ecee7914831203a075270da2be26a12136161b4ba955ea13b0ff5ae71a6542ce` |
| 31 | `theorem` | [map₂_map_right](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/map-map-right--bd68a34b9f6eaa09f8d786d8.md) | 153 | `result-track:bd68a34b9f6eaa09f8d786d87bf82d752580b3410c45107a6b41a2b24f7c269a` |
| 32 | `theorem` | [map₂_curry](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/map-curry--6bbf6251023300714760605d.md) | 158 | `result-track:6bbf6251023300714760605db06f52082fca29708305ac4c8f68b85a61f6d5d1` |
| 33 | `theorem` | [map_uncurry_prod](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/map-uncurry-prod--333e8ce4968d73285bce5136.md) | 163 | `result-track:333e8ce4968d73285bce513651f965e90756273512d828798482f7b94c2bc3c9` |
| 34 | `theorem` | [map₂_assoc](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/map-assoc--ad13c14c069b046e9741267d.md) | 177 | `result-track:ad13c14c069b046e9741267df0f8812a33674150b7ebe3141a15c49ea2bc4893` |
| 35 | `theorem` | [map₂_comm](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/map-comm--5e4f06e3da2eeb5cac3f4b08.md) | 184 | `result-track:5e4f06e3da2eeb5cac3f4b089fafdf6a48d72b9462793cafb1244ebea018f7e8` |
| 36 | `theorem` | [map₂_left_comm](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/map-left-comm--dc0dadd28bd20184d498e852.md) | 187 | `result-track:dc0dadd28bd20184d498e852fdd85bac3d0c1a8bd997b9118b652f0a2b2f5505` |
| 37 | `theorem` | [map₂_right_comm](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/map-right-comm--10da5dc69de7adb9742e8e30.md) | 193 | `result-track:10da5dc69de7adb9742e8e308032b4675b8364b679ab96f9632cc5921b90a74a` |
| 38 | `theorem` | [map_map₂_distrib](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/map-map-distrib--fe70de7c38f9d6e1305d3db9.md) | 199 | `result-track:fe70de7c38f9d6e1305d3db91ca5778af8ceb28151b0af686c547a357f03590d` |
| 39 | `theorem` | [map_map₂_distrib_left](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/map-map-distrib-left--1984f6dd34375eaec72d1554.md) | 205 | `result-track:1984f6dd34375eaec72d155490a7bd0618dbc799124fdf94deed4330f06ce867` |
| 40 | `theorem` | [map_map₂_distrib_right](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/map-map-distrib-right--d5f0a9b870d545ae53e67c35.md) | 210 | `result-track:d5f0a9b870d545ae53e67c35dd54ecc3c6e172a746b3e54aff6ff79cb2ff0038` |
| 41 | `theorem` | [map₂_map_left_comm](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/map-map-left-comm--ac9743ae0c37e65341a6cb5c.md) | 215 | `result-track:ac9743ae0c37e65341a6cb5ce6fee5ac3c4a4f886ca29b6e3bce2127be2d0efc` |
| 42 | `theorem` | [map_map₂_right_comm](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/map-map-right-comm--2dc6d5035ef944d366975b8a.md) | 220 | `result-track:2dc6d5035ef944d366975b8a36368ef7527d6acc181d5cec4d3e7833969540c0` |
| 43 | `theorem` | [map₂_distrib_le_left](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/map-distrib-le-left--1f7be5f96fe25f48f8e64de4.md) | 225 | `result-track:1f7be5f96fe25f48f8e64de4a8ba965f9f2df2b397dc547317e4a83962a17700` |
| 44 | `theorem` | [map₂_distrib_le_right](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/map-distrib-le-right--fbbfcd02b57eaaf4064e4dd5.md) | 235 | `result-track:fbbfcd02b57eaaf4064e4dd5aa66b6f6b97ccd004fb98fa3f8a5943f3558f15b` |
| 45 | `theorem` | [map_map₂_antidistrib](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/map-map-antidistrib--9c26d53016c3e6ec326e1ee4.md) | 244 | `result-track:9c26d53016c3e6ec326e1ee4213b0990a8e6b093ab96b206675abe7ba2c73d56` |
| 46 | `theorem` | [map_map₂_antidistrib_left](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/map-map-antidistrib-left--da6f4dde9f921afd869a14a1.md) | 251 | `result-track:da6f4dde9f921afd869a14a10fa0427b1e26675ca58c9fb2d11d109dd50bc736` |
| 47 | `theorem` | [map_map₂_antidistrib_right](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/map-map-antidistrib-right--6856c530509c74825a228f4f.md) | 256 | `result-track:6856c530509c74825a228f4f7875355d1ce255f01106f1001ab8739b49a29a51` |
| 48 | `theorem` | [map₂_map_left_anticomm](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/map-map-left-anticomm--bebe44b276301a8053e42454.md) | 261 | `result-track:bebe44b276301a8053e4245416b34d3911978485a6f0a1ba384e85e7e73bb0a0` |
| 49 | `theorem` | [map_map₂_right_anticomm](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/map-map-right-anticomm--fa51bc2b0b00702934ae6330.md) | 267 | `result-track:fa51bc2b0b00702934ae6330bf17cee251195336ca8ebb25b94e5fe386f90ed6` |
| 50 | `theorem` | [map₂_left_identity](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/map-left-identity--23432af5145bf0fa72e86688.md) | 274 | `result-track:23432af5145bf0fa72e86688094561004314dd694f46a29ef9be5cfb0073a6b8` |
| 51 | `theorem` | [map₂_right_identity](../../../../../mathematics/Topology/GeneralTopology/NAry/Variant9f628bcd3ac9bb65f675113f733d8932ed65adcb577bb968b447c47f9457ce8c.lean/declarations/map-right-identity--7750714c955658f0238b2428.md) | 279 | `result-track:7750714c955658f0238b2428f7407839ee3668e727fd665cec9c91e574927c78` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
