# Verification target: GRWTSK.Algebra.UniversalAlgebra.Group.Variantdc7beac9d367783b69afdd72aeb2c8d4fc802b5089ee3fa5dbfcec475e6b8827

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eeea64d85b5b79bc06559f492bcd3e85bbc70a7b",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Group/Variantdc7beac9d367783b69afdd72aeb2c8d4fc802b5089ee3fa5dbfcec475e6b8827.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variantdc7beac9d367783b69afdd72aeb2c8d4fc802b5089ee3fa5dbfcec475e6b8827.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variantdc7beac9d367783b69afdd72aeb2c8d4fc802b5089ee3fa5dbfcec475e6b8827.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eeea64d85b5b79bc06559f492bcd3e85bbc70a7b`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Group/Variantdc7beac9d367783b69afdd72aeb2c8d4fc802b5089ee3fa5dbfcec475e6b8827.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Group/Variantdc7beac9d367783b69afdd72aeb2c8d4fc802b5089ee3fa5dbfcec475e6b8827.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Intervals.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Pairwise.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Abs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupPower.Lemmas` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [inv_mem_Icc_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variantdc7beac9d367783b69afdd72aeb2c8d4fc802b5089ee3fa5dbfcec475e6b8827.lean/declarations/inv-mem-icc-iff--91526136cd7f008d69a78c63.md) | 36 | `result-track:91526136cd7f008d69a78c63cc8f6debf51120f5085cf821102c5ed90d63cb69` |
| 2 | `theorem` | [inv_mem_Ico_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variantdc7beac9d367783b69afdd72aeb2c8d4fc802b5089ee3fa5dbfcec475e6b8827.lean/declarations/inv-mem-ico-iff--ec0c8ccf99b6a561cdbab278.md) | 42 | `result-track:ec0c8ccf99b6a561cdbab278b628922cfef4202ba267de131dbbce479f1ea99b` |
| 3 | `theorem` | [inv_mem_Ioc_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variantdc7beac9d367783b69afdd72aeb2c8d4fc802b5089ee3fa5dbfcec475e6b8827.lean/declarations/inv-mem-ioc-iff--44eb64d882ea8534aca8ec7d.md) | 48 | `result-track:44eb64d882ea8534aca8ec7d91a2c60c5089fff7a9846506a307101f01ec2662` |
| 4 | `theorem` | [inv_mem_Ioo_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variantdc7beac9d367783b69afdd72aeb2c8d4fc802b5089ee3fa5dbfcec475e6b8827.lean/declarations/inv-mem-ioo-iff--ac6689dfca181960ee552978.md) | 54 | `result-track:ac6689dfca181960ee552978723c7a47308388461cd91d6605efa8af8dee0ddb` |
| 5 | `theorem` | [add_mem_Icc_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variantdc7beac9d367783b69afdd72aeb2c8d4fc802b5089ee3fa5dbfcec475e6b8827.lean/declarations/add-mem-icc-iff-left--e06177897897bd650a53cc4b.md) | 69 | `result-track:e06177897897bd650a53cc4b3a31eb36ff338679b076a631042de6eb42b44fe1` |
| 6 | `theorem` | [add_mem_Ico_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variantdc7beac9d367783b69afdd72aeb2c8d4fc802b5089ee3fa5dbfcec475e6b8827.lean/declarations/add-mem-ico-iff-left--f68cdc0c50451331d96789bd.md) | 73 | `result-track:f68cdc0c50451331d96789bd3cca78fb795025be847875413e6970a82ba146bc` |
| 7 | `theorem` | [add_mem_Ioc_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variantdc7beac9d367783b69afdd72aeb2c8d4fc802b5089ee3fa5dbfcec475e6b8827.lean/declarations/add-mem-ioc-iff-left--d0fca5a650d1936232dd1a7f.md) | 77 | `result-track:d0fca5a650d1936232dd1a7fe5e29bcda4cc5fccd1443b7c03e5baa5349780d7` |
| 8 | `theorem` | [add_mem_Ioo_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variantdc7beac9d367783b69afdd72aeb2c8d4fc802b5089ee3fa5dbfcec475e6b8827.lean/declarations/add-mem-ioo-iff-left--2cbb3d97987f8a16c53b1003.md) | 81 | `result-track:2cbb3d97987f8a16c53b100329ea5b9b675c54209c391b431a22c04734bd8e63` |
| 9 | `theorem` | [add_mem_Icc_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variantdc7beac9d367783b69afdd72aeb2c8d4fc802b5089ee3fa5dbfcec475e6b8827.lean/declarations/add-mem-icc-iff-right--38b743ed4ff83f646e547608.md) | 88 | `result-track:38b743ed4ff83f646e547608f3ef6ab5b08d542a8508dc24ddf710bd10d75a89` |
| 10 | `theorem` | [add_mem_Ico_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variantdc7beac9d367783b69afdd72aeb2c8d4fc802b5089ee3fa5dbfcec475e6b8827.lean/declarations/add-mem-ico-iff-right--ef142d4ef4d5f68d486a0ed3.md) | 92 | `result-track:ef142d4ef4d5f68d486a0ed3aa164e86260bbc9f5a867f4ad2a950082e4ebdc8` |
| 11 | `theorem` | [add_mem_Ioc_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variantdc7beac9d367783b69afdd72aeb2c8d4fc802b5089ee3fa5dbfcec475e6b8827.lean/declarations/add-mem-ioc-iff-right--edfe0d9915f58665d0857137.md) | 96 | `result-track:edfe0d9915f58665d0857137af738e473520069b1262ee4775dad78179225f79` |
| 12 | `theorem` | [add_mem_Ioo_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variantdc7beac9d367783b69afdd72aeb2c8d4fc802b5089ee3fa5dbfcec475e6b8827.lean/declarations/add-mem-ioo-iff-right--486a31c9efca625f88330295.md) | 100 | `result-track:486a31c9efca625f8833029570dbbfd3130c8730e967c93cc3e1c7b158e00647` |
| 13 | `theorem` | [sub_mem_Icc_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variantdc7beac9d367783b69afdd72aeb2c8d4fc802b5089ee3fa5dbfcec475e6b8827.lean/declarations/sub-mem-icc-iff-left--b5998a0f3ec295d951b377eb.md) | 107 | `result-track:b5998a0f3ec295d951b377eb1301a29a8eea277cd830eca3df5b96f42a9ecbf5` |
| 14 | `theorem` | [sub_mem_Ico_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variantdc7beac9d367783b69afdd72aeb2c8d4fc802b5089ee3fa5dbfcec475e6b8827.lean/declarations/sub-mem-ico-iff-left--006980ddc0b233be3f9ff4dd.md) | 111 | `result-track:006980ddc0b233be3f9ff4dd9b1eb3206b47c0dea5959fd0fa0e9757c45934a9` |
| 15 | `theorem` | [sub_mem_Ioc_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variantdc7beac9d367783b69afdd72aeb2c8d4fc802b5089ee3fa5dbfcec475e6b8827.lean/declarations/sub-mem-ioc-iff-left--a93a373e218579a73f7292e1.md) | 115 | `result-track:a93a373e218579a73f7292e1a04f130f5d31e54e91e5db2b012b90671f76244f` |
| 16 | `theorem` | [sub_mem_Ioo_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variantdc7beac9d367783b69afdd72aeb2c8d4fc802b5089ee3fa5dbfcec475e6b8827.lean/declarations/sub-mem-ioo-iff-left--ba5cf107e242d0df77c492db.md) | 119 | `result-track:ba5cf107e242d0df77c492db57a1f5e8d2d2429a8e20c2ac892dabcf33b9eb85` |
| 17 | `theorem` | [sub_mem_Icc_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variantdc7beac9d367783b69afdd72aeb2c8d4fc802b5089ee3fa5dbfcec475e6b8827.lean/declarations/sub-mem-icc-iff-right--a3169f1044b3ccde25917b18.md) | 126 | `result-track:a3169f1044b3ccde25917b185fe9ad4571cf98df52d8a8dd3c0bf0e8d199036c` |
| 18 | `theorem` | [sub_mem_Ico_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variantdc7beac9d367783b69afdd72aeb2c8d4fc802b5089ee3fa5dbfcec475e6b8827.lean/declarations/sub-mem-ico-iff-right--03467b27bceadca9e91ca3cb.md) | 130 | `result-track:03467b27bceadca9e91ca3cb452bb89fc2666521811c48c116688de29fc93d64` |
| 19 | `theorem` | [sub_mem_Ioc_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variantdc7beac9d367783b69afdd72aeb2c8d4fc802b5089ee3fa5dbfcec475e6b8827.lean/declarations/sub-mem-ioc-iff-right--b036188944b0282822f59c98.md) | 134 | `result-track:b036188944b0282822f59c9870df2cd07e44ebaae98e1ab44615872a9bb1870c` |
| 20 | `theorem` | [sub_mem_Ioo_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variantdc7beac9d367783b69afdd72aeb2c8d4fc802b5089ee3fa5dbfcec475e6b8827.lean/declarations/sub-mem-ioo-iff-right--51650a3ac549f75c84cd01c7.md) | 138 | `result-track:51650a3ac549f75c84cd01c7188efc05d54e7ef2aa4c7fc6779974cc5ba14d24` |
| 21 | `theorem` | [mem_Icc_iff_abs_le](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variantdc7beac9d367783b69afdd72aeb2c8d4fc802b5089ee3fa5dbfcec475e6b8827.lean/declarations/mem-icc-iff-abs-le--7d82953e2b21a14ece5eb202.md) | 144 | `result-track:7d82953e2b21a14ece5eb20209c857132e1d951a69e1d4ce192b435b97ad531c` |
| 22 | `theorem` | [nonempty_Ico_sdiff](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variantdc7beac9d367783b69afdd72aeb2c8d4fc802b5089ee3fa5dbfcec475e6b8827.lean/declarations/nonempty-ico-sdiff--e8a44e38f2bfe58455439d2f.md) | 156 | `result-track:e8a44e38f2bfe58455439d2f9779a405a3db0883ab7552b3890cd7c9390727aa` |
| 23 | `theorem` | [pairwise_disjoint_Ioc_mul_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variantdc7beac9d367783b69afdd72aeb2c8d4fc802b5089ee3fa5dbfcec475e6b8827.lean/declarations/pairwise-disjoint-ioc-mul-zpow--63ea75a7c8f6ecd58f42b2ea.md) | 176 | `result-track:63ea75a7c8f6ecd58f42b2eae5975f6ec20c9e653a20b1f2b2cfdff7742740c9` |
| 24 | `theorem` | [pairwise_disjoint_Ico_mul_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variantdc7beac9d367783b69afdd72aeb2c8d4fc802b5089ee3fa5dbfcec475e6b8827.lean/declarations/pairwise-disjoint-ico-mul-zpow--50dd10886b8fc105942cb4b6.md) | 192 | `result-track:50dd10886b8fc105942cb4b6d5ca93fc49e6cd43728cf4e04625488d0f05d571` |
| 25 | `theorem` | [pairwise_disjoint_Ioo_mul_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variantdc7beac9d367783b69afdd72aeb2c8d4fc802b5089ee3fa5dbfcec475e6b8827.lean/declarations/pairwise-disjoint-ioo-mul-zpow--7235d95c0c68deb4c88fea92.md) | 208 | `result-track:7235d95c0c68deb4c88fea928d0ef347e74a90060db080f8ab48a9ac0fbcb541` |
| 26 | `theorem` | [pairwise_disjoint_Ioc_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variantdc7beac9d367783b69afdd72aeb2c8d4fc802b5089ee3fa5dbfcec475e6b8827.lean/declarations/pairwise-disjoint-ioc-zpow--5532aa11268d516edbcebaff.md) | 215 | `result-track:5532aa11268d516edbcebaff1716a5289766f6a9c46701e847bfeaf69df6cf91` |
| 27 | `theorem` | [pairwise_disjoint_Ico_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variantdc7beac9d367783b69afdd72aeb2c8d4fc802b5089ee3fa5dbfcec475e6b8827.lean/declarations/pairwise-disjoint-ico-zpow--f1318c3b4412d84761bf9e36.md) | 222 | `result-track:f1318c3b4412d84761bf9e365f28929dccab9e1df17b8257850c7afac76d8ee4` |
| 28 | `theorem` | [pairwise_disjoint_Ioo_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variantdc7beac9d367783b69afdd72aeb2c8d4fc802b5089ee3fa5dbfcec475e6b8827.lean/declarations/pairwise-disjoint-ioo-zpow--0d46baf40caafd7e34213394.md) | 229 | `result-track:0d46baf40caafd7e342133945ea59215efc0b8e2dfa9bad306b74df832bd1e87` |
| 29 | `theorem` | [pairwise_disjoint_Ioc_add_int_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variantdc7beac9d367783b69afdd72aeb2c8d4fc802b5089ee3fa5dbfcec475e6b8827.lean/declarations/pairwise-disjoint-ioc-add-int-cast--211d65c5639fdbda9aeb427c.md) | 241 | `result-track:211d65c5639fdbda9aeb427ca0fb0bc3c0950e42430d4304476776f41624ccca` |
| 30 | `theorem` | [pairwise_disjoint_Ico_add_int_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variantdc7beac9d367783b69afdd72aeb2c8d4fc802b5089ee3fa5dbfcec475e6b8827.lean/declarations/pairwise-disjoint-ico-add-int-cast--16fa41e2fbb2dedbf681f41b.md) | 247 | `result-track:16fa41e2fbb2dedbf681f41becabd204a805129557646d9d738015174fc1e1df` |
| 31 | `theorem` | [pairwise_disjoint_Ioo_add_int_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variantdc7beac9d367783b69afdd72aeb2c8d4fc802b5089ee3fa5dbfcec475e6b8827.lean/declarations/pairwise-disjoint-ioo-add-int-cast--23697d46e024ad1e0dabcf2d.md) | 253 | `result-track:23697d46e024ad1e0dabcf2d8ff068fe9ac3901a00239883b5498554ce11c64b` |
| 32 | `theorem` | [pairwise_disjoint_Ico_int_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variantdc7beac9d367783b69afdd72aeb2c8d4fc802b5089ee3fa5dbfcec475e6b8827.lean/declarations/pairwise-disjoint-ico-int-cast--baeb9b7199a6ec14366dc35a.md) | 261 | `result-track:baeb9b7199a6ec14366dc35aeccf2a0fc2218384f8dde3abeb6d75c13681e05d` |
| 33 | `theorem` | [pairwise_disjoint_Ioo_int_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variantdc7beac9d367783b69afdd72aeb2c8d4fc802b5089ee3fa5dbfcec475e6b8827.lean/declarations/pairwise-disjoint-ioo-int-cast--5d469458ef625b6fc2e85f6a.md) | 265 | `result-track:5d469458ef625b6fc2e85f6af2f5bab9d0a8bc33c8e3a9b34987b34d66f9aec8` |
| 34 | `theorem` | [pairwise_disjoint_Ioc_int_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variantdc7beac9d367783b69afdd72aeb2c8d4fc802b5089ee3fa5dbfcec475e6b8827.lean/declarations/pairwise-disjoint-ioc-int-cast--cdc6cd6697c5c2d409359464.md) | 269 | `result-track:cdc6cd6697c5c2d409359464f267e884b6bfcf5e5643c08248183778420e0cda` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
