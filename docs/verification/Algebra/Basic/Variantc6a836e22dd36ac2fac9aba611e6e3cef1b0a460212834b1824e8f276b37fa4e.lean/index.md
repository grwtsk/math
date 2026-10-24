# Verification target: GRWTSK.Algebra.Basic.Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45e84d797149e4dc38787ad672bc5dedd69367f3",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/index.md) · [Full source](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45e84d797149e4dc38787ad672bc5dedd69367f3`.

Source path: `GRWTSK/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Ring` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Commute` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [add_div](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/add-div--7885561a3e7c52a823c71cfc.md) | 29 | `result-track:7885561a3e7c52a823c71cfc351839a79d24bbc84a8f038c2dbda98b8f21f4b8` |
| 2 | `theorem` | [div_add_div_same](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/div-add-div-same--74adc2f5d54878be6a6f890d.md) | 33 | `result-track:74adc2f5d54878be6a6f890dfb3f4159699173c6018a9e98b4920b07730312e7` |
| 3 | `theorem` | [same_add_div](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/same-add-div--da85a346de7b069fc59dcc5b.md) | 37 | `result-track:da85a346de7b069fc59dcc5b185d487e160286d8659ae3678d335b5ba9f0b5df` |
| 4 | `theorem` | [div_add_same](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/div-add-same--7906c2f470b73df605b9474b.md) | 40 | `result-track:7906c2f470b73df605b9474b73779bd12a29eb0eb1f7d531d29f2a8da256ba92` |
| 5 | `theorem` | [one_add_div](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/one-add-div--4c492d5fc9291bd2e80f7408.md) | 43 | `result-track:4c492d5fc9291bd2e80f74083a27e53feb6d43eed05be54837f26694f5757105` |
| 6 | `theorem` | [div_add_one](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/div-add-one--a81ea39c58557fbfd70a606c.md) | 47 | `result-track:a81ea39c58557fbfd70a606c6e3d4dd23c114f4c07f3e93786746ecaba3d943e` |
| 7 | `theorem` | [one_div_mul_add_mul_one_div_eq_one_div_add_one_div](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/one-div-mul-add-mul-one-div-eq-one-div-add-one-div--2606dc674946aed8dc828ff9.md) | 51 | `result-track:2606dc674946aed8dc828ff9eab04e3be8449509fbf2768bd03c74d2d00feb1f` |
| 8 | `theorem` | [add_div_eq_mul_add_div](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/add-div-eq-mul-add-div--7d807cf925ed5184ca36ecd2.md) | 57 | `result-track:7d807cf925ed5184ca36ecd226be63452c8692702ad55ab90315f4e2393977c6` |
| 9 | `theorem` | [add_div'](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/add-div--3d1022db80c0ca73a2037d48.md) | 62 | `result-track:3d1022db80c0ca73a2037d48e97df1a404925f3953ee7c6a0576f77a20ec5a29` |
| 10 | `theorem` | [div_add'](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/div-add--60ecd84add632b8fe407ac65.md) | 67 | `result-track:60ecd84add632b8fe407ac6588ba1dd43f0e81a254a8ee2509269e82270881ac` |
| 11 | `theorem` | [Commute.div_add_div](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/commute-div-add-div--86e55ef1778955f228f45066.md) | 71 | `result-track:86e55ef1778955f228f45066d85fcf70ed93913e47725aa7d22b297d6ee1cac8` |
| 12 | `theorem` | [Commute.one_div_add_one_div](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/commute-one-div-add-one-div--0f581ea78b9cf34377424f5e.md) | 76 | `result-track:0f581ea78b9cf34377424f5e0ad2a13b3fbed20a52befe9d6877fb224d9d5a41` |
| 13 | `theorem` | [Commute.inv_add_inv](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/commute-inv-add-inv--10f633a8e868102e37f8f875.md) | 81 | `result-track:10f633a8e868102e37f8f875512bd1c72b76944937a8c59e21a08601eecab76e` |
| 14 | `theorem` | [one_div_neg_one_eq_neg_one](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/one-div-neg-one-eq-neg-one--93c6f2c702f69ffc58613809.md) | 92 | `result-track:93c6f2c702f69ffc586138092e77672997601bcb6e581f9642d879431a3a1d1e` |
| 15 | `theorem` | [one_div_neg_eq_neg_one_div](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/one-div-neg-eq-neg-one-div--14c2967c6d7c1c01f8b9f0bc.md) | 97 | `result-track:14c2967c6d7c1c01f8b9f0bcd98b7651083984f1120464e8057f9d060344567f` |
| 16 | `theorem` | [div_neg_eq_neg_div](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/div-neg-eq-neg-div--0d0e8c89a3bb4ba597a645df.md) | 105 | `result-track:0d0e8c89a3bb4ba597a645df52cc617effd98a8277194b71b0fc507ac901bda5` |
| 17 | `theorem` | [neg_div](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/neg-div--83d6b0d9c587c384076f996b.md) | 113 | `result-track:83d6b0d9c587c384076f996b1fe8a0cfd3db7a0a12931244be355bcc12924729` |
| 18 | `theorem` | [neg_div'](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/neg-div--d8b639616f003e0428a379ca.md) | 118 | `result-track:d8b639616f003e0428a379ca2963aa9756dc4313f7a28a3523b3d61b4ec13231` |
| 19 | `theorem` | [neg_div_neg_eq](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/neg-div-neg-eq--96e605d02fc8d1b09c911664.md) | 121 | `result-track:96e605d02fc8d1b09c9116649b7dcc65f0f351e32b35f79e2616b2bb8ee626da` |
| 20 | `theorem` | [neg_inv](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/neg-inv--2d53e4f4a76443d864fdca9f.md) | 124 | `result-track:2d53e4f4a76443d864fdca9f279d4f22c449a0e29668b7dfc2093be4fdfe686c` |
| 21 | `theorem` | [div_neg](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/div-neg--b303aae0bb56508bdc79abeb.md) | 127 | `result-track:b303aae0bb56508bdc79abebb7f5ddcb2110d822644693e46c63c974a6ad26b3` |
| 22 | `theorem` | [inv_neg](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/inv-neg--1d991d36ad12372cc9de3273.md) | 130 | `result-track:1d991d36ad12372cc9de32736910224b2d66940c31f3f8ae242feaf10304a9c1` |
| 23 | `theorem` | [inv_neg_one](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/inv-neg-one--47c06034deb53b1753bb50f5.md) | 133 | `result-track:47c06034deb53b1753bb50f5b8c66d6d51d0fb9c89ec3557096eeb361b304099` |
| 24 | `theorem` | [div_neg_self](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/div-neg-self--d2f4b61a5a3810e8939a5781.md) | 142 | `result-track:d2f4b61a5a3810e8939a578185cfdab96699c1a704bdce1061c26bf5d3948e3d` |
| 25 | `theorem` | [neg_div_self](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/neg-div-self--ba6385d851a83c61b6ef79ce.md) | 146 | `result-track:ba6385d851a83c61b6ef79ced34d7b5a4882e55c2f5410cfe1cef9a124221564` |
| 26 | `theorem` | [div_sub_div_same](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/div-sub-div-same--edc0cfba26b217bbd89b499a.md) | 149 | `result-track:edc0cfba26b217bbd89b499a93920366a7a9df7eaeaf72e76e3d566f281aafe3` |
| 27 | `theorem` | [same_sub_div](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/same-sub-div--6e9e9c18cfe5f84376586760.md) | 153 | `result-track:6e9e9c18cfe5f843765867606db4aa57a10f3a030ce102a21ba47759fbe99bb9` |
| 28 | `theorem` | [one_sub_div](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/one-sub-div--88cfe45ebe93d7f86c5429fc.md) | 157 | `result-track:88cfe45ebe93d7f86c5429fceadb6b18690f2f933ebae126cd65cce69666a3ac` |
| 29 | `theorem` | [div_sub_same](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/div-sub-same--7be58af7734fd0339a2acf65.md) | 161 | `result-track:7be58af7734fd0339a2acf65869976f3ff6d7d4f6592ee16150fba597b7321c2` |
| 30 | `theorem` | [div_sub_one](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/div-sub-one--5e3bd0517539e2f06f395c0a.md) | 165 | `result-track:5e3bd0517539e2f06f395c0ad8cc24a0d86724a9522c2d8e43d9a504dff59b47` |
| 31 | `theorem` | [sub_div](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/sub-div--8c3ecab68a23942fb41d86f6.md) | 169 | `result-track:8c3ecab68a23942fb41d86f69649ea7289ae54fe8c0af02295c6d52c7aa2b6fb` |
| 32 | `theorem` | [inv_sub_inv'](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/inv-sub-inv--ae06fcb4efb1428b4a349aed.md) | 174 | `result-track:ae06fcb4efb1428b4a349aed8febe3db3429cee4c96efb53a79247d7368c9b20` |
| 33 | `theorem` | [one_div_mul_sub_mul_one_div_eq_one_div_add_one_div](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/one-div-mul-sub-mul-one-div-eq-one-div-add-one-div--609e421018de5685a032035b.md) | 178 | `result-track:609e421018de5685a032035b6e7df11152a74c3a14a723f7bf0cc8c1eb79014e` |
| 34 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/instance--2eebca6df1e8c2cfa2ae0d11.md) | 185 | `declaration-track:2eebca6df1e8c2cfa2ae0d1182ab05c031d73f23dac98ce432087b1a751295ad` |
| 35 | `theorem` | [Commute.div_sub_div](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/commute-div-sub-div--dfccd2d86f685559689425e1.md) | 189 | `result-track:dfccd2d86f685559689425e153a32bfbf771dc99017b474bd9d69c6e6c87d0cd` |
| 36 | `theorem` | [Commute.inv_sub_inv](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/commute-inv-sub-inv--c70ba86dd996541d29b0541d.md) | 194 | `result-track:c70ba86dd996541d29b0541de363d5f2f1985aa83e4959e61416f1ef090c76c1` |
| 37 | `theorem` | [div_add_div](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/div-add-div--c05d4f8500d3d32cf1265969.md) | 205 | `result-track:c05d4f8500d3d32cf12659699644c28585078bb5a4bb03ea2e53628ea5dd8a1e` |
| 38 | `theorem` | [one_div_add_one_div](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/one-div-add-one-div--a80550c15e6db2e28b484d02.md) | 210 | `result-track:a80550c15e6db2e28b484d02494b521b41a93aada8b9283eecab08fabbec8f49` |
| 39 | `theorem` | [inv_add_inv](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/inv-add-inv--30866857117bc4d3731ec7b2.md) | 214 | `result-track:30866857117bc4d3731ec7b2111fbd2592669422ccbbfeec7ca07b4e8f02a5f6` |
| 40 | `theorem` | [div_sub_div](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/div-sub-div--da6be02fd5e7335151d7a526.md) | 227 | `result-track:da6be02fd5e7335151d7a526b866986bb2ba775392575d5e19191185daaa9995` |
| 41 | `theorem` | [inv_sub_inv](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/inv-sub-inv--1c895c6a7903965e2530b6ef.md) | 232 | `result-track:1c895c6a7903965e2530b6ef4b2b42004d1287731601b35ef76a368b584490c0` |
| 42 | `theorem` | [sub_div'](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/sub-div--70805f25136660bd8c778377.md) | 237 | `result-track:70805f25136660bd8c7783779e47bb0153d8c403b27b248f3b6f2ef631a894c2` |
| 43 | `theorem` | [div_sub'](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/div-sub--9a78e2f3191c3a6d75f4c389.md) | 242 | `result-track:9a78e2f3191c3a6d75f4c389d9a4fbc6419d0a021ba1e8439ed5bed4b778f49c` |
| 44 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/instance--081157a17c2110524dba75a1.md) | 247 | `declaration-track:081157a17c2110524dba75a196300b8a8ca2031d62a9b0db222a19c7c30c7d25` |
| 45 | `theorem` | [injective](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/injective--4e3bec8b4e315592c2a897ee.md) | 255 | `result-track:4e3bec8b4e315592c2a897eed181e72b9a97fcfb8ab44d0f08729517ed449e54` |
| 46 | `def` | [divisionRingOfIsUnitOrEqZero](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/divisionringofisunitoreqzero--940c319844701170b6871762.md) | 267 | `declaration-track:940c319844701170b6871762289e04e970ad8698990aef7d2529c654dab7905c` |
| 47 | `def` | [fieldOfIsUnitOrEqZero](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/fieldofisunitoreqzero--f05dc9cfe7843be9f0cf6500.md) | 275 | `declaration-track:f05dc9cfe7843be9f0cf6500988c5a96ef7be1237c204d98080c3fb462592e26` |
| 48 | `def` | [Function.Injective.divisionSemiring](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/function-injective-divisionsemiring--7ebe474c4962d468274fa243.md) | 285 | `declaration-track:7ebe474c4962d468274fa2430647eae117bd77666125c9447fa7776b70d9d64f` |
| 49 | `def` | [Function.Injective.divisionRing](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/function-injective-divisionring--00d583ad2e266a08e5806089.md) | 299 | `declaration-track:00d583ad2e266a08e58060898f75513f2f6066f76c7952e329b50792c15ac69a` |
| 50 | `def` | [Function.Injective.semifield](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/function-injective-semifield--67bdd97a73a1a6270159c9c9.md) | 324 | `declaration-track:67bdd97a73a1a6270159c9c98c43427b8aff7d3091a0eed80d8040930a8923cd` |
| 51 | `def` | [Function.Injective.field](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/function-injective-field--747abc9be2d48619df3223b6.md) | 338 | `declaration-track:747abc9be2d48619df3223b62af3ca0f2fa2f64ec7750204301d8551d5396464` |
| 52 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/instance--a56e20862a86a2bd241a4b33.md) | 362 | `declaration-track:a56e20862a86a2bd241a4b33f71e3585cf60c4b9b6459b6e06f1d4207da3c3b4` |
| 53 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/instance--064acbf3a3ce3e8f11813578.md) | 365 | `declaration-track:064acbf3a3ce3e8f11813578df185ced8a0972c50592e8f64537240d064b0726` |
| 54 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/instance--843e5bf9db8a6bb9bd8b2b2c.md) | 368 | `declaration-track:843e5bf9db8a6bb9bd8b2b2cd48518ab066717952488d0f0cd9e10f046c6af11` |
| 55 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/instance--a117624dfd93263c5e24e279.md) | 371 | `declaration-track:a117624dfd93263c5e24e27970f3c3d97f809dc1e52d3e44ab530c2b5f0338fc` |
| 56 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/instance--a46a198cfa09e7dc7aa3dbd3.md) | 374 | `declaration-track:a46a198cfa09e7dc7aa3dbd314ba6d1ba2a79689dce6ff93099e7e46c98f95d7` |
| 57 | `theorem` | [toDual_rat_cast](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/todual-rat-cast--96ffc5f7f53e7f198bcd2e05.md) | 378 | `result-track:96ffc5f7f53e7f198bcd2e053347b2d0b367cfba2dcfc74d46e4ec24ae6bfcf5` |
| 58 | `theorem` | [ofDual_rat_cast](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/ofdual-rat-cast--64c884092dc723e0a43dcb26.md) | 383 | `result-track:64c884092dc723e0a43dcb26c129920282d7fd2e37229588b167084aea3be5bc` |
| 59 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/instance--f47159cae3c3aab02482cfe3.md) | 389 | `declaration-track:f47159cae3c3aab02482cfe3145b966f03cae34a7a4f23bfbfecf4acaaa4bcdb` |
| 60 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/instance--ea784fc2d9dd8a0ddd97650f.md) | 392 | `declaration-track:ea784fc2d9dd8a0ddd97650fa6795e24d93701877398d74dcf9daa15900d21e5` |
| 61 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/instance--177429addb5b6b12c12dccff.md) | 395 | `declaration-track:177429addb5b6b12c12dccff4a64e7d4ebadbbcf7aef3af3aea63c01c27349b2` |
| 62 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/instance--abc715a300ef662761e8c28b.md) | 398 | `declaration-track:abc715a300ef662761e8c28b2af0683e065eb39838e6134c10683518ae88376a` |
| 63 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/instance--0d592df18a46b20e0cc20594.md) | 401 | `declaration-track:0d592df18a46b20e0cc20594f947e2b178e995b00fd54d3a3687a9a80f1735b4` |
| 64 | `theorem` | [toLex_rat_cast](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/tolex-rat-cast--91ac0a31dddfbc0bccfb16ed.md) | 405 | `result-track:91ac0a31dddfbc0bccfb16edb0a509ff742dc6f030b9851d23c5994316cd39a5` |
| 65 | `theorem` | [ofLex_rat_cast](../../../../mathematics/Algebra/Basic/Variantc6a836e22dd36ac2fac9aba611e6e3cef1b0a460212834b1824e8f276b37fa4e.lean/declarations/oflex-rat-cast--aeb25b77d2595e8c5c6b8cb3.md) | 410 | `result-track:aeb25b77d2595e8c5c6b8cb3be3c38367cfb37aee6a5f8b678096b5056ca7de0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
