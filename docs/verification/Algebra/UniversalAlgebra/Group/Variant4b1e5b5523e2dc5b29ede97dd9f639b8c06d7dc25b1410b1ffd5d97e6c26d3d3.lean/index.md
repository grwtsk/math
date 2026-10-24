# Verification target: GRWTSK.Algebra.UniversalAlgebra.Group.Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b79b43e87a5b21cd41d1167ab6b5dca7539ce14",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b79b43e87a5b21cd41d1167ab6b5dca7539ce14`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Abs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Pairwise` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [inv_mem_Icc_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean/declarations/inv-mem-icc-iff--f8cfd31ff546d9e4ef7132f1.md) | 27 | `result-track:f8cfd31ff546d9e4ef7132f1cce19a04695343d59da704c1a84939c9bb057361` |
| 2 | `theorem` | [inv_mem_Ico_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean/declarations/inv-mem-ico-iff--f966061f381f0c6207ffc9fc.md) | 31 | `result-track:f966061f381f0c6207ffc9fc87c44e7e5dce82c353b844a3721c4a38627a5ed2` |
| 3 | `theorem` | [inv_mem_Ioc_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean/declarations/inv-mem-ioc-iff--d3d242ceef13320610906843.md) | 35 | `result-track:d3d242ceef1332061090684337dc1be913adb659db8add794bb57878390a323c` |
| 4 | `theorem` | [inv_mem_Ioo_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean/declarations/inv-mem-ioo-iff--052e5ee4e3a6f2ff28995f19.md) | 39 | `result-track:052e5ee4e3a6f2ff28995f19f1049d91bff43d9fd6b8806bf6d48da902ca6308` |
| 5 | `theorem` | [add_mem_Icc_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean/declarations/add-mem-icc-iff-left--dd1c99ed22a81bd228bd2460.md) | 50 | `result-track:dd1c99ed22a81bd228bd24606e3448cdde24537fbe2632a621a7479d9625ed4d` |
| 6 | `theorem` | [add_mem_Ico_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean/declarations/add-mem-ico-iff-left--ea474d46a5fbf5ae7bd4a381.md) | 53 | `result-track:ea474d46a5fbf5ae7bd4a3814866012ff59a23e4de228805bddace62b2db7bf5` |
| 7 | `theorem` | [add_mem_Ioc_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean/declarations/add-mem-ioc-iff-left--889d0bf57b71c9839a60f569.md) | 56 | `result-track:889d0bf57b71c9839a60f569d2254ae75efa918816f3b462cc4b5fe836f444a7` |
| 8 | `theorem` | [add_mem_Ioo_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean/declarations/add-mem-ioo-iff-left--231c71f2f0cf3cf7613f2ee5.md) | 59 | `result-track:231c71f2f0cf3cf7613f2ee586dc7b382bfcda9c1e4dfa5a5bba8cb8ead0e406` |
| 9 | `theorem` | [add_mem_Icc_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean/declarations/add-mem-icc-iff-right--800e9cb0abaf6938543d0812.md) | 64 | `result-track:800e9cb0abaf6938543d08128e0e1a700cac1f634beead5f2084da5f67759bb4` |
| 10 | `theorem` | [add_mem_Ico_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean/declarations/add-mem-ico-iff-right--8293c83cca704d5dc6592278.md) | 67 | `result-track:8293c83cca704d5dc6592278cd124061d1c4309c118dcbf9e2cd86a564fddf6e` |
| 11 | `theorem` | [add_mem_Ioc_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean/declarations/add-mem-ioc-iff-right--6612241251550efdbb0003b8.md) | 70 | `result-track:6612241251550efdbb0003b8a601d6cfd603576374489a301b419a72f2b1ca14` |
| 12 | `theorem` | [add_mem_Ioo_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean/declarations/add-mem-ioo-iff-right--aeade74ea01202022a0a5fcf.md) | 73 | `result-track:aeade74ea01202022a0a5fcf49b04a87cc7242bc6f77c7f12f63935b5bf2c694` |
| 13 | `theorem` | [sub_mem_Icc_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean/declarations/sub-mem-icc-iff-left--a0e646b511e4cc62d3599cc4.md) | 78 | `result-track:a0e646b511e4cc62d3599cc4d3749134598a56c6921a3b2f88990c34627e0b5f` |
| 14 | `theorem` | [sub_mem_Ico_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean/declarations/sub-mem-ico-iff-left--7228518fe92d38147f474e76.md) | 81 | `result-track:7228518fe92d38147f474e767433154200aec15c1c89b1b9fa16e80c282fef6f` |
| 15 | `theorem` | [sub_mem_Ioc_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean/declarations/sub-mem-ioc-iff-left--637ef4d784b7c69016883d5c.md) | 84 | `result-track:637ef4d784b7c69016883d5c9543ef8c2502bfa14fe1d0b71a0023f8365d4d8d` |
| 16 | `theorem` | [sub_mem_Ioo_iff_left](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean/declarations/sub-mem-ioo-iff-left--1065bb0fb859fa4b5ba76f46.md) | 87 | `result-track:1065bb0fb859fa4b5ba76f4660ccd738e1c545ca78e2ac05dee0d8e3179930e6` |
| 17 | `theorem` | [sub_mem_Icc_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean/declarations/sub-mem-icc-iff-right--ec199a8106e10bea4c2272aa.md) | 92 | `result-track:ec199a8106e10bea4c2272aa7504cce1859611f055343ab70444a2c5307c802a` |
| 18 | `theorem` | [sub_mem_Ico_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean/declarations/sub-mem-ico-iff-right--aaa4ab46e4a8cea7719f9779.md) | 95 | `result-track:aaa4ab46e4a8cea7719f97794e86e3935a9074517f22e028017ccb9844d5f6b3` |
| 19 | `theorem` | [sub_mem_Ioc_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean/declarations/sub-mem-ioc-iff-right--e7537fe428d0667ebaa675f9.md) | 98 | `result-track:e7537fe428d0667ebaa675f9d348188def71a6aee1a16a1b43804ccec8836f6c` |
| 20 | `theorem` | [sub_mem_Ioo_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean/declarations/sub-mem-ioo-iff-right--53ca2decd768efa0301d2dbf.md) | 101 | `result-track:53ca2decd768efa0301d2dbfcd5144f7d04cb2f1d056284954894e0e19ae7d3c` |
| 21 | `theorem` | [mem_Icc_iff_abs_le](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean/declarations/mem-icc-iff-abs-le--ce4c3be3edfa77da4bf2f4ec.md) | 106 | `result-track:ce4c3be3edfa77da4bf2f4ec975beaebe8d6fe3065f6635df2bc9d8bf20247e8` |
| 22 | `theorem` | [sub_mem_Icc_zero_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean/declarations/sub-mem-icc-zero-iff-right--606486da2e783364cd8c1aaa.md) | 114 | `result-track:606486da2e783364cd8c1aaa8397134f30f6869b49cf924d750cd58515f4b07e` |
| 23 | `theorem` | [sub_mem_Ico_zero_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean/declarations/sub-mem-ico-zero-iff-right--43052f45afe80a27a8fdd24a.md) | 117 | `result-track:43052f45afe80a27a8fdd24aaa409652b2d7618e308cbdadf6d9fe683b3efad9` |
| 24 | `theorem` | [sub_mem_Ioc_zero_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean/declarations/sub-mem-ioc-zero-iff-right--58c9daf476ad4fbd5d85e0e1.md) | 120 | `result-track:58c9daf476ad4fbd5d85e0e14202d34a8f0b1bb7b5f386c1bdbfef4496a36639` |
| 25 | `theorem` | [sub_mem_Ioo_zero_iff_right](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean/declarations/sub-mem-ioo-zero-iff-right--6d2b7975d0ffce9d4b99b0d8.md) | 123 | `result-track:6d2b7975d0ffce9d4b99b0d826fa4d18abe072b170dfddff561561d64cbd5233` |
| 26 | `theorem` | [nonempty_Ico_sdiff](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean/declarations/nonempty-ico-sdiff--bd335237467485d6c30b13b7.md) | 133 | `result-track:bd335237467485d6c30b13b7715c2ee52b5e477118350f7be5c718c9eb5e59f1` |
| 27 | `theorem` | [pairwise_disjoint_Ioc_mul_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean/declarations/pairwise-disjoint-ioc-mul-zpow--756b81a12512ebf01ac2ea5e.md) | 153 | `result-track:756b81a12512ebf01ac2ea5e063ed339ab814b4f52b894abec0377ac43f564eb` |
| 28 | `theorem` | [pairwise_disjoint_Ico_mul_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean/declarations/pairwise-disjoint-ico-mul-zpow--7d72e890a24cfaa8af447a12.md) | 168 | `result-track:7d72e890a24cfaa8af447a12d20758a99836e7917a37c804865dcde0c03c8c06` |
| 29 | `theorem` | [pairwise_disjoint_Ioo_mul_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean/declarations/pairwise-disjoint-ioo-mul-zpow--91b834500fe72f315357b769.md) | 183 | `result-track:91b834500fe72f315357b769833554360c130f93bd7fa2a604b4930bc5fcfd3c` |
| 30 | `theorem` | [pairwise_disjoint_Ioc_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean/declarations/pairwise-disjoint-ioc-zpow--452693b185b4c598a682a895.md) | 188 | `result-track:452693b185b4c598a682a895d86db7fa50a354f4e1e0ad9598e7d29efeb0014f` |
| 31 | `theorem` | [pairwise_disjoint_Ico_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean/declarations/pairwise-disjoint-ico-zpow--241d48ce8e039f973c38d56f.md) | 193 | `result-track:241d48ce8e039f973c38d56fae7a50d15ee57b54e4f7b661a589893c3ad95c79` |
| 32 | `theorem` | [pairwise_disjoint_Ioo_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean/declarations/pairwise-disjoint-ioo-zpow--eb77d328383520dcb9cdf823.md) | 198 | `result-track:eb77d328383520dcb9cdf8231702cbd7fc671aaf815c0ee023804e7849af1c0b` |
| 33 | `theorem` | [pairwise_disjoint_Ioc_add_intCast](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean/declarations/pairwise-disjoint-ioc-add-intcast--51088021ab72cc5d9dbc4cb1.md) | 208 | `result-track:51088021ab72cc5d9dbc4cb18e0b29b04ee8a81962a84c2d34834f386a11647d` |
| 34 | `theorem` | [pairwise_disjoint_Ico_add_intCast](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean/declarations/pairwise-disjoint-ico-add-intcast--476f8efb0032a2bcc913bea0.md) | 213 | `result-track:476f8efb0032a2bcc913bea0d26510fdc1e3e3796414601172ce5e65659d3a0c` |
| 35 | `theorem` | [pairwise_disjoint_Ioo_add_intCast](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean/declarations/pairwise-disjoint-ioo-add-intcast--edda2178e684b6f04eddc17a.md) | 218 | `result-track:edda2178e684b6f04eddc17acc892d94052cb9a80e2a999245a4b2867960424f` |
| 36 | `theorem` | [pairwise_disjoint_Ico_intCast](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean/declarations/pairwise-disjoint-ico-intcast--26c8428d5ce24db5b7ea97cd.md) | 225 | `result-track:26c8428d5ce24db5b7ea97cd7e654ed79b0b040051ec8323a6e2820f7102a8a7` |
| 37 | `theorem` | [pairwise_disjoint_Ioo_intCast](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean/declarations/pairwise-disjoint-ioo-intcast--973e70339425f461f321d7bf.md) | 229 | `result-track:973e70339425f461f321d7bff3db623c25bae2921713a88bf4180ab5338c6b9e` |
| 38 | `theorem` | [pairwise_disjoint_Ioc_intCast](../../../../../mathematics/Algebra/UniversalAlgebra/Group/Variant4b1e5b5523e2dc5b29ede97dd9f639b8c06d7dc25b1410b1ffd5d97e6c26d3d3.lean/declarations/pairwise-disjoint-ioc-intcast--06feb4182cd307669774a6dd.md) | 232 | `result-track:06feb4182cd307669774a6dd920a9d554f7aee2ddebb8d536967ed02aa0a44b6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
