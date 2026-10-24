# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Bind.Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45e7599d97a21244d0d9d454e66aea799843b5f8",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45e7599d97a21244d0d9d454e66aea799843b5f8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Multiset.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [join](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/join--466027e9ba93b54769b2ea33.md) | 34 | `declaration-track:466027e9ba93b54769b2ea334f2ac8c4e817013cb9adab82df149c2115352dbe` |
| 2 | `theorem` | [coe_join](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/coe-join--c5673d525adb9e8e9f986e82.md) | 38 | `result-track:c5673d525adb9e8e9f986e82da862e0153a9f9122d5c2fc6e21b8eb4e83ed12c` |
| 3 | `theorem` | [join_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/join-zero--58283689d01d866209b6bcf3.md) | 47 | `result-track:58283689d01d866209b6bcf358ce01c7a748e70f444e6771b54e433c4d3a5efb` |
| 4 | `theorem` | [join_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/join-cons--7ad1dbb684cf170d1d7a81e8.md) | 52 | `result-track:7ad1dbb684cf170d1d7a81e8f569805a0fb6a4e9788209c4a0ee71759a39f70e` |
| 5 | `theorem` | [join_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/join-add--ba4b4add2d6177165e34444c.md) | 57 | `result-track:ba4b4add2d6177165e34444c7c0c79272fdfa67d16448d3d1f098f2f7a5f8a7c` |
| 6 | `theorem` | [singleton_join](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/singleton-join--787624f471b218ae126b788d.md) | 62 | `result-track:787624f471b218ae126b788d70c3d9256486a29c781403b02c550ed5aaf5b111` |
| 7 | `theorem` | [mem_join](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/mem-join--85d5cf94260aeda42f26789f.md) | 67 | `result-track:85d5cf94260aeda42f26789f7d4f7a7bbb8b3c1fde5ff337ca7d20a6d82a1523` |
| 8 | `theorem` | [card_join](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/card-join--263ba80b5429f70f6b55bbc4.md) | 73 | `result-track:263ba80b5429f70f6b55bbc4e1acf9433b44cdff15bd020c0c48b935b2c2820f` |
| 9 | `theorem` | [rel_join](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/rel-join--5a8eb80895ddb3bd6f9a7987.md) | 77 | `result-track:5a8eb80895ddb3bd6f9a7987c9a4aa86919583010684b9ce068bfe1c5768b5ca` |
| 10 | `def` | [bind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/bind--f17774dee60ee416758aaf23.md) | 92 | `declaration-track:f17774dee60ee416758aaf236e4b0e99d6ccb040ce594034cc39afbd93a0c6e6` |
| 11 | `theorem` | [coe_bind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/coe-bind--dfbd8914cd7d25d466e954b0.md) | 97 | `result-track:dfbd8914cd7d25d466e954b04f0d50a57a9dcaddcd1ace170eca87cfcddb061d` |
| 12 | `theorem` | [zero_bind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/zero-bind--9da98dc96d3bbfc25e049b81.md) | 103 | `result-track:9da98dc96d3bbfc25e049b81ea51b38e1eb41f63e2bc7762fe532b9760e5e1f1` |
| 13 | `theorem` | [cons_bind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/cons-bind--023a19acbed86a6d49c846ea.md) | 108 | `result-track:023a19acbed86a6d49c846eae8d6f5cc6d3772b79337bedb2bf5b3dea06044eb` |
| 14 | `theorem` | [singleton_bind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/singleton-bind--07152bcc37fe380fba5379d0.md) | 112 | `result-track:07152bcc37fe380fba5379d0ad15fa2ddf26f16fea89e93bc77609096d95e6e2` |
| 15 | `theorem` | [add_bind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/add-bind--b9cda5b527f96231b867db30.md) | 116 | `result-track:b9cda5b527f96231b867db3090ea67f26c711d207fb702682b2a328fabc02909` |
| 16 | `theorem` | [bind_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/bind-zero--40fb34cf7e50cfc44c627479.md) | 120 | `result-track:40fb34cf7e50cfc44c6274798b9d83c4c3554485b4030bab0116bdabc7ac6c2c` |
| 17 | `theorem` | [bind_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/bind-add--6b29ae99327bc1b382d829da.md) | 124 | `result-track:6b29ae99327bc1b382d829da277efe2d5be1c0b4c3c669908d22a1445a384844` |
| 18 | `theorem` | [bind_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/bind-cons--21ed30cd704d1cc493840a4f.md) | 128 | `result-track:21ed30cd704d1cc493840a4f90ca10fb77e798b8e28332094374f8c9f5cd6d40` |
| 19 | `theorem` | [bind_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/bind-singleton--dd7b332284f6564c85146e9e.md) | 135 | `result-track:dd7b332284f6564c85146e9ede4d80480471c422242313711640900735743dd3` |
| 20 | `theorem` | [mem_bind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/mem-bind--6d3d438acc359ac47ad1690f.md) | 140 | `result-track:6d3d438acc359ac47ad1690f364f131643b7328502ac999fcd38f19a57de006c` |
| 21 | `theorem` | [card_bind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/card-bind--63921704207c17243435daac.md) | 145 | `result-track:63921704207c17243435daac8973a9fadd5811a78ae73c5a364b035260169067` |
| 22 | `theorem` | [bind_congr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/bind-congr--64ccb033bc243c5a50463d85.md) | 148 | `result-track:64ccb033bc243c5a50463d858433f5be85da635234690fde211c75a524095ec6` |
| 23 | `theorem` | [bind_hcongr](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/bind-hcongr--4507b7376eb3be99bf6d496f.md) | 152 | `result-track:4507b7376eb3be99bf6d496fe8898bdc1dd9dbeb27891c924715c34d51a6ab81` |
| 24 | `theorem` | [map_bind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/map-bind--95f697f61e50a9d1e10da0a2.md) | 159 | `result-track:95f697f61e50a9d1e10da0a25cbec8d635f33cbf95691fe7867a94552bc1db92` |
| 25 | `theorem` | [bind_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/bind-map--b8be74635b9f1ab5b6af5dae.md) | 164 | `result-track:b8be74635b9f1ab5b6af5dae9eaeedc687c357f30db3ab17e166ba1252cb6ca9` |
| 26 | `theorem` | [bind_assoc](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/bind-assoc--2a4d9fdd613758b186a21c82.md) | 169 | `result-track:2a4d9fdd613758b186a21c82f537c6f9527ce4613222c01fd8b916744a48f445` |
| 27 | `theorem` | [bind_bind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/bind-bind--099eae85f9259e2a168702d1.md) | 174 | `result-track:099eae85f9259e2a168702d1d69d792b6e228954ed8359e622066da4f799f791` |
| 28 | `theorem` | [bind_map_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/bind-map-comm--7e9074a29718ccca3f8d90a9.md) | 179 | `result-track:7e9074a29718ccca3f8d90a97a949011d887a0d15a9632470a310bf5069deb1b` |
| 29 | `theorem` | [prod_bind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/prod-bind--45bcd607c01cbc593d398487.md) | 185 | `result-track:45bcd607c01cbc593d3984873c59cfa710263079ea7805bc9120cfb97f6fbcac` |
| 30 | `theorem` | [rel_bind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/rel-bind--2e27c7594f0ca639fc9bbf19.md) | 191 | `result-track:2e27c7594f0ca639fc9bbf19b8317528ad89eab1de34e8eb9506d1b9416264c8` |
| 31 | `theorem` | [count_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/count-sum--5065b147ac4cfca321f1bbb4.md) | 199 | `result-track:5065b147ac4cfca321f1bbb4dc33f5a9066af398c23f3e5af317b4363f4c70c3` |
| 32 | `theorem` | [count_bind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/count-bind--463807c39dfba491e852c362.md) | 204 | `result-track:463807c39dfba491e852c36277d7c4646cadd00c600b11b45500dec22626d7ab` |
| 33 | `theorem` | [le_bind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/le-bind--8c5e78a8ded5f136d30df816.md) | 209 | `result-track:8c5e78a8ded5f136d30df816876f233ac9b236ab0930d36c2e03efa52aac584a` |
| 34 | `theorem` | [attach_bind_coe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/attach-bind-coe--8dbc9503499bae0e9399a694.md) | 221 | `result-track:8dbc9503499bae0e9399a694f9878b3be7c3073e353b77a3a8b3825c42cc7706` |
| 35 | `def` | [product](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/product--d5cc7eeec4294eb0f7e1c6c2.md) | 237 | `declaration-track:d5cc7eeec4294eb0f7e1c6c2e0ad0dec8aba0444aa8a10e230e20bedbee40627` |
| 36 | `instance` | [instSProd](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/instsprod--7207e94ff63b1d06f8a8a1e0.md) | 241 | `declaration-track:7207e94ff63b1d06f8a8a1e03fc28d687bed0262362adb635c652dfccd4253eb` |
| 37 | `theorem` | [coe_product](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/coe-product--33d2f33ff5210f1406489ceb.md) | 245 | `result-track:33d2f33ff5210f1406489cebdd246d0234360524c9e625b6964fcb71945947de` |
| 38 | `theorem` | [zero_product](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/zero-product--e1ea82b16759e1fe8a29e8a9.md) | 253 | `result-track:e1ea82b16759e1fe8a29e8a91fefa225965ff25b13621022325d38fec009434b` |
| 39 | `theorem` | [cons_product](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/cons-product--481b83592263a5f61e8ce8ae.md) | 258 | `result-track:481b83592263a5f61e8ce8aea620cd91de9c333fc517b8c0b305999ef38ac37b` |
| 40 | `theorem` | [product_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/product-zero--b2f23215fd3c7ea593992139.md) | 262 | `result-track:b2f23215fd3c7ea5939921394b74a9f629d28b8c444fa9bb38a240d2eddb008f` |
| 41 | `theorem` | [product_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/product-cons--237401018ea6d4ccfd3bf6cf.md) | 266 | `result-track:237401018ea6d4ccfd3bf6cfd7a53d6f9dbbe6ca7a42ea936655d93f2285a3e6` |
| 42 | `theorem` | [product_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/product-singleton--59fcba5f8318cc633aa05da7.md) | 271 | `result-track:59fcba5f8318cc633aa05da73bac244063a33088c14cef2b86d48530b96ce226` |
| 43 | `theorem` | [add_product](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/add-product--bcb0443722aab18aab6d5c70.md) | 276 | `result-track:bcb0443722aab18aab6d5c703d77fa41f74a2990126148cecd7e4d60a6f27166` |
| 44 | `theorem` | [product_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/product-add--10d516ede7aca38ac1b2ce33.md) | 281 | `result-track:10d516ede7aca38ac1b2ce33f4c752f714b46a71bd56d5cd4bbe3cc4700cbba8` |
| 45 | `theorem` | [mem_product](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/mem-product--17d7244ffb8ee8a94dbc6153.md) | 288 | `result-track:17d7244ffb8ee8a94dbc6153f6b8f9637c13875e6ddae57efd798489daa07bd0` |
| 46 | `theorem` | [card_product](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/card-product--39c0e00de9aa6ac8f3439421.md) | 293 | `result-track:39c0e00de9aa6ac8f343942145e518388842011a45e996c1a331584aad8194e8` |
| 47 | `def` | [sigma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/sigma--b093d1a1b6a118a3f061d82e.md) | 307 | `declaration-track:b093d1a1b6a118a3f061d82eb8617a2e27fa04438d36dfc88bf20023ba6f66b7` |
| 48 | `theorem` | [coe_sigma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/coe-sigma--21b77e22f9bbde1828f992d0.md) | 312 | `result-track:21b77e22f9bbde1828f992d09420ba435d17fe32307001c5383deb97f69dad31` |
| 49 | `theorem` | [zero_sigma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/zero-sigma--6d9bc12fbcd5d06d0787938c.md) | 319 | `result-track:6d9bc12fbcd5d06d0787938cb31f383ec32d4cf1c05639dde9f4b85009b0785a` |
| 50 | `theorem` | [cons_sigma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/cons-sigma--918463f13b3bd5a4a503fb9c.md) | 324 | `result-track:918463f13b3bd5a4a503fb9cf2ab1e51b643a6b2670c1ff441900d34cfc10739` |
| 51 | `theorem` | [sigma_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/sigma-singleton--a01e71050e639ea2d02dc9f9.md) | 329 | `result-track:a01e71050e639ea2d02dc9f926de4335e2b0431d47bcdc38eda401e20a69509d` |
| 52 | `theorem` | [add_sigma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/add-sigma--7dad424f21850978a7e75472.md) | 335 | `result-track:7dad424f21850978a7e75472c14558ba9ab0037639351aa58aced3ee957cb2af` |
| 53 | `theorem` | [sigma_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/sigma-add--128d48d7f9313322bccb412b.md) | 340 | `result-track:128d48d7f9313322bccb412b0bccc9494f4665c985c068b734f9ad432f176eaf` |
| 54 | `theorem` | [mem_sigma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/mem-sigma--5827d51da4e06960b19f89ca.md) | 348 | `result-track:5827d51da4e06960b19f89ca6f6c1100a2b50146c8237a21cacc788340b7cf4a` |
| 55 | `theorem` | [card_sigma](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Bind/Variant95d2131df3f5859f1d387af8a98b51c4d349537ebe1fe7a4662a4abf2fcf0ae5.lean/declarations/card-sigma--f3776cbc9c0e51d5d9a6b2ea.md) | 353 | `result-track:f3776cbc9c0e51d5d9a6b2ea7a28cb82ef314ec1dd4e3e86fcd23570a79b6bc0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
