# Verification target: GRWTSK.Topology.GeneralTopology.Multiset.Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e07ed1034137dde2375be2ce46cb41aab3b473b1",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e07ed1034137dde2375be2ce46cb41aab3b473b1`.

Source path: `GRWTSK/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Interval.Finset.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Icc](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/icc--19fa599d5204ba8f86f6cc48.md) | 52 | `declaration-track:19fa599d5204ba8f86f6cc487aa2c59a46297cf29a39866f2fb8c6ed8d70a823` |
| 2 | `def` | [Ico](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/ico--49e4196d1094a3564f05d691.md) | 56 | `declaration-track:49e4196d1094a3564f05d69161ba304552836cf60c35ac699722ebb5577a3d5d` |
| 3 | `def` | [Ioc](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/ioc--ffb8b7760b50a4ad41052cf3.md) | 60 | `declaration-track:ffb8b7760b50a4ad41052cf33541d38f20f47f15d998acf554a5858f7afcd4ec` |
| 4 | `def` | [Ioo](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/ioo--f3ac6356d048a83649496b5c.md) | 64 | `declaration-track:f3ac6356d048a83649496b5c39f4d5527c70ca34606bf231744bdd5f2f1f3b5a` |
| 5 | `lemma` | [mem_Icc](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/mem-icc--28a0eb602704419f65effe84.md) | 66 | `result-track:28a0eb602704419f65effe8429134c2eac24c5bd2604c0fbe6d6c2bf8a0c23ba` |
| 6 | `lemma` | [mem_Ico](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/mem-ico--9a59901066b739a0d3cb729e.md) | 68 | `result-track:9a59901066b739a0d3cb729e4152de84f4ef678bdfde9de51e1d0b201f832e82` |
| 7 | `lemma` | [mem_Ioc](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/mem-ioc--8f38a5afc790e1f97dee22cc.md) | 70 | `result-track:8f38a5afc790e1f97dee22ccd4065c05a7a9a2392e88433871f16fef26573509` |
| 8 | `lemma` | [mem_Ioo](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/mem-ioo--4b43ab88a58dce1525959607.md) | 72 | `result-track:4b43ab88a58dce1525959607f34a002642a91de878d1df563105bf74a37a7762` |
| 9 | `def` | [Ici](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/ici--a4493e149e9dbaeb2e143d59.md) | 81 | `declaration-track:a4493e149e9dbaeb2e143d59105b0c3fa439807dc1fff09de1fb806eedf494da` |
| 10 | `def` | [Ioi](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/ioi--e6a31a5f4fe9ff25985eb2ca.md) | 84 | `declaration-track:e6a31a5f4fe9ff25985eb2cad494f74651ea651f857805ea82dae9ab9a7b0909` |
| 11 | `lemma` | [mem_Ici](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/mem-ici--04ba1aa9a90e3b1bbbf4663d.md) | 86 | `result-track:04ba1aa9a90e3b1bbbf4663d32607f71ddfe300a698a7caacc49162be8d15ce9` |
| 12 | `lemma` | [mem_Ioi](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/mem-ioi--769e72526b87828669f12d8f.md) | 88 | `result-track:769e72526b87828669f12d8f0577fdae6d98dce0e40d6a83bfad72369b6bab82` |
| 13 | `def` | [Iic](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/iic--c6bece45b711dfac72d94fc0.md) | 96 | `declaration-track:c6bece45b711dfac72d94fc0385bdc093ed4455df26d52bac71ec48e7ef355b5` |
| 14 | `def` | [Iio](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/iio--6682fe076061c48a27af42cd.md) | 99 | `declaration-track:6682fe076061c48a27af42cd6180d1d47d4b3185dfc6740cfdbc2e9e0774645d` |
| 15 | `lemma` | [mem_Iic](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/mem-iic--4d41a346771ae8579e037f2f.md) | 101 | `result-track:4d41a346771ae8579e037f2fecf778d324fef2a411ec146d4a4760d9852d1a15` |
| 16 | `lemma` | [mem_Iio](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/mem-iio--a5c390bd2dc6093398f587bb.md) | 103 | `result-track:a5c390bd2dc6093398f587bb132b5557b7c6645d0bd1a66deb8bdbe696c527bb` |
| 17 | `theorem` | [nodup_Icc](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/nodup-icc--68197e930b85461749cccbd6.md) | 111 | `result-track:68197e930b85461749cccbd624faccbfd49aec2c7bb66e12a5d4873ce52023b6` |
| 18 | `theorem` | [nodup_Ico](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/nodup-ico--343018ad4bb2ab02b062dc6d.md) | 114 | `result-track:343018ad4bb2ab02b062dc6d4f55aacebb947f2843d066bb317a74c36cc1d5e1` |
| 19 | `theorem` | [nodup_Ioc](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/nodup-ioc--29ffab14719ff932e46074e8.md) | 117 | `result-track:29ffab14719ff932e46074e8883e94a8055b94ed430b86da21638d7c215d8b16` |
| 20 | `theorem` | [nodup_Ioo](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/nodup-ioo--34cdcc5c00f80906a959ac6f.md) | 120 | `result-track:34cdcc5c00f80906a959ac6f95dfe662d97b5746d5ed32a1e9a83b50f792a843` |
| 21 | `theorem` | [Icc_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/icc-eq-zero-iff--07cb924e4e1e674f4e7b46c9.md) | 124 | `result-track:07cb924e4e1e674f4e7b46c945b9c39ce0175a2d66295a395308d1711c331bf0` |
| 22 | `theorem` | [Ico_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/ico-eq-zero-iff--ff9baa9841b44a648169ba20.md) | 128 | `result-track:ff9baa9841b44a648169ba20d29d980dd03bcc83c60996f664f83bef4989261f` |
| 23 | `theorem` | [Ioc_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/ioc-eq-zero-iff--1eb6db5a056e6956b1984009.md) | 132 | `result-track:1eb6db5a056e6956b1984009405fb36bfd6cc9e30639cba57382456ab2c9789e` |
| 24 | `theorem` | [Ioo_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/ioo-eq-zero-iff--df79b93a73b04ca9827706f4.md) | 136 | `result-track:df79b93a73b04ca9827706f4af48afa71e3f171528e0a1212324848240de4b9b` |
| 25 | `theorem` | [Ioo_eq_zero](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/ioo-eq-zero--e81c597b759164b393f00db7.md) | 146 | `result-track:e81c597b759164b393f00db7374f50dd1c78a9a432a006b495c48e5d892d02f6` |
| 26 | `theorem` | [Icc_eq_zero_of_lt](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/icc-eq-zero-of-lt--2451c26b1b1d3a01e62171bd.md) | 150 | `result-track:2451c26b1b1d3a01e62171bd1f0b357e3ba08cdd93ee40f0a020fbcbf0baff16` |
| 27 | `theorem` | [Ico_eq_zero_of_le](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/ico-eq-zero-of-le--b453573f5b24d2901cb910f5.md) | 154 | `result-track:b453573f5b24d2901cb910f5e42d26e0b3e6d5d0aa80433a8c983826f14a24a2` |
| 28 | `theorem` | [Ioc_eq_zero_of_le](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/ioc-eq-zero-of-le--c2eb79aa0c5b41ebec9214ec.md) | 158 | `result-track:c2eb79aa0c5b41ebec9214ecda6776a9ee5e0db32057f45d999ad4fb3468e701` |
| 29 | `theorem` | [Ioo_eq_zero_of_le](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/ioo-eq-zero-of-le--67c54996455d4f4fc146a378.md) | 162 | `result-track:67c54996455d4f4fc146a37846327457c06fbe27211f52fb9799773095b987a9` |
| 30 | `theorem` | [Ico_self](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/ico-self--18fa46af7c394b2ef91d0d73.md) | 167 | `result-track:18fa46af7c394b2ef91d0d73f96c473c5fe3ec983741b706e10538800bb2a420` |
| 31 | `theorem` | [Ioc_self](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/ioc-self--27d41ef62a5a663de3c39e55.md) | 169 | `result-track:27d41ef62a5a663de3c39e55514022c76ddb567bf76e7e3f2066bde7ead7ee4d` |
| 32 | `theorem` | [Ioo_self](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/ioo-self--35eb63c0274e1270bf0975f7.md) | 171 | `result-track:35eb63c0274e1270bf0975f725a2f57530cdc85c24468569b839bf4f115ba9b1` |
| 33 | `theorem` | [left_mem_Icc](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/left-mem-icc--888c4664da848372f6e80b79.md) | 175 | `result-track:888c4664da848372f6e80b79130be460415208612f66a8ecb7471cbcb55efd89` |
| 34 | `theorem` | [left_mem_Ico](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/left-mem-ico--5e14432131dc533fd573bea7.md) | 178 | `result-track:5e14432131dc533fd573bea76659722f1c2bd17b1985153c6cf16ac38fed3aea` |
| 35 | `theorem` | [right_mem_Icc](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/right-mem-icc--def208b7592fcabd0e7ae7b8.md) | 181 | `result-track:def208b7592fcabd0e7ae7b81cd1267ce8dcbbaebbae3666295d434313b2361f` |
| 36 | `theorem` | [right_mem_Ioc](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/right-mem-ioc--9e4d623cc8220cd3d602b945.md) | 184 | `result-track:9e4d623cc8220cd3d602b9459cf045a7ab51ac4a6d0d7bd55f45076df0896cd3` |
| 37 | `theorem` | [left_notMem_Ioc](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/left-notmem-ioc--0fd02cfb8203e8d12813b024.md) | 187 | `result-track:0fd02cfb8203e8d12813b02408af4f1e09b3721090ead2f300b4777ba8fc3a1b` |
| 38 | `theorem` | [left_notMem_Ioo](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/left-notmem-ioo--7e53ca301452a32ba98ed524.md) | 192 | `result-track:7e53ca301452a32ba98ed52452cfb8a9aad5c63dbcfa7f86c621a527d537e60f` |
| 39 | `theorem` | [right_notMem_Ico](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/right-notmem-ico--f5d19f032eccc85c67b98223.md) | 197 | `result-track:f5d19f032eccc85c67b982234175f422da5358e7e52db4e3d4ed5e20da873a6d` |
| 40 | `theorem` | [right_notMem_Ioo](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/right-notmem-ioo--7177a552a3c2c3020eccabe9.md) | 202 | `result-track:7177a552a3c2c3020eccabe904edf6edd4847c265e1f2c7788973a2aac0b118e` |
| 41 | `theorem` | [Ico_filter_lt_of_le_left](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/ico-filter-lt-of-le-left--49c8e33361029a9c90e7d3df.md) | 207 | `result-track:49c8e33361029a9c90e7d3df82d8ffc153da8bba26a9d1d446201b167e76f20b` |
| 42 | `theorem` | [Ico_filter_lt_of_right_le](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/ico-filter-lt-of-right-le--240b9ec9bb5a75b5bd59977b.md) | 212 | `result-track:240b9ec9bb5a75b5bd59977b3c4aa6a1db99cb4b5b0e0a7fe91867ef51be8ff1` |
| 43 | `theorem` | [Ico_filter_lt_of_le_right](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/ico-filter-lt-of-le-right--b154a5650c4037a4f10a8ad8.md) | 216 | `result-track:b154a5650c4037a4f10a8ad85decf6786f3c2431773674ab2e29979038b05b0d` |
| 44 | `theorem` | [Ico_filter_le_of_le_left](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/ico-filter-le-of-le-left--3791085f4c4e62994b0ac88e.md) | 221 | `result-track:3791085f4c4e62994b0ac88ef3f4ae98fbbb685d9885676025f22ad8a729f4c2` |
| 45 | `theorem` | [Ico_filter_le_of_right_le](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/ico-filter-le-of-right-le--f86d133059868dc8c1a0828c.md) | 225 | `result-track:f86d133059868dc8c1a0828c4bc45137eedf9eb9d5c4959c866e937ed41dc04b` |
| 46 | `theorem` | [Ico_filter_le_of_left_le](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/ico-filter-le-of-left-le--e2fd1fd08dbaaff564d5fd00.md) | 230 | `result-track:e2fd1fd08dbaaff564d5fd001f9eebd72ba9908bd352fd895ac699cfd4bdf59d` |
| 47 | `theorem` | [Icc_self](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/icc-self--158c0d585684933eec8b7632.md) | 242 | `result-track:158c0d585684933eec8b7632db788cb028fb2b1e00fd4df99a23aee2c28aff1c` |
| 48 | `theorem` | [Ico_cons_right](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/ico-cons-right--04ce154b51be93e298e50c91.md) | 244 | `result-track:04ce154b51be93e298e50c9134a389c7f5cffd22f88e61e1071eb5a438db2d98` |
| 49 | `theorem` | [Ioo_cons_left](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/ioo-cons-left--f53ddb0920c35530a7febec5.md) | 249 | `result-track:f53ddb0920c35530a7febec51877598d18de9f04283b3a82668d586e559535f5` |
| 50 | `theorem` | [Ico_disjoint_Ico](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/ico-disjoint-ico--054e174e1c88b4b66aec0f1c.md) | 254 | `result-track:054e174e1c88b4b66aec0f1cfe1bfe8c45aacbe64693f2a39732e498b90245cc` |
| 51 | `theorem` | [Ico_inter_Ico_of_le](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/ico-inter-ico-of-le--977ac932118387ce0b50c2d0.md) | 260 | `result-track:977ac932118387ce0b50c2d0d5a77847c3228133492185cd81b6090c853b8c3e` |
| 52 | `theorem` | [Ico_filter_le_left](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/ico-filter-le-left--0689fa7f00a9d65f9d570061.md) | 263 | `result-track:0689fa7f00a9d65f9d5700610957e5138e157ad8112c1a7edf52eb3c6c76d170` |
| 53 | `theorem` | [card_Ico_eq_card_Icc_sub_one](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/card-ico-eq-card-icc-sub-one--6d901fc88f5aa7ade90af659.md) | 268 | `result-track:6d901fc88f5aa7ade90af6591377dcc3b1df21c4f0599b5dc2c133cd2d6a1089` |
| 54 | `theorem` | [card_Ioc_eq_card_Icc_sub_one](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/card-ioc-eq-card-icc-sub-one--f5d6e0a9754ed728d24000a7.md) | 271 | `result-track:f5d6e0a9754ed728d24000a7df4750c05490c1d63c65bee044ed98bd383a120b` |
| 55 | `theorem` | [card_Ioo_eq_card_Ico_sub_one](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/card-ioo-eq-card-ico-sub-one--803feefaf558573bc5b3b6d3.md) | 274 | `result-track:803feefaf558573bc5b3b6d35472b0b18c4aa3ab0abe2db34ec156dba75b2727` |
| 56 | `theorem` | [card_Ioo_eq_card_Icc_sub_two](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/card-ioo-eq-card-icc-sub-two--b56318f20c85291dd333f8ad.md) | 277 | `result-track:b56318f20c85291dd333f8add93401b625044e318d2a9488523c06e7f8059527` |
| 57 | `theorem` | [Ico_subset_Ico_iff](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/ico-subset-ico-iff--b8ff2d818eb4b09437ed34ad.md) | 286 | `result-track:b8ff2d818eb4b09437ed34ad26ca642de1dd3f9f436caf46d402e6529eda2495` |
| 58 | `theorem` | [Ico_add_Ico_eq_Ico](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/ico-add-ico-eq-ico--59863cf1c6d8a9675e653b5f.md) | 290 | `result-track:59863cf1c6d8a9675e653b5fc6a88be0329c9c065fac4930f4a89e7c728ab42a` |
| 59 | `theorem` | [Ico_inter_Ico](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/ico-inter-ico--50ca48c7a7281a286c73a388.md) | 295 | `result-track:50ca48c7a7281a286c73a388b9864ecf65912d118946825bc441178ea6dd5c07` |
| 60 | `theorem` | [Ico_filter_lt](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/ico-filter-lt--11252438d6be35fb4c5aa16f.md) | 299 | `result-track:11252438d6be35fb4c5aa16f61b48c9bf2d30cd34d44d99668913bef43048c64` |
| 61 | `theorem` | [Ico_filter_le](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/ico-filter-le--35392a3fffae25933212e1f9.md) | 303 | `result-track:35392a3fffae25933212e1f9e653c1073a7908826f5e99da564663d5a127bf5b` |
| 62 | `theorem` | [Ico_sub_Ico_left](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/ico-sub-ico-left--fad4874086760d84919f2791.md) | 307 | `result-track:fad4874086760d84919f27914c5869472eb3b77d12dd2f9cbc931208aeb5e173` |
| 63 | `theorem` | [Ico_sub_Ico_right](../../../../../mathematics/Topology/GeneralTopology/Multiset/Variantc655e12b1fe9d70f2549c7c036cb1d386706618df92e18ec17405402ec55ba3e.lean/declarations/ico-sub-ico-right--ab72bd2345953a1b94f46b03.md) | 311 | `result-track:ab72bd2345953a1b94f46b0370c06bdaaa90b7bfad3e7bc426211d293d5c7361` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
