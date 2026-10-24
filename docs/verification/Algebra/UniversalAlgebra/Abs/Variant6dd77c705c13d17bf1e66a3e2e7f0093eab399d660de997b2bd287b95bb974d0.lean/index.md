# Verification target: GRWTSK.Algebra.UniversalAlgebra.Abs.Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c7ff3f7d790ef4ee34408b1bd586b1ce727f5dc",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c7ff3f7d790ef4ee34408b1bd586b1ce727f5dc`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mabs_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean/declarations/mabs-pow--55fc01bb33ea69102fe653d1.md) | 31 | `result-track:55fc01bb33ea69102fe653d18418d8efc5c410aa28c91e59e4b6c122684e8834` |
| 2 | `lemma` | [mabs_mul_eq_mul_mabs_le](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean/declarations/mabs-mul-eq-mul-mabs-le--6d02710c17f12ec7eddd6219.md) | 37 | `result-track:6d02710c17f12ec7eddd6219a192429a45dfb871eb86fc356e59e48c02ae14f8` |
| 3 | `lemma` | [mabs_mul_eq_mul_mabs_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean/declarations/mabs-mul-eq-mul-mabs-iff--6c5a2bab804192c2dab70995.md) | 55 | `result-track:6c5a2bab804192c2dab709957d9606ce68c8876de23a90091e82bcf4ca526ae4` |
| 4 | `theorem` | [mabs_le](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean/declarations/mabs-le--2191a6b733a5aeb81d691dc7.md) | 62 | `result-track:2191a6b733a5aeb81d691dc7019c6ad7d130c46a4b1a6bcfc9eca06471bde895` |
| 5 | `theorem` | [le_mabs'](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean/declarations/le-mabs--e839c09702a5077a8e2f6d85.md) | 65 | `result-track:e839c09702a5077a8e2f6d85c4a215f7d87b58eb83a0c619491791b41d9aa596` |
| 6 | `theorem` | [inv_le_of_mabs_le](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean/declarations/inv-le-of-mabs-le--6815027ed970c1774bfc88aa.md) | 68 | `result-track:6815027ed970c1774bfc88aa6410c770b2ed3d0e9d3a0faa9f346fc30a7e219b` |
| 7 | `theorem` | [le_of_mabs_le](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean/declarations/le-of-mabs-le--9fe70b2202fdd048f368c9c8.md) | 72 | `result-track:9fe70b2202fdd048f368c9c8e0bd717d662158ad56944c42adfe9cd24269c26e` |
| 8 | `theorem` | [mabs_mul'](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean/declarations/mabs-mul--6ba2dafc46d6403a0c1fe0a3.md) | 76 | `result-track:6ba2dafc46d6403a0c1fe0a3f8c8d0a6870fb2e64db7731dd4cd2ea8fdd2eec3` |
| 9 | `theorem` | [mabs_div](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean/declarations/mabs-div--e3321ff03357f11a213e53a2.md) | 79 | `result-track:e3321ff03357f11a213e53a2e2a8b375f433ff2f544cf249c8c793509f01d519` |
| 10 | `theorem` | [mabs_div_le_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean/declarations/mabs-div-le-iff--1fa0830691b8d23f72ca5d2b.md) | 84 | `result-track:1fa0830691b8d23f72ca5d2bc64a271e2be06e7a1d9dd6bc3ffc021551ff5845` |
| 11 | `theorem` | [mabs_div_lt_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean/declarations/mabs-div-lt-iff--3279b21443d30f8e0dbc7896.md) | 88 | `result-track:3279b21443d30f8e0dbc7896fa20cd19d691f73f0fe3e8d37f3229ad380192b9` |
| 12 | `theorem` | [div_le_of_mabs_div_le_left](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean/declarations/div-le-of-mabs-div-le-left--d88b34a4f5dd3ecdd7797b92.md) | 92 | `result-track:d88b34a4f5dd3ecdd7797b920754f9802103640dff71041308ed712633559096` |
| 13 | `theorem` | [div_le_of_mabs_div_le_right](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean/declarations/div-le-of-mabs-div-le-right--729d167b810306e9d499c229.md) | 96 | `result-track:729d167b810306e9d499c229d8428d33e465c6ff0ff70017dce7c0eac0c2681a` |
| 14 | `theorem` | [div_lt_of_mabs_div_lt_left](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean/declarations/div-lt-of-mabs-div-lt-left--8ffdb677fc6773454197e769.md) | 100 | `result-track:8ffdb677fc6773454197e769b372d76e7c96fbafe80512bdf8153239d5615179` |
| 15 | `theorem` | [div_lt_of_mabs_div_lt_right](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean/declarations/div-lt-of-mabs-div-lt-right--b11cc5082e2060e459940e20.md) | 104 | `result-track:b11cc5082e2060e459940e2055fd4e1ce96a60ec7270e6db76a5800c8fc0ae52` |
| 16 | `theorem` | [mabs_div_mabs_le_mabs_div](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean/declarations/mabs-div-mabs-le-mabs-div--f734458e2498d43f57dc1537.md) | 108 | `result-track:f734458e2498d43f57dc153777afcd5b8df7e8ee3f7cf4f619d8c77451b29747` |
| 17 | `theorem` | [mabs_div_mabs_le_mabs_mul](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean/declarations/mabs-div-mabs-le-mabs-mul--9eea3e9d568d85ae0e0c6ce6.md) | 115 | `result-track:9eea3e9d568d85ae0e0c6ce6eb2ab308fe4a5580cafe10997b3bf134666041c5` |
| 18 | `theorem` | [mabs_mabs_div_mabs_le_mabs_div](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean/declarations/mabs-mabs-div-mabs-le-mabs-div--f1b4696ebbbe69660867ecc7.md) | 119 | `result-track:f1b4696ebbbe69660867ecc7923d0ef9187d385dfcdd8f97a3207081b5c0ceda` |
| 19 | `theorem` | [mabs_div_le_of_one_le_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean/declarations/mabs-div-le-of-one-le-of-le--44a1cc73bbb0790011cd5031.md) | 125 | `result-track:44a1cc73bbb0790011cd5031aead8564be4ee9241330470f301892dd7cf4e9d5` |
| 20 | `theorem` | [mabs_div_lt_of_one_le_of_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean/declarations/mabs-div-lt-of-one-le-of-lt--bf01a5e280ded4b31b23773d.md) | 132 | `result-track:bf01a5e280ded4b31b23773d1057104acba0c82b1fa6117757b274a7a6729998` |
| 21 | `theorem` | [mabs_eq](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean/declarations/mabs-eq--6b3c76b0cef57a93a9c89328.md) | 138 | `result-track:6b3c76b0cef57a93a9c89328bf857bf83d420c2986901bf1e5618ff4951672c1` |
| 22 | `theorem` | [mabs_le_max_mabs_mabs](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean/declarations/mabs-le-max-mabs-mabs--bfc90d69d929e40fa56f7226.md) | 143 | `result-track:bfc90d69d929e40fa56f7226ed0e92bda4c81aefeb3caeaef75de18841e483a0` |
| 23 | `theorem` | [min_mabs_mabs_le_mabs_max](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean/declarations/min-mabs-mabs-le-mabs-max--c1f257734dd74d5d76a5b692.md) | 150 | `result-track:c1f257734dd74d5d76a5b69225720332905b7db18b6aa0fdf467ba6c1905f274` |
| 24 | `theorem` | [min_mabs_mabs_le_mabs_min](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean/declarations/min-mabs-mabs-le-mabs-min--08b0b43ae56bb882f46343ed.md) | 156 | `result-track:08b0b43ae56bb882f46343ed7a2486e5787648d7657996ceae521d1f9b1c9bdc` |
| 25 | `theorem` | [mabs_max_le_max_mabs_mabs](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean/declarations/mabs-max-le-max-mabs-mabs--eb5fb506ac5c6a75d170cba4.md) | 162 | `result-track:eb5fb506ac5c6a75d170cba4d94fad3ce401d14f9dc450354e26f7fbaa43a90b` |
| 26 | `theorem` | [mabs_min_le_max_mabs_mabs](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean/declarations/mabs-min-le-max-mabs-mabs--44e2abed8e76b7c6ef588a1a.md) | 168 | `result-track:44e2abed8e76b7c6ef588a1a63fa21c16b9ddab5bc67ddc35ac65289699b98a8` |
| 27 | `theorem` | [eq_of_mabs_div_eq_one](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean/declarations/eq-of-mabs-div-eq-one--1dfb580880d12d4507f4ac83.md) | 173 | `result-track:1dfb580880d12d4507f4ac838d723598c4d6cef87c56572bdeb79ffdcf1921bf` |
| 28 | `theorem` | [mabs_div_le](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean/declarations/mabs-div-le--ace01577859cdab0b5bf75ce.md) | 177 | `result-track:ace01577859cdab0b5bf75cea6ed3e1895074e065df793edc7310e61817b2345` |
| 29 | `theorem` | [mabs_div_le_max_div](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean/declarations/mabs-div-le-max-div--0bcd5293bb32e4043916c756.md) | 183 | `result-track:0bcd5293bb32e4043916c7561f24dd03d7adf378d1902ff0ad0ca33b412100b6` |
| 30 | `theorem` | [mabs_mul_three](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean/declarations/mabs-mul-three--3c188e10b92f618ead1bf038.md) | 192 | `result-track:3c188e10b92f618ead1bf0382f3bcf806059365721221afd43ee21c315df28f5` |
| 31 | `theorem` | [mabs_div_le_of_le_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean/declarations/mabs-div-le-of-le-of-le--2c205db697c5317f6f85d3a2.md) | 196 | `result-track:2c205db697c5317f6f85d3a2f07b4bd439dc8128da6c0db04025ebe6829e23aa` |
| 32 | `theorem` | [eq_of_mabs_div_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean/declarations/eq-of-mabs-div-le-one--750fee08ce4776ed5c997f74.md) | 201 | `result-track:750fee08ce4776ed5c997f744fea463313edc5b94c2ce9565205a7242c675661` |
| 33 | `lemma` | [eq_of_mabs_div_lt_all](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean/declarations/eq-of-mabs-div-lt-all--6f0e7979ac7ddf5472eb4a18.md) | 205 | `result-track:6f0e7979ac7ddf5472eb4a1823458793bbccc39acc943cd43edf407f77a5c1d6` |
| 34 | `lemma` | [eq_of_mabs_div_le_all](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean/declarations/eq-of-mabs-div-le-all--c3383cb6f885ce1bb4e672e1.md) | 209 | `result-track:c3383cb6f885ce1bb4e672e13d248c27ee1aedc05089b54733ea6e2055f7cedd` |
| 35 | `theorem` | [mabs_div_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean/declarations/mabs-div-le-one--480b0d2a2c4b3140e545c4df.md) | 213 | `result-track:480b0d2a2c4b3140e545c4dfdc46d53bfc7272d12505c0a1008def4c6de44d1f` |
| 36 | `theorem` | [mabs_div_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean/declarations/mabs-div-pos--7ecb06f0ad70ad8ec7dd3208.md) | 217 | `result-track:7ecb06f0ad70ad8ec7dd3208a91a5c403c382c1cadbec656cbc6b9e088ddb18d` |
| 37 | `theorem` | [mabs_eq_self](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean/declarations/mabs-eq-self--14266a4833f68bdb1aab2e5a.md) | 221 | `result-track:14266a4833f68bdb1aab2e5a282b5f992ef045dffa0139303f50509a6c558bc9` |
| 38 | `theorem` | [mabs_eq_inv_self](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean/declarations/mabs-eq-inv-self--1cb652b1e596516695dba0af.md) | 225 | `result-track:1cb652b1e596516695dba0afec8575b8c637a311b344063f7d1c3de1279b26ce` |
| 39 | `theorem` | [mabs_cases](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean/declarations/mabs-cases--619745e23ad058bb2df3412b.md) | 234 | `result-track:619745e23ad058bb2df3412bad2ac4ead1f71b3e9e4bdf4c81a59947e4f2e91b` |
| 40 | `theorem` | [max_one_mul_max_inv_one_eq_mabs_self](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean/declarations/max-one-mul-max-inv-one-eq-mabs-self--76e29c63b9e80be8b4e53dac.md) | 238 | `result-track:76e29c63b9e80be8b4e53dac02bbeb7a3ad68fc05aa758b9ebc1cf361552917d` |
| 41 | `theorem` | [apply_abs_le_mul_of_one_le'](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean/declarations/apply-abs-le-mul-of-one-le--c84d39d4d4f0d35626ffa0a6.md) | 249 | `result-track:c84d39d4d4f0d35626ffa0a6962810038e4f31f6bfba0f2803cc2466c35f9e13` |
| 42 | `theorem` | [apply_abs_le_mul_of_one_le](../../../../../mathematics/Algebra/UniversalAlgebra/Abs/Variant6dd77c705c13d17bf1e66a3e2e7f0093eab399d660de997b2bd287b95bb974d0.lean/declarations/apply-abs-le-mul-of-one-le--91c3fa11ba0c0e5f798cfd1d.md) | 256 | `result-track:91c3fa11ba0c0e5f798cfd1d69cd881144719bc36cabd038647c0879f5604b2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
