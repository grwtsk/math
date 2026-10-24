# Verification target: GRWTSK.Geometry.ConvexGeometry.Hull.Variantbf2ed457aef6ef5b1c0cb504f1e16d296177473a2028f7ab8a70b1f79dba4ab4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "872edb320e7882d142dba6d3a9785ab97556157d",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/Hull/Variantbf2ed457aef6ef5b1c0cb504f1e16d296177473a2028f7ab8a70b1f79dba4ab4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantbf2ed457aef6ef5b1c0cb504f1e16d296177473a2028f7ab8a70b1f79dba4ab4.lean/index.md) · [Full source](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantbf2ed457aef6ef5b1c0cb504f1e16d296177473a2028f7ab8a70b1f79dba4ab4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `872edb320e7882d142dba6d3a9785ab97556157d`.

Source path: `GRWTSK/Geometry/ConvexGeometry/Hull/Variantbf2ed457aef6ef5b1c0cb504f1e16d296177473a2028f7ab8a70b1f79dba4ab4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/Hull/Variantbf2ed457aef6ef5b1c0cb504f1e16d296177473a2028f7ab8a70b1f79dba4ab4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Closure` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [convexHull](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantbf2ed457aef6ef5b1c0cb504f1e16d296177473a2028f7ab8a70b1f79dba4ab4.lean/declarations/convexhull--eda1a6e80cd163e4a8afe14d.md) | 42 | `declaration-track:eda1a6e80cd163e4a8afe14d0597eed7dde00322b28df78d4cbc103bb31a03dd` |
| 2 | `theorem` | [subset_convexHull](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantbf2ed457aef6ef5b1c0cb504f1e16d296177473a2028f7ab8a70b1f79dba4ab4.lean/declarations/subset-convexhull--bf19665595470359a4237536.md) | 46 | `result-track:bf19665595470359a4237536d959d3861e584c2f11c01ad33ddf9b8bfdb2c255` |
| 3 | `theorem` | [convex_convexHull](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantbf2ed457aef6ef5b1c0cb504f1e16d296177473a2028f7ab8a70b1f79dba4ab4.lean/declarations/convex-convexhull--e0d45b34182ef5f43caaf279.md) | 49 | `result-track:e0d45b34182ef5f43caaf279dab7e98c1866afd572bc0f3074a18dd33a00a54c` |
| 4 | `theorem` | [convexHull_eq_iInter](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantbf2ed457aef6ef5b1c0cb504f1e16d296177473a2028f7ab8a70b1f79dba4ab4.lean/declarations/convexhull-eq-iinter--3f56c288ec2e8435652e3b6a.md) | 51 | `result-track:3f56c288ec2e8435652e3b6a533993830b49fb9a1b73949306c7d7c6aa37d06a` |
| 5 | `theorem` | [mem_convexHull_iff](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantbf2ed457aef6ef5b1c0cb504f1e16d296177473a2028f7ab8a70b1f79dba4ab4.lean/declarations/mem-convexhull-iff--4190d9c3d3a1407b573a467f.md) | 56 | `result-track:4190d9c3d3a1407b573a467f818ad54783de1779d915869c5fd40b33ad527d0e` |
| 6 | `theorem` | [convexHull_min](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantbf2ed457aef6ef5b1c0cb504f1e16d296177473a2028f7ab8a70b1f79dba4ab4.lean/declarations/convexhull-min--589f907d13f0919b593d6d48.md) | 59 | `result-track:589f907d13f0919b593d6d48e9fd4b67c8a83a01c11e75c0f08790d2bff6dbe0` |
| 7 | `theorem` | [Convex.convexHull_subset_iff](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantbf2ed457aef6ef5b1c0cb504f1e16d296177473a2028f7ab8a70b1f79dba4ab4.lean/declarations/convex-convexhull-subset-iff--7322eed968c52a14b07b9536.md) | 61 | `result-track:7322eed968c52a14b07b9536b19cf134c8560e8ff68b0e6f6d2568557eff8c53` |
| 8 | `theorem` | [convexHull_mono](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantbf2ed457aef6ef5b1c0cb504f1e16d296177473a2028f7ab8a70b1f79dba4ab4.lean/declarations/convexhull-mono--748571255b9a469817cc1a60.md) | 65 | `result-track:748571255b9a469817cc1a60cb4a0f7b876e5698609f4e4bf135abb2e4ebbdb3` |
| 9 | `lemma` | [convexHull_eq_self](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantbf2ed457aef6ef5b1c0cb504f1e16d296177473a2028f7ab8a70b1f79dba4ab4.lean/declarations/convexhull-eq-self--abeaff88ba6a9b4b9f391e76.md) | 68 | `result-track:abeaff88ba6a9b4b9f391e764784897b9540d0c29a03d43cfd955487935b9490` |
| 10 | `theorem` | [convexHull_univ](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantbf2ed457aef6ef5b1c0cb504f1e16d296177473a2028f7ab8a70b1f79dba4ab4.lean/declarations/convexhull-univ--018b55d84747a2ae367ca39f.md) | 73 | `result-track:018b55d84747a2ae367ca39f164434d6577d5b0abcc8ac920e112cdf104ab9b4` |
| 11 | `theorem` | [convexHull_empty](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantbf2ed457aef6ef5b1c0cb504f1e16d296177473a2028f7ab8a70b1f79dba4ab4.lean/declarations/convexhull-empty--99c3e9c84ce9fec79842fff9.md) | 77 | `result-track:99c3e9c84ce9fec79842fff9b7a1911c163e50ae54e47e8d5b90638504285afe` |
| 12 | `theorem` | [convexHull_empty_iff](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantbf2ed457aef6ef5b1c0cb504f1e16d296177473a2028f7ab8a70b1f79dba4ab4.lean/declarations/convexhull-empty-iff--a06621ed75882ff2e2539b2e.md) | 81 | `result-track:a06621ed75882ff2e2539b2eaf263ce68675e853821bb8243163799d8e848b68` |
| 13 | `theorem` | [convexHull_nonempty_iff](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantbf2ed457aef6ef5b1c0cb504f1e16d296177473a2028f7ab8a70b1f79dba4ab4.lean/declarations/convexhull-nonempty-iff--9ab21a75e0450911c18795e2.md) | 90 | `result-track:9ab21a75e0450911c18795e24cd7c47c8738782cb9de453d251ebf19061eb0d7` |
| 14 | `theorem` | [segment_subset_convexHull](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantbf2ed457aef6ef5b1c0cb504f1e16d296177473a2028f7ab8a70b1f79dba4ab4.lean/declarations/segment-subset-convexhull--7a4123ebaad2599484487706.md) | 96 | `result-track:7a4123ebaad2599484487706baa694b0bac7702ee53733469c1bb4cba319d6f6` |
| 15 | `theorem` | [convexHull_singleton](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantbf2ed457aef6ef5b1c0cb504f1e16d296177473a2028f7ab8a70b1f79dba4ab4.lean/declarations/convexhull-singleton--2632aa4d8e560bcd23acface.md) | 100 | `result-track:2632aa4d8e560bcd23acfaceef05a64958f85fed97a72780bddf3f4554426305` |
| 16 | `theorem` | [convexHull_zero](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantbf2ed457aef6ef5b1c0cb504f1e16d296177473a2028f7ab8a70b1f79dba4ab4.lean/declarations/convexhull-zero--7fb7a8b869e346197a2a77bb.md) | 104 | `result-track:7fb7a8b869e346197a2a77bbc4cc56122270a03be5b45561cae779566b3063d3` |
| 17 | `theorem` | [convexHull_pair](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantbf2ed457aef6ef5b1c0cb504f1e16d296177473a2028f7ab8a70b1f79dba4ab4.lean/declarations/convexhull-pair--df92c47881d9ec1527360b4b.md) | 108 | `result-track:df92c47881d9ec1527360b4b7d2410ef8f30b50563e16f5474499a0892532042` |
| 18 | `theorem` | [convexHull_convexHull_union_left](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantbf2ed457aef6ef5b1c0cb504f1e16d296177473a2028f7ab8a70b1f79dba4ab4.lean/declarations/convexhull-convexhull-union-left--c2753aaa2c38eb92203ce88b.md) | 114 | `result-track:c2753aaa2c38eb92203ce88bac0a641b3298aff296e09eb664b43d83a8ced7b8` |
| 19 | `theorem` | [convexHull_convexHull_union_right](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantbf2ed457aef6ef5b1c0cb504f1e16d296177473a2028f7ab8a70b1f79dba4ab4.lean/declarations/convexhull-convexhull-union-right--e4f8e00bac9b3d3b2c694ca3.md) | 118 | `result-track:e4f8e00bac9b3d3b2c694ca3ba4b7ce2cecb27385d8a9e97768209a5964bea75` |
| 20 | `theorem` | [Convex.convex_remove_iff_notMem_convexHull_remove](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantbf2ed457aef6ef5b1c0cb504f1e16d296177473a2028f7ab8a70b1f79dba4ab4.lean/declarations/convex-convex-remove-iff-notmem-convexhull-remove--a4dd00c847d73e90f0b1e330.md) | 122 | `result-track:a4dd00c847d73e90f0b1e330c38dd69a0d4cb31c49da5a074c75f488c50fbd91` |
| 21 | `theorem` | [IsLinearMap.image_convexHull](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantbf2ed457aef6ef5b1c0cb504f1e16d296177473a2028f7ab8a70b1f79dba4ab4.lean/declarations/islinearmap-image-convexhull--a035ecdaa4c6b6616967f9a5.md) | 142 | `result-track:a035ecdaa4c6b6616967f9a514777db26e147bb79f01241dd65af3a7c28299b3` |
| 22 | `theorem` | [LinearMap.image_convexHull](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantbf2ed457aef6ef5b1c0cb504f1e16d296177473a2028f7ab8a70b1f79dba4ab4.lean/declarations/linearmap-image-convexhull--81e1ea88e77c51484626c38d.md) | 151 | `result-track:81e1ea88e77c51484626c38d43add5e87ba0c25c3a30b5d9a28bdd0c6c7f8b98` |
| 23 | `theorem` | [convexHull_add_subset](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantbf2ed457aef6ef5b1c0cb504f1e16d296177473a2028f7ab8a70b1f79dba4ab4.lean/declarations/convexhull-add-subset--dcbdde9ce904efca40ac3c2e.md) | 155 | `result-track:dcbdde9ce904efca40ac3c2eb1d2d71c482976616d2b6d6479c1d9c9e1d16eb5` |
| 24 | `theorem` | [convexHull_smul](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantbf2ed457aef6ef5b1c0cb504f1e16d296177473a2028f7ab8a70b1f79dba4ab4.lean/declarations/convexhull-smul--71d0bef8bdb94a0aa0b317b1.md) | 168 | `result-track:71d0bef8bdb94a0aa0b317b101525b9aceb1c63f01a50af50dd5867813634ef9` |
| 25 | `theorem` | [AffineMap.image_convexHull](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantbf2ed457aef6ef5b1c0cb504f1e16d296177473a2028f7ab8a70b1f79dba4ab4.lean/declarations/affinemap-image-convexhull--05014216a168a02165eacb0e.md) | 181 | `result-track:05014216a168a02165eacb0e041e090c074675fc5910fe9937aed3b515f30664` |
| 26 | `theorem` | [convexHull_subset_affineSpan](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantbf2ed457aef6ef5b1c0cb504f1e16d296177473a2028f7ab8a70b1f79dba4ab4.lean/declarations/convexhull-subset-affinespan--28a286cd97bd91f58095756f.md) | 191 | `result-track:28a286cd97bd91f58095756fcd3eabf7c44f70f4991efeb0d56c0da286ef0bc7` |
| 27 | `theorem` | [affineSpan_convexHull](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantbf2ed457aef6ef5b1c0cb504f1e16d296177473a2028f7ab8a70b1f79dba4ab4.lean/declarations/affinespan-convexhull--29fcff75eb8865222775977f.md) | 195 | `result-track:29fcff75eb8865222775977f33273dbab95fa3227618081fa2f90ad9890b7762` |
| 28 | `theorem` | [convexHull_neg](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantbf2ed457aef6ef5b1c0cb504f1e16d296177473a2028f7ab8a70b1f79dba4ab4.lean/declarations/convexhull-neg--ea4df295407dacd88efb59b7.md) | 200 | `result-track:ea4df295407dacd88efb59b76a19ecae4e426c1cf606623c5665883fd96972fa` |
| 29 | `lemma` | [convexHull_vadd](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantbf2ed457aef6ef5b1c0cb504f1e16d296177473a2028f7ab8a70b1f79dba4ab4.lean/declarations/convexhull-vadd--eaaf6bae8ce38145e80e7206.md) | 204 | `result-track:eaaf6bae8ce38145e80e720637afba5e6cdcd5b4b29607c600e863631b603d82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
