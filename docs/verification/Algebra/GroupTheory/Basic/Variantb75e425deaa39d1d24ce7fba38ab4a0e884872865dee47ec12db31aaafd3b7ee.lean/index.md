# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variantb75e425deaa39d1d24ce7fba38ab4a0e884872865dee47ec12db31aaafd3b7ee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d34cbf80c11c4ab67cd18285ed12322f78e23f9",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variantb75e425deaa39d1d24ce7fba38ab4a0e884872865dee47ec12db31aaafd3b7ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb75e425deaa39d1d24ce7fba38ab4a0e884872865dee47ec12db31aaafd3b7ee.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb75e425deaa39d1d24ce7fba38ab4a0e884872865dee47ec12db31aaafd3b7ee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d34cbf80c11c4ab67cd18285ed12322f78e23f9`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variantb75e425deaa39d1d24ce7fba38ab4a0e884872865dee47ec12db31aaafd3b7ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variantb75e425deaa39d1d24ce7fba38ab4a0e884872865dee47ec12db31aaafd3b7ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Commute.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Semiconj.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [SemiconjBy.function_semiconj_mul_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb75e425deaa39d1d24ce7fba38ab4a0e884872865dee47ec12db31aaafd3b7ee.lean/declarations/semiconjby-function-semiconj-mul-left--2a898d1907b7debe9bcc7b9f.md) | 32 | `result-track:2a898d1907b7debe9bcc7b9f1b8bcab5bc8e80e7f3cb2a58531a121d3aa04e0f` |
| 2 | `lemma` | [Commute.function_commute_mul_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb75e425deaa39d1d24ce7fba38ab4a0e884872865dee47ec12db31aaafd3b7ee.lean/declarations/commute-function-commute-mul-left--07548895f494510148a81559.md) | 36 | `result-track:07548895f494510148a81559b1980b3eeb23ce939de835f101b2a92de929d544` |
| 3 | `lemma` | [SemiconjBy.function_semiconj_mul_right_swap](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb75e425deaa39d1d24ce7fba38ab4a0e884872865dee47ec12db31aaafd3b7ee.lean/declarations/semiconjby-function-semiconj-mul-right-swap--48161c3ceeb32c0a5a47a7d6.md) | 40 | `result-track:48161c3ceeb32c0a5a47a7d62f94c6c408ee9c703b015c6bd9a3f7df56f3ca12` |
| 4 | `lemma` | [Commute.function_commute_mul_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb75e425deaa39d1d24ce7fba38ab4a0e884872865dee47ec12db31aaafd3b7ee.lean/declarations/commute-function-commute-mul-right--a2f5fec4aab1d7d6bbe7c61b.md) | 44 | `result-track:a2f5fec4aab1d7d6bbe7c61b42cb001f5182bda69c34afa4a2d2d059411dfdd3` |
| 5 | `theorem` | [inv_inv](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb75e425deaa39d1d24ce7fba38ab4a0e884872865dee47ec12db31aaafd3b7ee.lean/declarations/inv-inv--528547b368721d2a19db8a1a.md) | 56 | `result-track:528547b368721d2a19db8a1a6e7c18038c4e33692ba192013132d8c6f4f1e321` |
| 6 | `theorem` | [inv_inv_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb75e425deaa39d1d24ce7fba38ab4a0e884872865dee47ec12db31aaafd3b7ee.lean/declarations/inv-inv-iff--0379141226540ae3f1fde005.md) | 60 | `result-track:0379141226540ae3f1fde0054e18bd04e9a9c55454658c50d9f232f992414cd4` |
| 7 | `theorem` | [div_mul_div_comm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb75e425deaa39d1d24ce7fba38ab4a0e884872865dee47ec12db31aaafd3b7ee.lean/declarations/div-mul-div-comm--3cce5c4e05025758067b6136.md) | 64 | `result-track:3cce5c4e05025758067b6136789d37dcaba82062b3616b5e3601b83d97ea5856` |
| 8 | `theorem` | [mul_div_mul_comm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb75e425deaa39d1d24ce7fba38ab4a0e884872865dee47ec12db31aaafd3b7ee.lean/declarations/mul-div-mul-comm--3559df40bd04f9e46e7ebbbf.md) | 69 | `result-track:3559df40bd04f9e46e7ebbbf0c11c0d40a94ba363da33f67ebd1e81ee98de5e7` |
| 9 | `theorem` | [div_div_div_comm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb75e425deaa39d1d24ce7fba38ab4a0e884872865dee47ec12db31aaafd3b7ee.lean/declarations/div-div-div-comm--9a1f3cbcf1c2811218a05ae4.md) | 74 | `result-track:9a1f3cbcf1c2811218a05ae4dc505c97f39b4156f8e00fb10314bbe474b0d278` |
| 10 | `lemma` | [inv_left_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb75e425deaa39d1d24ce7fba38ab4a0e884872865dee47ec12db31aaafd3b7ee.lean/declarations/inv-left-iff--01ac53037dec40e0c4b2400b.md) | 85 | `result-track:01ac53037dec40e0c4b2400b88f3d37192e5db249b3f6b6094c4e3a330850742` |
| 11 | `lemma` | [inv_right_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb75e425deaa39d1d24ce7fba38ab4a0e884872865dee47ec12db31aaafd3b7ee.lean/declarations/inv-right-iff--70cca8c78737970b5365cc1d.md) | 90 | `result-track:70cca8c78737970b5365cc1d3695901a3dca7ea3620f475c90d4bf060b73ee25` |
| 12 | `lemma` | [inv_mul_cancel](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb75e425deaa39d1d24ce7fba38ab4a0e884872865dee47ec12db31aaafd3b7ee.lean/declarations/inv-mul-cancel--b31b0228b9bc28c72d9cc5ea.md) | 95 | `result-track:b31b0228b9bc28c72d9cc5eafb5d6b8fddd87e724cc3d7dfbeec04e2a8390b29` |
| 13 | `lemma` | [inv_mul_cancel_assoc](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb75e425deaa39d1d24ce7fba38ab4a0e884872865dee47ec12db31aaafd3b7ee.lean/declarations/inv-mul-cancel-assoc--d209de7079e7aff39fdf5201.md) | 99 | `result-track:d209de7079e7aff39fdf5201edeff04fb8ea18b454319a3c1d8e5b612c02fc4c` |
| 14 | `theorem` | [conj_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb75e425deaa39d1d24ce7fba38ab4a0e884872865dee47ec12db31aaafd3b7ee.lean/declarations/conj-iff--d697a16d864728a39f87441d.md) | 103 | `result-track:d697a16d864728a39f87441d6a7b3d05baa946d047e83e019d7505376ed9b589` |
| 15 | `theorem` | [conj](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb75e425deaa39d1d24ce7fba38ab4a0e884872865dee47ec12db31aaafd3b7ee.lean/declarations/conj--fd165dcc92ed0d176e6da26e.md) | 107 | `result-track:fd165dcc92ed0d176e6da26e534c19ac70a31607379e643328b82285c455dfce` |
| 16 | `lemma` | [zpow_right](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb75e425deaa39d1d24ce7fba38ab4a0e884872865dee47ec12db31aaafd3b7ee.lean/declarations/zpow-right--d5d356f0d8a1adc23d8de088.md) | 111 | `result-track:d5d356f0d8a1adc23d8de08892114504efd0d08eb1230cd9c0ebfb1c36dc4da9` |
| 17 | `lemma` | [zpow_left](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb75e425deaa39d1d24ce7fba38ab4a0e884872865dee47ec12db31aaafd3b7ee.lean/declarations/zpow-left--255c381d1f4c0b1e1b7d9f76.md) | 114 | `result-track:255c381d1f4c0b1e1b7d9f763998541bfe9a3dcb7583bcf9de24021df0c10233` |
| 18 | `lemma` | [zpow_zpow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb75e425deaa39d1d24ce7fba38ab4a0e884872865dee47ec12db31aaafd3b7ee.lean/declarations/zpow-zpow--94f5ce01df4db1650a58a4b0.md) | 116 | `result-track:94f5ce01df4db1650a58a4b0ba9f92d52fe7e0bbf4ed22ac5cb2e99df54ec225` |
| 19 | `lemma` | [self_zpow](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb75e425deaa39d1d24ce7fba38ab4a0e884872865dee47ec12db31aaafd3b7ee.lean/declarations/self-zpow--2675aae81ccf84a72d079674.md) | 121 | `result-track:2675aae81ccf84a72d079674666c515ca0e29f0eecb115e0511d58169a429bdd` |
| 20 | `lemma` | [zpow_self](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb75e425deaa39d1d24ce7fba38ab4a0e884872865dee47ec12db31aaafd3b7ee.lean/declarations/zpow-self--26915acef43c036092f7ac51.md) | 123 | `result-track:26915acef43c036092f7ac51f589925b9907c596173192e049a18238874941d3` |
| 21 | `lemma` | [zpow_zpow_self](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb75e425deaa39d1d24ce7fba38ab4a0e884872865dee47ec12db31aaafd3b7ee.lean/declarations/zpow-zpow-self--c273814da094f4137339f7b4.md) | 125 | `result-track:c273814da094f4137339f7b46d7efbfb487cff513fdb371cdc60ac692dcb6e45` |
| 22 | `lemma` | [pow_inv_comm](../../../../../mathematics/Algebra/GroupTheory/Basic/Variantb75e425deaa39d1d24ce7fba38ab4a0e884872865dee47ec12db31aaafd3b7ee.lean/declarations/pow-inv-comm--51c23e9d7359338498929c4a.md) | 133 | `result-track:51c23e9d7359338498929c4ac1bef991a16287ee2bb5ca7260efdc4ba1aeaa7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
