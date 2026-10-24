# Verification target: GRWTSK.Algebra.UniversalAlgebra.Group.Variant2eccdada1929ab785b8803c1ee2651faf64289edf4fabe6830127ad1c25982ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e19245466941052ddaf1c5ba5bf677f864db6283",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Group/Variant2eccdada1929ab785b8803c1ee2651faf64289edf4fabe6830127ad1c25982ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant2eccdada1929ab785b8803c1ee2651faf64289edf4fabe6830127ad1c25982ba.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant2eccdada1929ab785b8803c1ee2651faf64289edf4fabe6830127ad1c25982ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e19245466941052ddaf1c5ba5bf677f864db6283`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Group/Variant2eccdada1929ab785b8803c1ee2651faf64289edf4fabe6830127ad1c25982ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Group/Variant2eccdada1929ab785b8803c1ee2651faf64289edf4fabe6830127ad1c25982ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Intervals.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Pairwise.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Abs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupPower.Lemmas` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [inv_mem_Icc_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant2eccdada1929ab785b8803c1ee2651faf64289edf4fabe6830127ad1c25982ba.lean/declarations/inv-mem-icc-iff--369fc2dc89b9693e5493bb26.md) | 28 | `result-track:369fc2dc89b9693e5493bb2610e11eea3730a36a18b4a6f657e350b5b49ed75c` |
| 2 | `theorem` | [inv_mem_Ico_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant2eccdada1929ab785b8803c1ee2651faf64289edf4fabe6830127ad1c25982ba.lean/declarations/inv-mem-ico-iff--3d1753452fcedf919c5fa8e5.md) | 34 | `result-track:3d1753452fcedf919c5fa8e5673982e5adb9e6a7b5a8553b569c3a0e00ec7cff` |
| 3 | `theorem` | [inv_mem_Ioc_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant2eccdada1929ab785b8803c1ee2651faf64289edf4fabe6830127ad1c25982ba.lean/declarations/inv-mem-ioc-iff--da4fae7d274377785daee95d.md) | 40 | `result-track:da4fae7d274377785daee95d0eff64a64cefbafcb5c3e8fde45efd81bcfa0b11` |
| 4 | `theorem` | [inv_mem_Ioo_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant2eccdada1929ab785b8803c1ee2651faf64289edf4fabe6830127ad1c25982ba.lean/declarations/inv-mem-ioo-iff--a7f9a2a482df80ce6f6fecfa.md) | 46 | `result-track:a7f9a2a482df80ce6f6fecfaef81f5bde62e0ceaaf1442b2613d48dfcb3569fe` |
| 5 | `theorem` | [add_mem_Icc_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant2eccdada1929ab785b8803c1ee2651faf64289edf4fabe6830127ad1c25982ba.lean/declarations/add-mem-icc-iff-left--f0f60c191331aeade23a7e99.md) | 61 | `result-track:f0f60c191331aeade23a7e99365e917157b5255a3113eb019d8c615a46a6b3ad` |
| 6 | `theorem` | [add_mem_Ico_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant2eccdada1929ab785b8803c1ee2651faf64289edf4fabe6830127ad1c25982ba.lean/declarations/add-mem-ico-iff-left--a0474c9275900b2c0bf44035.md) | 65 | `result-track:a0474c9275900b2c0bf440359cdf3b3a55c9d3cd72bf5600ada302514cc8c86e` |
| 7 | `theorem` | [add_mem_Ioc_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant2eccdada1929ab785b8803c1ee2651faf64289edf4fabe6830127ad1c25982ba.lean/declarations/add-mem-ioc-iff-left--6b73bfa44385f4f3f78d5e26.md) | 69 | `result-track:6b73bfa44385f4f3f78d5e2693e066af0ad2eb797474c7828036ad172f7f646d` |
| 8 | `theorem` | [add_mem_Ioo_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant2eccdada1929ab785b8803c1ee2651faf64289edf4fabe6830127ad1c25982ba.lean/declarations/add-mem-ioo-iff-left--54d5ef4f504745ddaed89d45.md) | 73 | `result-track:54d5ef4f504745ddaed89d457f035319664d5a91b5f8430d4612eeb999de823c` |
| 9 | `theorem` | [add_mem_Icc_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant2eccdada1929ab785b8803c1ee2651faf64289edf4fabe6830127ad1c25982ba.lean/declarations/add-mem-icc-iff-right--df84287fd111d0014efb2860.md) | 80 | `result-track:df84287fd111d0014efb286044bdc11cd4c1e9641d37b8eddd00f47fb430846f` |
| 10 | `theorem` | [add_mem_Ico_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant2eccdada1929ab785b8803c1ee2651faf64289edf4fabe6830127ad1c25982ba.lean/declarations/add-mem-ico-iff-right--3926be96be2019101939a93e.md) | 84 | `result-track:3926be96be2019101939a93e7a016e445898298ca8445679bb5975711d8e2f7e` |
| 11 | `theorem` | [add_mem_Ioc_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant2eccdada1929ab785b8803c1ee2651faf64289edf4fabe6830127ad1c25982ba.lean/declarations/add-mem-ioc-iff-right--7584cf8f2a49f32ec12427cc.md) | 88 | `result-track:7584cf8f2a49f32ec12427ccbacb90b991efbbdce8abc2f08e8ef89956a85fec` |
| 12 | `theorem` | [add_mem_Ioo_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant2eccdada1929ab785b8803c1ee2651faf64289edf4fabe6830127ad1c25982ba.lean/declarations/add-mem-ioo-iff-right--c9e7032e53013ad150a24074.md) | 92 | `result-track:c9e7032e53013ad150a240740935471dd3085d79eb2d4c7a12103c0340b101a3` |
| 13 | `theorem` | [sub_mem_Icc_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant2eccdada1929ab785b8803c1ee2651faf64289edf4fabe6830127ad1c25982ba.lean/declarations/sub-mem-icc-iff-left--64207b6237680a54d2b789f4.md) | 99 | `result-track:64207b6237680a54d2b789f4ad8e997d5b72248d75c353160ccab9498f510dec` |
| 14 | `theorem` | [sub_mem_Ico_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant2eccdada1929ab785b8803c1ee2651faf64289edf4fabe6830127ad1c25982ba.lean/declarations/sub-mem-ico-iff-left--a6127c87f05160c63865002d.md) | 103 | `result-track:a6127c87f05160c63865002d973a815706b359b3ecfe206575e2d46296adcca4` |
| 15 | `theorem` | [sub_mem_Ioc_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant2eccdada1929ab785b8803c1ee2651faf64289edf4fabe6830127ad1c25982ba.lean/declarations/sub-mem-ioc-iff-left--08bc6355bbe6ef60eec9b9e0.md) | 107 | `result-track:08bc6355bbe6ef60eec9b9e044f1b0713a218f8f7ba47295f0ad80895daf23ad` |
| 16 | `theorem` | [sub_mem_Ioo_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant2eccdada1929ab785b8803c1ee2651faf64289edf4fabe6830127ad1c25982ba.lean/declarations/sub-mem-ioo-iff-left--64a6d63a040f7b401254b641.md) | 111 | `result-track:64a6d63a040f7b401254b641cce3811ba2c34541b715e745853f836d7368fbec` |
| 17 | `theorem` | [sub_mem_Icc_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant2eccdada1929ab785b8803c1ee2651faf64289edf4fabe6830127ad1c25982ba.lean/declarations/sub-mem-icc-iff-right--be99eee341b72a8c90a9cde7.md) | 118 | `result-track:be99eee341b72a8c90a9cde7b9665d9385a9f0f64a3785ca32b3ceb0c8b61440` |
| 18 | `theorem` | [sub_mem_Ico_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant2eccdada1929ab785b8803c1ee2651faf64289edf4fabe6830127ad1c25982ba.lean/declarations/sub-mem-ico-iff-right--02d0f9c7e6c94698244391c8.md) | 122 | `result-track:02d0f9c7e6c94698244391c808d78ae9a6d132811b0db3615719867cdbc85653` |
| 19 | `theorem` | [sub_mem_Ioc_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant2eccdada1929ab785b8803c1ee2651faf64289edf4fabe6830127ad1c25982ba.lean/declarations/sub-mem-ioc-iff-right--97a1f131837838e703e15e17.md) | 126 | `result-track:97a1f131837838e703e15e17a644435ace86866837f4021d6e0aea5a8e80970a` |
| 20 | `theorem` | [sub_mem_Ioo_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant2eccdada1929ab785b8803c1ee2651faf64289edf4fabe6830127ad1c25982ba.lean/declarations/sub-mem-ioo-iff-right--d9a59bd70a635bd80fef8e09.md) | 130 | `result-track:d9a59bd70a635bd80fef8e095e0f62c8816cf6451acf6799f81f2440c7dad134` |
| 21 | `theorem` | [mem_Icc_iff_abs_le](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant2eccdada1929ab785b8803c1ee2651faf64289edf4fabe6830127ad1c25982ba.lean/declarations/mem-icc-iff-abs-le--b7fda2a3156a39979fc118fd.md) | 136 | `result-track:b7fda2a3156a39979fc118fdbbcc38ede36125958a407e0d4c6fd4aec9302e43` |
| 22 | `theorem` | [nonempty_Ico_sdiff](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant2eccdada1929ab785b8803c1ee2651faf64289edf4fabe6830127ad1c25982ba.lean/declarations/nonempty-ico-sdiff--e1259a24836023cfd881499c.md) | 148 | `result-track:e1259a24836023cfd881499c64c0c58ad397b763ef0ff7645c18cb41f3e3817c` |
| 23 | `theorem` | [pairwise_disjoint_Ioc_mul_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant2eccdada1929ab785b8803c1ee2651faf64289edf4fabe6830127ad1c25982ba.lean/declarations/pairwise-disjoint-ioc-mul-zpow--f13205cf18888ec1ca94b1eb.md) | 168 | `result-track:f13205cf18888ec1ca94b1eb7ccdc6d08d48800b9a44ed88dd816e10860cf9f5` |
| 24 | `theorem` | [pairwise_disjoint_Ico_mul_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant2eccdada1929ab785b8803c1ee2651faf64289edf4fabe6830127ad1c25982ba.lean/declarations/pairwise-disjoint-ico-mul-zpow--1696a6707398fcf9c1c2085a.md) | 184 | `result-track:1696a6707398fcf9c1c2085ac67cae189a36a5d7e604d31b996b97b6a82c0d9f` |
| 25 | `theorem` | [pairwise_disjoint_Ioo_mul_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant2eccdada1929ab785b8803c1ee2651faf64289edf4fabe6830127ad1c25982ba.lean/declarations/pairwise-disjoint-ioo-mul-zpow--61fb89440874704ba58820c7.md) | 200 | `result-track:61fb89440874704ba58820c716ee74fc151eb4de46f89b73270428c19de399d5` |
| 26 | `theorem` | [pairwise_disjoint_Ioc_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant2eccdada1929ab785b8803c1ee2651faf64289edf4fabe6830127ad1c25982ba.lean/declarations/pairwise-disjoint-ioc-zpow--3d86dd24754a6f23c7e1528b.md) | 207 | `result-track:3d86dd24754a6f23c7e1528b586047c5fdaf7745847fb1eae6fef068ca13a3ae` |
| 27 | `theorem` | [pairwise_disjoint_Ico_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant2eccdada1929ab785b8803c1ee2651faf64289edf4fabe6830127ad1c25982ba.lean/declarations/pairwise-disjoint-ico-zpow--65ac079c1beb6cdb02a1807c.md) | 214 | `result-track:65ac079c1beb6cdb02a1807c8aa34cb1f55d4748b24df86c726f1f8989a0048f` |
| 28 | `theorem` | [pairwise_disjoint_Ioo_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant2eccdada1929ab785b8803c1ee2651faf64289edf4fabe6830127ad1c25982ba.lean/declarations/pairwise-disjoint-ioo-zpow--a41c88eb2e3431801b3a8d95.md) | 221 | `result-track:a41c88eb2e3431801b3a8d9510f8a5d802c5bc46951747153cfea89497e6ed22` |
| 29 | `theorem` | [pairwise_disjoint_Ioc_add_int_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant2eccdada1929ab785b8803c1ee2651faf64289edf4fabe6830127ad1c25982ba.lean/declarations/pairwise-disjoint-ioc-add-int-cast--fb6cadcb9f0d4e0687eae29a.md) | 233 | `result-track:fb6cadcb9f0d4e0687eae29aec52c5e7f2a0ed095ccb64a35883d3f22f671de5` |
| 30 | `theorem` | [pairwise_disjoint_Ico_add_int_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant2eccdada1929ab785b8803c1ee2651faf64289edf4fabe6830127ad1c25982ba.lean/declarations/pairwise-disjoint-ico-add-int-cast--a8603b09376045077cf7d9c5.md) | 239 | `result-track:a8603b09376045077cf7d9c546eddbf3f32b0b586c88f1a4dd41bd764e746cf0` |
| 31 | `theorem` | [pairwise_disjoint_Ioo_add_int_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant2eccdada1929ab785b8803c1ee2651faf64289edf4fabe6830127ad1c25982ba.lean/declarations/pairwise-disjoint-ioo-add-int-cast--130150f33df53c4418596244.md) | 245 | `result-track:130150f33df53c44185962443d5310f8a24fed49b08a28d81785dd181730231c` |
| 32 | `theorem` | [pairwise_disjoint_Ico_int_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant2eccdada1929ab785b8803c1ee2651faf64289edf4fabe6830127ad1c25982ba.lean/declarations/pairwise-disjoint-ico-int-cast--cba5d15b9cfb76a8a59eaa5d.md) | 253 | `result-track:cba5d15b9cfb76a8a59eaa5d054d0101324dc0867452f989b3aa5fb15e6b450b` |
| 33 | `theorem` | [pairwise_disjoint_Ioo_int_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant2eccdada1929ab785b8803c1ee2651faf64289edf4fabe6830127ad1c25982ba.lean/declarations/pairwise-disjoint-ioo-int-cast--3a5c1446148ad38639c1400c.md) | 257 | `result-track:3a5c1446148ad38639c1400c54b293834fbee5c0a96b491896ca0b69ba61af3c` |
| 34 | `theorem` | [pairwise_disjoint_Ioc_int_cast](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant2eccdada1929ab785b8803c1ee2651faf64289edf4fabe6830127ad1c25982ba.lean/declarations/pairwise-disjoint-ioc-int-cast--79787ee0f60b93352eff45de.md) | 261 | `result-track:79787ee0f60b93352eff45dec55063747873987a555a50f488917f42a52b5a5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
