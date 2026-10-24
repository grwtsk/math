# Verification target: GRWTSK.Algebra.LinearAlgebra.WithConv.Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "15b2da2ba8786a7344dd18ba71b16a3ab8a690fe",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `15b2da2ba8786a7344dd18ba71b16a3ab8a690fe`.

Source path: `GRWTSK/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean.json)

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
| 1 | `structure` | [WithConv](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/withconv--f0ec946ce71ac4bbf2d9188f.md) | 37 | `declaration-track:f0ec946ce71ac4bbf2d9188f560228c5b8644f3b2069775524873ee9b26bec36` |
| 2 | `def` | [delabToConv](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/delabtoconv--742744fa4cd562d18467e9f0.md) | 46 | `declaration-track:742744fa4cd562d18467e9f0efad557bbba7fb7f939cd54d9f9cbb9051374566` |
| 3 | `lemma` | [ofConv_toConv](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/ofconv-toconv--6a0d9e4f21f034cce6cc54a5.md) | 50 | `result-track:6a0d9e4f21f034cce6cc54a5511f616945a7b8074d0bb8a69d0bd46ee3b1a68b` |
| 4 | `lemma` | [toConv_ofConv](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/toconv-ofconv--3ad4b294dc3d6a22e0ba564b.md) | 51 | `result-track:3ad4b294dc3d6a22e0ba564b876ee9d7aa9032869764453bb13036e636a491da` |
| 5 | `lemma` | [ofConv_surjective](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/ofconv-surjective--7e5177fcfef57d373445d8a7.md) | 53 | `result-track:7e5177fcfef57d373445d8a740730424c6f8af4139ca31c02d92ca5b434c8d98` |
| 6 | `lemma` | [toConv_surjective](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/toconv-surjective--a7e493f94ed087f03bdd0b2b.md) | 56 | `result-track:a7e493f94ed087f03bdd0b2b1c474150d86af6056057f4afe90ac5c80b1c50af` |
| 7 | `lemma` | [ofConv_injective](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/ofconv-injective--3894eeb5d6e4b126a138dd47.md) | 59 | `result-track:3894eeb5d6e4b126a138dd472ac677ed394c80cf9d8ed92265bf17c43ea1bc67` |
| 8 | `lemma` | [toConv_injective](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/toconv-injective--fd5007b4cfcd38ae645ca0cc.md) | 62 | `result-track:fd5007b4cfcd38ae645ca0ccb075215aa634fef2879e6d968effcc944beafdc1` |
| 9 | `lemma` | [ofConv_bijective](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/ofconv-bijective--5035aaec8d256414ffa6842a.md) | 65 | `result-track:5035aaec8d256414ffa6842a22ed3f4eba4799191d2e834cf9adcd4ca14b14e0` |
| 10 | `lemma` | [toConv_bijective](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/toconv-bijective--f45f920a34f959c238ce2e88.md) | 66 | `result-track:f45f920a34f959c238ce2e88623ba5ede529fa404fd393ef0c28ce208c6d48f9` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/instance--c4e5453072bbd8c72189b36a.md) | 68 | `declaration-track:c4e5453072bbd8c72189b36a829acd4f3fd1846b883de1e0daea8091ee84c4d5` |
| 12 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/ext--54a511bdf5be3447b5b470ef.md) | 70 | `result-track:54a511bdf5be3447b5b470ef4b6af515e9793a4b978ffd94cbb189ff66215701` |
| 13 | `def` | [equiv](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/equiv--1fe91248c54566024c47a8c5.md) | 75 | `declaration-track:1fe91248c54566024c47a8c59bda36fddc2fce185b7a45d7154c0de7512af712` |
| 14 | `lemma` | [equiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/equiv-apply--e4a980c0d9b54fd33f80f1ba.md) | 81 | `result-track:e4a980c0d9b54fd33f80f1bab52970c4b4a90d8b04c5486fcbddeae1555ff525` |
| 15 | `lemma` | [symm_equiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/symm-equiv-apply--e663f4f94c77e350e4a9954a.md) | 82 | `result-track:e663f4f94c77e350e4a9954a84ae2c1ff6093d875ba4f4d5749a7b8f7dd1db77` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/instance--628e01f0b76051516bd5dfd8.md) | 84 | `declaration-track:628e01f0b76051516bd5dfd8275a05cf37f38f7cbd182aafa70cc6d78fa5648d` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/instance--2d3b3a97f036d6267a4a782b.md) | 85 | `declaration-track:2d3b3a97f036d6267a4a782beef647f1018aaa6eae450e10d664c6efdfe1ce52` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/instance--3ff70694ce0621a942d7ab93.md) | 86 | `declaration-track:3ff70694ce0621a942d7ab9367534100507ee6ffdd03a720c15a44952bf5dfb8` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/instance--3bcc5913650c6a4ceb32c5c7.md) | 87 | `declaration-track:3bcc5913650c6a4ceb32c5c79a0c8e1a020ba8b2b65fb5a1629f3189f124cd04` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/instance--c11328e7d1223d71ee4cbe14.md) | 88 | `declaration-track:c11328e7d1223d71ee4cbe147e3963cac5155cd1ce76494191b1b20285b5f2a8` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/instance--1813c6e59e8118f5247499a3.md) | 89 | `declaration-track:1813c6e59e8118f5247499a3d0be9d42270018c32650c40df9902893d02898cb` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/instance--5d27d32ee16aa6cdfa816dae.md) | 90 | `declaration-track:5d27d32ee16aa6cdfa816daeed60618d00f6fef48b981b91b35a65f863e0007c` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/instance--8439e00739bb523315acdc67.md) | 91 | `declaration-track:8439e00739bb523315acdc672fc893b74d8b920e6c8ec965f92fbc008ff13e6a` |
| 24 | `def` | [congr](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/congr--029a634a5111c381b5a3bdd3.md) | 95 | `declaration-track:029a634a5111c381b5a3bdd367648fc3a689d37ed69d241670d0e69837bc7a07` |
| 25 | `lemma` | [congr_apply](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/congr-apply--65c2d64c2bec466bf74c63cc.md) | 98 | `result-track:65c2d64c2bec466bf74c63cca2f808d827616cde99983294af277f42b533a0ff` |
| 26 | `lemma` | [symm_congr](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/symm-congr--5ff6f26027f519cb73006bf9.md) | 100 | `result-track:5ff6f26027f519cb73006bf9d705dbbc3fb8b36393b771d578bc46b6bc33681e` |
| 27 | `lemma` | [symm_congr_apply](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/symm-congr-apply--b8d5773f9e494fc2cc3645e2.md) | 101 | `result-track:b8d5773f9e494fc2cc3645e2522cc72e3294463358ca55c3ca350f9c62592d7c` |
| 28 | `lemma` | [toConv_sub](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/toconv-sub--74eb72875ea0bd3485a7a0ee.md) | 107 | `result-track:74eb72875ea0bd3485a7a0eee679fc04fb72872637850d015d15715a1c706038` |
| 29 | `lemma` | [ofConv_sub](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/ofconv-sub--fc6ffe4e8fd0d1771883bed1.md) | 108 | `result-track:fc6ffe4e8fd0d1771883bed13b0b6b3897b03aa2d49645231a1fd214fea79304` |
| 30 | `lemma` | [ofConv_neg](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/ofconv-neg--cc52186a864ff90e4bc2af44.md) | 109 | `result-track:cc52186a864ff90e4bc2af44c747e827484f891cce310ebc9a51c401603abcb6` |
| 31 | `lemma` | [toConv_neg](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/toconv-neg--1e054aae440f527ceec4d406.md) | 110 | `result-track:1e054aae440f527ceec4d4064a1782f5654f39350c79e53f16f519e846a35d98` |
| 32 | `lemma` | [ofConv_smul](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/ofconv-smul--f2ed6105743bc6c503e2b9cb.md) | 114 | `result-track:f2ed6105743bc6c503e2b9cbc527f9a72c46febb3f87f82d82a38e144e52b614` |
| 33 | `lemma` | [toConv_smul](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/toconv-smul--f693995ce7d714ffe3a12f72.md) | 116 | `result-track:f693995ce7d714ffe3a12f727ab0f6835c770e703aa8ae67f3a06f1d05557a7a` |
| 34 | `lemma` | [ofConv_zero](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/ofconv-zero--799317aadb9270014181d607.md) | 122 | `result-track:799317aadb9270014181d60762d3393d129ba4d3101766319303d53257f2c295` |
| 35 | `lemma` | [toConv_zero](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/toconv-zero--108992625ae73d38b6915047.md) | 123 | `result-track:108992625ae73d38b6915047ac1e2e3f378c89622c75b7b71e7016fc4f758fbd` |
| 36 | `lemma` | [ofConv_add](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/ofconv-add--71cc1ef1bc09e4a5cea3a237.md) | 124 | `result-track:71cc1ef1bc09e4a5cea3a237672ba7eb52f972b802fea5dcd93c5926f41f25c6` |
| 37 | `lemma` | [toConv_add](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/toconv-add--4c603cb04130a3f64744f814.md) | 125 | `result-track:4c603cb04130a3f64744f814175f55e708ce1b86cdf6662aabe9a0e67d04c231` |
| 38 | `lemma` | [ofConv_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/ofconv-eq-zero--932cb5182dd5f30c03b49da6.md) | 126 | `result-track:932cb5182dd5f30c03b49da6f7cb10a38bc8622a45514251017c3c20fcf60550` |
| 39 | `lemma` | [toConv_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/toconv-eq-zero--226c4a510e60060cceaafaa0.md) | 127 | `result-track:226c4a510e60060cceaafaa0d2eabce0d04458dba11cac8eb17ddee9a9b81412` |
| 40 | `def` | [addEquiv](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/addequiv--3bcf041d98e46b74ae9d628b.md) | 131 | `declaration-track:3bcf041d98e46b74ae9d628b4b741cf448a32807a291e336a42798278f584618` |
| 41 | `theorem` | [toEquiv_addEquiv](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/toequiv-addequiv--0560e86cc26a433117cf6a0c.md) | 135 | `result-track:0560e86cc26a433117cf6a0ca80aa732706b8cf4a72f31a451ecd51220ff1793` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/instance--aef7195fe6d4a5272d8df56a.md) | 139 | `declaration-track:aef7195fe6d4a5272d8df56abe6facf70c42276be3d61bc4ce0710092a5e84dd` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/instance--1588ff1adfab67d9047d7297.md) | 141 | `declaration-track:1588ff1adfab67d9047d72972625b2ad96ae306d49e3f2b1757066be599b498c` |
| 44 | `def` | [linearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/linearequiv--1e8f13c7399b4ddcff67fb68.md) | 148 | `declaration-track:1e8f13c7399b4ddcff67fb6831c34cba54c76adf01af07b5e8b09c3180ab1152` |
| 45 | `lemma` | [linearEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/linearequiv-apply--3242d115c1ad235c0a19c1c6.md) | 152 | `result-track:3242d115c1ad235c0a19c1c6852c042153ca375e4b1a9fce155ec58fb04a0f29` |
| 46 | `lemma` | [symm_linearEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/symm-linearequiv-apply--316aacd393417042ceedca12.md) | 154 | `result-track:316aacd393417042ceedca1256b1e0ec596381825e3365454a897bd196dbce55` |
| 47 | `lemma` | [toAddEquiv_linearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/toaddequiv-linearequiv--bd3dfd3c0407b3e9fee22c18.md) | 156 | `result-track:bd3dfd3c0407b3e9fee22c18df23d2fe65774d807c215f2c4ab34220910137ba` |
| 48 | `lemma` | [ofConv_sum](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/ofconv-sum--d9207145b83499e6623a4da2.md) | 159 | `result-track:d9207145b83499e6623a4da2b40efd168bff6f646c03c9eebfcc4cc45a148cbc` |
| 49 | `lemma` | [toConv_sum](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/toconv-sum--4f0efbdb6b33203d3f96e713.md) | 161 | `result-track:4f0efbdb6b33203d3f96e713bcdd7dc1f1664a47ca09c9d41711169c3fffa77f` |
| 50 | `lemma` | [ofConv_listSum](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/ofconv-listsum--cf82d766bb9c2b3d1f64f650.md) | 163 | `result-track:cf82d766bb9c2b3d1f64f650d3373b5e8ef9c2f5bc9b4df058ffc1a56268b0b8` |
| 51 | `lemma` | [toConv_listSum](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/toconv-listsum--cc4395e9016d0bc51597480f.md) | 165 | `result-track:cc4395e9016d0bc51597480f8dd38977af8f6ee5c8d2529e81301bfe522acafa` |
| 52 | `lemma` | [ofConv_multisetSum](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/ofconv-multisetsum--36e39950dd7288b2939ca644.md) | 167 | `result-track:36e39950dd7288b2939ca6443638c6f00d4de7aca214c3eb1dcbddaccd43a793` |
| 53 | `lemma` | [toConv_multisetSum](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/toconv-multisetsum--5fb5ccbb94ac4d8f3d3aa9d8.md) | 169 | `result-track:5fb5ccbb94ac4d8f3d3aa9d8c0d22dd07156654869e432ab0f4022357ddf80cb` |
| 54 | `def` | [congrLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/congrlinearequiv--879e9b2d1dc7da9f8fa17555.md) | 176 | `declaration-track:879e9b2d1dc7da9f8fa175553f3abf447e45a1b0ff13ef75414301dc14f8b62d` |
| 55 | `lemma` | [congrLinearEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/congrlinearequiv-apply--d911782fee861ea87707c103.md) | 179 | `result-track:d911782fee861ea87707c103bb5d493b5230b83f26d4173ed48c168c482a3a80` |
| 56 | `lemma` | [symm_congrLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/symm-congrlinearequiv--cb4316ec9617205fca4a73ca.md) | 181 | `result-track:cb4316ec9617205fca4a73caf68878a0d592920ae97a0db0fae0d292e5034de0` |
| 57 | `lemma` | [symm_congrLinearEquiv_apply](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/symm-congrlinearequiv-apply--130db9c40654195b27d10d49.md) | 183 | `result-track:130db9c40654195b27d10d4954ed5df552ff7a01c6dfe6f666c479c0eb3ee7f5` |
| 58 | `theorem` | [toEquiv_congrLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/WithConv/Variant8e8ed6601a2af10ccac326b17e52ca91073f46211f9913fc458ef760308d4b3c.lean/declarations/toequiv-congrlinearequiv--45b7ae5dfa49490b492d68aa.md) | 185 | `result-track:45b7ae5dfa49490b492d68aa1cdb13183ae7506e350a8c3c26c9b360c4bdfde4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
