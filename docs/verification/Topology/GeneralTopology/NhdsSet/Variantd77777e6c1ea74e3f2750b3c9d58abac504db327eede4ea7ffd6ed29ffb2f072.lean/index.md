# Verification target: GRWTSK.Topology.GeneralTopology.NhdsSet.Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b1d2b8e4818d0b52fbf66411b604791b1c45d5b",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b1d2b8e4818d0b52fbf66411b604791b1c45d5b`.

Source path: `GRWTSK/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean.json)

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
| 1 | `theorem` | [nhdsSet_diagonal](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/declarations/nhdsset-diagonal--71c3f1fffe8ce7fc7013e412.md) | 40 | `result-track:71c3f1fffe8ce7fc7013e4128f11a5262b8cb9291ca943061f25651cd9ad46a7` |
| 2 | `theorem` | [mem_nhdsSet_iff_forall](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/declarations/mem-nhdsset-iff-forall--1e723a73e776a07c89d8f5b5.md) | 45 | `result-track:1e723a73e776a07c89d8f5b5cacbc17269fc0f2f0fc972e970cdd9ce3540721f` |
| 3 | `lemma` | [nhdsSet_le](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/declarations/nhdsset-le--85d690780ae21dd1a56a6404.md) | 48 | `result-track:85d690780ae21dd1a56a6404ec8726c78496e535263d995d47bcd1508fb1039f` |
| 4 | `theorem` | [bUnion_mem_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/declarations/bunion-mem-nhdsset--9fc0ddef38aa723b8adc3c0f.md) | 50 | `result-track:9fc0ddef38aa723b8adc3c0f74faf9436fa08a75e15dc00f6c89765152f46ef8` |
| 5 | `theorem` | [subset_interior_iff_mem_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/declarations/subset-interior-iff-mem-nhdsset--6bd66726ae6421d1b7a49bfd.md) | 54 | `result-track:6bd66726ae6421d1b7a49bfdd6feaba0100ae572ac751e9f1a7db76702f842cf` |
| 6 | `theorem` | [disjoint_principal_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/declarations/disjoint-principal-nhdsset--6b850b0ef0cde71551292cad.md) | 57 | `result-track:6b850b0ef0cde71551292cad86127338172f254cc03e9f94550388a4f005d288` |
| 7 | `theorem` | [disjoint_nhdsSet_principal](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/declarations/disjoint-nhdsset-principal--ba024ac74eb6ea926dd315bc.md) | 61 | `result-track:ba024ac74eb6ea926dd315bceb518637cb6c3f44159246b9384f3b046d3bdcad` |
| 8 | `theorem` | [mem_nhdsSet_iff_exists](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/declarations/mem-nhdsset-iff-exists--cd90fffcbacda77fbd74c30c.md) | 64 | `result-track:cd90fffcbacda77fbd74c30c43f76ecc284c51a9eb46e2e103c5b34b1fa6bf99` |
| 9 | `theorem` | [eventually_nhdsSet_iff_exists](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/declarations/eventually-nhdsset-iff-exists--c827b032b1e6269dd43d9a61.md) | 68 | `result-track:c827b032b1e6269dd43d9a61a79a2a0560c9c2b5e6ca359e1e59499c0a3fca37` |
| 10 | `theorem` | [eventually_nhdsSet_iff_forall](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/declarations/eventually-nhdsset-iff-forall--adf8e3c737a48b0fa48c5392.md) | 74 | `result-track:adf8e3c737a48b0fa48c5392f4c24177a2de94c4d19d0d83204716d3eb16394f` |
| 11 | `theorem` | [hasBasis_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/declarations/hasbasis-nhdsset--acea4ab52a45bced1837392b.md) | 78 | `result-track:acea4ab52a45bced1837392bd3173ebcbb05695df02b7587a5f6c8ce5daf5123` |
| 12 | `lemma` | [lift'_nhdsSet_interior](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/declarations/lift-nhdsset-interior--853e7dc30fc0c1a4d6a9caf9.md) | 82 | `result-track:853e7dc30fc0c1a4d6a9caf940a8bb9d4fde18817af67f77b9c9d4c73bf275dc` |
| 13 | `lemma` | [Filter.HasBasis.nhdsSet_interior](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/declarations/filter-hasbasis-nhdsset-interior--060ce646e80fa7f563f788d8.md) | 85 | `result-track:060ce646e80fa7f563f788d8e70781e66c0b7a6e613506a111df4830e5139cce` |
| 14 | `theorem` | [IsOpen.mem_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/declarations/isopen-mem-nhdsset--b05021674afdf45fea791d79.md) | 89 | `result-track:b05021674afdf45fea791d7922f0ac06d706301c44c52df83d0dcfbebeec539a` |
| 15 | `theorem` | [IsOpen.mem_nhdsSet_self](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/declarations/isopen-mem-nhdsset-self--e59d171aaf06e64f8d8e9820.md) | 93 | `result-track:e59d171aaf06e64f8d8e98205d4eb3fc9e052d2e64f4bd550fcaa318e58e5ee0` |
| 16 | `theorem` | [principal_le_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/declarations/principal-le-nhdsset--ce7c563fa597f256a2b18fc3.md) | 95 | `result-track:ce7c563fa597f256a2b18fc3622f1446c09aa9aad047b40bf0237124dd341b5c` |
| 17 | `theorem` | [subset_of_mem_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/declarations/subset-of-mem-nhdsset--7c3d10957a21ece0d29e4fe0.md) | 98 | `result-track:7c3d10957a21ece0d29e4fe0f68e8d90880ca6ed9ee35cded725c36dc52c161e` |
| 18 | `theorem` | [Filter.Eventually.self_of_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/declarations/filter-eventually-self-of-nhdsset--98d167d0b8ea16199ea0d4bc.md) | 100 | `result-track:98d167d0b8ea16199ea0d4bcefd159d5399b0d31c823cadaadf8fd830a1db067` |
| 19 | `theorem` | [Filter.EventuallyEq.self_of_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/declarations/filter-eventuallyeq-self-of-nhdsset--bb4d3e92bb6e8aa7241b1fe3.md) | 103 | `result-track:bb4d3e92bb6e8aa7241b1fe34f4c97b13da68a40b41f24a61b63ab3d11df7e97` |
| 20 | `theorem` | [nhdsSet_eq_principal_iff](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/declarations/nhdsset-eq-principal-iff--094b317f29a16030ee400c41.md) | 108 | `result-track:094b317f29a16030ee400c412f27e982edbfbe8f717c3096440534fbb5099940` |
| 21 | `theorem` | [nhdsSet_interior](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/declarations/nhdsset-interior--bfd771b6fd0c9b52e64d602c.md) | 115 | `result-track:bfd771b6fd0c9b52e64d602c3f6fca5c0a01b81073d7c6329ce590c6ca4d50d7` |
| 22 | `theorem` | [nhdsSet_singleton](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/declarations/nhdsset-singleton--bad4841e948b6e22dde46716.md) | 119 | `result-track:bad4841e948b6e22dde46716d8bffe45753f847468aa2c1893a626b58fe1a532` |
| 23 | `theorem` | [mem_nhdsSet_interior](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/declarations/mem-nhdsset-interior--5f5864d6030f98e225f42911.md) | 121 | `result-track:5f5864d6030f98e225f42911323f4b7a4827ead5d7ae5600454cba9d5109c0bb` |
| 24 | `theorem` | [nhdsSet_empty](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/declarations/nhdsset-empty--18e7e2776d02d005bac339dc.md) | 125 | `result-track:18e7e2776d02d005bac339dc6a752acc1b64f9c2d723b3063bf818c34a35e5b3` |
| 25 | `theorem` | [mem_nhdsSet_empty](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/declarations/mem-nhdsset-empty--c48e8aa1e04e47858751ea2e.md) | 127 | `result-track:c48e8aa1e04e47858751ea2e27f6b570abaad58a8dd4f5cd88f087e18d1d35a1` |
| 26 | `lemma` | [nhdsSet_eq_bot_iff](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/declarations/nhdsset-eq-bot-iff--bbff75dd75647015b7bb9ee0.md) | 130 | `result-track:bbff75dd75647015b7bb9ee0077f8d87cbb4f90e6689a1f9c0d9761a50bab448` |
| 27 | `lemma` | [nhdsSet_neBot_iff](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/declarations/nhdsset-nebot-iff--1361af7d9e3bfa2f09365176.md) | 135 | `result-track:1361af7d9e3bfa2f0936517688673054915207f0899a2677a70e95e7ffbb9007` |
| 28 | `theorem` | [nhdsSet_univ](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/declarations/nhdsset-univ--6ebf7268e97c280be714a5a3.md) | 142 | `result-track:6ebf7268e97c280be714a5a3eb50d5b17a6e7cff6bc3aa9806fa8554cb8cbb2e` |
| 29 | `theorem` | [nhdsSet_mono](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/declarations/nhdsset-mono--b0d111532b0d25867e71e3e0.md) | 145 | `result-track:b0d111532b0d25867e71e3e041faf24561fc9763401fcf15e1657451f9f20b42` |
| 30 | `theorem` | [monotone_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/declarations/monotone-nhdsset--b881258b0762682dce7c608c.md) | 148 | `result-track:b881258b0762682dce7c608c5723d8bac68d5329c69f485c8b2dd59aa1bb9b1b` |
| 31 | `theorem` | [nhds_le_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/declarations/nhds-le-nhdsset--c5d484b1182d192dd829f50b.md) | 150 | `result-track:c5d484b1182d192dd829f50bbc42674f01308ec0b8042dcabf3966ca68c06fbd` |
| 32 | `theorem` | [tendsto_nhdsSet_of_tendsto_nhds](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/declarations/tendsto-nhdsset-of-tendsto-nhds--9681b56f06fbb759aa073eb6.md) | 153 | `result-track:9681b56f06fbb759aa073eb68b598bf7fb42997145183a9afb7c55bbc556013e` |
| 33 | `theorem` | [nhdsSet_union](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/declarations/nhdsset-union--8d59bb3b52d74edd756d072a.md) | 159 | `result-track:8d59bb3b52d74edd756d072a82cc956641c1b9f9a7e110ab6769d41bd1846d2b` |
| 34 | `theorem` | [union_mem_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/declarations/union-mem-nhdsset--797319d1669020a477e891b0.md) | 162 | `result-track:797319d1669020a477e891b055db6210c2f95fc3bb467aaa81b3a9b7de85a0f3` |
| 35 | `theorem` | [nhdsSet_insert](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/declarations/nhdsset-insert--6fa0c25740bdffc68e5b1cd4.md) | 167 | `result-track:6fa0c25740bdffc68e5b1cd4ababa3d2a88faa4524b3e5079f7931369af6277e` |
| 36 | `theorem` | [nhdsSet_inter_le](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/declarations/nhdsset-inter-le--9ede54911962de99480edd09.md) | 173 | `result-track:9ede54911962de99480edd09d1f3294678bd974f72a2f347a8b3d83f42a2f76a` |
| 37 | `theorem` | [nhdsSet_iInter_le](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/declarations/nhdsset-iinter-le--f45beb5e49d9179df6bede5d.md) | 176 | `result-track:f45beb5e49d9179df6bede5de3c36c79ce6bfd7c77cb053e1b94532154745d8a` |
| 38 | `theorem` | [nhdsSet_sInter_le](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/declarations/nhdsset-sinter-le--6720031e93ccf9b668caf232.md) | 179 | `result-track:6720031e93ccf9b668caf23275ebe59cef319bb091e676306630a6fa9f59f3c7` |
| 39 | `theorem` | [IsClosed.nhdsSet_le_sup](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/declarations/isclosed-nhdsset-le-sup--3bd18a22df852c1126101bd1.md) | 183 | `result-track:3bd18a22df852c1126101bd1abcc8a7259c37b8d2df76da1392b31f900c39990` |
| 40 | `theorem` | [IsClosed.nhdsSet_le_sup'](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/declarations/isclosed-nhdsset-le-sup--3b2e7d82272286c978e98363.md) | 191 | `result-track:3b2e7d82272286c978e98363873ee8991a84e75069992a2b0a3de4444a8f095e` |
| 41 | `theorem` | [Filter.Eventually.eventually_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/declarations/filter-eventually-eventually-nhdsset--e623ef6f263a95d663295c27.md) | 194 | `result-track:e623ef6f263a95d663295c270fd02dcbebf5cafe560946a202df53eaefe86033` |
| 42 | `theorem` | [Filter.Eventually.union_nhdsSet](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/declarations/filter-eventually-union-nhdsset--57d986a54313be58e8f98f86.md) | 199 | `result-track:57d986a54313be58e8f98f86d0fe409706e2911a8a5942de04341febda32c0ad` |
| 43 | `theorem` | [Filter.Eventually.union](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/declarations/filter-eventually-union--ec64af6d03ab96928c2f5cc6.md) | 203 | `result-track:ec64af6d03ab96928c2f5cc6204f059b73adb5ad47b05ddd4b94539f02964d27` |
| 44 | `theorem` | [nhdsSet_iUnion](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/declarations/nhdsset-iunion--8788dbafe834cc2d6c631df5.md) | 207 | `result-track:8788dbafe834cc2d6c631df520722d4f8d5d2a9f757b7ec2d13e8b0b4f04e52c` |
| 45 | `theorem` | [eventually_nhdsSet_iUnion₂](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/declarations/eventually-nhdsset-iunion--cff1491dc2aa5ca159cebd17.md) | 210 | `result-track:cff1491dc2aa5ca159cebd1779010c93ef5d8dfa71333c0de15ea9368e7edc4b` |
| 46 | `theorem` | [eventually_nhdsSet_iUnion](../../../../../mathematics/Topology/GeneralTopology/NhdsSet/Variantd77777e6c1ea74e3f2750b3c9d58abac504db327eede4ea7ffd6ed29ffb2f072.lean/declarations/eventually-nhdsset-iunion--11d937d8cff784f8d5d4ccd9.md) | 214 | `result-track:11d937d8cff784f8d5d4ccd92bd4278228db453ff0ad33160b9463b0bb5b1430` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
