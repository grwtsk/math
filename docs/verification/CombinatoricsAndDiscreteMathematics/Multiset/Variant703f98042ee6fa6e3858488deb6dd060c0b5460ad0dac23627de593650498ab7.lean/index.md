# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Multiset.Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a89d45d2611e2fda33d45163b8acf926e63685f4",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a89d45d2611e2fda33d45163b8acf926e63685f4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Finset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Order` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sym.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean/declarations/tomultiset--0238b1508b76cd38a3466b72.md) | 31 | `declaration-track:0238b1508b76cd38a3466b72b999595a5adfae2f2d6cef4856a3806cfc285459` |
| 2 | `theorem` | [toMultiset_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean/declarations/tomultiset-zero--2222f9b9fb2bb119c9e0fbc4.md) | 39 | `result-track:2222f9b9fb2bb119c9e0fbc468660541f80c968dd411287bb81d1ea600787f2a` |
| 3 | `theorem` | [toMultiset_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean/declarations/tomultiset-add--b9e0b1bc6c9a64b56635d454.md) | 42 | `result-track:b9e0b1bc6c9a64b56635d4542b1cf261f7e005c54eca17efedbbb208779d5263` |
| 4 | `theorem` | [toMultiset_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean/declarations/tomultiset-apply--e34ad4e892569af633526874.md) | 45 | `result-track:e34ad4e892569af63352687466eeeeb5e5ced76b1fae78cd6f3aeaba15be0088` |
| 5 | `theorem` | [toMultiset_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean/declarations/tomultiset-single--248dae86dc4441d8eae03128.md) | 49 | `result-track:248dae86dc4441d8eae031288e976c0ea7b6ddb544aad708c4f929e2a6114167` |
| 6 | `theorem` | [toMultiset_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean/declarations/tomultiset-sum--413b4b1de3e175ee1baac4da.md) | 52 | `result-track:413b4b1de3e175ee1baac4da5464f4f045551984133ed6f0fb8888419652dfbf` |
| 7 | `theorem` | [toMultiset_sum_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean/declarations/tomultiset-sum-single--8d12b3e9081992c78b7af431.md) | 56 | `result-track:8d12b3e9081992c78b7af4319567cf60f5fe560ee1974dc26b7deb76d08906b4` |
| 8 | `theorem` | [card_toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean/declarations/card-tomultiset--7e2a2a8259de07b3d92339c9.md) | 61 | `result-track:7e2a2a8259de07b3d92339c96886d727ee7371cfb4012c6a15b750bf67e67f5f` |
| 9 | `theorem` | [toMultiset_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean/declarations/tomultiset-map--31b2ae7c4f1a05a7fd682d3e.md) | 64 | `result-track:31b2ae7c4f1a05a7fd682d3e1f00c3de7e5e0ee566c5a1d09318f5bc1662d6b9` |
| 10 | `theorem` | [prod_toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean/declarations/prod-tomultiset--72c57c790d76f4d292604a48.md) | 75 | `result-track:72c57c790d76f4d292604a48f9e6c0750a57b6c0f354f4a16f2ab9ee410d1d51` |
| 11 | `theorem` | [toFinset_toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean/declarations/tofinset-tomultiset--9e8b5fe3bf78b3745af7437d.md) | 85 | `result-track:9e8b5fe3bf78b3745af7437d54ffe72a7741d97b5bb0574f3abc1748989a7278` |
| 12 | `theorem` | [count_toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean/declarations/count-tomultiset--1cffbe02a3d1eed8eeb57ba4.md) | 95 | `result-track:1cffbe02a3d1eed8eeb57ba4cf549edb16c9e136ca45de2a716adfdaab1a8d50` |
| 13 | `theorem` | [toMultiset_sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean/declarations/tomultiset-sup--f50260310c39a3555d368aa8.md) | 106 | `result-track:f50260310c39a3555d368aa853f5076d6773d6e7ccd110767ea009eb05951e0e` |
| 14 | `theorem` | [toMultiset_inf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean/declarations/tomultiset-inf--d2e2888abd901f9d4c89e876.md) | 111 | `result-track:d2e2888abd901f9d4c89e87614e97511410f061b075626856bef7d9723c663d2` |
| 15 | `theorem` | [mem_toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean/declarations/mem-tomultiset--832925a8681f06d8529671d0.md) | 117 | `result-track:832925a8681f06d8529671d00e069213a49be37154acf3dcdb0c93a8389762ec` |
| 16 | `def` | [toFinsupp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean/declarations/tofinsupp--f50dc564a3ea7cd044b3d817.md) | 130 | `declaration-track:f50dc564a3ea7cd044b3d817cc6bd3fd61cecd684cf7f8f7fe708d935ade8259` |
| 17 | `theorem` | [toFinsupp_support](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean/declarations/tofinsupp-support--66a9c5ccedded063dda78f25.md) | 144 | `result-track:66a9c5ccedded063dda78f252ac820a4826b43f8da893ad6c55ce7e9f7549a7c` |
| 18 | `theorem` | [toFinsupp_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean/declarations/tofinsupp-apply--87fe469ce2e80f47f01035f3.md) | 147 | `result-track:87fe469ce2e80f47f01035f3237389177d77cbdd450d857923ae0efb20ddb357` |
| 19 | `theorem` | [toFinsupp_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean/declarations/tofinsupp-zero--fd77be92a4a1adfbeff267b0.md) | 149 | `result-track:fd77be92a4a1adfbeff267b0be7e1ffc6c82b2ef9baa01c5e035a2d7376bd7e7` |
| 20 | `theorem` | [toFinsupp_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean/declarations/tofinsupp-add--201fcadbc13b8a2e731347e9.md) | 151 | `result-track:201fcadbc13b8a2e731347e98aece332e8abc21aebced565379c91ad3950248e` |
| 21 | `theorem` | [toFinsupp_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean/declarations/tofinsupp-singleton--077285a309dc2249b5dd9e4f.md) | 155 | `result-track:077285a309dc2249b5dd9e4f71a57ca20922cdd325aa536b40b9a2f93753dc49` |
| 22 | `theorem` | [toFinsupp_toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean/declarations/tofinsupp-tomultiset--633f38d3a63de0c44ba34721.md) | 159 | `result-track:633f38d3a63de0c44ba34721c604f29d320d57f3e054838ede5792be00fbd83f` |
| 23 | `theorem` | [toFinsupp_eq_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean/declarations/tofinsupp-eq-iff--3438b064eba5ac3f7320a1de.md) | 162 | `result-track:3438b064eba5ac3f7320a1de31ea4d26499fd497092d149220bd7249e09265e5` |
| 24 | `theorem` | [toFinsupp_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean/declarations/tofinsupp-union--5caca980c2acd18692cfda9c.md) | 166 | `result-track:5caca980c2acd18692cfda9c66dcece8b45c0b3eb0bcc55b7e126843798875d1` |
| 25 | `theorem` | [toFinsupp_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean/declarations/tofinsupp-inter--8267da33e33e6dee4a4a3dc8.md) | 170 | `result-track:8267da33e33e6dee4a4a3dc81f1418771b4559ba25783c3be58186f00ec6fff5` |
| 26 | `theorem` | [toFinsupp_sum_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean/declarations/tofinsupp-sum-eq--a6120320808d7f2ade840144.md) | 175 | `result-track:a6120320808d7f2ade8401443798cfb7abfa696b8c9f05fd812ee66cfb6a2777` |
| 27 | `theorem` | [Finsupp.toMultiset_toFinsupp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean/declarations/finsupp-tomultiset-tofinsupp--39f5530554034a909bcaa3ad.md) | 181 | `result-track:39f5530554034a909bcaa3adc4baa10c701affeafacf05ade9d9029c70d55a6e` |
| 28 | `theorem` | [Finsupp.toMultiset_eq_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean/declarations/finsupp-tomultiset-eq-iff--e56c16bf12ccd0076ae15fdf.md) | 185 | `result-track:e56c16bf12ccd0076ae15fdf96b54b4201a9ec7e1f9b7dd190486ab1116267ba` |
| 29 | `def` | [orderIsoMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean/declarations/orderisomultiset--7248063a1673c19a6999d874.md) | 193 | `declaration-track:7248063a1673c19a6999d874ce86fa99e168d9263f1660d66e41c0e867ba324c` |
| 30 | `theorem` | [coe_orderIsoMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean/declarations/coe-orderisomultiset--b52384694fdc30f92228509f.md) | 198 | `result-track:b52384694fdc30f92228509fb2019b2f085844c4eb4abd8573beed283e31217a` |
| 31 | `theorem` | [coe_orderIsoMultiset_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean/declarations/coe-orderisomultiset-symm--542ba10f00259ad4dd2e7dba.md) | 202 | `result-track:542ba10f00259ad4dd2e7dba8c89a166ebad478b2da1f2bff7a02dda673945fa` |
| 32 | `theorem` | [toMultiset_strictMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean/declarations/tomultiset-strictmono--c28272049bd76b5673788e13.md) | 206 | `result-track:c28272049bd76b5673788e134c597d017282a4ca64fedc099cc624b671070250` |
| 33 | `theorem` | [sum_id_lt_of_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean/declarations/sum-id-lt-of-lt--43f657d48ae037e171a771e9.md) | 209 | `result-track:43f657d48ae037e171a771e91c4ecd4acdd8cf2a3e2965453a3c3072924ae734` |
| 34 | `theorem` | [lt_wf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean/declarations/lt-wf--43080d5823e2df3bd1e026aa.md) | 217 | `result-track:43080d5823e2df3bd1e026aafc1c4afc99ec5f45f51f54e3ff36650e4aeda834` |
| 35 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean/declarations/instance--37edeaabc55b0da23998f661.md) | 221 | `declaration-track:37edeaabc55b0da23998f661edb71513783e7f9a289c137dba4afbd03c790efb` |
| 36 | `theorem` | [Multiset.toFinsupp_strictMono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean/declarations/multiset-tofinsupp-strictmono--8a670a1fd0695c24120b9ba0.md) | 227 | `result-track:8a670a1fd0695c24120b9ba0e326643ae6828aaa3972cf19183b5bd5a752195a` |
| 37 | `def` | [equivNatSum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean/declarations/equivnatsum--84328b57ca0cace8273caca2.md) | 239 | `declaration-track:84328b57ca0cace8273caca2ac7135680c9dcc2b013371cd36fd8cf3da5555c3` |
| 38 | `lemma` | [coe_equivNatSum_apply_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean/declarations/coe-equivnatsum-apply-apply--76f58b199e7d03ad0c9a87d2.md) | 243 | `result-track:76f58b199e7d03ad0c9a87d2b99357a67fa9c8ddb4b607ca0428a6c9fdf1750e` |
| 39 | `lemma` | [coe_equivNatSum_symm_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean/declarations/coe-equivnatsum-symm-apply--b9357721171f0ad59c295bc0.md) | 247 | `result-track:b9357721171f0ad59c295bc03c7efd36da84b90a68e5aeaf24f11a7c4beb2e82` |
| 40 | `def` | [equivNatSumOfFintype](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean/declarations/equivnatsumoffintype--5d8990874199b3bc63912fb3.md) | 255 | `declaration-track:5d8990874199b3bc63912fb34956ff9fbe4df1387cc7211a1774a260b1be6c57` |
| 41 | `lemma` | [coe_equivNatSumOfFintype_apply_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean/declarations/coe-equivnatsumoffintype-apply-apply--45b552d64ce586e849691d50.md) | 259 | `result-track:45b552d64ce586e849691d50d42c710b02fb7560c863394efb383c41f2fef7b3` |
| 42 | `lemma` | [coe_equivNatSumOfFintype_symm_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant703f98042ee6fa6e3858488deb6dd060c0b5460ad0dac23627de593650498ab7.lean/declarations/coe-equivnatsumoffintype-symm-apply--2887bf8c8b58eb591ef85b76.md) | 263 | `result-track:2887bf8c8b58eb591ef85b76a53b55b24fd50888d5fcf070258fc8bcf7f59d82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
