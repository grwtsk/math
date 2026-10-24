# Verification target: GRWTSK.Geometry.ConvexGeometry.AbsConvex.Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d74a6ea41957e30db1e11d1b98604b25f5a3589b",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/index.md) · [Full source](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d74a6ea41957e30db1e11d1b98604b25f5a3589b`.

Source path: `GRWTSK/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean.json)

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
| 1 | `def` | [AbsConvex](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/declarations/absconvex--7e8ee91462b5b5c812832348.md) | 55 | `declaration-track:7e8ee91462b5b5c812832348c93424e4818f3b4a201786517b581656811adbfa` |
| 2 | `theorem` | [AbsConvex.empty](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/declarations/absconvex-empty--9ebdf45301cef3ecd34dde6e.md) | 59 | `result-track:9ebdf45301cef3ecd34dde6e056222213993be0e6e98bf354d8dc8a4235f0651` |
| 3 | `theorem` | [AbsConvex.univ](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/declarations/absconvex-univ--6cd627578f963bf9c284090a.md) | 61 | `result-track:6cd627578f963bf9c284090a5a17996ae01020c7899f364dc6259405713e28f2` |
| 4 | `theorem` | [AbsConvex.inter](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/declarations/absconvex-inter--9b8cbee11132327ee379fc85.md) | 63 | `result-track:9b8cbee11132327ee379fc8567727073575c69412026f4eb21bf47e02198ccc6` |
| 5 | `theorem` | [AbsConvex.sInter](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/declarations/absconvex-sinter--2d5220e7ee81c84cad007d2e.md) | 66 | `result-track:2d5220e7ee81c84cad007d2e9314ee146f8d3187f4088ce341be3f28ed2a619a` |
| 6 | `theorem` | [AbsConvex.iInter](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/declarations/absconvex-iinter--63ba5b4f84bf3737746ccbaf.md) | 69 | `result-track:63ba5b4f84bf3737746ccbaf8c5f869f66a39b61ab84baed6975f615d7a63595` |
| 7 | `theorem` | [AbsConvex.iInter₂](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/declarations/absconvex-iinter--db8e2b16c2b9edb6ec87623b.md) | 73 | `result-track:db8e2b16c2b9edb6ec87623bed57b325748afcafd2373a365366f418df5bc913` |
| 8 | `def` | [absConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/declarations/absconvexhull--8fefdee21958d5cf41a24467.md) | 81 | `declaration-track:8fefdee21958d5cf41a24467a456bd9540c3a5c0c2d8667a8a0736b6498ba846` |
| 9 | `theorem` | [subset_absConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/declarations/subset-absconvexhull--38768583c5571dd9831fa17e.md) | 86 | `result-track:38768583c5571dd9831fa17eab110e03f68a9eadeecc5b21435bebf00c474edd` |
| 10 | `theorem` | [absConvex_absConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/declarations/absconvex-absconvexhull--270b10c354900d5840d5ec95.md) | 89 | `result-track:270b10c354900d5840d5ec9560974de715f23c818aea1a4f4eb21b78a50e1f24` |
| 11 | `theorem` | [balanced_absConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/declarations/balanced-absconvexhull--09531f481b131d845778e71d.md) | 92 | `result-track:09531f481b131d845778e71d720d8deceddaa35ed5c6e2ceaa9ab8d69e9c853c` |
| 12 | `theorem` | [convex_absConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/declarations/convex-absconvexhull--7ba2d0e9a11d25020318931a.md) | 95 | `result-track:7ba2d0e9a11d25020318931a7060fedb6c27f85a037e05319b14db0a9192ce73` |
| 13 | `theorem` | [absConvexHull_eq_iInter](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/declarations/absconvexhull-eq-iinter--ee60ac73d83a547ae0b737af.md) | 100 | `result-track:ee60ac73d83a547ae0b737afa9a7662fdcfce7e2b5553d4a1967637030f52c3e` |
| 14 | `theorem` | [mem_absConvexHull_iff](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/declarations/mem-absconvexhull-iff--e6992b724441adfd99182b68.md) | 106 | `result-track:e6992b724441adfd99182b68da3026c850eb54473e4f096d4e4671f84c98b0c3` |
| 15 | `theorem` | [absConvexHull_min](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/declarations/absconvexhull-min--bed2220f23e3d5d527d101bc.md) | 109 | `result-track:bed2220f23e3d5d527d101bc26df114e267f311747ccf67341b95cb914020203` |
| 16 | `theorem` | [AbsConvex.absConvexHull_subset_iff](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/declarations/absconvex-absconvexhull-subset-iff--5c87354c618ceb21e91fcb97.md) | 112 | `result-track:5c87354c618ceb21e91fcb975afb49392d4a7d69b7cbef7207931634231cf0af` |
| 17 | `theorem` | [absConvexHull_mono](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/declarations/absconvexhull-mono--b27f678dc1a44bb8715bf16f.md) | 116 | `result-track:b27f678dc1a44bb8715bf16f6ab78dbc3754a9a393f861975cc23fbc902f8387` |
| 18 | `lemma` | [absConvexHull_eq_self](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/declarations/absconvexhull-eq-self--625203777d88dda371561bd4.md) | 119 | `result-track:625203777d88dda371561bd471948ea8df252750b4911614e9a0022b76a9ffc5` |
| 19 | `theorem` | [absConvexHull_univ](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/declarations/absconvexhull-univ--f2a356b030f585ef3514807a.md) | 125 | `result-track:f2a356b030f585ef3514807a7f80afe47a548829768421db01df91544cfb360c` |
| 20 | `theorem` | [absConvexHull_empty](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/declarations/absconvexhull-empty--c9261e3002324726d906c09a.md) | 129 | `result-track:c9261e3002324726d906c09af01a277bc7250a6a43eb3fe2e30f026018651b03` |
| 21 | `theorem` | [absConvexHull_eq_empty](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/declarations/absconvexhull-eq-empty--b0970cd3fb18d68781806a45.md) | 133 | `result-track:b0970cd3fb18d68781806a45a4981cadcc0f6692d8bf121fa178211be4f3d3c7` |
| 22 | `theorem` | [absConvexHull_nonempty](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/declarations/absconvexhull-nonempty--6d5a2fd38cbc0bb7d53f37b3.md) | 142 | `result-track:6d5a2fd38cbc0bb7d53f37b3de9184193552c459bde0e21caab44f603673b124` |
| 23 | `theorem` | [absConvex_closed_sInter](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/declarations/absconvex-closed-sinter--d777890f3e0d2dd04989691a.md) | 150 | `result-track:d777890f3e0d2dd04989691a457079cfece02b2db09e776a5c76ebb845f0a423` |
| 24 | `def` | [closedAbsConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/declarations/closedabsconvexhull--e4b071ff732280eea5e7e9f6.md) | 158 | `declaration-track:e4b071ff732280eea5e7e9f6138aa814861272fb4a82e81d7edc0b464ce5affe` |
| 25 | `theorem` | [absConvex_convexClosedHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/declarations/absconvex-convexclosedhull--a8bd483b87a14b3e79492866.md) | 161 | `result-track:a8bd483b87a14b3e79492866f4e5ce4e2d79bb0a5a339de2ba4bde09c89c1fdc` |
| 26 | `theorem` | [isClosed_closedAbsConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/declarations/isclosed-closedabsconvexhull--738e5a244cfccf72749c980d.md) | 164 | `result-track:738e5a244cfccf72749c980d28dae2d52c4b3a3c6d5aa8b8e86b47caa6748a9c` |
| 27 | `theorem` | [subset_closedAbsConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/declarations/subset-closedabsconvexhull--e41d411a44abbc0d45ade632.md) | 167 | `result-track:e41d411a44abbc0d45ade632440d357d25ced4c66a051abd469a01432f6e22e1` |
| 28 | `theorem` | [closure_subset_closedAbsConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/declarations/closure-subset-closedabsconvexhull--4bd6d4662a245673a47d0ce0.md) | 170 | `result-track:4bd6d4662a245673a47d0ce04d83943fd16345705e1770ce0abc0dcf0e6ddd62` |
| 29 | `theorem` | [closedAbsConvexHull_min](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/declarations/closedabsconvexhull-min--b554e7e9f9f5aa1f39beccf5.md) | 173 | `result-track:b554e7e9f9f5aa1f39beccf5654b3e25f98524b8466a8d05065837e0b149f952` |
| 30 | `theorem` | [absConvexHull_subset_closedAbsConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/declarations/absconvexhull-subset-closedabsconvexhull--2b0a82500dc0c67eb56a56ea.md) | 177 | `result-track:2b0a82500dc0c67eb56a56eab332f5570c079198f6611ebb5ba715f823fd8ecf` |
| 31 | `theorem` | [closedAbsConvexHull_closure_eq_closedAbsConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/declarations/closedabsconvexhull-closure-eq-closedabsconvexhull--d77f69c759e2d40c25609075.md) | 182 | `result-track:d77f69c759e2d40c25609075aed3dd408ae8bff1ae3bc57e4f508dbda9faa730` |
| 32 | `theorem` | [AbsConvex.closure](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/declarations/absconvex-closure--39bdbd4a4eb97b9194d85dd1.md) | 196 | `result-track:39bdbd4a4eb97b9194d85dd157bfcb1e134223c61e18839252d8a3929e89023b` |
| 33 | `theorem` | [closedAbsConvexHull_eq_closure_absConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/declarations/closedabsconvexhull-eq-closure-absconvexhull--682a1c24be823bab77f90779.md) | 199 | `result-track:682a1c24be823bab77f907796610844b6809e3d4439ab74d0d9be785f01652cc` |
| 34 | `theorem` | [absConvexHull_add_subset](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/declarations/absconvexhull-add-subset--c56f5e091190b31769684ccc.md) | 212 | `result-track:c56f5e091190b31769684ccc1b9ba72cab1cbbe1836a01b732eea5f4dabb0402` |
| 35 | `theorem` | [absConvexHull_eq_convexHull_balancedHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/declarations/absconvexhull-eq-convexhull-balancedhull--ba021930c2a902ebf59f13c1.md) | 218 | `result-track:ba021930c2a902ebf59f13c12caf99883909643dd22bcf275f068a70aec2e23d` |
| 36 | `theorem` | [balancedHull_convexHull_subset_absConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/declarations/balancedhull-convexhull-subset-absconvexhull--ea6ce48e5968634c644294bf.md) | 227 | `result-track:ea6ce48e5968634c644294bf424441c2cd6ff586ee942fb082a74e369fdbef8a` |
| 37 | `theorem` | [IsOpen.absConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/declarations/isopen-absconvexhull--7ad83a47593e0103b8a1e3b4.md) | 237 | `result-track:7ad83a47593e0103b8a1e3b4a79f12fc57aa8fdf71725742abca792531b828c5` |
| 38 | `theorem` | [nhds_hasBasis_absConvex](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/declarations/nhds-hasbasis-absconvex--c48600b8c04c665f81277c74.md) | 250 | `result-track:c48600b8c04c665f81277c74eb50c15ac7b1a228c396fdbbf9e9b0806edf4f61` |
| 39 | `theorem` | [nhds_hasBasis_absConvex_open](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/declarations/nhds-hasbasis-absconvex-open--f7167c51ef81257e4bcca404.md) | 262 | `result-track:f7167c51ef81257e4bcca4044cb66453672906e555effa9de8aa188d66632fc8` |
| 40 | `theorem` | [nhds_hasBasis_absConvex_closed](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/declarations/nhds-hasbasis-absconvex-closed--9e8ff6e5d48cc1b4fde45c74.md) | 273 | `result-track:9e8ff6e5d48cc1b4fde45c742e6c37fcc58e7df64e1f3e1b132fa48adc11b923` |
| 41 | `theorem` | [exists_nhds_hasAntitoneBasis_absConvex_open_add_closure_subset](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/declarations/exists-nhds-hasantitonebasis-absconvex-open-add-closure-subset--657015f01edc35daaa240f43.md) | 289 | `result-track:657015f01edc35daaa240f432e4c36cc208e86616caccb7c00ed12c5a50886ae` |
| 42 | `lemma` | [balancedHull_subset_convexHull_union_neg](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/declarations/balancedhull-subset-convexhull-union-neg--2664b1f1395b8fcf9ac68e4d.md) | 327 | `result-track:2664b1f1395b8fcf9ac68e4dd5ce772c704b4d94c1906c78ec0474894d09fb08` |
| 43 | `theorem` | [convexHull_union_neg_eq_absConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/declarations/convexhull-union-neg-eq-absconvexhull--f62ecd7ea6ed2d9a4105e0a3.md) | 339 | `result-track:f62ecd7ea6ed2d9a4105e0a3d97ab400a195c038af23b9c2bb92c3b0b6ef7c68` |
| 44 | `lemma` | [totallyBounded_absConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/declarations/totallybounded-absconvexhull--08224fdaaab2ff6561fb5d5c.md) | 353 | `result-track:08224fdaaab2ff6561fb5d5cca25cc2574f8a5d03921f25a1714ae2d3e35070f` |
| 45 | `lemma` | [zero_mem_absConvexHull](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/declarations/zero-mem-absconvexhull--29fb3f4d1fb794fd2b263393.md) | 360 | `result-track:29fb3f4d1fb794fd2b2633939e20ae8b8fff585caf4409cf5758c3d3fea8b151` |
| 46 | `theorem` | [isCompact_closedAbsConvexHull_of_totallyBounded](../../../../../mathematics/Geometry/ConvexGeometry/AbsConvex/Variant9be6d331ccdcf4d8bfa18ef6843ed3d17e9b100119cc2debf2cf33fa5b3aa42e.lean/declarations/iscompact-closedabsconvexhull-of-totallybounded--c377642dcc5449da920a55e5.md) | 365 | `result-track:c377642dcc5449da920a55e5fb69ca0ee1246d8043d615912e8d8ac549265bf3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
