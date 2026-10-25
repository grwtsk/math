# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Spectrum.Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0cf5478cbbdbaf7ee5008ac65d1a3e3a3f31e077",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0cf5478cbbdbaf7ee5008ac65d1a3e3a3f31e077`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Star.Pointwise` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Subalgebra` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NoncommRing` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [resolventSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/declarations/resolventset--731b104f2f65f4b1425b8c3a.md) | 68 | `declaration-track:731b104f2f65f4b1425b8c3a8cb3b525fbd8f45e83e2a3395544c53c664e5051` |
| 2 | `def` | [spectrum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/declarations/spectrum--0c16a4abc39a88365c88d2b8.md) | 77 | `declaration-track:0c16a4abc39a88365c88d2b84686aa817bdfaeb8b22a6156472677ee54b59dfa` |
| 3 | `def` | [resolvent](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/declarations/resolvent--cdb934571af0634d837c30c7.md) | 86 | `declaration-track:cdb934571af0634d837c30c74cfbc416c420b0a8cfb9cce616661ee037e1ca60` |
| 4 | `def` | [IsUnit.subInvSMul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/declarations/isunit-subinvsmul--7d771d6b8acab87cc4bfdb03.md) | 92 | `declaration-track:7d771d6b8acab87cc4bfdb03522503e96deba74035d325879e678e6a8e92ba83` |
| 5 | `theorem` | [mem_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/declarations/mem-iff--429379faab2f2b21dae2bf62.md) | 115 | `result-track:429379faab2f2b21dae2bf62f595de5c3b57733e73c28afa7484582a6b52a0a5` |
| 6 | `theorem` | [not_mem_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/declarations/not-mem-iff--4e598b8c276ebdde2d27a8ed.md) | 119 | `result-track:4e598b8c276ebdde2d27a8edcffa8d68b0d8e646a17ad4f5e82526fe493d01fd` |
| 7 | `theorem` | [zero_mem_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/declarations/zero-mem-iff--2b679e8563380c2ab3937d69.md) | 126 | `result-track:2b679e8563380c2ab3937d69e5c20f5f7877ec771a9c39d88bd6332a85c179ea` |
| 8 | `theorem` | [zero_not_mem_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/declarations/zero-not-mem-iff--48466539857c4b9a4c5c4940.md) | 130 | `result-track:48466539857c4b9a4c5c49402bf5b916cdc65914f7fcbe902c6e32a17ff42ad6` |
| 9 | `theorem` | [mem_resolventSet_of_left_right_inverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/declarations/mem-resolventset-of-left-right-inverse--c63af1b4009d68e1c58983fe.md) | 136 | `result-track:c63af1b4009d68e1c58983fe2565f77989d0dfe8b2263a9f64e05c007012eea6` |
| 10 | `theorem` | [mem_resolventSet_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/declarations/mem-resolventset-iff--89f872bc6f80e08f6184905e.md) | 141 | `result-track:89f872bc6f80e08f6184905e9e642277ff30b5a5f9963faa068327cebee19e4f` |
| 11 | `theorem` | [resolventSet_of_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/declarations/resolventset-of-subsingleton--da700b3c5e7e4fffb2aae522.md) | 146 | `result-track:da700b3c5e7e4fffb2aae522e1d30c018eb6e6ff53c606e3e79dec2fc4f0ffaa` |
| 12 | `theorem` | [of_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/declarations/of-subsingleton--c93d0f07fd87116df01edd0e.md) | 151 | `result-track:c93d0f07fd87116df01edd0e33ce23c2d7df2944cb0dcba2123b272dbf2dcb0c` |
| 13 | `theorem` | [resolvent_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/declarations/resolvent-eq--45a86b11c6824d10c65d80aa.md) | 155 | `result-track:45a86b11c6824d10c65d80aa0bbda303ad3fa7d4fd26f316aa4ef362faf07725` |
| 14 | `theorem` | [units_smul_resolvent](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/declarations/units-smul-resolvent--5505121d39cceed363476b67.md) | 159 | `result-track:5505121d39cceed363476b67e744b32b8e6a4136477610df815befae37c7458d` |
| 15 | `theorem` | [units_smul_resolvent_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/declarations/units-smul-resolvent-self--5c88343ea8cca2ad027796a6.md) | 176 | `result-track:5c88343ea8cca2ad027796a6e99a9d3db38f7358adca024d8575641e5e6eff83` |
| 16 | `theorem` | [isUnit_resolvent](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/declarations/isunit-resolvent--4856844dbfe5045a1d8afac6.md) | 183 | `result-track:4856844dbfe5045a1d8afac63d3fdcd4fc70e587d67612e485022a6018777629` |
| 17 | `theorem` | [inv_mem_resolventSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/declarations/inv-mem-resolventset--9f51a590e5af10b32245d05b.md) | 187 | `result-track:9f51a590e5af10b32245d05bd11eae0ccb34f756673289bc3ae299da997a70e4` |
| 18 | `theorem` | [inv_mem_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/declarations/inv-mem-iff--94739b98a46a061128cdb983.md) | 199 | `result-track:94739b98a46a061128cdb983205818f473a08583b74a53f8002cad668b9b3219` |
| 19 | `theorem` | [zero_mem_resolventSet_of_unit](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/declarations/zero-mem-resolventset-of-unit--9eeb3e824ef4780a26a6ae6e.md) | 203 | `result-track:9eeb3e824ef4780a26a6ae6e891a05b098cff836ef9a4739d2d66a91e06f046c` |
| 20 | `theorem` | [ne_zero_of_mem_of_unit](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/declarations/ne-zero-of-mem-of-unit--bfa6e95e67b408b637aadf3c.md) | 207 | `result-track:bfa6e95e67b408b637aadf3ccc3efa6f94e690d521fd19d7e525681e42201396` |
| 21 | `theorem` | [add_mem_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/declarations/add-mem-iff--2eee10d461c8ffff21e6ce43.md) | 211 | `result-track:2eee10d461c8ffff21e6ce434607e28a9fbdc908e0439206ab25b6c3c11c7228` |
| 22 | `theorem` | [add_mem_add_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/declarations/add-mem-add-iff--20250f5554d41aa5e82a0fa7.md) | 215 | `result-track:20250f5554d41aa5e82a0fa7618d4e746276f815377677ba24c4b9b2884ad2da` |
| 23 | `theorem` | [smul_mem_smul_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/declarations/smul-mem-smul-iff--1289675ef5aa8576469f913b.md) | 219 | `result-track:1289675ef5aa8576469f913b9ebf6a7ab8a5191a95e9f8dbed7d99ca6b04a3fb` |
| 24 | `theorem` | [unit_smul_eq_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/declarations/unit-smul-eq-smul--51d031d99559e4202693dad9.md) | 224 | `result-track:51d031d99559e4202693dad99b6f6ebb4bcb2fbd662b25e41e3e6d023ec37937` |
| 25 | `theorem` | [unit_mem_mul_iff_mem_swap_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/declarations/unit-mem-mul-iff-mem-swap-mul--52f074fb056bcb62072cc82e.md) | 236 | `result-track:52f074fb056bcb62072cc82ece341ab96f118c155673d6db5f44cc23d5f7a581` |
| 26 | `theorem` | [preimage_units_mul_eq_swap_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/declarations/preimage-units-mul-eq-swap-mul--22215f710da35abf424bb93b.md) | 255 | `result-track:22215f710da35abf424bb93b1faf8dda7604ab0d9b3464e5e636d9389627d7a7` |
| 27 | `theorem` | [star_mem_resolventSet_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/declarations/star-mem-resolventset-iff--c9205be5b6910ba8a590e8f9.md) | 264 | `result-track:c9205be5b6910ba8a590e8f9dd70ce2d8a0ed34403ed1fe978250ecaa6bbe70e` |
| 28 | `theorem` | [map_star](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/declarations/map-star--da23a076efe819f44da1a965.md) | 271 | `result-track:da23a076efe819f44da1a965a13ad14c358b6ff899111ddbd19cb4a083ff7cd4` |
| 29 | `theorem` | [subset_subalgebra](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/declarations/subset-subalgebra--46e0b51cca8a7f5c114a9c77.md) | 291 | `result-track:46e0b51cca8a7f5c114a9c77087cb7f672e22e4f424b15ed0178c9655975a2e5` |
| 30 | `theorem` | [subset_starSubalgebra](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/declarations/subset-starsubalgebra--0b69e58a664aa10ad4f16b7c.md) | 296 | `result-track:0b69e58a664aa10ad4f16b7cc2b246f6061ebef1c6fdb26dfff1614d926a3a1c` |
| 31 | `theorem` | [singleton_add_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/declarations/singleton-add-eq--df633645175c305fc1994ca8.md) | 301 | `result-track:df633645175c305fc1994ca8258c8d775b4719e1581d1c42a182d67a58c3a937` |
| 32 | `theorem` | [add_singleton_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/declarations/add-singleton-eq--57d9be543c056ddbb727a2c0.md) | 308 | `result-track:57d9be543c056ddbb727a2c0b412e195093a0c574ffdb706a698cb870892c4f1` |
| 33 | `theorem` | [vadd_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/declarations/vadd-eq--5db4454fce405f667d8d9842.md) | 312 | `result-track:5db4454fce405f667d8d9842d198c5cc6f5d3872135d3a2f4ed61af0926efde7` |
| 34 | `theorem` | [neg_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/declarations/neg-eq--69b3e002ad941ebe98ea0efe.md) | 316 | `result-track:69b3e002ad941ebe98ea0efe7050963260078bcc549396fc2c256b0e4cf928bb` |
| 35 | `theorem` | [singleton_sub_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/declarations/singleton-sub-eq--0c9c9dd92c06c742ec782318.md) | 321 | `result-track:0c9c9dd92c06c742ec7823184ec8fd85a0d9e862390927c73237a1510e09fa4e` |
| 36 | `theorem` | [sub_singleton_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/declarations/sub-singleton-eq--dd12e9b9ffd425fdecc406cf.md) | 325 | `result-track:dd12e9b9ffd425fdecc406cf55732c543e2c916f05294f73097029a9a5c8b77d` |
| 37 | `theorem` | [zero_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/declarations/zero-eq--91e5c399c64e98c3bb296f6b.md) | 343 | `result-track:91e5c399c64e98c3bb296f6b989471902b17269152fbe384aa55d808ecadf528` |
| 38 | `theorem` | [scalar_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/declarations/scalar-eq--732a1ee69faab78684c55dfe.md) | 353 | `result-track:732a1ee69faab78684c55dfe3a76b408b0e735366d2c6dd61f968fce95ca2560` |
| 39 | `theorem` | [one_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/declarations/one-eq--198753fa66e5efd40a9cf7c9.md) | 358 | `result-track:198753fa66e5efd40a9cf7c92b32473a1433e0c05e3a016f7f2268db3a066f27` |
| 40 | `theorem` | [smul_eq_smul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/declarations/smul-eq-smul--2bce8e079fb47e7504cd8e37.md) | 367 | `result-track:2bce8e079fb47e7504cd8e37284f1d55416922629b49784e9c7b266db3523656` |
| 41 | `theorem` | [nonzero_mul_eq_swap_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/declarations/nonzero-mul-eq-swap-mul--9bc744ad7bb663d069c2de5f.md) | 374 | `result-track:9bc744ad7bb663d069c2de5ffe4baf52743e9f3e36be1396a42ce6d373d91776` |
| 42 | `theorem` | [map_inv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/declarations/map-inv--6497535c7b27a3f01d87dafc.md) | 382 | `result-track:6497535c7b27a3f01d87dafcbdfde794f23c2aeb68b44794fced7488cec23768` |
| 43 | `theorem` | [mem_resolventSet_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/declarations/mem-resolventset-apply--09483e765824ca71e270f001.md) | 409 | `result-track:09483e765824ca71e270f001d04d0b5bb3ff5ec45be53697fb9b8f110e140c8b` |
| 44 | `theorem` | [spectrum_apply_subset](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/declarations/spectrum-apply-subset--dff544b0d9bebeed99935437.md) | 414 | `result-track:dff544b0d9bebeed9993543795391101b7b92623ce0ba4cc0e9bd8b0394d1fb7` |
| 45 | `theorem` | [apply_mem_spectrum](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/declarations/apply-mem-spectrum--fb10e730f41862026e38be9d.md) | 430 | `result-track:fb10e730f41862026e38be9d76c7f682d23abcd99a0e0282d832b3681071d3b2` |
| 46 | `theorem` | [AlgEquiv.spectrum_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Spectrum/Variant3ca51d88f2a5bdc3614b36980f7028589fc2f2e637f296531e08ee28736461ad.lean/declarations/algequiv-spectrum-eq--999c75b192b9f8dba5f95486.md) | 443 | `result-track:999c75b192b9f8dba5f9548684a82b3501edd5d1b87ce4844b404bc1d891d849` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
