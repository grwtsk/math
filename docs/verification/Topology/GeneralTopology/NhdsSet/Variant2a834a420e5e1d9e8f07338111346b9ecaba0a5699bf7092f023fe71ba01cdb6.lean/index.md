# Verification target: GRWTSK.Topology.GeneralTopology.NhdsSet.Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "120b0f2f29753f5aed51a14c643de59efd1ec518",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `120b0f2f29753f5aed51a14c643de59efd1ec518`.

Source path: `GRWTSK/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nhdsSet_Ioi](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean/declarations/nhdsset-ioi--55a34eda66e38d94da70e0bc.md) | 32 | `result-track:55a34eda66e38d94da70e0bccb0ded8a811f8d91d2d12d1f285de34913ebb2ad` |
| 2 | `theorem` | [nhdsSet_Iio](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean/declarations/nhdsset-iio--75f0197864a9ed57fd87ea1b.md) | 33 | `result-track:75f0197864a9ed57fd87ea1b830a421a5b9cf1921da3f5be10cce5663eb3ced4` |
| 3 | `theorem` | [nhdsSet_Ioo](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean/declarations/nhdsset-ioo--ba6d18676845236f3e3f4c89.md) | 34 | `result-track:ba6d18676845236f3e3f4c89a4a37200387ef08c8f262b372c070fc61f15a368` |
| 4 | `theorem` | [nhdsSet_Ici](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean/declarations/nhdsset-ici--30bde7f97acae7506c65b5df.md) | 36 | `result-track:30bde7f97acae7506c65b5dfacf388507c5e0bd53867092cf720ea33319018d2` |
| 5 | `theorem` | [nhdsSet_Iic](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean/declarations/nhdsset-iic--909b093d1834c7d0b83574a2.md) | 39 | `result-track:909b093d1834c7d0b83574a270d1f3cdd94fbc9f990b406487ade203ea4338cd` |
| 6 | `theorem` | [nhdsSet_Ico](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean/declarations/nhdsset-ico--cb342da6fe02e2c99d12b2c9.md) | 41 | `result-track:cb342da6fe02e2c99d12b2c9540783ad526a30fd0ec206fb15bbf6958831ffb0` |
| 7 | `theorem` | [nhdsSet_Ioc](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean/declarations/nhdsset-ioc--0c5e35395dc20c846b1ed164.md) | 44 | `result-track:0c5e35395dc20c846b1ed16486291530763dd8e84211e3929ab01f5eaf4c80ab` |
| 8 | `theorem` | [nhdsSet_Icc](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean/declarations/nhdsset-icc--867785a9d0d729ba39cabed6.md) | 47 | `result-track:867785a9d0d729ba39cabed6f8a0eb17a893bbe0e9f5f40a4d23a41c393a4703` |
| 9 | `theorem` | [Ioi_mem_nhdsSet_Ici_iff](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean/declarations/ioi-mem-nhdsset-ici-iff--393e87ea81e1be93dd08bb53.md) | 57 | `result-track:393e87ea81e1be93dd08bb53ef4e3474b6cdbbe629c950b0719888e2cdebe046` |
| 10 | `theorem` | [Ici_mem_nhdsSet_Ici](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean/declarations/ici-mem-nhdsset-ici--d348774c25346bbacc94b55b.md) | 62 | `result-track:d348774c25346bbacc94b55b7580ccdff4346a2031faf287a49134ae2610faf8` |
| 11 | `theorem` | [Iio_mem_nhdsSet_Iic_iff](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean/declarations/iio-mem-nhdsset-iic-iff--edf1d4518664943ec1932b8c.md) | 69 | `result-track:edf1d4518664943ec1932b8c6a7aae78778b6a1061e9b8c27f77b2b1895237a6` |
| 12 | `theorem` | [Iic_mem_nhdsSet_Iic](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean/declarations/iic-mem-nhdsset-iic--76ec9bd4b30bc1a81d961cca.md) | 74 | `result-track:76ec9bd4b30bc1a81d961ccaf90222ba4fc64c587c7c3366fb13d969ae48ab64` |
| 13 | `theorem` | [Ioi_mem_nhdsSet_Icc](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean/declarations/ioi-mem-nhdsset-icc--951b1df242e8096cf5f49452.md) | 81 | `result-track:951b1df242e8096cf5f49452dd6900c8ee0f59424fe0225a07667797b61b2455` |
| 14 | `theorem` | [Ici_mem_nhdsSet_Icc](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean/declarations/ici-mem-nhdsset-icc--450a013668b2f21448f9bad5.md) | 84 | `result-track:450a013668b2f21448f9bad51f6330f52d057b1ee0052c1d70b9eec4957cb5da` |
| 15 | `theorem` | [Iio_mem_nhdsSet_Icc](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean/declarations/iio-mem-nhdsset-icc--1276697caada52e2cfc50733.md) | 87 | `result-track:1276697caada52e2cfc50733ce400000a8e111665b137b98584a0848811529fa` |
| 16 | `theorem` | [Iic_mem_nhdsSet_Icc](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean/declarations/iic-mem-nhdsset-icc--48d72d95f9d3a7ecf05665c1.md) | 90 | `result-track:48d72d95f9d3a7ecf05665c16060cc2e9a6d3300589337cb3e904fb8fbe8d5bb` |
| 17 | `theorem` | [Ioo_mem_nhdsSet_Icc](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean/declarations/ioo-mem-nhdsset-icc--ddc6762b288d5018854f3c21.md) | 93 | `result-track:ddc6762b288d5018854f3c21d7eaa25c70283bab3360186fa42bb7df14caeb02` |
| 18 | `theorem` | [Ico_mem_nhdsSet_Icc](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean/declarations/ico-mem-nhdsset-icc--16335ca1152533381711ed3d.md) | 96 | `result-track:16335ca1152533381711ed3d9a193ac5127b34e935ebc2490eb51512c729a058` |
| 19 | `theorem` | [Ioc_mem_nhdsSet_Icc](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean/declarations/ioc-mem-nhdsset-icc--2ab5c1ce25966f23cc9acb82.md) | 99 | `result-track:2ab5c1ce25966f23cc9acb826c4f07c2aad6ad79fa7b75dc81bd3f06d3ce3e04` |
| 20 | `theorem` | [Icc_mem_nhdsSet_Icc](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean/declarations/icc-mem-nhdsset-icc--eb7cad0b71673441a138acac.md) | 102 | `result-track:eb7cad0b71673441a138acac93ec40efc964034faedf2bd1587a7b712bfe541f` |
| 21 | `theorem` | [Ici_mem_nhdsSet_Ico](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean/declarations/ici-mem-nhdsset-ico--99a8a8cd5ebb49fd39e5a7aa.md) | 109 | `result-track:99a8a8cd5ebb49fd39e5a7aa16a46415935d70d9be6ff18788d57e5027019536` |
| 22 | `theorem` | [Ioi_mem_nhdsSet_Ico](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean/declarations/ioi-mem-nhdsset-ico--e2eadb3e4d2ab92d50ccd97d.md) | 112 | `result-track:e2eadb3e4d2ab92d50ccd97d855187a16c14c501587c1eea3723a8c8d0410f07` |
| 23 | `theorem` | [Iio_mem_nhdsSet_Ico](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean/declarations/iio-mem-nhdsset-ico--65484b4600a40087392c9384.md) | 115 | `result-track:65484b4600a40087392c9384b7c52bedf22291edc01f5cf6003d1c26cbf32ad2` |
| 24 | `theorem` | [Iic_mem_nhdsSet_Ico](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean/declarations/iic-mem-nhdsset-ico--e8f5876e25c66e4a325b162e.md) | 118 | `result-track:e8f5876e25c66e4a325b162ed032b4606ee857c61c705ea86b6e358f258cf2f5` |
| 25 | `theorem` | [Ioo_mem_nhdsSet_Ico](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean/declarations/ioo-mem-nhdsset-ico--f0f5014cdd97a82337a400c4.md) | 121 | `result-track:f0f5014cdd97a82337a400c47424742a9b2c1c67106fe058eb735d7337082b12` |
| 26 | `theorem` | [Icc_mem_nhdsSet_Ico](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean/declarations/icc-mem-nhdsset-ico--fc0f7ce428420ea19e62851a.md) | 124 | `result-track:fc0f7ce428420ea19e62851afdbb2664ea1bbc6719e83482297238a166b28fbd` |
| 27 | `theorem` | [Ioc_mem_nhdsSet_Ico](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean/declarations/ioc-mem-nhdsset-ico--3048b94729d7ae6eb1d84225.md) | 127 | `result-track:3048b94729d7ae6eb1d8422535ad0652f2a916a1deaf2f67648ccae7a1f58228` |
| 28 | `theorem` | [Ico_mem_nhdsSet_Ico](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean/declarations/ico-mem-nhdsset-ico--22550cf01f3df0e442e3aa56.md) | 130 | `result-track:22550cf01f3df0e442e3aa5603f6f6cce49b5f1f0e9f492473bd17d79b1e9e58` |
| 29 | `theorem` | [Ioi_mem_nhdsSet_Ioc](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean/declarations/ioi-mem-nhdsset-ioc--68ceec927c031b5b3e0dc55c.md) | 137 | `result-track:68ceec927c031b5b3e0dc55ca73ffee2aeedf17011d2dd81e4e042560639d206` |
| 30 | `theorem` | [Iio_mem_nhdsSet_Ioc](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean/declarations/iio-mem-nhdsset-ioc--60b6eba69041976e881659ac.md) | 140 | `result-track:60b6eba69041976e881659ac54f7086e0d73e7c5a0e433fb50f0611d3cae04cd` |
| 31 | `theorem` | [Ici_mem_nhdsSet_Ioc](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean/declarations/ici-mem-nhdsset-ioc--34756c7fc1c8173918673d29.md) | 143 | `result-track:34756c7fc1c8173918673d29e7d08352768a09ed446fde088e81e9b70d4e8549` |
| 32 | `theorem` | [Iic_mem_nhdsSet_Ioc](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean/declarations/iic-mem-nhdsset-ioc--dd034c28a926f17d99a614aa.md) | 146 | `result-track:dd034c28a926f17d99a614aac2fc16c28e3e6a30195e93a8b99bdb5856cde45f` |
| 33 | `theorem` | [Ioo_mem_nhdsSet_Ioc](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean/declarations/ioo-mem-nhdsset-ioc--8524addfc30eeffd2f809f33.md) | 149 | `result-track:8524addfc30eeffd2f809f33b0dd7ca4b7f45b92375e4d2d7bfc135a44ea2a18` |
| 34 | `theorem` | [Icc_mem_nhdsSet_Ioc](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean/declarations/icc-mem-nhdsset-ioc--d5c2a02a295e91d1c451af20.md) | 152 | `result-track:d5c2a02a295e91d1c451af2038018733be4f0558141105d602e2fd8279296ef0` |
| 35 | `theorem` | [Ioc_mem_nhdsSet_Ioc](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean/declarations/ioc-mem-nhdsset-ioc--d49725ecec10a40e6abe7f0d.md) | 155 | `result-track:d49725ecec10a40e6abe7f0db38a5dc5fbad795761214c441fe6d9a035ca422e` |
| 36 | `theorem` | [Ico_mem_nhdsSet_Ioc](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean/declarations/ico-mem-nhdsset-ioc--7bcada2b6d6716b084c49fcc.md) | 158 | `result-track:7bcada2b6d6716b084c49fcce7c5cf9f9306139fb8006034ee0076617c92ecb5` |
| 37 | `theorem` | [hasBasis_nhdsSet_Iic_Iio](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean/declarations/hasbasis-nhdsset-iic-iio--86dabb7087a6d933efdd9313.md) | 169 | `result-track:86dabb7087a6d933efdd9313830f48c1062dc3cafced40aa5799436467a01cec` |
| 38 | `theorem` | [hasBasis_nhdsSet_Iic_Iic](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean/declarations/hasbasis-nhdsset-iic-iic--0709754e854116bc6b5ddf15.md) | 176 | `result-track:0709754e854116bc6b5ddf156ef09511861f2fdce4c5b3866ba70e784fe65572` |
| 39 | `theorem` | [Iic_mem_nhdsSet_Iic_iff](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean/declarations/iic-mem-nhdsset-iic-iff--27e16aa9dcd965df0dc9bf49.md) | 185 | `result-track:27e16aa9dcd965df0dc9bf49190fcedd41fbba6349a9db4ded81b1f7cc35e173` |
| 40 | `theorem` | [hasBasis_nhdsSet_Ici_Ioi](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean/declarations/hasbasis-nhdsset-ici-ioi--7ffbe0a7a24a75a2c55934c0.md) | 189 | `result-track:7ffbe0a7a24a75a2c55934c0be74c66b06070d3957f7c0f46c8bc62b09bb1c25` |
| 41 | `theorem` | [hasBasis_nhdsSet_Ici_Ici](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean/declarations/hasbasis-nhdsset-ici-ici--35817045ee9e6d2694a383a7.md) | 193 | `result-track:35817045ee9e6d2694a383a75ba306c63288f937ff2ac3a5d2f552ca5d9bf3bf` |
| 42 | `theorem` | [Ici_mem_nhdsSet_Ici_iff](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variant2a834a420e5e1d9e8f07338111346b9ecaba0a5699bf7092f023fe71ba01cdb6.lean/declarations/ici-mem-nhdsset-ici-iff--6926b05d9b22069eaaf06805.md) | 198 | `result-track:6926b05d9b22069eaaf068056d50c07e25554c08f56327d06f99e5b73000290c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
