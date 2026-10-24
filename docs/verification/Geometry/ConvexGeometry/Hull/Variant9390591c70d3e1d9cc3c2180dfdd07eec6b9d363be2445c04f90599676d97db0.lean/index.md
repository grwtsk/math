# Verification target: GRWTSK.Geometry.ConvexGeometry.Hull.Variant9390591c70d3e1d9cc3c2180dfdd07eec6b9d363be2445c04f90599676d97db0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cea538f25f7a013fccdacdd24f61c70f3fb9869c",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/Hull/Variant9390591c70d3e1d9cc3c2180dfdd07eec6b9d363be2445c04f90599676d97db0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant9390591c70d3e1d9cc3c2180dfdd07eec6b9d363be2445c04f90599676d97db0.lean/index.md) · [Full source](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant9390591c70d3e1d9cc3c2180dfdd07eec6b9d363be2445c04f90599676d97db0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cea538f25f7a013fccdacdd24f61c70f3fb9869c`.

Source path: `GRWTSK/Geometry/ConvexGeometry/Hull/Variant9390591c70d3e1d9cc3c2180dfdd07eec6b9d363be2445c04f90599676d97db0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/Hull/Variant9390591c70d3e1d9cc3c2180dfdd07eec6b9d363be2445c04f90599676d97db0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Closure` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [convexHull](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant9390591c70d3e1d9cc3c2180dfdd07eec6b9d363be2445c04f90599676d97db0.lean/declarations/convexhull--b1590625d6492c49ef0d047d.md) | 51 | `declaration-track:b1590625d6492c49ef0d047d248de0a598c660a20da4e66922deffc334c789d6` |
| 2 | `theorem` | [subset_convexHull](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant9390591c70d3e1d9cc3c2180dfdd07eec6b9d363be2445c04f90599676d97db0.lean/declarations/subset-convexhull--cae2855347814294b44f9485.md) | 61 | `result-track:cae2855347814294b44f9485f0e37d9ac307ea563fedddc37bd4bec90096ad41` |
| 3 | `theorem` | [convex_convexHull](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant9390591c70d3e1d9cc3c2180dfdd07eec6b9d363be2445c04f90599676d97db0.lean/declarations/convex-convexhull--9a453d3d81755f35d290d3cf.md) | 65 | `result-track:9a453d3d81755f35d290d3cf5a5a12a3fc31baf58b0269f584160cc18f6d59e2` |
| 4 | `theorem` | [convexHull_eq_iInter](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant9390591c70d3e1d9cc3c2180dfdd07eec6b9d363be2445c04f90599676d97db0.lean/declarations/convexhull-eq-iinter--ae4d95ca69f00bab791873dc.md) | 69 | `result-track:ae4d95ca69f00bab791873dcc4d78676fcc4b8d7b903f0666fd6e109b528a14f` |
| 5 | `theorem` | [mem_convexHull_iff](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant9390591c70d3e1d9cc3c2180dfdd07eec6b9d363be2445c04f90599676d97db0.lean/declarations/mem-convexhull-iff--7b88cfd3c3a1886ddedf498c.md) | 76 | `result-track:7b88cfd3c3a1886ddedf498c1fae4c987298b2577f695d9748838a8e47a8d26f` |
| 6 | `theorem` | [convexHull_min](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant9390591c70d3e1d9cc3c2180dfdd07eec6b9d363be2445c04f90599676d97db0.lean/declarations/convexhull-min--27f99c60c9d2dabc88fb5079.md) | 80 | `result-track:27f99c60c9d2dabc88fb5079df6e1bef1fe208b205eaff9f178043013eed8ec4` |
| 7 | `theorem` | [Convex.convexHull_subset_iff](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant9390591c70d3e1d9cc3c2180dfdd07eec6b9d363be2445c04f90599676d97db0.lean/declarations/convex-convexhull-subset-iff--2a1ecb50a90f9c9d1829e08a.md) | 84 | `result-track:2a1ecb50a90f9c9d1829e08ad6f7e2eb3c9f27e707345d112c05bd375729f70d` |
| 8 | `theorem` | [convexHull_mono](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant9390591c70d3e1d9cc3c2180dfdd07eec6b9d363be2445c04f90599676d97db0.lean/declarations/convexhull-mono--5ea98bce1e8824f630000105.md) | 89 | `result-track:5ea98bce1e8824f630000105558e85dd6e06a9c1e2bba344bee70768ace760f8` |
| 9 | `theorem` | [Convex.convexHull_eq](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant9390591c70d3e1d9cc3c2180dfdd07eec6b9d363be2445c04f90599676d97db0.lean/declarations/convex-convexhull-eq--297cc79f6a897219422d9997.md) | 93 | `result-track:297cc79f6a897219422d9997c701ee31c6685c93fb9ad514974f08efce1d3111` |
| 10 | `theorem` | [convexHull_univ](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant9390591c70d3e1d9cc3c2180dfdd07eec6b9d363be2445c04f90599676d97db0.lean/declarations/convexhull-univ--1390518d14f8cc53dac66144.md) | 98 | `result-track:1390518d14f8cc53dac66144187f055a1cdc59e9a6509ad32c7b41d354de7f9c` |
| 11 | `theorem` | [convexHull_empty](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant9390591c70d3e1d9cc3c2180dfdd07eec6b9d363be2445c04f90599676d97db0.lean/declarations/convexhull-empty--2ce5d09bc5f926658bc5ab71.md) | 103 | `result-track:2ce5d09bc5f926658bc5ab7179a9e1374e938b7c29e0fe562b4f7865e0a62cb2` |
| 12 | `theorem` | [convexHull_empty_iff](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant9390591c70d3e1d9cc3c2180dfdd07eec6b9d363be2445c04f90599676d97db0.lean/declarations/convexhull-empty-iff--5d5cbe402dfef5782c69c867.md) | 108 | `result-track:5d5cbe402dfef5782c69c867c38f03f8fc479a9c511b23ca5280504d5c879bc2` |
| 13 | `theorem` | [convexHull_nonempty_iff](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant9390591c70d3e1d9cc3c2180dfdd07eec6b9d363be2445c04f90599676d97db0.lean/declarations/convexhull-nonempty-iff--c3c67a5c20ceb2c1442afcd6.md) | 118 | `result-track:c3c67a5c20ceb2c1442afcd626fd34d717421d41244e46a737423181905c4bfa` |
| 14 | `theorem` | [segment_subset_convexHull](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant9390591c70d3e1d9cc3c2180dfdd07eec6b9d363be2445c04f90599676d97db0.lean/declarations/segment-subset-convexhull--36d8dc32b40481f6011a9f0c.md) | 126 | `result-track:36d8dc32b40481f6011a9f0c548621a2a5052a8df5b2ae0adff1a75d20fe1e87` |
| 15 | `theorem` | [convexHull_singleton](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant9390591c70d3e1d9cc3c2180dfdd07eec6b9d363be2445c04f90599676d97db0.lean/declarations/convexhull-singleton--cac8445ddf0552d2f4c02790.md) | 131 | `result-track:cac8445ddf0552d2f4c02790e9a1707ae462eca12fb7bafb96fb6a9bbad212a6` |
| 16 | `theorem` | [convexHull_zero](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant9390591c70d3e1d9cc3c2180dfdd07eec6b9d363be2445c04f90599676d97db0.lean/declarations/convexhull-zero--2e1238796cfe334300678ac6.md) | 136 | `result-track:2e1238796cfe334300678ac65d23087994359cca656878a3027a148c9fffa1cb` |
| 17 | `theorem` | [convexHull_pair](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant9390591c70d3e1d9cc3c2180dfdd07eec6b9d363be2445c04f90599676d97db0.lean/declarations/convexhull-pair--046377d0af97dd848859457b.md) | 141 | `result-track:046377d0af97dd848859457b816c6ed0fbcc02ea82bdebb3f06c99a76f8b149d` |
| 18 | `theorem` | [convexHull_convexHull_union_left](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant9390591c70d3e1d9cc3c2180dfdd07eec6b9d363be2445c04f90599676d97db0.lean/declarations/convexhull-convexhull-union-left--5476ce0bfe771018529eeddc.md) | 148 | `result-track:5476ce0bfe771018529eeddc9947a9e242d88dac893c12ef605d08050065108a` |
| 19 | `theorem` | [convexHull_convexHull_union_right](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant9390591c70d3e1d9cc3c2180dfdd07eec6b9d363be2445c04f90599676d97db0.lean/declarations/convexhull-convexhull-union-right--ab1ddedc31f7c7e2a9ac231c.md) | 153 | `result-track:ab1ddedc31f7c7e2a9ac231cd65fbc577a7e8116af6202f2c8575f28485f8afc` |
| 20 | `theorem` | [Convex.convex_remove_iff_not_mem_convexHull_remove](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant9390591c70d3e1d9cc3c2180dfdd07eec6b9d363be2445c04f90599676d97db0.lean/declarations/convex-convex-remove-iff-not-mem-convexhull-remove--80ddaab218ae000e5c11d00a.md) | 158 | `result-track:80ddaab218ae000e5c11d00ad1a209528be01e2a88494858c83df17471e20167` |
| 21 | `theorem` | [IsLinearMap.convexHull_image](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant9390591c70d3e1d9cc3c2180dfdd07eec6b9d363be2445c04f90599676d97db0.lean/declarations/islinearmap-convexhull-image--793d3305e44ab61acfe0fedc.md) | 175 | `result-track:793d3305e44ab61acfe0fedc744d2a36c2f1499c91b39723d67898de241443c4` |
| 22 | `theorem` | [LinearMap.convexHull_image](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant9390591c70d3e1d9cc3c2180dfdd07eec6b9d363be2445c04f90599676d97db0.lean/declarations/linearmap-convexhull-image--0ed1994c3730e2c0529db7aa.md) | 185 | `result-track:0ed1994c3730e2c0529db7aa59d5460de1b90152a5f2552f29a2d9fe6f4b30b4` |
| 23 | `theorem` | [convexHull_smul](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant9390591c70d3e1d9cc3c2180dfdd07eec6b9d363be2445c04f90599676d97db0.lean/declarations/convexhull-smul--c1d48dc37248cc0661ce7d65.md) | 198 | `result-track:c1d48dc37248cc0661ce7d65182efc9347fc476acae3c495b15cec13870bfbdc` |
| 24 | `theorem` | [AffineMap.image_convexHull](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant9390591c70d3e1d9cc3c2180dfdd07eec6b9d363be2445c04f90599676d97db0.lean/declarations/affinemap-image-convexhull--028fcb1749a311601a998501.md) | 212 | `result-track:028fcb1749a311601a998501086d3e2a8c9716a3a06c465c6d5d0827665f1ada` |
| 25 | `theorem` | [convexHull_subset_affineSpan](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant9390591c70d3e1d9cc3c2180dfdd07eec6b9d363be2445c04f90599676d97db0.lean/declarations/convexhull-subset-affinespan--f522a24ab8c8eccc22cff6e2.md) | 223 | `result-track:f522a24ab8c8eccc22cff6e2ac888b100f70af49a4f094b06de70f5321badea2` |
| 26 | `theorem` | [affineSpan_convexHull](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant9390591c70d3e1d9cc3c2180dfdd07eec6b9d363be2445c04f90599676d97db0.lean/declarations/affinespan-convexhull--fe6a5afdfaf12b1fa5cebe70.md) | 228 | `result-track:fe6a5afdfaf12b1fa5cebe700fc19a3605705a20f8b5c268d38f3f4ff28a8a94` |
| 27 | `theorem` | [convexHull_neg](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variant9390591c70d3e1d9cc3c2180dfdd07eec6b9d363be2445c04f90599676d97db0.lean/declarations/convexhull-neg--f4922fcd661f862e40c417b7.md) | 234 | `result-track:f4922fcd661f862e40c417b791fa02417aa4ce2a4ecec328c3e5007af6594ae1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
