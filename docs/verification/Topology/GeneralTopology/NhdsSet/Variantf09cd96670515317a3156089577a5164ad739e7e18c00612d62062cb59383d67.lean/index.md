# Verification target: GRWTSK.Topology.GeneralTopology.NhdsSet.Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6a2abd50e2956e2312319f597691c068359462d",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6a2abd50e2956e2312319f597691c068359462d`.

Source path: `GRWTSK/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Neighborhoods` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nhdsSet_diagonal](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean/declarations/nhdsset-diagonal--8d716602a0297c1c6f5809bd.md) | 33 | `result-track:8d716602a0297c1c6f5809bd59a7cb6c7866c2ffecfe40fc6c9c66e409328bb9` |
| 2 | `theorem` | [mem_nhdsSet_iff_forall](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean/declarations/mem-nhdsset-iff-forall--4aadb1ccbd5607caa3f60ce8.md) | 38 | `result-track:4aadb1ccbd5607caa3f60ce84df368400704c3b0fe5d36f725772c4e7290afdf` |
| 3 | `lemma` | [nhdsSet_le](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean/declarations/nhdsset-le--2b4ac4dda796b28241e01b78.md) | 41 | `result-track:2b4ac4dda796b28241e01b788efd542e1f9ad32b9c9e62860f6de1fd19e2e35d` |
| 4 | `theorem` | [bUnion_mem_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean/declarations/bunion-mem-nhdsset--71a7f1d99b46bb14852e8ece.md) | 43 | `result-track:71a7f1d99b46bb14852e8ece553ca328eb806bf63ae9f4abf481fdb9706b54fd` |
| 5 | `theorem` | [subset_interior_iff_mem_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean/declarations/subset-interior-iff-mem-nhdsset--70a02128561777af6deda244.md) | 47 | `result-track:70a02128561777af6deda24422bb19f38cd7ff9baf65c72354128701022d605a` |
| 6 | `theorem` | [disjoint_principal_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean/declarations/disjoint-principal-nhdsset--0644a1c4c8cd9b670392dc73.md) | 50 | `result-track:0644a1c4c8cd9b670392dc73bfbf7d714f4edeedbbf9dbf1d7d3314bdbc6448c` |
| 7 | `theorem` | [disjoint_nhdsSet_principal](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean/declarations/disjoint-nhdsset-principal--512f52092981c376246a06e6.md) | 54 | `result-track:512f52092981c376246a06e6e5a7e5ec6ba752b9b0eb39e09589387fd92b0213` |
| 8 | `theorem` | [mem_nhdsSet_iff_exists](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean/declarations/mem-nhdsset-iff-exists--17e8207cced957b7c6c68e34.md) | 57 | `result-track:17e8207cced957b7c6c68e34a6fa84cc148036392bee920112f701619ce9fe70` |
| 9 | `theorem` | [eventually_nhdsSet_iff_exists](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean/declarations/eventually-nhdsset-iff-exists--c67e7be7f069ea467fdc7680.md) | 61 | `result-track:c67e7be7f069ea467fdc768078795fdf3608e9d5e39808f5bae617e0c757f502` |
| 10 | `theorem` | [eventually_nhdsSet_iff_forall](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean/declarations/eventually-nhdsset-iff-forall--658eb3a0d8fc59a134fbf73b.md) | 67 | `result-track:658eb3a0d8fc59a134fbf73bde9ee165b872ed410fb66e95c4b23cc5c25b7501` |
| 11 | `theorem` | [hasBasis_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean/declarations/hasbasis-nhdsset--c54ec42579b7fd86af9cfbda.md) | 71 | `result-track:c54ec42579b7fd86af9cfbda1b2d1e0c9cd888ee2e8ba162f8d7df01fbd6779f` |
| 12 | `lemma` | [lift'_nhdsSet_interior](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean/declarations/lift-nhdsset-interior--7b331ee6df4c66e1b75ce73b.md) | 75 | `result-track:7b331ee6df4c66e1b75ce73bc09b51775521c2d61c0894bdea6f17998365a51d` |
| 13 | `lemma` | [Filter.HasBasis.nhdsSet_interior](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean/declarations/filter-hasbasis-nhdsset-interior--ff9690c40609cdc562f44740.md) | 78 | `result-track:ff9690c40609cdc562f4474037cd596a8d591de29c5215028d0298aaed45564e` |
| 14 | `theorem` | [IsOpen.mem_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean/declarations/isopen-mem-nhdsset--7477483cfb8d745676c51088.md) | 82 | `result-track:7477483cfb8d745676c51088809c0a52a98621a06ac6c2dbbf477a4c4451eeaf` |
| 15 | `theorem` | [IsOpen.mem_nhdsSet_self](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean/declarations/isopen-mem-nhdsset-self--519273818870c7d7acdd3888.md) | 86 | `result-track:519273818870c7d7acdd3888ffc9f8c063c17b0c2484dbfc877391bc945af89f` |
| 16 | `theorem` | [principal_le_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean/declarations/principal-le-nhdsset--d23b3f3c776e2244ca0f3836.md) | 88 | `result-track:d23b3f3c776e2244ca0f38368e10f1359eb2931afb479a87eabe19f5c0bc5f0d` |
| 17 | `theorem` | [subset_of_mem_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean/declarations/subset-of-mem-nhdsset--76ca8da0ac01ed8228136f12.md) | 91 | `result-track:76ca8da0ac01ed8228136f12081f0d1ea1d8907ef46677a68a86c75529742535` |
| 18 | `theorem` | [Filter.Eventually.self_of_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean/declarations/filter-eventually-self-of-nhdsset--224eac09d7fedd01c65e84ae.md) | 93 | `result-track:224eac09d7fedd01c65e84ae02a889bc35b8aa13caf8ddd4a92b7a20dc85d2ad` |
| 19 | `theorem` | [Filter.EventuallyEq.self_of_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean/declarations/filter-eventuallyeq-self-of-nhdsset--c86edb08aa314bdc6be691a4.md) | 96 | `result-track:c86edb08aa314bdc6be691a49e31e927cb3c0152dcaf3598646c5380789a86dd` |
| 20 | `theorem` | [nhdsSet_eq_principal_iff](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean/declarations/nhdsset-eq-principal-iff--a1930d95cec583627c9ef248.md) | 101 | `result-track:a1930d95cec583627c9ef2487930477d0c3612f1ac74db638f2e788533087757` |
| 21 | `theorem` | [nhdsSet_interior](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean/declarations/nhdsset-interior--33be0064759a807d4d72668e.md) | 108 | `result-track:33be0064759a807d4d72668ee2a094551f3c12df092bbfceb3475981790f7bc1` |
| 22 | `theorem` | [nhdsSet_singleton](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean/declarations/nhdsset-singleton--0cde1a5eafb1c164b607b6d7.md) | 112 | `result-track:0cde1a5eafb1c164b607b6d7e91d4a49642682bc9777201ecd45221bb0c3a616` |
| 23 | `theorem` | [mem_nhdsSet_interior](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean/declarations/mem-nhdsset-interior--3375eb5de71c1e95c96bea6d.md) | 114 | `result-track:3375eb5de71c1e95c96bea6dd03bc84dddbfab330a7459765b7a2ce54ec6ec32` |
| 24 | `theorem` | [nhdsSet_empty](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean/declarations/nhdsset-empty--8f7bdc47bd681493579a00fb.md) | 118 | `result-track:8f7bdc47bd681493579a00fb92f6ebbe9f79f6aa5e6e7dd271fb88439fe5a2bb` |
| 25 | `theorem` | [mem_nhdsSet_empty](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean/declarations/mem-nhdsset-empty--91d8f63df28ce8c25fb5838f.md) | 120 | `result-track:91d8f63df28ce8c25fb5838fd275811f99806abb6c5bfc7300c5a1dbd9b2e7e1` |
| 26 | `theorem` | [nhdsSet_univ](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean/declarations/nhdsset-univ--87ca313ed9d86e580a6dd7b6.md) | 123 | `result-track:87ca313ed9d86e580a6dd7b69b90e80776cf0fcb450f4e3c3c5672793cbc5aae` |
| 27 | `theorem` | [nhdsSet_mono](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean/declarations/nhdsset-mono--21f737fffb3fdd093351047b.md) | 126 | `result-track:21f737fffb3fdd093351047b392ac2e7c6f24bb6981e3212f8c80ff916443f7f` |
| 28 | `theorem` | [monotone_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean/declarations/monotone-nhdsset--6ae284566d74e2f6e5ac9451.md) | 129 | `result-track:6ae284566d74e2f6e5ac94513d323b3e13482ed3d8fa6b43cada71d8ac3ac27e` |
| 29 | `theorem` | [nhds_le_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean/declarations/nhds-le-nhdsset--897a82e6ec5029d1a0859c02.md) | 131 | `result-track:897a82e6ec5029d1a0859c02234f7ae99791bc99d37ddd94254f519de2658222` |
| 30 | `theorem` | [nhdsSet_union](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean/declarations/nhdsset-union--14d5d0541f4d0dd7187bb419.md) | 135 | `result-track:14d5d0541f4d0dd7187bb419c3299424e59a2b45b1cf3dde10468afb52feb353` |
| 31 | `theorem` | [union_mem_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean/declarations/union-mem-nhdsset--10226c493f9320ef1d521e22.md) | 138 | `result-track:10226c493f9320ef1d521e2254d5c15360c6b8b4e7c93f73b4cdd24d0fd82f9e` |
| 32 | `theorem` | [nhdsSet_insert](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean/declarations/nhdsset-insert--8c8586efbf3bba0bb2436326.md) | 143 | `result-track:8c8586efbf3bba0bb2436326843d2c71f99b8eef78eb8258fd623d3e6700fdbe` |
| 33 | `theorem` | [nhdsSet_inter_le](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean/declarations/nhdsset-inter-le--9a1c54a7bdf6b82c0b8edf1f.md) | 149 | `result-track:9a1c54a7bdf6b82c0b8edf1fe34de0a423399f83cb1efd6c992ec8ea4f9df15e` |
| 34 | `theorem` | [nhdsSet_iInter_le](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean/declarations/nhdsset-iinter-le--88c510c584956152ad46c753.md) | 152 | `result-track:88c510c584956152ad46c753a78075b39fd0c50c5254386d095c608f5b0adca6` |
| 35 | `theorem` | [nhdsSet_sInter_le](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean/declarations/nhdsset-sinter-le--4f183916baaaa9326ade8d63.md) | 155 | `result-track:4f183916baaaa9326ade8d63024cbf86507012f07d33e57b22dc6c11e811fcd5` |
| 36 | `theorem` | [IsClosed.nhdsSet_le_sup](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean/declarations/isclosed-nhdsset-le-sup--301d88b4e7c039f2b32f30c3.md) | 159 | `result-track:301d88b4e7c039f2b32f30c31fc09834770c39c6bd285e8fc7191679b744851d` |
| 37 | `theorem` | [IsClosed.nhdsSet_le_sup'](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean/declarations/isclosed-nhdsset-le-sup--cc9fdac7496e2606d38b1b74.md) | 167 | `result-track:cc9fdac7496e2606d38b1b744584a0e055821f21965ac35da21492274ac84502` |
| 38 | `theorem` | [Filter.Eventually.eventually_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean/declarations/filter-eventually-eventually-nhdsset--4f89326a98cb24a5125e1d7f.md) | 170 | `result-track:4f89326a98cb24a5125e1d7f63118f9eae5ce8de187065ad7bb1ad1d0657f7a5` |
| 39 | `theorem` | [Filter.Eventually.union_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean/declarations/filter-eventually-union-nhdsset--8428785a4eef647955e4a0f2.md) | 175 | `result-track:8428785a4eef647955e4a0f2d10bd705cb28fba9542816a73f575a70a8ab9761` |
| 40 | `theorem` | [Filter.Eventually.union](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean/declarations/filter-eventually-union--c1038d9c16e336468797a0f6.md) | 179 | `result-track:c1038d9c16e336468797a0f643d197b083cd2b26ad32227086ba4715569fa5cc` |
| 41 | `theorem` | [nhdsSet_iUnion](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean/declarations/nhdsset-iunion--6c19ce5bf48f893cab3e1809.md) | 183 | `result-track:6c19ce5bf48f893cab3e18099acd564f8573149a9ddce0703ec1a2963ed718b2` |
| 42 | `theorem` | [eventually_nhdsSet_iUnion₂](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean/declarations/eventually-nhdsset-iunion--6192a6624ebc6066248892d5.md) | 186 | `result-track:6192a6624ebc6066248892d5c66811466200cc380494996e6c5f0c11322c27aa` |
| 43 | `theorem` | [eventually_nhdsSet_iUnion](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantf09cd96670515317a3156089577a5164ad739e7e18c00612d62062cb59383d67.lean/declarations/eventually-nhdsset-iunion--05eb08086d6d474237c12104.md) | 190 | `result-track:05eb08086d6d474237c12104950a8786a3c099a9d6d711855efe987c0a2271e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
