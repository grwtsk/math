# Verification target: GRWTSK.Geometry.ConvexGeometry.Hull.Variantdbecceeefc3268679e34a94110b1880c04856d463391378efb8604e860dc1939

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "227ed246326e0e904a9d0d125b4af1399b786f4b",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ConvexGeometry/Hull/Variantdbecceeefc3268679e34a94110b1880c04856d463391378efb8604e860dc1939.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantdbecceeefc3268679e34a94110b1880c04856d463391378efb8604e860dc1939.lean/index.md) · [Full source](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantdbecceeefc3268679e34a94110b1880c04856d463391378efb8604e860dc1939.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `227ed246326e0e904a9d0d125b4af1399b786f4b`.

Source path: `GRWTSK/Geometry/ConvexGeometry/Hull/Variantdbecceeefc3268679e34a94110b1880c04856d463391378efb8604e860dc1939.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ConvexGeometry/Hull/Variantdbecceeefc3268679e34a94110b1880c04856d463391378efb8604e860dc1939.lean.json)

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
| 1 | `def` | [convexHull](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantdbecceeefc3268679e34a94110b1880c04856d463391378efb8604e860dc1939.lean/declarations/convexhull--d6a62bf0e4a2db9429c20d79.md) | 50 | `declaration-track:d6a62bf0e4a2db9429c20d790d8a53558f22bb0045cc0f182059fd67e1d8a6c2` |
| 2 | `theorem` | [subset_convexHull](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantdbecceeefc3268679e34a94110b1880c04856d463391378efb8604e860dc1939.lean/declarations/subset-convexhull--19ca7b6cd08df50e54b08713.md) | 54 | `result-track:19ca7b6cd08df50e54b08713bfd3c843dfcd8407fec25ccb3367b7b191ae7def` |
| 3 | `theorem` | [convex_convexHull](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantdbecceeefc3268679e34a94110b1880c04856d463391378efb8604e860dc1939.lean/declarations/convex-convexhull--bf22e86459b3d8ee5e9da9b0.md) | 57 | `result-track:bf22e86459b3d8ee5e9da9b0594e4b0c93097f0c40f20b300edd641c0d8b0bcc` |
| 4 | `theorem` | [convexHull_eq_iInter](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantdbecceeefc3268679e34a94110b1880c04856d463391378efb8604e860dc1939.lean/declarations/convexhull-eq-iinter--2fb06c2211e019497aad295b.md) | 59 | `result-track:2fb06c2211e019497aad295b4de01b77c88ee99175b4f32ceec398a5768760f3` |
| 5 | `theorem` | [mem_convexHull_iff](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantdbecceeefc3268679e34a94110b1880c04856d463391378efb8604e860dc1939.lean/declarations/mem-convexhull-iff--7316631d74b64eb897a3bfd9.md) | 64 | `result-track:7316631d74b64eb897a3bfd9475b170af161dde2829c5695abef7447f0eecbee` |
| 6 | `theorem` | [convexHull_min](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantdbecceeefc3268679e34a94110b1880c04856d463391378efb8604e860dc1939.lean/declarations/convexhull-min--e3b3f6c088f282270a5eabe5.md) | 67 | `result-track:e3b3f6c088f282270a5eabe5bddf2c989aaa8f344188d164b62d5a5bc3f214fc` |
| 7 | `theorem` | [Convex.convexHull_subset_iff](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantdbecceeefc3268679e34a94110b1880c04856d463391378efb8604e860dc1939.lean/declarations/convex-convexhull-subset-iff--dbaacdf0d7133c1d2bb39d4b.md) | 69 | `result-track:dbaacdf0d7133c1d2bb39d4bd2e0447d723a38ddf3d66f4944baa260f3365230` |
| 8 | `theorem` | [convexHull_mono](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantdbecceeefc3268679e34a94110b1880c04856d463391378efb8604e860dc1939.lean/declarations/convexhull-mono--ad887a23ae876ba5f9762d48.md) | 73 | `result-track:ad887a23ae876ba5f9762d481d0e340a27a8ebbe1833b966df20cf5c10411735` |
| 9 | `lemma` | [convexHull_eq_self](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantdbecceeefc3268679e34a94110b1880c04856d463391378efb8604e860dc1939.lean/declarations/convexhull-eq-self--608cc47636a37f44d9d40d89.md) | 76 | `result-track:608cc47636a37f44d9d40d899e1f57e3be0468ab6649bcf5b277fe033979f644` |
| 10 | `theorem` | [convexHull_univ](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantdbecceeefc3268679e34a94110b1880c04856d463391378efb8604e860dc1939.lean/declarations/convexhull-univ--98b60423ad36650d9917a6d3.md) | 81 | `result-track:98b60423ad36650d9917a6d3bbbb7215803d39e3b8925dd95c67771e49958ed4` |
| 11 | `theorem` | [convexHull_empty](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantdbecceeefc3268679e34a94110b1880c04856d463391378efb8604e860dc1939.lean/declarations/convexhull-empty--5cc7ceaa7832bfbcea663016.md) | 85 | `result-track:5cc7ceaa7832bfbcea66301629fb7e288b75003bc67dafb5d74290e3fe85e390` |
| 12 | `theorem` | [convexHull_empty_iff](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantdbecceeefc3268679e34a94110b1880c04856d463391378efb8604e860dc1939.lean/declarations/convexhull-empty-iff--3ef1244b8d2c2330d949f5e4.md) | 89 | `result-track:3ef1244b8d2c2330d949f5e489f720cc6f4d6f6be0f076aa7e975df5eeba605b` |
| 13 | `theorem` | [convexHull_nonempty_iff](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantdbecceeefc3268679e34a94110b1880c04856d463391378efb8604e860dc1939.lean/declarations/convexhull-nonempty-iff--36bf78108e3c53f80334d3fc.md) | 98 | `result-track:36bf78108e3c53f80334d3fc748eea7ab3912d8b35a5c00cd4de282d04eefb10` |
| 14 | `theorem` | [segment_subset_convexHull](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantdbecceeefc3268679e34a94110b1880c04856d463391378efb8604e860dc1939.lean/declarations/segment-subset-convexhull--ce3f6c38a0d212dd0e33bffb.md) | 104 | `result-track:ce3f6c38a0d212dd0e33bffbcfdd2becc6045e8f786473ff1de450b480bdc77e` |
| 15 | `theorem` | [convexHull_singleton](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantdbecceeefc3268679e34a94110b1880c04856d463391378efb8604e860dc1939.lean/declarations/convexhull-singleton--1e49fb6ed86f13068b32d94c.md) | 108 | `result-track:1e49fb6ed86f13068b32d94c91e3007d6335b408b793b1b4296e4bc0e6da662e` |
| 16 | `theorem` | [convexHull_zero](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantdbecceeefc3268679e34a94110b1880c04856d463391378efb8604e860dc1939.lean/declarations/convexhull-zero--9ac7120649a369b620e6478f.md) | 112 | `result-track:9ac7120649a369b620e6478f6e894c4fb9ad14beedc62a7bbb83d8b66b84b2b3` |
| 17 | `theorem` | [convexHull_pair](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantdbecceeefc3268679e34a94110b1880c04856d463391378efb8604e860dc1939.lean/declarations/convexhull-pair--80cf116432f0d9e7508578e2.md) | 116 | `result-track:80cf116432f0d9e7508578e2c50cd0746bbf24755eda291dda36199bda32901e` |
| 18 | `theorem` | [convexHull_convexHull_union_left](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantdbecceeefc3268679e34a94110b1880c04856d463391378efb8604e860dc1939.lean/declarations/convexhull-convexhull-union-left--8b72617f9f3f47133eb24aee.md) | 122 | `result-track:8b72617f9f3f47133eb24aee4f71ea84751e21bf59d5c8da4c1b8ef29688604e` |
| 19 | `theorem` | [convexHull_convexHull_union_right](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantdbecceeefc3268679e34a94110b1880c04856d463391378efb8604e860dc1939.lean/declarations/convexhull-convexhull-union-right--948e41451eb4a24001787d05.md) | 126 | `result-track:948e41451eb4a24001787d05b3b62bfb6f0e4bedfc95a57964f200d8e7f89986` |
| 20 | `theorem` | [Convex.convex_remove_iff_notMem_convexHull_remove](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantdbecceeefc3268679e34a94110b1880c04856d463391378efb8604e860dc1939.lean/declarations/convex-convex-remove-iff-notmem-convexhull-remove--71659eb98bced08433367d43.md) | 130 | `result-track:71659eb98bced08433367d4369d01ea56ce915d62b22f5f418f79e7a294ea8c8` |
| 21 | `theorem` | [IsLinearMap.image_convexHull](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantdbecceeefc3268679e34a94110b1880c04856d463391378efb8604e860dc1939.lean/declarations/islinearmap-image-convexhull--e1bdb451830dee8f4246e685.md) | 150 | `result-track:e1bdb451830dee8f4246e6854b82c7cdc866ccd81dc93a383e2094a7f75545f0` |
| 22 | `theorem` | [LinearMap.image_convexHull](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantdbecceeefc3268679e34a94110b1880c04856d463391378efb8604e860dc1939.lean/declarations/linearmap-image-convexhull--a739d2c69a187b0bc917036f.md) | 159 | `result-track:a739d2c69a187b0bc917036fc461c7d8b4c378e3b4d9a7280a5c96e1a00b169b` |
| 23 | `theorem` | [convexHull_add_subset](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantdbecceeefc3268679e34a94110b1880c04856d463391378efb8604e860dc1939.lean/declarations/convexhull-add-subset--ea51b794ee8b6fd886068fdf.md) | 163 | `result-track:ea51b794ee8b6fd886068fdf474ed6ffef572bd8c56b4ece9f6adf587e97674f` |
| 24 | `theorem` | [convexHull_smul](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantdbecceeefc3268679e34a94110b1880c04856d463391378efb8604e860dc1939.lean/declarations/convexhull-smul--0738c0081e828d7e7daf3e77.md) | 176 | `result-track:0738c0081e828d7e7daf3e77e9e48605eeff47ab2e05cab1429c38f30cd01657` |
| 25 | `theorem` | [AffineMap.image_convexHull](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantdbecceeefc3268679e34a94110b1880c04856d463391378efb8604e860dc1939.lean/declarations/affinemap-image-convexhull--9c2dc8cdee311bc5ede4d8ed.md) | 189 | `result-track:9c2dc8cdee311bc5ede4d8eda3598daf87f1e265f9738884aff224468fef0375` |
| 26 | `theorem` | [convexHull_subset_affineSpan](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantdbecceeefc3268679e34a94110b1880c04856d463391378efb8604e860dc1939.lean/declarations/convexhull-subset-affinespan--cc28fa992c0b1e643735600f.md) | 199 | `result-track:cc28fa992c0b1e643735600fc7957c2ccd5f3084f3a9bb6357e794e7a35afd77` |
| 27 | `theorem` | [affineSpan_convexHull](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantdbecceeefc3268679e34a94110b1880c04856d463391378efb8604e860dc1939.lean/declarations/affinespan-convexhull--d5d34b4cb73671650cb7d273.md) | 203 | `result-track:d5d34b4cb73671650cb7d273c221cac222263eef15d55e7eb30e6b544247e741` |
| 28 | `theorem` | [convexHull_neg](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantdbecceeefc3268679e34a94110b1880c04856d463391378efb8604e860dc1939.lean/declarations/convexhull-neg--5747f8d7986ce2b74d888b1e.md) | 208 | `result-track:5747f8d7986ce2b74d888b1e66e720af6ba3622a25d85059172aabe9b116c049` |
| 29 | `lemma` | [convexHull_vadd](../../../../../mathematics/Geometry/ConvexGeometry/Hull/Variantdbecceeefc3268679e34a94110b1880c04856d463391378efb8604e860dc1939.lean/declarations/convexhull-vadd--ee768d7a8062bb5334262cee.md) | 212 | `result-track:ee768d7a8062bb5334262cee0acd0c43fb012e23aac431228b76903162006b34` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
